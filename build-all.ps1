# Get all external packages from this repo
[String[]]${PACKAGES} = & bazel query "attr(build_file, '^//.*', //external:*)" | % { $_ -Replace "//external:" }

# Get all targets from those external packages
${QUERY_SPEC} = ${PACKAGES} | % { "@${_}//:all" }

# Filter out incompatible targets
[String[]]${TARGETS} = & bazel cquery -k "set(${QUERY_SPEC})" --output=starlark --starlark:file=$PSScriptRoot/target-compatible.cquery.bzl | ?  { -not [String]::IsNullOrEmpty($_) }

# And keep only targets that are public
[String[]]${TARGETS} = & bazel query "visible(...:*, set(${TARGETS}))"

& bazel build --keep_going @TARGETS
if ($LastExitCode -ne "0") {
    Write-Host "The following failed to build:"
    & bazel build --check_up_to_date --show_result 0 @TARGETS
    exit 1
}

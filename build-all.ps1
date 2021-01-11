[String[]]${PACKAGES} = & bazel query ...:* --output=package | ? { -not [String]::IsNullOrEmpty($_) }
${QUERY_SPEC} = (${PACKAGES} | % { "@${_}//:all" }) -Join " union "
[String[]]${TARGETS} = & bazel query "visible(...:*, ${QUERY_SPEC})" | ? { -Not ($_ -Eq "@brotli//:dictionary") }
& bazel build --keep_going @TARGETS
if ($LastExitCode -ne "0") {
    Write-Host "The following failed to build:"
    & bazel build --check_up_to_date --show_result 0 @TARGETS
    exit 1
}
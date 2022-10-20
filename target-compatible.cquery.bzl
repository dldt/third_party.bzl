def format(target):
    providers_list = providers(target)

    if not providers_list or 'IncompatiblePlatformProvider' not in providers_list:
      return target.label
    else:
      return ""

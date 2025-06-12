# Bash Library: download

A Bash library that provides functions to download files and folders.

## Features

  - Skip download if file already exists
  - Use custom curl or jf options
  - Download specific folder/path from GitHub repository
  - Use JFrog CLI to download files

## Usage

> ***Logger library are required for log messages!***

```
import() {
    local module="${1}"
    local bash_lib_base_url='https://raw.githubusercontent.com/Element-Logic/bash-library/refs/heads/main'
    # Source the module
    source <(curl -fsSL "${bash_lib_base_url}/${module}/lib")
}

import download
import logger

curl_download "${url}" "${dst_path}" "${dst_filename}" -b oraclelicense=accept-securebackup-cookie
curl_download "${url}" "${dst_path}" "${dst_filename}" "-H" "X-JFrog-Art-Api:${jfrog_api_key}"
jf_download "${url}" "${dst_path}" "${dst_filename}" --flat=true
github_download "${github_user}" "${github_repo}" "${github_branch}" "${github_path}" "${download_path}" "${check_file}" "" "--strip-components=4"
```

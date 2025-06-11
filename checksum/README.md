# Bash Library: checksum

A Bash library that provides functions to validate checksums like md5 or sha512.

## Features

You can provide cheksum file as url from a website or use a local file.

## Usage

> ***Logger library are required for log messages!***

```
import() {
    local module="${1}"
    local bash_lib_base_url='https://raw.githubusercontent.com/Element-Logic/bash-library/refs/heads/main'
    # Source the module
    source <(curl -fsSL "${BASH_LIB_BASE_URL}/${module}/lib")
}

import checksum
import logger

validate_sha512 "url" "${checksum_url}" "${dst_path}/${dst_filename}"
validate_md5 "file" "${checksums_path}/${dst_filename}.md5" "${dst_path}/${dst_filename}"
```

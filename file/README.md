# Bash Library: file

A Bash library that provides functions to copy or validate files.

## Usage

> ***Logger library are required for log messages!***

```
import() {
    local module="${1}"
    local bash_lib_base_url='https://raw.githubusercontent.com/Element-Logic/bash-library/refs/heads/main'
    # Source the module
    source <(curl -fsSL "${bash_lib_base_url}/${module}/lib")
}

import file
import logger

copy_directory "${src_path}" "${dst_path}"
```

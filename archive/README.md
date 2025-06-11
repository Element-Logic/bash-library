# Bash Library: archive

A Bash library that provides archive utils.

## Usage

> ***Logger library are required for log messages!***

```
import() {
    local module="${1}"
    local bash_lib_base_url='https://raw.githubusercontent.com/Element-Logic/bash-library/refs/heads/main'
    # Source the module
    source <(curl -fsSL "${BASH_LIB_BASE_URL}/${module}/lib")
}

import archive
import logger

extract_tar "${src_path}/${src_filename}" "${dst_path}" -z --strip 1
```

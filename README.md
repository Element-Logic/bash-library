# Bash-Library

A modular Bash standard library providing reusable shell scripting components for logging and more. Designed for maintainability, readability, and portability in Bash-based automation.

---

## Available Libraries

| Library       | Description                        |
|---------------|------------------------------------|
| [***archive***](archive)   | Functions for creating, extracting, and managing archive files (tar, zip, etc.) |
| [***checksum***](checksum) | Calculate and verify file checksums (md5, sha256, etc.) |
| [***download***](download) | Utilities for downloading files with error handling |
| [***file***](file)           | File manipulation helpers (copy, existence checks, etc.) |
| [***logger***](logger)     | Write log messages with severity levels (info, warn, error, etc.) |

---

## Usage Example

```bash
import() {
    local module="${1}"
    local bash_lib_base_url='https://raw.githubusercontent.com/Element-Logic/bash-library/refs/heads/main'
    # Source the module
    source <(curl -fsSL "${bash_lib_base_url}/${module}/lib")
}

import archive
import checksum
import download
import file
import logger

# Example usage
log "info" "This is an info message"
log "error" "Something went wrong"

# Bash Library: logger

A Bash library that provides a powerful `log` function for structured, colorized logging to stdout.

## Features

- Colorized log levels
- Customizable logging options
- Stack trace with line numbers and function names

## Available Log Levels

- `trace`
- `debug`
- `info`
- `warn`
- `error`
- `fatal`

## Usage

```
import() {
    local module="${1}"
    local bash_lib_base_url='https://raw.githubusercontent.com/Element-Logic/bash-library/refs/heads/main'
    # Source the module
    source <(curl -fsSL "${BASH_LIB_BASE_URL}/${module}/lib")
}

import logger

log "info" "This is an info message"
log "error" "Something went wrong"
```

## Options

You can disable specific logging features by setting one of the following variables in your script:

```bash
LOGGER_COLOR="True"        # Enable colored log levels
LOGGER_NO_TIMESTAMP="True" # Remove timestamps from log messages
LOGGER_NO_STACK="True"     # Disable stack trace output
```

To re-enable an option, unset the corresponding variable:

```bash
unset LOGGER_COLOR
```

## Example

```bash
import() {
    local module="${1}"
    local bash_lib_base_url='https://raw.githubusercontent.com/Element-Logic/bash-library/refs/heads/main'
    # Source the module
    source <(curl -fsSL "${BASH_LIB_BASE_URL}/${module}/lib")
}

import logger

LOGGER_COLOR="true"

log "info" "Starting script..."
...
log "error" "An error occurred!"
log "debug" "Return code: ${rc}"
...
log "info" "Script execution completed."
```

### Example Output

```log
$ ./test.sh
2025-06-11T21:59:17+0200 TRACE [at test.sh.main.print_logs:16] Hello World!
2025-06-11T21:59:17+0200 DEBUG Hello World!
2025-06-11T21:59:17+0200 INFO  Hello World!
2025-06-11T21:59:17+0200 WARN  Hello World!
2025-06-11T21:59:17+0200 ERROR Hello World!
2025-06-11T21:59:17+0200 FATAL Hello World!
```

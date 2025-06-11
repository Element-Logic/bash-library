#!/usr/bin/env bash

#-------------------------------------------------------------------------------
# Author     : Florian Hild
# Created    : 11-06-2025
# Description: Test logger library
#-------------------------------------------------------------------------------

export LANG=C

declare -r message="Hello World!"

source ./lib

function print_logs(){
    log "trace" "${message}"
    log "debug" "${message}"
    log "info" "${message}"
    log "warn" "${message}"
    log "error" "${message}"
    log "fatal" "${message}"
}


echo "Logger settings: defaults"
echo "------------------------"
print_logs

declare LOGGER_COLOR="True"
echo
echo "Logger settings: LOGGER_COLOR=True"
echo "------------------------"
print_logs

unset LOGGER_COLOR
declare LOGGER_NO_TIMESTAMP="True"
echo
echo "Logger settings: LOGGER_NO_TIMESTAMP=True"
echo "------------------------"
print_logs


unset LOGGER_NO_TIMESTAMP
declare LOGGER_NO_STACK="True"
echo
echo "Logger settings: LOGGER_NO_STACK=True"
echo "------------------------"
print_logs

unset LOGGER_NO_STACK

echo
echo "Logger settings: Test wrong log level"
echo "------------------------"
unset log_no_stacktrace
log "test" "This is a test message"

#!/bin/bash
# Summary: Register containers and start dns service

fullSrcDir() {
  echo "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
}
source "$( fullSrcDir )/../libexec/utils.sh"

main() {
  require DnsmasqManager
  DnsmasqManager:new dmm
  $dmm_prepare
  $dmm_registerAll
}

[[ "$BASH_SOURCE" == "$0" ]] && main "$@"
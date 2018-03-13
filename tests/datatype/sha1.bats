#!/usr/bin/env bats

source bashlets datatype/sha1

@test "datatype/sha1: validate a sha1 hash" {
  (bash$$ sha1 validate 51609e571cf9dcf5aaccd0fd9b95a55ae3d4a093)
  [[ $status -eq 0 ]]
}

#!/usr/bin/env bats

source bashlets util/skeleton/hello

@test "util/skeleton/hello: say hello" {
  result=$(bash$$ hello say_hello)
  expected="hello, world"
  [[ $result == $expected ]]
}

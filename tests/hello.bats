#!/usr/bin/env bats

source bashlet utils/skeleton/hello

@test "utils/skeleton/hello: say hello" {
  result=$(bash$$ hello say_hello)
  expected="hello, world"
  [[ $result == $expected ]]
}

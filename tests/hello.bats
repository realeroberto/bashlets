#!/usr/bin/env bats

source bashlet util/skeleton/hello

@test "util/skeleton/hello: say hello" {
  result=$(bash$$ hello say_hello)
  expected="hello, world"
  [[ $result == $expected ]]
}

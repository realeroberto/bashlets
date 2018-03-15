#!/usr/bin/env bats

source bashlets core/library/interact

@test "library/interact: say hello" {
  result="$(bash$$ interact say_hello)"
  expected="Hello, this is bashlets ([0-9]+\.)+[0-9]+ speaking\!"
  [[ $result =~ $expected ]]
}

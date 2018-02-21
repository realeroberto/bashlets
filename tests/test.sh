#!/usr/bin/env bats

source bashlet library/interact

@test "say hello" {
  result="$(bash$$ interact say_hello)"
  expected="Hello, this is bashlets ([0-9]+\.)+[0-9]+ speaking\!"
  [[ $result =~ $expected ]]
}

source bashlet datatype/string

@test "generate random string" {
  result="$(bash$$ string generate_random 32)"
  expected="[[:print:]]{32}"
  [[ $result =~ $expected ]]
}

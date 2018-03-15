#!/usr/bin/env bats

source bashlets core/library/package

@test "library/package: get package name" {
  result="$(bash$$ package get_name)"
  expected="[0-9a-zA-Z_]+"
  [[ $result =~ $expected ]]
}

@test "library/package: get package description" {
  result="$(bash$$ package get_description)"
  expected=".*"
  [[ $result =~ $expected ]]
}

@test "library/package: get package version" {
  result="$(bash$$ package get_version)"
  expected="[0-9](\.[0-9])*"
  [[ $result =~ $expected ]]
}

@test "library/package: get package author name" {
  result="$(bash$$ package get_author_name)"
  expected=".*"
  [[ $result =~ $expected ]]
}

@test "library/package: get package author email" {
  result="$(bash$$ package get_author_email)"
  expected="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
  [[ $result =~ $expected ]]
}

@test "library/package: get package license" {
  result="$(bash$$ package get_license)"
  expected=".*"
  [[ $result =~ $expected ]]
}

@test "library/package: get package deps" {
  result="$(bash$$ package get_deps)"
  expected=".*"
  [[ $result =~ $expected ]]
}

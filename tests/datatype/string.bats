#!/usr/bin/env bats

source bashlet datatype/string

@test "datatype/string: chop a string" {
  s="foo
  bar"
  result="$(bash$$ string chop "$s")"
  echo $result
  expected="foo *bar"
  [[ $result =~ $expected ]]
}

@test "datatype/string: tell the length of a string" {
  result="$(bash$$ string length hello)"
  expected="5"
  [[ $result == $expected ]]
}

@test "datatype/string: search for a character in a string" {
  result="$(bash$$ string index hello h)"
  expected="0"
  [[ $result == $expected ]]
}

@test "datatype/string: uppercase a string" {
  result="$(bash$$ string upper hello)"
  expected="HELLO"
  [[ $result == $expected ]]
}

@test "datatype/string: lowercase a string" {
  result="$(bash$$ string lower HELLO)"
  expected="hello"
  [[ $result == $expected ]]
}

@test "datatype/string: convert from string to integer" {
  result="$(bash$$ string to_integer 123xyz)"
  expected="123"
  [[ $result == $expected ]]
}

@test "datatype/string: convert from string to boolean" {
  bash$$ string to_bool yes
  [[ $status -eq 0 ]]
}

@test "datatype/string: convert from binary to decimal representation" {
  result="$(bash$$ string bin_to_dec 11111111)"
  expected="255"
  [[ $result == $expected ]]
}

@test "datatype/string: convert from decimal to binary representation" {
  result="$(bash$$ string dec_to_bin 255)"
  expected="11111111"
  [[ $result == $expected ]]
}

@test "datatype/string: convert from hex to decimal representation" {
  result="$(bash$$ string hex_to_dec FF)"
  expected="255"
  [[ $result == $expected ]]
}

@test "datatype/string: convert from decimal to hex representation" {
  result="$(bash$$ string dec_to_hex 255)"
  expected="FF"
  [[ $result == $expected ]]
}

@test "datatype/string: shuffle a string" {
  result="$(bash$$ string shuffle 12345)"
  expected="[1-5]{5}"
  [[ $result =~ $expected ]]
}

@test "datatype/string: generate a random string" {
  result="$(bash$$ string generate_random 32)"
  expected="[[:print:]]{32}"
  [[ $result =~ $expected ]]
}

@test "datatype/string: convert a string into a charstream" {
  result="$(bash$$ string to_charstream 12345 | tail -1)"
  expected="5"
  [[ $result == $expected ]]
}

@test "datatype/string: convert a string into a square matrix" {
  result="$(bash$$ string to_matrix 2 a b c d | xargs echo)"
  expected="a b c d"
  [[ $result == $expected ]]
}

@test "datatype/string: reverse a string" {
  result="$(bash$$ string reverse 12345)"
  expected="54321"
  [[ $result == $expected ]]
}

@test "datatype/string: transpose a string" {
  result="$(bash$$ string transpose 12345 | tail -1)"
  expected="5"
  [[ $result == $expected ]]
}

@test "datatype/string: extract the central 2**(n-1) characters of a string of length 2**n" {
  result="$(bash$$ string middle_2n helloguy)"
  expected="llog"
  [[ $result == $expected ]]
}

@test "datatype/string: left-align a string" {
  result="$(bash$$ string lalign_n 4 x hello)"
  expected="xxxhello"
  [[ $result == $expected ]]
}

@test "datatype/string: calculate Levensthein distance between two strings" {
  result="$(bash$$ string levenshtein hello hallo)"
  expected="1"
  [[ $result == $expected ]]
}

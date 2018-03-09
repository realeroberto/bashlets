#!/usr/bin/env bats

source bashlet api/github

@test "api/github: list GitHub repositories for a given user" {
  (bash$$ github list_repos_by_user | grep ^bashlets$)
  [[ $status -eq 0 ]]
}

#!/usr/bin/env bats

################################################################################
#                                         
# |              |    |         |         
# |---.,---.,---.|---.|    ,---.|--- ,---.
# |   |,---|`---.|   ||    |---'|    `---.
# `---'`---^`---'`   '`---'`---'`---'`---'
#
#                                        
# Bashlets -- A modular extensible toolbox for Bash
#
# Copyright (c) 2014-8 Roberto Reale
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
################################################################################

load 'lib/bats-support/load'
load 'lib/bats-assert/load'

source bashlets core::github::repo

[[ -n $BASHLETS_CORE_GITHUB_API_USERNAME ]] || fail "BASHLETS_CORE_GITHUB_API_USERNAME undefined"

# @cf https://gist.github.com/earthgecko/3089509
REPO_NAME="$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)"

@test "core::github::repo::create: create a repository" {
    $BASHLETS_NAMESPACE repo create "$REPO_NAME"
    assert_success
}

@test "core::github::repo::delete: delete a repository" {
    $BASHLETS_NAMESPACE repo create "$REPO_NAME" > /dev/null

    $BASHLETS_NAMESPACE repo delete           \
        "$BASHLETS_CORE_GITHUB_API_USERNAME"  \
        "$REPO_NAME"

    assert_success
}

# Local variables:
# mode: shell-script
# sh-basic-offset: 4
# sh-indent-comment: t
# indent-tabs-mode: nil
# End:
# ex: ts=4 sw=4 et filetype=sh

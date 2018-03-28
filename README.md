# bashlets::core::github

A client for the [GitHub REST API v3](https://developer.github.com/v3/).

## Table of Contents

### `api`

* [`api::delete`](#api::delete)
* [`api::filter`](#api::filter)
* [`api::get`](#api::get)
* [`api::header`](#api::header)
* [`api::header_value`](#api::header_value)
* [`api::post`](#api::post)
* [`api::put`](#api::put)
* [`api::rels`](#api::rels)
* [`api::version`](#api::version)

### `conduct`

* [`conduct::name`](#conduct::name)
* [`conduct::text`](#conduct::text)
* [`conduct::url`](#conduct::url)

### `defs`



### `emoji`

* [`emoji::url`](#emoji::url)

### `gist`

* [`gist::delete`](#gist::delete)
* [`gist::star`](#gist::star)
* [`gist::unstar`](#gist::unstar)

### `github`

* [`github::conducts`](#github::conducts)
* [`github::emojis`](#github::emojis)
* [`github::gists`](#github::gists)
* [`github::gitignores`](#github::gitignores)
* [`github::git_servers`](#github::git_servers)
* [`github::hooks`](#github::hooks)
* [`github::importers`](#github::importers)
* [`github::licenses`](#github::licenses)
* [`github::pages`](#github::pages)
* [`github::password_auth`](#github::password_auth)
* [`github::repos`](#github::repos)
* [`github::sha`](#github::sha)
* [`github::users`](#github::users)

### `gitignore`

* [`gitignore::content`](#gitignore::content)

### `license`

* [`license::describe`](#license::describe)
* [`license::name`](#license::name)
* [`license::text`](#license::text)

### `my`

* [`my::orgs`](#my::orgs)
* [`my::repos`](#my::repos)

### `org`

* [`org::repos`](#org::repos)

### `page`

* [`page::count`](#page::count)
* [`page::items`](#page::items)
* [`page::last`](#page::last)
* [`page::next`](#page::next)

### `path`

* [`path::content`](#path::content)
* [`path::ls`](#path::ls)
* [`path::type`](#path::type)

### `repo`

* [`repo::commits`](#repo::commits)
* [`repo::conduct`](#repo::conduct)
* [`repo::license`](#repo::license)
* [`repo::new`](#repo::new)
* [`repo::readme`](#repo::readme)
* [`repo::tags`](#repo::tags)

### `user`

* [`user::gists`](#user::gists)
* [`user::repos`](#user::repos)

## Methods Description

### `api::delete`

@public

### `api::filter`

@public

### `api::get`

@public

### `api::header`

@public
@public

### `api::header_value`

@public

### `api::post`

@public

### `api::put`

@public

### `api::rels`

@public

### `api::version`

Get API version.

### `conduct::name`

Get the name of an individual code of conduct.

### `conduct::text`

Get the text of an individual code of conduct.

### `conduct::url`

Get the url of an individual code of conduct.

### `emoji::url`

Get an emoji's url.

### `gist::delete`

@public

### `gist::star`

@public

### `gist::unstar`

@public

### `github::conducts`

List all Codes of Conduct.

### `github::emojis`

List all the emojis available to use on GitHub.

### `github::gists`

List all public gists.

### `github::gitignores`

List all .gitignore templates available to pass as an option when creating a

### `github::git_servers`

List all IP addresses (in CIDR format) specifying the Git servers for

### `github::hooks`

Get a list of IP addresses in CIDR format specifying the addresses that

### `github::importers`

Get a list of IP addresses in CIDR format specifying the addresses that

### `github::licenses`

List all licenses.

### `github::pages`

List all IP addresses (in CIDR format) specifying the A records for GitHub

### `github::password_auth`

Tell whether authentication with username and password is supported.

### `github::repos`

List all public repositories.

### `github::sha`

Get the currently-deployed SHA of github-services.

### `github::users`

List all users, in the order that they signed up on GitHub.

### `gitignore::content`

Fetch a .gitignore template by name.

### `license::describe`

@cf   https://developer.github.com/v3/licenses/#get-an-individual-license

### `license::name`

@cf   https://developer.github.com/v3/licenses/#get-an-individual-license

### `license::text`

@cf   https://developer.github.com/v3/licenses/#get-an-individual-license

### `my::orgs`

List all my organizations.

### `my::repos`

List all my repositories.

### `org::repos`

List public repositories for the specified user.

### `page::count`

@public

### `page::items`

@public

### `page::last`

@public

### `page::next`

@public

### `path::content`

@public

### `path::ls`

@public

### `path::type`

@public

### `repo::commits`

@public

### `repo::conduct`

Get a repository's code of conduct.

### `repo::license`

@cf   https://developer.github.com/v3/licenses/#get-the-contents-of-a-repositorys-license

### `repo::new`

@public

### `repo::readme`

@public

### `repo::tags`

@public

### `user::gists`

@cf   https://developer.github.com/v3/gists/#list-a-users-gists

### `user::repos`

List public repositories for the specified user.


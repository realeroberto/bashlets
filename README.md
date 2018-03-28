# bashlets::core::github

A client for the [GitHub REST API v3](https://developer.github.com/v3/), written in Bash and part of the [Bashlets](https://github.com/bashlets) project.

## Installation

Install the [`bashlets`](https://github.com/bashlets/bashlets) base package. Then issue

```
bashlets install core.github
```

## Similar Projects

* [ok.sh](https://github.com/whiteinge/ok.sh)


## API Reference

### `api`

* [`api::delete`](#apidelete)
* [`api::filter`](#apifilter)
* [`api::get`](#apiget)
* [`api::header`](#apiheader)
* [`api::header_value`](#apiheader_value)
* [`api::post`](#apipost)
* [`api::put`](#apiput)
* [`api::rels`](#apirels)
* [`api::version`](#apiversion)

### `conduct`

* [`conduct::name`](#conductname)
* [`conduct::text`](#conducttext)
* [`conduct::url`](#conducturl)

### `defs`



### `emoji`

* [`emoji::url`](#emojiurl)

### `gist`

* [`gist::delete`](#gistdelete)
* [`gist::star`](#giststar)
* [`gist::unstar`](#gistunstar)

### `github`

* [`github::conducts`](#githubconducts)
* [`github::emojis`](#githubemojis)
* [`github::gists`](#githubgists)
* [`github::gitignores`](#githubgitignores)
* [`github::git_servers`](#githubgit_servers)
* [`github::hooks`](#githubhooks)
* [`github::importers`](#githubimporters)
* [`github::licenses`](#githublicenses)
* [`github::pages`](#githubpages)
* [`github::password_auth`](#githubpassword_auth)
* [`github::repos`](#githubrepos)
* [`github::sha`](#githubsha)
* [`github::users`](#githubusers)

### `gitignore`

* [`gitignore::content`](#gitignorecontent)

### `license`

* [`license::describe`](#licensedescribe)
* [`license::name`](#licensename)
* [`license::text`](#licensetext)

### `my`

* [`my::orgs`](#myorgs)
* [`my::repos`](#myrepos)

### `org`

* [`org::repos`](#orgrepos)

### `page`

* [`page::count`](#pagecount)
* [`page::items`](#pageitems)
* [`page::last`](#pagelast)
* [`page::next`](#pagenext)

### `path`

* [`path::content`](#pathcontent)
* [`path::ls`](#pathls)
* [`path::type`](#pathtype)

### `repo`

* [`repo::commits`](#repocommits)
* [`repo::conduct`](#repoconduct)
* [`repo::create`](#repocreate)
* [`repo::license`](#repolicense)
* [`repo::readme`](#reporeadme)
* [`repo::tags`](#repotags)

### `user`

* [`user::gists`](#usergists)
* [`user::repos`](#userrepos)

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

Describe an individual license.

### `license::name`

Get the name of an individual license.

### `license::text`

Get the text of an individual license.

### `my::orgs`

List all the organizations for the authenticated user.

### `my::repos`

List all the repositories for the authenticated user.

### `org::repos`

List public repositories for the specified user.

### `page::count`

Get the number of result pages.

### `page::items`

Get paginated items.

### `page::last`

Get the link relation for the last page of results.

### `page::next`

Get the link relation for the next page of results.

### `path::content`

Get the content of a file.

### `path::ls`

List contents of a directory or the name of file (similar to the ls command).

### `path::type`

Return the type of a path.

### `repo::commits`

List commits on a repository.

### `repo::conduct`

Get a repository's code of conduct.

### `repo::create`

Create a new repository for the authenticated user.

### `repo::license`

Get the contents of a repository's license.

### `repo::readme`

Return the preferred README for a repository.

### `repo::tags`

List tags for a repository.

### `user::gists`

List public gists for the specified user.

### `user::repos`

List public repositories for the specified user.


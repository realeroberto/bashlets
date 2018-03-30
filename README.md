# bashlets::core::github

A client for the [GitHub REST API v3](https://developer.github.com/v3/), written in Bash and part of the [Bashlets](https://github.com/bashlets) project.

## Installation

Install the [`bashlets`](https://github.com/bashlets/bashlets) base package. Then issue

```
bashlets install core.github
```

## Similar Projects

* [ok.sh](https://github.com/whiteinge/ok.sh)

## Implemented Parts

The active links represent implemented parts of the full API.


* Activity
    - Events
    - Event Types & Payloads
    - Feeds
    - Notifications
    - Starring
    - Watching
* [Gists](https://developer.github.com/v3/gists/)
    - [Comments](https://developer.github.com/v3/gists/comments/)
* Git Data
    - Blobs
    - Commits
    - References
    - Tags
    - Trees
* GitHub Apps
    - Installations
    - GitHub Marketplace
    - Permissions
    - Available Endpoints
* Issues
    - Assignees
    - Comments
    - Events
    - Labels
    - Milestones
    - Timeline
* Migration
     - Migrations
     - Source Imports
* [Miscellaneous](https://developer.github.com/v3/misc/)
    - [Codes of Conduct](https://developer.github.com/v3/codes_of_conduct/)
    - [Emojis](https://developer.github.com/v3/emojis/)
    - [Gitignore](https://developer.github.com/v3/gitignore/)
    - Licenses
    - [Markdown](https://developer.github.com/v3/markdown/)
    - [Meta](https://developer.github.com/v3/meta/)
    - Rate Limit
* [Organizations](https://developer.github.com/v3/orgs/)
    - [Blocking Users](https://developer.github.com/v3/orgs/blocking/)
    - Members
    - Outside Collaborators
    - Webhooks
* Projects
    - Cards
    - Collaborators
    - Columns
* Pull Requests
    - Reviews
    - Review Comments
    - Review Requests
* Reactions
    - Commit Comment
    - Issue
    - Issue Comment
    - Pull Request Review Comment
    - Team Discussion
    - Team Discussion Comment
* Repositories
    - Branches
    - Collaborators
    - Comments
    - Commits
    - Community
    - Contents
    - Deploy Keys
    - Deployments
    - Downloads
    - Forks
    - Invitations
    - Merging
    - Pages
    - Releases
    - Statistics
    - Statuses
    - Traffic
    - Webhooks
* Search
    - Repositories
    - Code
    - Commits
    - Issues
    - Users
    - Topics
    - Text match metadata
    - Legacy search
* Teams
    - Discussions
    - Discussion comments
    - Members
* SCIM
* Users
    - Blocking Users
    - [Emails](https://developer.github.com/v3/users/emails/)
    - Followers
    - Git SSH Keys
    - GPG Keys

## API Reference

### `api`

* [`api::delete`](#apidelete)
* [`api::endpoint`](#apiendpoint)
* [`api::filter`](#apifilter)
* [`api::get`](#apiget)
* [`api::header`](#apiheader)
* [`api::header_value`](#apiheader_value)
* [`api::patch`](#apipatch)
* [`api::post`](#apipost)
* [`api::put`](#apiput)
* [`api::rels`](#apirels)
* [`api::request`](#apirequest)
* [`api::status`](#apistatus)
* [`api::version`](#apiversion)

### `cache`

* [`cache::delete`](#cachedelete)
* [`cache::endpoint`](#cacheendpoint)
* [`cache::filter`](#cachefilter)
* [`cache::get`](#cacheget)
* [`cache::header`](#cacheheader)
* [`cache::header_value`](#cacheheader_value)
* [`cache::patch`](#cachepatch)
* [`cache::post`](#cachepost)
* [`cache::put`](#cacheput)
* [`cache::rels`](#cacherels)
* [`cache::request`](#cacherequest)
* [`cache::status`](#cachestatus)
* [`cache::version`](#cacheversion)

### `conduct`

* [`conduct::name`](#conductname)
* [`conduct::text`](#conducttext)
* [`conduct::url`](#conducturl)

### `defs`



### `emoji`

* [`emoji::url`](#emojiurl)

### `gist`

* [`gist::clone`](#gistclone)
* [`gist::comments`](#gistcomments)
* [`gist::commits`](#gistcommits)
* [`gist::create`](#gistcreate)
* [`gist::delete`](#gistdelete)
* [`gist::describe`](#gistdescribe)
* [`gist::download`](#gistdownload)
* [`gist::edit`](#gistedit)
* [`gist::files`](#gistfiles)
* [`gist::fork`](#gistfork)
* [`gist::forks`](#gistforks)
* [`gist::get`](#gistget)
* [`gist::is_starred`](#gistis_starred)
* [`gist::owner`](#gistowner)
* [`gist::star`](#giststar)
* [`gist::unstar`](#gistunstar)

### `gist_comment`

* [`gist_comment::create`](#gist_commentcreate)
* [`gist_comment::delete`](#gist_commentdelete)
* [`gist_comment::edit`](#gist_commentedit)
* [`gist_comment::get`](#gist_commentget)
* [`gist_comment::text`](#gist_commenttext)
* [`gist_comment::user`](#gist_commentuser)

### `github`

* [`github::conducts`](#githubconducts)
* [`github::emojis`](#githubemojis)
* [`github::gists`](#githubgists)
* [`github::gitignores`](#githubgitignores)
* [`github::git_servers`](#githubgit_servers)
* [`github::hooks`](#githubhooks)
* [`github::importers`](#githubimporters)
* [`github::licenses`](#githublicenses)
* [`github::orgs`](#githuborgs)
* [`github::pages`](#githubpages)
* [`github::password_auth`](#githubpassword_auth)
* [`github::repos`](#githubrepos)
* [`github::sha`](#githubsha)
* [`github::users`](#githubusers)

### `gitignore`

* [`gitignore::content`](#gitignorecontent)

### `json`

* [`json::build_array`](#jsonbuild_array)

### `license`

* [`license::describe`](#licensedescribe)
* [`license::name`](#licensename)
* [`license::text`](#licensetext)

### `markdown`

* [`markdown::from_file`](#markdownfrom_file)
* [`markdown::from_stream`](#markdownfrom_stream)
* [`markdown::from_string`](#markdownfrom_string)

### `my`

* [`my::add_emails`](#myadd_emails)
* [`my::delete_emails`](#mydelete_emails)
* [`my::emails`](#myemails)
* [`my::orgs`](#myorgs)
* [`my::public_emails`](#mypublic_emails)
* [`my::repos`](#myrepos)
* [`my::toggle_primary_email_visibility`](#mytoggle_primary_email_visibility)

### `org`

* [`org::block`](#orgblock)
* [`org::blocked_users`](#orgblocked_users)
* [`org::company`](#orgcompany)
* [`org::describe`](#orgdescribe)
* [`org::edit`](#orgedit)
* [`org::email`](#orgemail)
* [`org::get`](#orgget)
* [`org::is_blocked`](#orgis_blocked)
* [`org::location`](#orglocation)
* [`org::name`](#orgname)
* [`org::repos`](#orgrepos)
* [`org::unblock`](#orgunblock)
* [`org::url`](#orgurl)

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

### `starred`

* [`starred::gists`](#starredgists)

### `test`



### `user`

* [`user::gists`](#usergists)
* [`user::keys`](#userkeys)
* [`user::repos`](#userrepos)

## Methods Description

### `api::delete`

Delete a resouce.

### `api::endpoint`

Get API root endpoint.

### `api::filter`

Filter JSON content.

### `api::get`

Retrieve a resource.

### `api::header`

Get the HTTP headers.
Extract a given value from the HTTP headers.

### `api::header_value`

Extract a given value from the HTTP headers.

### `api::patch`

Update a resource with partial JSON data.

### `api::post`

Create a resource.

### `api::put`

Replace a resource or a collection.

### `api::rels`

Get the Link header values.

### `api::request`

Make a generic HTTP request.

### `api::status`

Get the HTTP status code.

### `api::version`

Get API version.

### `cache::delete`

Delete a resouce.

### `cache::endpoint`

Get API root endpoint.

### `cache::filter`

Filter JSON content.

### `cache::get`

Retrieve a resource.

### `cache::header`

Get the HTTP headers.
Extract a given value from the HTTP headers.

### `cache::header_value`

Extract a given value from the HTTP headers.

### `cache::patch`

Update a resource with partial JSON data.

### `cache::post`

Create a resource.

### `cache::put`

Replace a resource or a collection.

### `cache::rels`

Get the Link header values.

### `cache::request`

Make a generic HTTP request.

### `cache::status`

Get the HTTP status code.

### `cache::version`

Get API version.

### `conduct::name`

Get the name of an individual code of conduct.

### `conduct::text`

Get the text of an individual code of conduct.

### `conduct::url`

Get the url of an individual code of conduct.

### `emoji::url`

Get an emoji's url.

### `gist::clone`

Download gist files.

### `gist::comments`

List comments on a gist.

### `gist::commits`

List gist commits.

### `gist::create`

Create a gist.

### `gist::delete`

Delete a gist.

### `gist::describe`

Describe a gist.

### `gist::download`

Download gist files.

### `gist::edit`

Edit a gist.

### `gist::files`

List gist files.

### `gist::fork`

Fork a gist.
List gist forks.

### `gist::forks`

List gist forks.

### `gist::get`

Get a single gist.

### `gist::is_starred`

Check if a gist is starred.

### `gist::owner`

Get the a gist's owner.

### `gist::star`

Star a gist.

### `gist::unstar`

Unstar a gist.

### `gist_comment::create`

Create a comment on a gist.

### `gist_comment::delete`

Delete a comment on a gist.

### `gist_comment::edit`

Edit a comment on a gist.

### `gist_comment::get`

Get a single comment on a gist.

### `gist_comment::text`

Get the text of a single comment on a gist.

### `gist_comment::user`

Get the user of a single comment on a gist.

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

### `github::orgs`

List all organizations.

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

### `json::build_array`

Build a JSON array from argv.

### `license::describe`

Describe an individual license.

### `license::name`

Get the name of an individual license.

### `license::text`

Get the text of an individual license.

### `markdown::from_file`

Render an arbitrary Markdown document from a file.

### `markdown::from_stream`

Render an arbitrary Markdown document from stdin.

### `markdown::from_string`

Render an arbitrary Markdown document from a string (private method).
Render an arbitrary Markdown document from a string.

### `my::add_emails`

Add email address(es).

### `my::delete_emails`

Delete email address(es).

### `my::emails`

List email addresses for the authenticated user.

### `my::orgs`

List all the organizations for the authenticated user.

### `my::public_emails`

List public email addresses for the authenticated user.

### `my::repos`

List all the repositories for the authenticated user.

### `my::toggle_primary_email_visibility`

Toggle primary email visibility.

### `org::block`

Block a user.
List the users blocked by an organization.

### `org::blocked_users`

List the users blocked by an organization.

### `org::company`

Get an organization company.

### `org::describe`

Get an organization description.

### `org::edit`

Edit an organization.

### `org::email`

Get an organization email.

### `org::get`

Get an organization.

### `org::is_blocked`

Check whether a user is blocked from an organization.

### `org::location`

Get an organization location.

### `org::name`

Get an organization name.

### `org::repos`

List organization repositories.

### `org::unblock`

Unblock a user.

### `org::url`

Get an organization url.

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

### `starred::gists`

List all the starred gists for the authenticated user.

### `user::gists`

List public gists for the specified user.

### `user::keys`

List the verified public keys for the specified user.

### `user::repos`

List public repositories for the specified user.


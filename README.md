# bashlets::core::github

A client for the [GitHub REST API v3](https://developer.github.com/v3/), written in Bash and part of the [Bashlets](https://github.com/bashlets) project.


## Installation

Install the [`bashlets`](https://github.com/bashlets/bashlets) base package. Then issue

```
bashlets install core.github
```


## Configuration

### Authentication

The library supports [OAuth authentication](https://developer.github.com/apps/building-oauth-apps/) through the environment variable `BASHLETS_CORE_GITHUB_API_OAUTH_TOKEN`.

### User agent

All API requests [MUST](https://developer.github.com/v3/#user-agent-required) include a valid `User-Agent` header. The library supports a custom header through the environment variables `BASHLETS_USER_AGENT` and `BASHLETS_CORE_GITHUB_API_USER_AGENT`.


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
    - [Licenses](https://developer.github.com/v3/licenses/)
    - [Markdown](https://developer.github.com/v3/markdown/)
    - [Meta](https://developer.github.com/v3/meta/)
    - [Rate Limit](https://developer.github.com/v3/rate_limit/)
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
    - [Forks](https://developer.github.com/v3/repos/forks/)
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
    - [Blocking Users](https://developer.github.com/v3/users/blocking/)
    - [Emails](https://developer.github.com/v3/users/emails/)
    - [Followers](https://developer.github.com/v3/users/followers/)
    - Git SSH Keys
    - GPG Keys


## API Reference

### `api`

* [`api::count`](#apicount)
* [`api::delete`](#apidelete)
* [`api::endpoint`](#apiendpoint)
* [`api::extract_header_value`](#apiextract_header_value)
* [`api::extract_rel`](#apiextract_rel)
* [`api::extract_rels`](#apiextract_rels)
* [`api::filter`](#apifilter)
* [`api::get`](#apiget)
* [`api::header`](#apiheader)
* [`api::header_value`](#apiheader_value)
* [`api::last`](#apilast)
* [`api::next`](#apinext)
* [`api::paginate`](#apipaginate)
* [`api::patch`](#apipatch)
* [`api::post`](#apipost)
* [`api::post200`](#apipost200)
* [`api::post202`](#apipost202)
* [`api::put`](#apiput)
* [`api::request`](#apirequest)
* [`api::status`](#apistatus)
* [`api::version`](#apiversion)

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
* [`my::am_following`](#myam_following)
* [`my::block`](#myblock)
* [`my::blocked_users`](#myblocked_users)
* [`my::delete_emails`](#mydelete_emails)
* [`my::emails`](#myemails)
* [`my::followers`](#myfollowers)
* [`my::following`](#myfollowing)
* [`my::have_blocked`](#myhave_blocked)
* [`my::orgs`](#myorgs)
* [`my::public_emails`](#mypublic_emails)
* [`my::repos`](#myrepos)
* [`my::toggle_primary_email_visibility`](#mytoggle_primary_email_visibility)
* [`my::unblock`](#myunblock)

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

### `path`

* [`path::content`](#pathcontent)
* [`path::ls`](#pathls)
* [`path::type`](#pathtype)

### `rate_limit`

* [`rate_limit::limit`](#rate_limitlimit)
* [`rate_limit::remaining`](#rate_limitremaining)
* [`rate_limit::reset`](#rate_limitreset)

### `repo`

* [`repo::commits`](#repocommits)
* [`repo::conduct`](#repoconduct)
* [`repo::create`](#repocreate)
* [`repo::fork`](#repofork)
* [`repo::forks`](#repoforks)
* [`repo::license`](#repolicense)
* [`repo::readme`](#reporeadme)
* [`repo::tags`](#repotags)
* [`repo::topics`](#repotopics)

### `starred`

* [`starred::gists`](#starredgists)

### `user`

* [`user::follow`](#userfollow)
* [`user::followers`](#userfollowers)
* [`user::following`](#userfollowing)
* [`user::gists`](#usergists)
* [`user::is_following`](#useris_following)
* [`user::keys`](#userkeys)
* [`user::repos`](#userrepos)
* [`user::unfollow`](#userunfollow)

## Methods Description

### `api::count`

Get the number of result pages.

### `api::delete`

Delete a resouce.

### `api::endpoint`

Get API root endpoint.

### `api::extract_header_value`

Extract a given value from the HTTP headers.

### `api::extract_rel`

Get the Link header values.
Get the link relation for the given page of results.

### `api::extract_rels`

Get the Link header values.

### `api::filter`

Filter JSON content.

### `api::get`

Retrieve a resource.

### `api::header`

Get the HTTP headers.
Extract a given value from the HTTP headers.

### `api::header_value`

Extract a given value from the HTTP headers.

### `api::last`

Get the link relation for the last page of results.

### `api::next`

Get the link relation for the next page of results.

### `api::paginate`

Get paginated items.

### `api::patch`

Update a resource with partial JSON data.

### `api::post`

Create a resource.
Specialized POST method that expects a 200 status code.
Create a resource in an asynchronous fashion.

### `api::post200`

Specialized POST method that expects a 200 status code.

### `api::post202`

Create a resource in an asynchronous fashion.

### `api::put`

Replace a resource or a collection.

### `api::request`

Make a generic HTTP request.

### `api::status`

Get the HTTP status code.

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

### `my::am_following`

Check if the authorized user follows another.

### `my::block`

Block a user.
List the users the authenticated user has blocked on her personal account.

### `my::blocked_users`

List the users the authenticated user has blocked on her personal account.

### `my::delete_emails`

Delete email address(es).

### `my::emails`

List email addresses for the authenticated user.

### `my::followers`

List followers of the authenticated user.

### `my::following`

List who the authenticated user is following.

### `my::have_blocked`

Check whether the authorized user has blocked another user.

### `my::orgs`

List all the organizations for the authenticated user.

### `my::public_emails`

List public email addresses for the authenticated user.

### `my::repos`

List all the repositories for the authenticated user.

### `my::toggle_primary_email_visibility`

Toggle primary email visibility.

### `my::unblock`

Unblock a user.

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

### `path::content`

Get the content of a file.

### `path::ls`

List contents of a directory or the name of file (similar to the ls command).

### `path::type`

Return the type of a path.

### `rate_limit::limit`

Get the current rate limit status.

### `rate_limit::remaining`

Get the current rate limit status.

### `rate_limit::reset`

Get the current rate limit status.

### `repo::commits`

List commits on a repository.

### `repo::conduct`

Get a repository's code of conduct.

### `repo::create`

Create a new repository for the authenticated user.

### `repo::fork`

Fork a repository.
List forks for a repository.

### `repo::forks`

List forks for a repository.

### `repo::license`

Get the contents of a repository's license.

### `repo::readme`

Return the preferred README for a repository.

### `repo::tags`

List tags for a repository.

### `repo::topics`

List all topics for a repository.

### `starred::gists`

List all the starred gists for the authenticated user.

### `user::follow`

Follow a user.
List followers of the specified user.
List who the specified user is following.

### `user::followers`

List followers of the specified user.

### `user::following`

List who the specified user is following.

### `user::gists`

List public gists for the specified user.

### `user::is_following`

Check if the specified user follows another.

### `user::keys`

List the verified public keys for the specified user.

### `user::repos`

List public repositories for the specified user.

### `user::unfollow`

Unfollow a user.


# bashlets::core::github

A client for the [GitHub REST API v3](https://developer.github.com/v3/), written in Bash and part of the [Bashlets](https://github.com/bashlets) project.


## Installation

Install the [`bashlets`](https://github.com/bashlets/bashlets) base package. Then issue

```
bashlets install core.github
```


## Configuration

### Authentication

The library supports both basic and OAuth authentication.

Basic authentication is supported through the environment variable `BASHLETS_CORE_GITHUB_API_BASIC_AUTH`, which must contain the username.

[OAuth authentication](https://developer.github.com/apps/building-oauth-apps/), on the other hand, is supported through the environment variable `BASHLETS_CORE_GITHUB_API_OAUTH_TOKEN`.

### User agent

All API requests [MUST](https://developer.github.com/v3/#user-agent-required) include a valid `User-Agent` header. The library supports a custom header through the environment variables `BASHLETS_USER_AGENT` and `BASHLETS_CORE_GITHUB_API_USER_AGENT`.


## Similar Projects

* [ok.sh](https://github.com/whiteinge/ok.sh)


## Implemented Parts

The active links represent implemented parts of the full API.


* Activity
    - Events
    - Event Types & Payloads
    - [Feeds](https://developer.github.com/v3/activity/feeds/)
    - Notifications
    - [Starring](https://developer.github.com/v3/activity/starring/)
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
* [Projects](https://developer.github.com/v3/projects/)
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
    - [Comments](https://developer.github.com/v3/repos/comments/)
    - Commits
    - Community
    - Contents
    - Deploy Keys
    - Deployments
    - ~~Downloads~~ ([deprecated](https://developer.github.com/v3/repos/downloads/))
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



# Gogs @LarCity

A quickstart composition for the hosted git repository @LarCity HO.

## Getting started with the GOGS docker image

Refer to [this guide](https://github.com/gogs/gogs/tree/master/docker) for details on using the gogs docker image.

## Server Config

```ini
BRAND_NAME = Gogs
RUN_USER   = git
RUN_MODE   = prod

[database]
TYPE     = mysql
HOST     = mysql8.ds.ho:3306
NAME     = ******
USER     = ******
PASSWORD = ******
SSL_MODE = disable
PATH     = /app/gogs/data/gogs.db

[repository]
ROOT = /data/git/gogs-repositories

[server]
DOMAIN           = gogs.local
HTTP_PORT        = 3000
EXTERNAL_URL     = http://gogs.local:4082/
DISABLE_SSH      = false
SSH_PORT         = 4022
START_SSH_SERVER = false
OFFLINE_MODE     = false

[mailer]
ENABLED = false

[service]
REGISTER_EMAIL_CONFIRM = false
ENABLE_NOTIFY_MAIL     = false
DISABLE_REGISTRATION   = false
ENABLE_CAPTCHA         = true
REQUIRE_SIGNIN_VIEW    = false

[picture]
DISABLE_GRAVATAR        = false
ENABLE_FEDERATED_AVATAR = false

[session]
PROVIDER = file

[log]
MODE      = console, file
LEVEL     = Info
ROOT_PATH = /app/gogs/log

[security]
INSTALL_LOCK = true
SECRET_KEY   = ******
```

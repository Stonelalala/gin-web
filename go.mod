module gin-web

go 1.15

replace (
	github.com/stonelalala/gin-web/conf => ./pkg/conf
	github.com/stonelalala/gin-web/middleware => ./middleware
	github.com/stonelalala/gin-web/models => ./models
	github.com/stonelalala/gin-web/pkg/e => ./pkg/e
	github.com/stonelalala/gin-web/pkg/setting => ./pkg/setting
	github.com/stonelalala/gin-web/pkg/util => ./pkg/util
	github.com/stonelalala/gin-web/routers => ./routers
)

require (
	github.com/astaxie/beego v1.12.3
	github.com/gin-gonic/gin v1.6.3
	github.com/stonelalala/gin-web/models v0.0.0-00010101000000-000000000000
	github.com/stonelalala/gin-web/pkg/e v0.0.0-00010101000000-000000000000
	github.com/stonelalala/gin-web/pkg/setting v0.0.0-00010101000000-000000000000
	github.com/stonelalala/gin-web/pkg/util v0.0.0-00010101000000-000000000000
	github.com/unknwon/com v1.0.1
)

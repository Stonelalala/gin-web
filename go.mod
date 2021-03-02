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
	github.com/gin-gonic/gin v1.6.3
	github.com/golang/protobuf v1.4.2 // indirect
	github.com/json-iterator/go v1.1.10 // indirect
	github.com/mattn/go-sqlite3 v2.0.3+incompatible // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e // indirect
	github.com/stonelalala/gin-web/models v0.0.0-00010101000000-000000000000
	github.com/stonelalala/gin-web/pkg/e v0.0.0-00010101000000-000000000000
	github.com/stonelalala/gin-web/pkg/setting v0.0.0-00010101000000-000000000000
	github.com/stonelalala/gin-web/pkg/util v0.0.0-00010101000000-000000000000
	github.com/unknwon/com v1.0.1
	golang.org/x/sys v0.0.0-20200615200032-f1bc736245b1 // indirect
	gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f // indirect
)

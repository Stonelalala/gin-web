module util

go 1.15

replace github.com/stonelalala/gin-web/pkg/setting => ./../../pkg/setting

require (
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/gin-gonic/gin v1.6.3
	github.com/stonelalala/gin-web/pkg/setting v0.0.0-00010101000000-000000000000
	github.com/unknwon/com v1.0.1
)

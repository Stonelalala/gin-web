package util

import (
	"github.com/gin-gonic/gin"
	"github.com/unknwon/com"
	"github.com/stonelalala/gin-web/pkg/setting"
)

func GetPage(c *gin.Context) int{
	result := 0
	page, _ := com.StrTo(c.Query("page")).Int()
	if page > 0 {
		result = setting.PageSize * (page - 1)
	}
	return result
}
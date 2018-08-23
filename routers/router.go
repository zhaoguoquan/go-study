package routers
import (
	"github.com/gin-gonic/gin"
	_ "orzinfo.com/go-study/controllers"
)
func InitRouter() *gin.Engine{
	router := gin.Default()
	//router.GET("/article/:id", GetArticle)
	return router
}
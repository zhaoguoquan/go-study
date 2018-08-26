package routers
import (
	"github.com/gin-gonic/gin"
	a "orzinfo.com/go-study/controllers"
)
func InitRouter() *gin.Engine{
	router := gin.Default()
	router.GET("/article/:id", a.GetArticle)
	router.LoadHTMLGlob("view/*")
	return router
}
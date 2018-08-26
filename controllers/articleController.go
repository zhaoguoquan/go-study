package controllers
import (
	"net/http"
	"strconv"
	m "orzinfo.com/go-study/models"
	"github.com/gin-gonic/gin"
)
//查询Byid
func GetArticle(c *gin.Context) {
	//route参数获得用Param , 路径参数为Query, form 为PostForm
	tmpid := c.Param("id")
	//这个实在是太弱了，居然还要手动转型
	id, err := strconv.Atoi(tmpid)
	if err != nil {
		c.JSON(http.StatusOK, gin.H{
			"success": false, "msg": "格式错误",
		})
	} else {
		article := m.GetArticleById(id)
		//居然没有三元
		if article == nil{
			c.JSON(http.StatusOK, gin.H{
				"success": true, "data": "",
			})
		}else{
			c.JSON(http.StatusOK, gin.H{
				"success": true, "data": article,
			})
		}

	}

}
package models
import (
	"log"
	db "orzinfo.com/go-study/database"
)
type Article struct {
	Id int64 `json:"id" form:"id"`
	Classid int `json:"classid" form:"classid"`
	Departid string `json:"departid" form:"departid"`
	Title string `json:"title" form:"title"`
	Shorttitle string `json:"shorttitle" form:"shorttitle"`
	Content string `json:"content" form:"content" xorm:"MEDIUMTEXT"`
	Origin string `json:"origin" form:"origin"`
	Keyword string `json:"keyword" form:"keyword"`
	Important int `json:"important" form:"important"`
	Updatetime int `json:"updatetime" form:"updatetime"`
	Addtime int `json:"addtime" form:"addtime"`
	Showtime int `json:"showtime" form:"showtime"`
	Expiretime int `json:"expiretime" form:"expiretime"`
}
// 查询ID
func GetArticleById(Id int ) (a *Article){
	var article Article
	has, err := db.Orm.Id(Id).Get(&article)
	if(err != nil){
		log.Fatal(err.Error())
		return nil
	}
	if has == false{
		return nil
	}
	return &article
}
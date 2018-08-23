package main
import (
	db "orzinfo.com/go-study/database"
	router "orzinfo.com/go-study/routers"
)
func main() {
	defer db.Orm.Close()
	router:=router.InitRouter()
	// Listen and Server in 0.0.0.0:8080
	router.Run(":8080")
}
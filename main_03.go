package main

import (
	EmployeeController "backend/api/controller/employee"

	"github.com/gin-gonic/gin"
)

func main() {

	router := gin.Default()
	//Employee API Method
	router.GET("/employee", EmployeeController.GetEmployee)
	router.POST("/employee", EmployeeController.PostEmployee)
	router.GET("/employee/:id", EmployeeController.GetEmployeeByID)
	router.PUT("/employee", EmployeeController.PutEmployee)
	router.DELETE("/employee", EmployeeController.DeleteEmployee)
	

	//Customer API Method

	router.Run() //listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}

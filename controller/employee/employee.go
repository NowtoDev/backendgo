package employee

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

// GET
func GetEmployee(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{

		"message": "Employee GET Method",
	})

}
func PostEmployee(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{

		"message": "Employee POST Method",
	})

}

func GetEmployeeByID(c *gin.Context) {
	id := c.Param("id")
	c.JSON(http.StatusOK, gin.H{
		"message": id,
	})
}

func PutEmployee(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{

		"message": "Employee PUT Method",
	})

}
func DeleteEmployee(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{

		"message": "Employee DELETE Method",
	})

}

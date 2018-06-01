package main

import (
	"github.com/labstack/echo"
)

func main() {
	e := echo.New()
	e.GET("/", func(context echo.Context) error {
		return context.JSON(200, "Hello world!")
	})
	e.Start(":7777")

}

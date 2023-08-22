package main

import (
	"crud-go-react/bootstrap"
	"crud-go-react/repository"

	"github.com/gofiber/fiber/v2"
)

type Repository repository.Repository

func main() {
	app := fiber.New()
	bootstrap.InitializeApp(app)
}

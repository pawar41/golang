package main

import (
	"os"
	"fmt"
)

type Page struct {
	Title string
	Body  []byte
}

func (p *Page) save() error {
	filename := p.Title + ".txt"
	return os.WriteFile(filename, p.Body, 0600)
}

func loadPage(title string) (*Page, error) {
	filename := title + ".txt"
	body, err := os.ReadFile(filename)

	if err != nil {
		return nil, err
	}

	return &Page{Title: title, Body: body}, nil
}

func main() {
	page1 := &Page{Title: "TestPage", Body: []byte("This is sample page")}
	page1.save()

	page2, _ := loadPage("TestPage")
	fmt.Println(string(page2.Body))
}


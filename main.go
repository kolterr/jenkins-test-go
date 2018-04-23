package main

import "net/http"

func main() {

	mux := http.NewServeMux()

	mux.HandleFunc("/", hello)
	http.ListenAndServe(":7777", mux)
}

func hello(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello jenkins!"))
}

package main

import "net/http"

func main() {

	mux := http.NewServeMux()
	mux.HandleFunc("/", hello)
	http.ListenAndServe(":80", mux)
}

func hello(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte(`Hello world!\n`))
}

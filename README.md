# wasm-calculator
A very small calculator written in native WASM, hosted by the browser


## How to run?
* Install [wabt](https://github.com/WebAssembly/wabt)

* Run *wat2wasm* (compiling WebAssembly in text format to WebAssembly binary)
```
wat2wasm calculator.wast
```

* Spin a local http server. for example [python-livereload](https://github.com/lepture/python-livereload)
```
livereload -p 8000
```

* Open the browser and go to `http://0.0.0.0:8000` (will return `index.html` file)

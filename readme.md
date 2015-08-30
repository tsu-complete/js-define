
js-define [![LICENSE](https://img.shields.io/github/license/tsu-complete/js-define.svg)](https://github.com/tsu-complete/js-define/blob/master/LICENSE)
===
[![Dependencies](https://david-dm.org/tsu-complete/js-define.svg)](https://david-dm.org/tsu-complete/js-define)
[![Dev Dependencies](https://david-dm.org/tsu-complete/js-define/dev-status.svg)](https://david-dm.org/tsu-complete/js-define#info=devDependencies)

> define based templating

Install
---

```sh
$ npm i --save tsu-complete/js-define

# --or--

$ bower i --save tsu-complete/js-define
```

Usage
---

```
define template, definitions, invocation_list

template -> string to define replace
definitions -> what to replace and what with
invocation_list -> array or string of functions to directly invoke
  ie. define "A", A: ->, "A"
  yields. (function ( ) { })()
  where. define "A", A: ->
  yields. function ( ) { }
```

```coffee
define = require "define"

template_js = -> A + 4
template_html = "<span>A</span>"

js = define do template_js.toString, A: (-> 1 + 2), "A"

html = define template_html, A: "konnichiha tsukumo!"
```

Todo
---

- testing
- documentation


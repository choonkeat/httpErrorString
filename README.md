# Setup

```
elm init
elm install elm/http
mkdir -p src
touch src/Main.elm
npm init
npm add --save-dev elm-test
elm-test init
mv tests/Example.elm tests/MainTest.elm
```

# Run test

```
$ elm-test

elm-test 0.19.1-revision2
-------------------------

Running 5 tests. To reproduce these results, run: elm-test --fuzz 100 --seed 298087494433506 /Users/choonkeat/test/httpErrorString/tests/MainTest.elm

↓ MainTest
↓ httpErrorString
✗ BadUrl

    "FIXME"
    ╷
    │ Expect.equal
    ╵
    "Bad URL: blah"


↓ MainTest
↓ httpErrorString
✗ Timeout

    "FIXME"
    ╷
    │ Expect.equal
    ╵
    "Request timeout: Please check your connection"


↓ MainTest
↓ httpErrorString
✗ NetworkError

    "FIXME"
    ╷
    │ Expect.equal
    ╵
    "Network error: Please check your connection"


↓ MainTest
↓ httpErrorString
✗ BadStatus

    "FIXME"
    ╷
    │ Expect.equal
    ╵
    "Error 500"


↓ MainTest
↓ httpErrorString
✗ BadBody

    "FIXME"
    ╷
    │ Expect.equal
    ╵
    "Unexpected response: blah"



TEST RUN FAILED

Duration: 1432 ms
Passed:   0
Failed:   5
```

module MainTest exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Http
import Main
import Test exposing (..)


suite : Test
suite =
    Test.describe "httpErrorString"
        -- looked at https://package.elm-lang.org/packages/elm/http/2.0.0/Http#Error
        -- and see what are the possible values
        [ Test.test "BadUrl"
            (\() ->
                let
                    givenError =
                        Http.BadUrl "blah"

                    expectedString =
                        "Bad URL: blah"
                in
                Expect.equal expectedString (Main.httpErrorString givenError)
            )
        , Test.test "Timeout"
            (\() ->
                let
                    givenError =
                        Http.Timeout

                    expectedString =
                        "Request timeout: Please check your connection"
                in
                Expect.equal expectedString (Main.httpErrorString givenError)
            )
        , Test.test "NetworkError"
            (\() ->
                let
                    givenError =
                        Http.NetworkError

                    expectedString =
                        "Network error: Please check your connection"
                in
                Expect.equal expectedString (Main.httpErrorString givenError)
            )
        , Test.test "BadStatus"
            (\() ->
                let
                    givenError =
                        Http.BadStatus 500

                    expectedString =
                        "Error 500"
                in
                Expect.equal expectedString (Main.httpErrorString givenError)
            )
        , Test.test "BadBody"
            (\() ->
                let
                    givenError =
                        Http.BadBody "blah"

                    expectedString =
                        "Unexpected response: blah"
                in
                Expect.equal expectedString (Main.httpErrorString givenError)
            )
        ]

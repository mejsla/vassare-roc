app [Model, init!, respond!] { pf: platform "https://github.com/roc-lang/basic-webserver/releases/download/0.11.0/yWHkcVUt_WydE1VswxKFmKFM5Tlu9uMn6ctPVYaas7I.tar.br" }

import pf.Stdout
import pf.Http exposing [Request, Response]
import pf.Url
import pf.Utc

# Model is produced by `init`.
Model : {}

# With `init` you can set up a database connection once at server startup,
# generate css by running `tailwindcss`,...
# In this case we don't have anything to initialize, so it is just `Ok {}`.
init! : {} => Result Model []
init! = \{} -> Ok {}

respond! : Request, Model => Result Response [ServerErr Str]_
respond! = \req, _ ->
    # Log request datetime, method and url
    datetime = Utc.to_iso_8601 (Utc.now! {})

    try Stdout.line! "$(datetime) $(Inspect.toStr req.method) $(req.uri)"

    split_url =
        req.uri
        |> Url.from_str
        |> Url.path
        |> Str.splitOn "/"

    # Route to handler based on url path
    response =
        when split_url is
            ["", ""] -> json_response 200 {}
            ["", "time", ..] -> json_response 200 (get_time! {})
            _ -> html_response 404 "<h1>Not Found (404)</h1>"
    response

get_time! : {} => { time : I128 }
get_time! = \_ ->
    time = Utc.now! {}
    { time: Utc.to_millis_since_epoch time }

json_response : U16, _ -> Result Response []
json_response = \status, json ->
    Ok {
        status,
        headers: [
            { name: "Content-Type", value: "text/json; charset=utf-8" },
        ],
        body: Str.toUtf8 (Inspect.toStr json),
    }

html_response : U16, Str -> Result Response []
html_response = \status, text ->
    Ok {
        status,
        headers: [
            { name: "Content-Type", value: "text/html; charset=utf-8" },
        ],
        body: Str.toUtf8 text,
    }

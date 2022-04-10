import os
import uvicorn
from fastapi import FastAPI, Request, Response

app = FastAPI()

if __name__ == "__main__":
    uvicorn.run("main:app", host="::", port=80)


@app.get("/")
def hello(request: Request) -> Response:
    return Response(content="Hello world!")

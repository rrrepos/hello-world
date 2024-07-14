from fastapi import FastAPI, HTTPException, Response

app = FastAPI()

@app.get("/")
def read_root() -> Response:
    return Response("The server is always running.")


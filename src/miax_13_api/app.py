import os

from fastapi import FastAPI


app = FastAPI()


@app.get("/echo")
def names(
    name: str
):
    return name


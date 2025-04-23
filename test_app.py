import app


def test_handler():
    assert app.handler(None, None) == 2

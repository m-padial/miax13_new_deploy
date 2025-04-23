import src.miax_13_new_lambda.app as app


def test_handler():
    assert app.handler(None, None) == 2

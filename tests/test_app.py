import pytest


@pytest.mark.describe("A test that always works")
def test_trivial():
    """
    This test is trivial, just to see if tests work.
    """

    assert 1 + 1 == 2

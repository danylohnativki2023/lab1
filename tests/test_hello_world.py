import subprocess
import sys

from src.hello_world import hello_world


def test_hello_world_message():
    assert hello_world() == "Hello World"


def test_script_output():
    result = subprocess.run(
        [sys.executable, "-m", "src.hello_world"],
        capture_output=True,
        text=True,
        check=True,
    )

    assert result.stdout.strip() == "Hello World"

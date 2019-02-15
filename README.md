# flask-api

[![Build status](https://menziess.visualstudio.com/flask-api/_apis/build/status/CI)](https://menziess.visualstudio.com/flask-api/_build/latest?definitionId=8)

> **note** The `.vscode` folder has deliberately added as an example.

## 1. Getting Started

Run the following commands in your terminal:

    export PIPENV_VENV_IN_PROJECT=1
    pip install pipenv

Once you’ve done that, you can effectively forget about pip since Pipenv essentially acts as a replacement. It also introduces two new files, the Pipfile (which is meant to replace requirements.txt) and the Pipfile.lock (which enables deterministic builds).

Run the following:

    make

This command prints out useful commands that can be run like this:

    make <command>

## 2. Development

Install the project by running `make install`, and run the project in VSCode by pressing `f5`.

Collaborate by creating a new branch by opening the command palette by pressing `CTRL + SHIFT + P`, and choosing 'Git: Create Branch'. Give your branch a name in the following format: `feature/my-awesome-feature`.

When the feature is finished, create a pull request.

.PHONY: *

setup:
	pipenv install
	echo "layout python" >> .envrc
	direnv allow
	pre-commit install --hook-type commit-msg
	pre-commit autoupdate

setup: .envrc
    # Don't create a new .envrc if it exists
	pipenv install




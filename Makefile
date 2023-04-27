default: install

install:
	python3 setup.py install

test:
	pytest -v tests

upload: clean
	python3 setup.py sdist bdist_wheel
	twine upload --verbose dist/*

containerize:
	docker build -t neovim-remote .

clean:
	rm -rf build dist neovim_remote.egg-info

.PHONY: install test upload

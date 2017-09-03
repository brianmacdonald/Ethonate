all: clean docs
clean:
	rm -rf docs/
docs: 
	jekyll build --source src/docs/ --destination docs/ --config src/docs/_config.yml   
docs-dev: 
	jekyll build --source src/docs/ --destination docs/ --config src/docs/_config.yml,src/docs/_config_dev.yml

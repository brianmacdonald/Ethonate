all: clean docs
clean:
	rm -rf docs/
docs: 
	jekyll build --source src/ --destination docs/ --config src/_config.yml   
docs-dev: 
	jekyll build --source src/ --destination docs/ --config src/_config.yml,src/_config_dev.yml

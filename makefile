default:
	@cat makefile | grep -E ^[a-z]

update:
	git status
	sleep 5
	git add .
	git commit -am "update"

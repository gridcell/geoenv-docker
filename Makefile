
build:
	@docker build -t gridcell/geoenv .

fresh-build:
	@docker build --no-cache -t gridcell/geoenv .

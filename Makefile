all: clean build package

clean:
	rebar clean

deps:
	rebar get-deps

build: deps
	rebar compile

package: build
	rebar generate -f

console: package
	rel/myapps/bin/myapps console

console_clean: package
	rel/myapps/bin/myapps console_clean


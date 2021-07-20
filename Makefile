SHELL := bash

.PHONY: all
all: compile run

# Normally, an OTP application would be used to launch this project. But because
# ezwebframe is introduced in an earlier chapter of "Programming Erlang, 2nd
# Edition" than OTP, a regular Makefile is used instead. This is also a slight
# refinement on the original code (https://git.io/JWAGS), which hardcoded the
# ebin paths.
# Make on Mac does not support `.ONESHELL`, so `; \` appears between lines.
.PHONY: run
run:
	paths=$$(rebar3 path --ebin -s$$'\n'); \
	erl_args=(); \
	while IFS= read path; do \
		erl_args+=(-pa "$${path}"); \
	done <<<"$${paths}"; \
	erl "$${erl_args[@]}" -s ezwebframe_demos start

.PHONY: beam
beam: compile

.PHONY: compile
compile:
	rebar3 compile

.PHONY: clean
clean:
	rebar3 clean

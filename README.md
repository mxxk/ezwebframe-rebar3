ezwebframe
==========

Pronounced "Easy web frame."

Ezwebframe attempts to make web programming just a little bit easier.

Erlang thinks that the browser is an Erlang process. To get the browser
to do something, Erlang sends a message containing a command to the browser.

A typical message might be:

<pre>
Browser ! [{cmd,fill_div},{id,div1},{txt, Bin}]
</pre>

Assuming the browser has a div with id = div1, then the div will be filled with
some HTML contained in the binary Bin.

Likewise buttons and controls in the browser, when pressed, send
messages to Erlang.

This system is built using websockets together with cowboy and is
described in Joe Armstrong's book Programming Erlang (2'nd edition).


NOTE
====

This has only been tested in the chrome browser. Life is too short to
test this in all known browsers.

INSTALLATION
============

This program uses rebar3 to fetch and install the necessary dependencies.
First you need to install rebar3: https://github.com/erlang/rebar3

DEMOS
=====

To run the demos:

<pre>
$ make
</pre>

There is one directory per demo

src/ezwebframe_demos/index.html - is an index
src/ezwebframe_demos/js/        - common code
src/ezwebframe_demos/XXX/       - demo XXX

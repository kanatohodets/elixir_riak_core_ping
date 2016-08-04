# Pingring

Sketch of a `riak_core` application in Elixir.

First demo app for "Stateful Web Apps with Phoenix and Riak Core"

This app is complete iff you only need to distribute CPU time around your ring:
for data purposes it is incomplete, as it lacks handoff or write/read
coordination.

See the [hashpub](https://github.com/kanatohodets/hashpub), but essentially:

    mix deps.get
    MIX_ENV=dev_a iex --name dev_a@127.0.0.1 -S mix

Potentially also a terminal for `dev_b`, and `dev_c` if you want a cluster, plus

    :riak_core.join('dev_b@127.0.0.1')

Just like in the hashpub README

Feel free to open an issue if you run into trouble!

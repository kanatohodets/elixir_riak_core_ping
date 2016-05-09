# Pingring

Sketch of a `riak_core` application in Elixir.

First demo app for "Stateful Web Apps with Phoenix and Riak Core"

This app is complete iff you only need to distribute CPU time around your ring:
for data purposes it is incomplete, as it lacks handoff or write/read
coordination.

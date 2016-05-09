defmodule Pingring.App do
  use Application
  def start(_type, _args) do
    case Pingring.Sup.start_link() do
      {:ok, pid} ->
        :ok = :riak_core.register([{:vnode_module, Pingring.Vnode}])
        :ok = :riak_core_node_watcher.service_up(Pingring.Service, self())
        {:ok, pid}
      {:error, reason} ->
        {:error, reason}
    end
  end
end

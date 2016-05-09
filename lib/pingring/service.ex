defmodule Pingring.Service do
  def ping do
    doc_idx = :riak_core_util.chash_key({"ping", :erlang.term_to_binary(:os.timestamp())})
    pref_list = :riak_core_apl.get_primary_apl(doc_idx, 1, Pingring.Service)
    [{index_node, _type}] = pref_list
    # riak core appends "_master" to Pingring.Vnode.
    :riak_core_vnode_master.sync_spawn_command(index_node, :ping, Pingring.Vnode_master)
  end
end

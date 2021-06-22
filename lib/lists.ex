defmodule Lists do
  @lists "lists.txt"

  defstruct iten_name: nil, amount: nil, price_per: nil, total_itens: 0

  def new_item(item_name, amount, price_per) do
    list = %__MODULE__{iten_name: item_name, amount: amount, price_per: price_per}
    cond do
      search_list() == nil ->
        totalItens =  [%Lists{list | total_itens: list.amount * list.price_per}]
        |> :erlang.term_to_binary()
        write_file(totalItens)
        true->
        totalItens = [%Lists{list | total_itens: list.amount * list.price_per}] ++ search_list()
        |> :erlang.term_to_binary()
        write_file(totalItens)
    end
  end

  def write_file(total_itens) do
    File.write(@lists, total_itens)
    search_completed_list()
  end

  def search_list do
    cond do
      File.read(@lists) == {:ok, ""} -> nil
      true ->
      {:ok, list} = File.read(@lists)
       :erlang.binary_to_term(list)
    end
  end

  def search_completed_list do
    search_list() ++ "O valor total do pediddo: R$#{final_price()}"
  end

  def final_price() do
    list = Enum.map(search_list(), &(&1.total_itens))
    _result = Enum.sum(list)
  end
end

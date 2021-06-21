defmodule Lists do
  @lists "lists.txt"

  defstruct itenName: nil, amount: nil, pricePer: nil, totalItens: 0

  def new_item(itemName, amount, pricePer) do
    list = %__MODULE__{itenName: itemName, amount: amount, pricePer: pricePer}
    cond do
      search_list() == nil ->
        totalItens =  [%Lists{list | totalItens: list.amount * list.pricePer}]
        |> :erlang.term_to_binary()
        write_file(totalItens)
        true->
        totalItens = [%Lists{list | totalItens: list.amount * list.pricePer}] ++ search_list()
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
    list = Enum.map(search_list(), &(&1.totalItens))
    _result = Enum.sum(list)
  end
end

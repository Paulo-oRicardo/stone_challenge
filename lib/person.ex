defmodule Person do
  defstruct email: nil, amountToPay: 0
  def newPerson(email) do
    %__MODULE__{email: email}

  end
end

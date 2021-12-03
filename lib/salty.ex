defmodule Salty do
  @moduledoc """
  Salty.
  """

  alias Salty.Nif, as: Nif

  @doc """
  Compares binaries a and b in a side-channel free way.
  """
  def equals(a, b), do: Nif.memcmp(a, b)
end

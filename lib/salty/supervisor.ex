defmodule Salty.Supervisor do
  @moduledoc """
  The root supervisor of `GenServer` processes in `libsalty2`.
  """

  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  @impl Supervisor
  def init([]) do
    Supervisor.init([], strategy: :one_for_one)
  end
end

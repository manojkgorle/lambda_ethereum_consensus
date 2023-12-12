defmodule Helpers.SszStaticContainers.FixedTestStruct do
  @moduledoc """
  Struct definition for `FixedTestStruct`.
  """
  @behaviour LambdaEthereumConsensus.Container

  fields = [
    :A,
    :B,
    :C
  ]

  @type uint32 :: 0..unquote(2 ** 32 - 1)

  @enforce_keys fields
  defstruct fields

  @type t :: %__MODULE__{
          A: SszTypes.uint8(),
          B: SszTypes.uint64(),
          C: uint32()
        }

  @impl LambdaEthereumConsensus.Container
  def schema do
    [
      {:A, {:int, 8}},
      {:B, {:int, 64}},
      {:C, {:int, 32}}
    ]
  end
end
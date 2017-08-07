defmodule MarketApi.Product do
  use MarketApi.Web, :model

  schema "products" do
    field :name, :string
    field :barcode, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :barcode])
    |> validate_required([:name, :barcode])
  end
end

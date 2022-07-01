defmodule TorobBackend.Stores.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :price, :integer
    belongs_to :user , TorobBackend.Accounts.User
    belongs_to :shop , TorobBackend.Stores.Shop
    belongs_to :model , TorobBackend.Stores.Model
#    many_to_many :likes, TorobBackend.Stores.Product,join_through: "likes", on_replace: :delete
    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:price])
    |> validate_required([:price])
  end
end

defmodule BeamToolbox.CategoryTest do
  use BeamToolbox.ModelCase

  alias BeamToolbox.Category

  @valid_attrs %{name: "some content", slug: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Category.changeset(%Category{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Category.changeset(%Category{}, @invalid_attrs)
    refute changeset.valid?
  end
end

defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  import GallowsWeb.Views.Helpers.HangmanHelpers

  def new_game_button(conn) do
    button("New game", to: Routes.hangman_path(conn, :create_game))
  end

  def game_over?(game_state) do
    game_state in [:won, :lost]
  end

  def turn(left, target) when target >= left do
    "opacity: 1;"
  end

  def turn(left, target) do
    "opacity: 0.1;"
  end
end

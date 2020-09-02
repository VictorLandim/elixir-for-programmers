defmodule GallowsWeb.Views.Helpers.HangmanHelpers do
  import Phoenix.HTML, only: [raw: 1]

  @responses %{
    :won => {:info, "You won!"},
    :already_used => {:info, "You already used that letter."},
    :good_guess => {:info, "Good guess!"},
    :bad_guess => {:warning, "Bad guess!"},
    :lost => {:danger, "You lost!"}
  }

  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert(nil), do: ""

  defp alert({class, message}) do
    """
      <div class="alert alert-#{class}">
        #{message}
      </div>
    """
    |> raw()
  end
end

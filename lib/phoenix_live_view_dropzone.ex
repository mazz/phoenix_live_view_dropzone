defmodule PhoenixLiveViewDropzone do
  @moduledoc """
    Phoenix Live View Dropzone

    A file upload solution for Phoenix Live View.
  """

  use Phoenix.LiveComponent

  @default_name "phoenix-live-view-dropzone"

  @doc """
  Renders the LiveComponent.

  ## Options
  * `file_data` - map - A `%{"id" => id, "url" => url}` assign used to pass upload urls to the component hook.
  * `dom_id` - string - Sets the id attribute on the outer div, defaults to `phoenix-live-view-dropzone`.
  * `css_class` - string - Sets the class attribute on the outer div, defaults to `phoenix-live-view-dropzone`.
  * `hook_name` - string - Sets the `phx-hook` value on the outer div, defaults to `PhoenixLiveViewDropzone`.
  """
  def render(assigns) do
    ~L"""
    <div
      class="<%= css_class(assigns) %>"
      id="<%= id(assigns) %>"
      data-id="<%= data(assigns)[:id] %>"
      data-url="<%= data(assigns)[:url] %>"
      phx-update="ignore"
      phx-hook="<%= hook_name(assigns) %>"
    >
    </div>
    """
  end

  defp id(%{dom_id: dom_id}) when is_binary(dom_id), do: dom_id
  defp id(_), do: @default_name

  defp css_class(%{css_class: css_class}) when is_binary(css_class), do: css_class
  defp css_class(_), do: @default_name

  defp data(%{file_data: %{id: id, url: url}}), do: %{id: id, url: url}
  defp data(_), do: %{id: "", url: ""}

  defp hook_name(%{hook: name}) when is_binary(name), do: name
  defp hook_name(_), do: "PhoenixLiveViewDropzone"
end

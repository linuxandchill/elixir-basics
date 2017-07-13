defmodule TwitchIrc.Api do 
  use HTTPoison.Base

  @version "v5"
  @base_url "https://api.twitch.tv/kraken"

  #Headers values
  @client_id Application.get_env(:twitch_irc, :api_secret_token)
  @accept_header_value "application/vnd.twitchtv.#{@version}+json"

  #helper to request directly w path
  def process_url(url), do: @base_url <> url

  #add Accept & Client-Id headers
  def process_request_headers(headers) do 
    new_headers = [{"Accept", @accept_header_value},
                   {"Client-Id", @client_id}]
    new_headers ++ headers
  end

  #decode JSON body
  def process_response_body(body), do: Poison.decode!(body)

  #get top streams
  def get_top_streams!(params \\ %{}) do
    Map.fetch!(get!("/streams", [], params: params).body, "streams")
  end

  #get top channels
  def get_top_channels!(params \\ %{}) do
    params
    |> get_top_streams!
    |> Enum.map( fn stream -> Map.fetch!(stream, "channel") end )
  end
end

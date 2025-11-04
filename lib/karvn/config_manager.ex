defmodule Karvn.ConfigManager do
  def check_file_exists(path) do
    case File.exists?(path) do
      true -> :ok
      false -> :error
    end
  end
end

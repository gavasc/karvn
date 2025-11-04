defmodule Karvn.ConfigManagerTest do
  use ExUnit.Case, async: true

  alias Karvn.ConfigManager

  @fixtures "test/fixtures"

  describe "check_file_exists" do
    test "returns :ok when the config file exists" do
      assert ConfigManager.check_file_exists(@fixtures <> "/valid_config.json") == :ok
    end

    test "returns :error when the config file does not exist" do
      assert ConfigManager.check_file_exists(@fixtures <> "/invalid_config.json") == :error
    end
  end

end

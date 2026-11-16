class Cin7Cli < Formula
  desc "Command-line program to interact with Cin7"
  homepage "https://github.com/ScreenStaring/cin7-cli"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ScreenStaring/cin7-cli/releases/download/v0.0.1/cin7-cli_0.0.1_darwin_amd64.tar.gz"
      sha256 "5e7ae2e486efe6992cc609066802bb0f8dfd9bfb2de05f90e699c7b07cf53a69"

      def install
        bin.install "cin7"
      end
    end
    on_arm do
      url "https://github.com/ScreenStaring/cin7-cli/releases/download/v0.0.1/cin7-cli_0.0.1_darwin_arm64.tar.gz"
      sha256 "df2b8b505f002c2bb11fe158abbc258f4205383e1e041ff9d0dfbdb0e52bd134"

      def install
        bin.install "cin7"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ScreenStaring/cin7-cli/releases/download/v0.0.1/cin7-cli_0.0.1_linux_amd64.tar.gz"
        sha256 "7e38a8d868018eafd9e3027885efc9843d53d09dd96b066303877abeaf70a525"

        def install
          bin.install "cin7"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ScreenStaring/cin7-cli/releases/download/v0.0.1/cin7-cli_0.0.1_linux_arm64.tar.gz"
        sha256 "aeab0e6e743069ead51b033054aa8ba6d1d193687e946f7b62873054723d9840"

        def install
          bin.install "cin7"
        end
      end
    end
  end
end

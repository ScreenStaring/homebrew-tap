class ShopifyDevTools < Formula
  desc "Command-line program to assist with the development and maintenance of Shopify apps and stores (metafields, metaobjects, GraphQL, orders, products, webhooks, and more!)"
  homepage "https://github.com/ScreenStaring/shopify-dev-tools"
  version "0.1.6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ScreenStaring/shopify-dev-tools/releases/download/v0.1.6/shopify-dev-tools_0.1.6_darwin_arm64.tar.gz"
      sha256 "36751dad11850aaa28548982a758ffb908b1279576bbcb5c37ad315781e466fd"
    else
      url "https://github.com/ScreenStaring/shopify-dev-tools/releases/download/v0.1.6/shopify-dev-tools_0.1.6_darwin_amd64.tar.gz"
      sha256 "a6ba6c155c92d906427e81ea9eddf3d23eddb70ffe73c21956ea46100f0daa65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ScreenStaring/shopify-dev-tools/releases/download/v0.1.6/shopify-dev-tools_0.1.6_linux_arm64.tar.gz"
      sha256 "a0cbec3550382cebf06291746f2b92eccd79e8a699a53ae4ef10483e2add3912"
    else
      url "https://github.com/ScreenStaring/shopify-dev-tools/releases/download/v0.1.6/shopify-dev-tools_0.1.6_linux_amd64.tar.gz"
      sha256 "c9ad994d0bed48ab1971f746a8f979e4e8949dee3d3282229361a548b9989dd1"
    end
  end

  def install
    bin.install "sdt"
  end

  def caveats
    <<~EOS
      The binary is installed as `sdt`.

      Example:
        sdt --help
        sdt products ls --shop your-shop --access-token your-token

      Full documentation: https://github.com/ScreenStaring/shopify-dev-tools
    EOS
  end

  test do
    assert_match "Shopify Development Tools", shell_output("#{bin}/sdt --help")
  end
end

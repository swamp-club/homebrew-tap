class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260617.212026.0-sha.396e0952"

  on_macos do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "013eebf7dfe7f19f4cd634f5f8147286d0a7a6ee432e50d71c0553113b6d73b7"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "b23ca1d8b8cd07e864a086fa4295b7d7076540137468e0de42141fc53c77fd47"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "2ae1ee17e83e18ab0d3c84b96f8d022cf672973c1e3c8cbdb9f1f11a2d62b0ce"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "3e86904e2bdf96a2a2d86a91b566fa8fa76cd2cab42f60d384b8b8a6f8a0eba6"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end

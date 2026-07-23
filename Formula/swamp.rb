class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260723.231121.0-sha.6a7f25ee"

  on_macos do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "692858a9a88652687cd2a5fb835b4fb2057c7019664ed0bc806b6303ba19c6cb"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "0cad9b219948826d11b9c33ddb3b6105b007abfd95f2082f00b3f65410441a7f"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "02c09e5e08360dbd2b0d68ed4a28bd495e41dd274ce68f3f55e68424ffcd1910"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "21bf2dfb420106f2bee49cc93ed0ff19a077d8955e7bb3300bf00d26c2cb39f7"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end

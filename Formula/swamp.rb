class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20261118.151801.0-sha.b5378b11"

  on_macos do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "5eca3e6b95e1ab2ca461170165cebad22ef684a1f92f67d8b27f9957d77ad557"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "dae7b89ab9aa660f448be23880946c10271f24f886fe02ee0a6d6e2c52eb80ee"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "470dbb78b96192aa89a931879ee4c5e429f9d81623eb7a181dd3f3c848b7da96"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "11b11ea465d786e9063aec9dc46a765e39ed97cd42ecc0f7d0a7a9e6f5419252"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end

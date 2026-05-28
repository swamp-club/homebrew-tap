class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260527.235818.0-sha.ed572875"

  on_macos do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "45bd31aa8af065476f33a275473cd6e31241e20de5897d6c1e8e5a8997c4ed63"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "23a79f7c5c0a10eb4ea20be8b0dd4baa05db8e5a869d6b0f9f6d98b60cf4a4a6"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "386bd9c5ebfc1fd72bd2e7a9ff5060fb1d63bc0b2f6b4f7c8dcb933ac1d1fe0d"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "be3abfff2097a377a0a53e772374699225f5ba1d0b4762135a77169bf6ac2b4b"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end

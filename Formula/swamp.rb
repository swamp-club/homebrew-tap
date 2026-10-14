class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20261014.203658.0-sha.4b09c8eb"

  on_macos do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "6af93d6e384d62725b2a89467e4b1c7384562af934073c36afbc54c1cfa3bfad"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "8bcfb74721c8cf8bef75bee341af7e102ff91cba72a257e320540059bd6ca34c"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "56f5971103c57241b000af35f560a8cd9979d18d61ea5c26e096b9d355d7ebaf"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "4a6e08409e30413e8254e6462d0faf5493a7894412e975dd80b8eb684bf56383"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end

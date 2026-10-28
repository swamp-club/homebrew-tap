class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20261028.163242.0-sha.01c81de7"

  on_macos do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "5f988a77fe6c7ea4d9e98e80f090d765dfb841541ea35b5fd8b1408525b0f772"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "a878f5d2578bf1f328ea79010ceedff0bf6689c575f3dc21462c9454c82b3c57"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "fa479cff843a2b596449aabf49baa988627d86de84326364cb59005529dfca6a"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "1da86a50766184446bd4bb0499689af3411d56e4684f94e0122710d69d2cd7df"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end

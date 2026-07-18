class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260718.214947.0-sha.4a2f976c"

  on_macos do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "137010fcc14a1272b51ed057770404af8f53303703362d5d0ac19d5ea6db7124"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "e2146e4acfff7ac2c8ec77efe3e1f1cb6098b08513e095fab5f0540f57a6c85e"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "089183eb2bb5c047504748ab8bfb6b1be4033f22bf815a6dc8e77bd76e887c81"
    end
    on_arm do
      url "https://artifacts.swamp-club.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "618f079a5201e5edaa8142198260e0068768ea76490cd57a9b0be0227f7f63bf"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end

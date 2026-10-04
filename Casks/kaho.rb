cask "kaho" do
  version "2.2.0"
  sha256 "8540f20bd8d768b8f4887c0d08df31aafdf67fa45dfea07773bb8df2daf30657"

  url "https://github.com/utsavanand/kaho/releases/download/v#{version}/Kaho-#{version}.dmg"
  name "Kaho"
  desc "Local voice dictation for macOS — hold a key, speak, release"
  homepage "https://kaho.utsava.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  # 2.2.0 bundles a Python and MLX built for macOS 15; back to :sonoma once a
  # release built by the macOS 14 release script (kaho 072eee6) ships
  depends_on macos: :sequoia

  app "Kaho.app"

  zap trash: [
    "~/Library/Application Support/Kaho",
    "~/Library/Logs/Kaho.log",
  ]
end

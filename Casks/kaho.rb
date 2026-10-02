cask "kaho" do
  version "2.1.0"
  sha256 "8888761bc09656ae2945e49bb9a5fcda9ef6788f537ea6d0f97c1c3dec450d5d"

  url "https://github.com/utsavanand/kaho/releases/download/v#{version}/Kaho-#{version}.dmg"
  name "Kaho"
  desc "Local voice dictation for macOS — hold a key, speak, release"
  homepage "https://kaho.utsava.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Kaho.app"

  zap trash: [
    "~/Library/Application Support/Kaho",
    "~/Library/Logs/Kaho.log",
  ]
end

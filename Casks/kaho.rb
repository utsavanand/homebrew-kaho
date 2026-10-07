cask "kaho" do
  version "2.4.0"
  sha256 "cf5eb7f33c7c8bac40c6c6fbed72090da1476d46b82d935601f845002a21b813"

  url "https://github.com/utsavanand/kaho/releases/download/v#{version}/Kaho-#{version}.zip"
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

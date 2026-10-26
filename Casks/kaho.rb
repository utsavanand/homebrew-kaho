cask "kaho" do
  version "2.4.6"
  sha256 "70ba54ef57df367b72661057abbab2b9893eb15b011b793bfc83395cffb825e1"

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

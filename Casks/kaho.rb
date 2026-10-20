cask "kaho" do
  version "2.4.4"
  sha256 "d0dd8b9379c4e0de1a8fea6016495c427d0abb957d9a5d7fbe45f0a0fc1bda24"

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

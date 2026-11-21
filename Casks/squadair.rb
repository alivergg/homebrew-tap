cask "squadair" do
  arch arm: "arm64"

  version "1.7"
  sha256 "d67c92e390b9ad4d9aed3227e7e45fdac72b707165ca54d1314f3815ebabb055"

  url "https://github.com/alivergg/squad-air/releases/download/v#{version}/SquadAir-Installer-macos-arm64.pkg",
      verified: "github.com/alivergg/squad-air/"
  name "SquadAir"
  desc "Ultra-lightweight P2P voice chat and 1080p60 screen sharing built in Rust"
  homepage "https://squadair.app/"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  pkg "SquadAir-Installer-macos-arm64.pkg"

  uninstall quit:    "com.squadair.client",
            pkgutil: "com.squadair.client",
            delete:  "/Applications/SquadAir.app"

  zap trash: [
    "~/Library/Application Support/squad-air",
    "~/Library/Caches/squad-air",
  ]
end

cask "fude" do
  version "0.1.0,2"
  sha256 "d3116c592cc86170094c413879579fcc8291494feefcd8cfc7099930327a0fe6"

  url "https://github.com/manaty226/fude-release/releases/download/v#{version.csv.first}/Fude-#{version.csv.first}-#{version.csv.second}-macos-universal.zip"
  name "Fude"
  desc "Native code editor built with Rust and GPUI"
  homepage "https://github.com/manaty226/fude-release"

  depends_on macos: :ventura

  app "Fude.app"
end

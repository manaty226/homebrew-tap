cask "fude" do
  version "0.1.0,2"
  sha256 "d3116c592cc86170094c413879579fcc8291494feefcd8cfc7099930327a0fe6"

  url "https://github.com/manaty226/fude-release/releases/download/v#{version.csv.first}/Fude-#{version.csv.first}-#{version.csv.second}-macos-universal.zip"
  name "Fude"
  desc "Native code editor built with Rust and GPUI"
  homepage "https://github.com/manaty226/fude-release"

  livecheck do
    url :url
    regex(/^Fude[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]macos-universal\.zip$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.filter_map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: :ventura

  app "Fude.app"
end

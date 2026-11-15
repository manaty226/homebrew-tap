cask "fude" do
  on_arm do
    version "0.1.58,60"
    sha256 "f01d22243c2dec0377841dd3597958cef00c4e959a43cd67ea9f8f3dae5e0c49"

    url "https://github.com/manaty226/homebrew-tap/releases/download/v#{version.csv.first}/Fude-#{version.csv.first}-#{version.csv.second}-macos-arm64.zip"

    binary "#{appdir}/Fude.app/Contents/MacOS/fude"
  end
  on_intel do
    version "0.1.2,4"
    sha256 "4b9d4a761c6ba8affdb581b79ecf54d42947bc087a8eaae553aa20ca3c2df90b"

    url "https://github.com/manaty226/homebrew-tap/releases/download/v#{version.csv.first}/Fude-#{version.csv.first}-#{version.csv.second}-macos-universal.zip"
  end

  name "Fude"
  desc "Native code editor built with Rust and GPUI"
  homepage "https://github.com/manaty226/homebrew-tap#fude"

  livecheck do
    url :url
    regex(/^Fude[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]macos-(?:universal|arm64)\.zip$/i)
    strategy :github_releases do |json, regex|
      json.flat_map do |release|
        next [] if release["draft"] || release["prerelease"]

        release.fetch("assets", []).filter_map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end
    end
  end

  depends_on macos: :ventura

  app "Fude.app"
end

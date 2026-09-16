cask "preroll" do
  version "1.0.0"
  sha256 "4bdf24326fa80555784b7d388aa517537150b7b961823b022538de0ef4bb0468"

  url "https://github.com/ksha23/preroll/releases/download/v#{version}/Preroll-#{version}.zip"
  name "Preroll"
  desc "Menu bar app that cuts AirPlay output latency"
  homepage "https://github.com/ksha23/preroll"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Preroll.app"
  # The measurement tools ride inside the bundle
  binary "#{appdir}/Preroll.app/Contents/MacOS/preroll-latency"
  binary "#{appdir}/Preroll.app/Contents/MacOS/aplat"

  uninstall quit: "com.ksha23.preroll"

  zap trash: "~/Library/Preferences/com.ksha23.preroll.plist"

  caveats <<~EOS
    Preroll sets a system wide AirPlay latency override, so it asks for an
    admin password once. Set it to Inactive in the menu before uninstalling,
    otherwise the override stays behind in /Library/Preferences/com.apple.airplay.

    This build is not notarized yet, so macOS refuses the first launch. Open
    System Settings > Privacy & Security and press Open Anyway. To avoid that
    altogether, build it from source: github.com/ksha23/preroll
  EOS
end

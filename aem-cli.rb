class AemCli < Formula
  desc "AEM command line interface"
  homepage "https://github.com/jlentink/aem"
  version "1.0.0rc16"
  url "https://github.com/jlentink/aem/archive/#{version}.zip"
  sha256 "e89703df3cf6dd53a529ebbc0b672e5ea17446269e6f3463050708ad69e555bf"
  depends_on "go" => :build

  def install
    system "make BUILT_HASH=brewBuild brew"
    bin.install "aem" => "aem"
  end

  test do
    system "#{bin}/aem", "version"
  end
end

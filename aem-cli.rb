class AemCli < Formula
  desc "AEM command line interface"
  homepage "https://github.com/jlentink/aem"
  version "1.0.0rc14"
  url "https://github.com/jlentink/aem/archive/#{version}.zip"
  sha256 "79db9e787ac3a44349bb449ecdd3d10af8e35238e707a38a12ad45319f35fcf4"
  depends_on "go" => :build

  def install
    system "make BUILT_HASH=brewBuild brew"
    bin.install "aem" => "aem"
  end

  test do
    system "#{bin}/aem", "version"
  end
end

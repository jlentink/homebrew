class AemCli < Formula
  desc "AEM command line interface"
  homepage "https://github.com/jlentink/aem"
  version "1.0.0rc10"
  url "https://github.com/jlentink/aem/archive/#{version}.zip"
  sha256 "0bd0e59d48faf5709762ad62a1658451102184341b0be4dff4246988242eafe5"
  depends_on "go" => :build

  def install
    system "make BUILT_HASH=brewBuild brew"
    bin.install "aem" => "aem"
  end

  test do
    system "#{bin}/aem", "version"
  end
end

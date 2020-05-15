class AemCli < Formula
  desc "AEM command line interface"
  homepage "https://github.com/jlentink/aem"
  version "1.0.0rc13"
  url "https://github.com/jlentink/aem/archive/#{version}.zip"
  sha256 "f50808d69f0c6fd4d854c4149ed5189794ff2002f4641442cb3c41a524d29215"
  depends_on "go" => :build

  def install
    system "make BUILT_HASH=brewBuild brew"
    bin.install "aem" => "aem"
  end

  test do
    system "#{bin}/aem", "version"
  end
end

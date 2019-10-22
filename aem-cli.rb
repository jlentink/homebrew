class AemCli < Formula
  desc "AEM command line interface"
  homepage "https://github.com/jlentink/aem"
  version "1.0.0rc10"
  url "https://github.com/jlentink/aem/archive/#{version}.zip"
  sha256 "4660e1b2c865b48373fc21fab95800d895180b613a42ef424aaf71d83f147003"
  depends_on "go" => :build

  def install
    system "make BUILT_HASH=brewBuild brew"
    bin.install "aem" => "aem"
  end

  test do
    system "#{bin}/aem", "version"
  end
end

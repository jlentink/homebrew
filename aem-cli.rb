# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AemCli < Formula
  desc "AEM command line interface"
  homepage "https://github.com/jlentink/aem"
  version "1.0.0rc9"
  url "https://github.com/jlentink/aem/archive/#{version}.zip"
  sha256 "871893692679d826d1eae1caaa2ec37ab61cc6098113e1146b7034c6ee5a62f9"

  # depends_on "cmake" => :build
  depends_on "go" => :build

  def install
    system "make BUILT_HASH=brewBuild brew"
    bin.install "aem" => "aem"
  end

  test do
    system "#{bin}/aem", "version"
  end
end

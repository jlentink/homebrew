# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aem < Formula
  desc "Command line tool for AEM"
  homepage "https://github.com/jlentink/aem"
  version "1.0.0rc17"
  license "GPL-2.0 License"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jlentink/aem/releases/download/1.0.0rc17/aem_Darwin_x86_64.tar.gz"
    sha256 "c144ea7dc8d1af74ee0d8b71867eff11f0b947220622002545417f3e2147d461"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jlentink/aem/releases/download/1.0.0rc17/aem_Linux_x86_64.tar.gz"
    sha256 "db81cd940beeea1639e757a19dad5d062448f93d1876c9709c1d3e1c3268b044"
  end

  depends_on "go"

  def install
    bin.install "aem"
    bash_completion.install "completions/aem.bash" => "aem"
    zsh_completion.install "completions/aem.zsh" => "_aem"
    fish_completion.install "completions/aem.fish"
  end

  test do
    system "#{bin}/aem -v"
  end
end

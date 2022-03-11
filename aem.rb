# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aem < Formula
  desc "Command line tool for AEM"
  homepage "https://github.com/jlentink/aem"
  version "1.0.7"
  license "GPL-2.0 License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jlentink/aem/releases/download/1.0.7/aem_MacOS_arm64.tar.gz"
      sha256 "ea702ba6c477c399ae6a251401ee3ac24349f96850395c37efe8bc51e3d173c0"

      def install
        bin.install "aem"
        bash_completion.install "completions/aem.bash" => "aem"
        zsh_completion.install "completions/aem.zsh" => "_aem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jlentink/aem/releases/download/1.0.7/aem_MacOS_x86_64.tar.gz"
      sha256 "572a27f3e2767a19c86765072ac16867f11d32f3f3f1c9a1a01050ec297d46dd"

      def install
        bin.install "aem"
        bash_completion.install "completions/aem.bash" => "aem"
        zsh_completion.install "completions/aem.zsh" => "_aem"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jlentink/aem/releases/download/1.0.7/aem_Linux_arm64.tar.gz"
      sha256 "6a6ff206e246f176ffaec7eb01e2915a474b760a19be919a965075c5ea6ac33e"

      def install
        bin.install "aem"
        bash_completion.install "completions/aem.bash" => "aem"
        zsh_completion.install "completions/aem.zsh" => "_aem"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jlentink/aem/releases/download/1.0.7/aem_Linux_x86_64.tar.gz"
      sha256 "e6fe71c00c80b8ab51274d1266aa448a62a05afa46348839f8f7d03bafcd822d"

      def install
        bin.install "aem"
        bash_completion.install "completions/aem.bash" => "aem"
        zsh_completion.install "completions/aem.zsh" => "_aem"
      end
    end
  end

  depends_on "go"

  test do
    system "#{bin}/aem -v"
  end
end

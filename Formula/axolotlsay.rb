class Axolotlsay < Formula
  desc "💬 a CLI for learning to distribute CLIs in rust"
  version "1.2.34"
  on_macos do
    on_arm do
      url "https://github.com/ashleygwilliams/axolotlsay-demo/releases/download/v1.2.34/axolotlsay-aarch64-apple-darwin.tar.gz"
      sha256 "dcc77637ae03afddef2c4cc435cac4f94bc27f7a995719a75d925d6e28256301"
    end
    on_intel do
      url "https://github.com/ashleygwilliams/axolotlsay-demo/releases/download/v1.2.34/axolotlsay-x86_64-apple-darwin.tar.gz"
      sha256 "13d291963094f5d2b823fbc7c85483ba1f971d78129cbcf9e6c52c5f3b815dd7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/ashleygwilliams/axolotlsay-demo/releases/download/v1.2.34/axolotlsay-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a65fbddbfeb06a12c7ea6e468497dd2cf3ddb3d3e8ceb19966d4e9b118ba105f"
    end
  end
  license "MIT OR Apache-2.0"

  def install
    on_macos do
      on_arm do
        bin.install "axolotlsay"
      end
    end
    on_macos do
      on_intel do
        bin.install "axolotlsay"
      end
    end
    on_linux do
      on_intel do
        bin.install "axolotlsay"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end

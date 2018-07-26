class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/raw/master/Sources/ios-polyglot.tar.gz"
    sha256 "2db225f3c9a8b9fb02656fc19928a400302e7290f7cfac32fb74152378df3be5"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      system "ln", "-s", "#{bin}/release/polyglot", "#{bin}/polyglot"
    end
  
    test do
      system "false"
    end
  end

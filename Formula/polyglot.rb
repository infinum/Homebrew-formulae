class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/raw/master/Sources/ios-polyglot.tar.gz"
    sha256 "45c01a9960b4588d851f6d78e67f4c643a90fcbdfc5f3addc06c726772bed74f"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      system "ln", "-s", "#{bin}/release/polyglot", "#{bin}/polyglot"
    end
  
    test do
      system "false"
    end
  end

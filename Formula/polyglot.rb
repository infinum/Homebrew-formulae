class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/raw/master/Sources/ios-polyglot.tar.gz"
    sha256 "71f8c9bc85e11010d444ee433f480afd729b21f833980f368c621d20c891c6a0"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      system "ln", "-s", "#{bin}/release/polyglot", "#{bin}/polyglot"
    end
  
    test do
      system "false"
    end
  end

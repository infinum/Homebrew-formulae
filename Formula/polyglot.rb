class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/blob/master/Sources/ios-polyglot.tar.gz"
    sha256 "40d1a2381f08932c922a8c7ade892510b2ed0c2cb2bb73cebb89141c5737402d"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      @bin = "#{bin}/release"
    end
  
    test do
      system "false"
    end
  end

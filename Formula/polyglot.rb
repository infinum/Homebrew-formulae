class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/blob/master/Sources/ios-polyglot.tar.gz"
    sha256 "248ba2c4113b5820f952a4bf4fa11783127dab2e30d79221c5b469c0179bdd92"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      @bin = "#{bin}/release"
    end
  
    test do
      system "false"
    end
  end

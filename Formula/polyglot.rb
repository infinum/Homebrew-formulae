class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/raw/master/Sources/ios-polyglot.tar.gz"
    sha256 "4101549b53c807d57ad953d0af5e826bf5444d134f1281ad64fea74fe0f97cef"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      system "ln", "-s", "#{bin}/release/polyglot", "#{bin}/polyglot"
    end
  
    test do
      system "false"
    end
  end

class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/raw/master/Sources/ios-polyglot.tar.gz"
    sha256 "db5ddb6f1d1d3363c1c4ee53c5e30eff95b4bc824990466766ff143806446105"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      system "ln", "-s", "#{bin}/release/polyglot", "#{bin}/polyglot"
    end
  
    test do
      system "false"
    end
  end

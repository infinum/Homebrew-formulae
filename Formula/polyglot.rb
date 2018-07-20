class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/blob/master/Sources/ios-polyglot.tar.gz"
    sha256 "8601e75c70fb1eac522449ff59ef74fd34d376744bfa5b34fc44bd2ece34a4d7"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      @bin = "#{bin}/release"
    end
  
    test do
      system "false"
    end
  end

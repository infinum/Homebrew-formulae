class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/Homebrew-formulae/blob/master/Sources/iOS-Polyglot-1.0.tar.gz"
    sha256 "a027665de70005657c8ec5b76d67ad489eab132a7dc0f902b642a061f3c4d1d2"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      @bin = "#{bin}/release"
    end
  
    test do
      system "false"
    end
  end

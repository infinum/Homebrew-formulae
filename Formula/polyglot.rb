class Polyglot < Formula
    desc "Infinum's polyglot tool for iOS"
    homepage "https://github.com/infinum/iOS-Polyglot"
    #head "git@github.com:infinum/iOS-Polyglot.git", :using => :git
    url "https://github.com/infinum/iOS-Polyglot/archive/v1.0.tar.gz"
    sha256 "52dd570c30dd3835ae1ff092fc6315e4846f919e1c53862ba37a7da8ce66d909"
  
    def install
      system "swift", "build", "-c", "release", "-v", "--build-path=#{bin}", "--disable-sandbox"
      @bin = "#{bin}/release"
    end
  
    test do
      system "false"
    end
  end

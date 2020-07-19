class Shade < Formula
    desc "CLI Tools for Phillips Hue Lights"
    homepage "https://Shade.lighting"
    url "https://github.com/InkApplications/Shade/releases/download/1.1.1/shade.zip"
    sha256 "25513208e528498c37b5d69632a642c839434a01336a71453cc42d7fd68ef62a"
    version "1.1.1"

    depends_on :java => "1.8"
    bottle :unneeded
  
    def install
        libexec.install ["bin", "lib"]
        bin.install_symlink libexec/"bin/shade"
    end

    test do
        system "shade"
    end
end
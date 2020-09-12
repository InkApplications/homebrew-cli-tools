class Shade < Formula
    desc "CLI Tools for Phillips Hue Lights"
    homepage "https://Shade.lighting"
    url "https://github.com/InkApplications/Shade/releases/download/1.1.3/shade.zip"
    sha256 "369884fe4ce99c3cb906739ffff23c45ef2d3411d9e31617aca0d6b8ae831570"
    version "1.1.3"

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
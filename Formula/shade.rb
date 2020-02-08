class Shade < Formula
    desc "CLI Tools for Phillips Hue Lights"
    homepage "https://Shade.lighting"
    url "https://github.com/InkApplications/Shade/releases/download/1.0.0-beta/shade.zip"
    sha256 "6167f9ed41ce2598fe82c4e5a77baf289e5ccabb32f714df920094e7783c3d7a"

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
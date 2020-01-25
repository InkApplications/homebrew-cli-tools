class Shade < Formula
    desc "CLI Tools for Phillips Hue Lights"
    homepage "https://Shade.lighting"
    url "https://github.com/InkApplications/Shade/releases/download/1.0.0-alpha.2/shade.zip"
    sha256 "73ce1baad3f8de47a2672c47acbe0b86730b3b60d096c4dbe87bcbacf4cbd1d9"

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
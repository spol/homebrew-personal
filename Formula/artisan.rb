require 'formula'

class Artisan < Formula
  homepage 'https://github.com/spol/ArtisanCli'
  url 'https://github.com/spol/ArtisanCli/archive/v0.1.1.zip'
  sha1 '8c13b1406dbe4c3f6cb88e7a7287965e5033111e'
  head 'https://github.com/spol/ArtisanCli.git'
  version '0.1.1'

  def install
    bin.install('artisan')
  end
end

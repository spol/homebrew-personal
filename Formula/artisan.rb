require 'formula'

class Artisan < Formula
  homepage 'https://github.com/spol/ArtisanCli'
  url 'https://github.com/spol/ArtisanCli/archive/v0.1.0.zip'
  sha1 '3347a196bb0033432ea9383c2802c869d32eccff'
  head 'https://github.com/spol/ArtisanCli.git'
  version '0.1.0'

  def install
    bin.install('artisan')
  end
end

require 'formula'

class Artisan < Formula
  homepage 'https://github.com/spol/ArtisanCli'
  url 'https://github.com/spol/ArtisanCli/archive/v0.1.1.zip'
  sha1 '10449f9d04791557e2ca20c9ffa957647c314359'
  head 'https://github.com/spol/ArtisanCli.git'
  version '0.1.1'

  def install
    bin.install('artisan')
  end
end

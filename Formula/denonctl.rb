require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Denonctl < Formula
  homepage 'https://github.com/spol/DenonCtl'
  url 'https://github.com/spol/DenonCtl/archive/v0.1.0.zip'
  sha1 'a74a677f5f9c1b158cce7955d5e3dfca0a301716'
  head 'https://github.com/spol/DenonCtl.git'
  version '0.1.0'

  def install
    bin.install('denonctl')
  end
end

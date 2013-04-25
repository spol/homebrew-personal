require 'formula'

class CordovaIos < Formula
  homepage 'http://phonegap.com'
  url 'https://github.com/apache/cordova-ios/archive/2.6.0.zip'
  version '2.6.0'
  sha1 '6c9b959d09c4710c39509f3cacfb11bf4e01f0d3'
  head 'https://github.com/apache/cordova-ios.git'

  depends_on 'coreutils'

  def install
    inreplace %w{bin/create bin/test} do |s|
      s.gsub! /readlink/, 'greadlink -f'
    end
    libexec.install Dir['*']
    # create symlinks for cordova-ios*
    bin.install_symlink "#{libexec}/bin/create" => "cordova-ios-create"
    bin.install_symlink "#{libexec}/bin/autotest" => "cordova-ios-autotest"
    bin.install_symlink "#{libexec}/bin/cordova_plist_to_config_xml" => "cordova-ios-plist_to_config_xml"
    bin.install_symlink "#{libexec}/bin/diagnose_project" => "cordova-ios-diagnose_project"
    bin.install_symlink "#{libexec}/bin/replaces" => "cordova-ios-replaces"
    bin.install_symlink "#{libexec}/bin/test" => "cordova-ios-test"
    bin.install_symlink "#{libexec}/bin/uncrustify.sh" => "cordova-ios-uncrustify"
    bin.install_symlink "#{libexec}/bin/update_cordova_subproject" => "cordova-ios-update_cordova_subproject"
  end

  def caveats
    <<-EOS.undent
      cordova-ios installed - all commands have been prefixed with 'cordova-ios-'
    EOS
  end
end

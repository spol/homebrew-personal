require 'formula'

class Phonegap < Formula
  homepage 'http://phonegap.com'
  url 'https://github.com/phonegap/phonegap/archive/2.6.0.zip'
  version '2.6.0'
  sha1 'f8eecbd5447ad190c0885486ad34e8fafeb46306'
  head 'https://github.com/phonegap/phonegap.git'

  def install
    libexec.install Dir['*']
    # create symlinks for phonegap-ios*
    bin.install_symlink "#{libexec}/lib/ios/bin/create" => "phonegap-ios"
    bin.install_symlink "#{libexec}/lib/ios/bin/autotest" => "phonegap-ios-autotest"
    bin.install_symlink "#{libexec}/lib/ios/bin/cordova_plist_to_config_xml" => "phonegap-ios-plist_to_config_xml"
    bin.install_symlink "#{libexec}/lib/ios/bin/diagnose_project" => "phonegap-ios-diagnose_project"
    bin.install_symlink "#{libexec}/lib/ios/bin/replaces" => "phonegap-ios-replaces"
    bin.install_symlink "#{libexec}/lib/ios/bin/test" => "phonegap-ios-test"
    bin.install_symlink "#{libexec}/lib/ios/bin/uncrustify.sh" => "phonegap-ios-uncrustify"
    bin.install_symlink "#{libexec}/lib/ios/bin/update_cordova_subproject" => "phonegap-ios-update_cordova_subproject"
  end

  def caveats
    <<-EOS.undent
      phonegap-ios installed - other platforms are still unsupported

      Use
    EOS
  end
end

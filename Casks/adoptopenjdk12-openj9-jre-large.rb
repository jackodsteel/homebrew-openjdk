cask 'adoptopenjdk12-openj9-jre-large' do
  version '12.0.2,10'
  sha256 'cd343a508263b1f7644bf3018ab659856af9e1fe348ab15f786e5e8854a7b80a'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.2%2B10.2_openj9-0.15.1/OpenJDK12U-jre_x64_mac_openj9_macosXL_12.0.2_10_openj9-0.15.1.pkg'
  appcast "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/latest"
  name 'AdoptOpenJDK 12 (OpenJ9)'
  homepage 'https://adoptopenjdk.net/'

  pkg 'OpenJDK12U-jre_x64_mac_openj9_macosXL_12.0.2_10_openj9-0.15.1.pkg'

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}-openj9.jre"
end

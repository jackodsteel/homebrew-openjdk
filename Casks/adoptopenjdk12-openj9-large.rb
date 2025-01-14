cask 'adoptopenjdk12-openj9-large' do
  version '12.0.2,10'
  sha256 'ab8456a3784edadcf3ff4d20f7482218648b8ec1a70ab5164a25ba9030abc1fc'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.2%2B10.2_openj9-0.15.1/OpenJDK12U-jdk_x64_mac_openj9_macosXL_12.0.2_10_openj9-0.15.1.pkg'
  appcast "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/latest"
  name 'AdoptOpenJDK 12 (OpenJ9) (XL)'
  homepage 'https://adoptopenjdk.net/'

  pkg 'OpenJDK12U-jdk_x64_mac_openj9_macosXL_12.0.2_10_openj9-0.15.1.pkg'

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}-openj9.jdk"
end

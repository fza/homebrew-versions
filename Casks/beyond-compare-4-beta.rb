class BeyondCompare4Beta < Cask
  version '4.0.0.17905'
  sha256 'f67490c52cf13343d9fda55f864519f94d13fe2c1faa8b81ee18ab026bee093e'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  homepage 'http://www.scootersoftware.com/beta.php'
  license :unknown

  app 'Beyond Compare.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.ScooterSoftware.BeyondCompare', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end

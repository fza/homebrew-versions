class VmwareFusion6 < Cask
  version '6.0.4-1887983'
  sha256 'fe392850cd3578b101b3601f19704485fbb66ce1c5fa1367e464a0cf91e41a68'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}-light.dmg"
  homepage 'http://www.vmware.com/products/fusion/'
  license :closed

  binary 'VMware Fusion.app/Contents/Library/vmrun'
  app 'VMware Fusion.app'
  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
end

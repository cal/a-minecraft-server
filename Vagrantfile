Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Setup
  config.vm.provision :puppet, :manifests_path => "puppet"

  # Minecraft
  config.vm.forward_port 25565, 25565
  config.vm.share_folder "minecraft", "/var/minecraft", "target"
# config.vm.provision :shell, :path => "/var/minecraft/server/run.sh"
end

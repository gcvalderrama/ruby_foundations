class Probe
  def deploy(deploy_time, return_time)
    puts "Deploying"
  end
end

class MineralProbe < Probe
  def deploy(deploy_time)
    puts "Preparing sample chamber"
    super(deploy_time, Time.now + 2 * 60 * 60)
  end
end

MineralProbe.new.deploy(Time.now)


describe 'remote_syslog2::configure' do
  context 'default run' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.automatic['hostname'] = 'foo.example.com'
      end.converge(described_recipe)
    end

    it 'should include the service recipe so that it can restart the service' do
      expect(chef_run).to include_recipe('remote_syslog2::service')
    end

    it 'should write out the configuration file' do
      expect(chef_run).to render_file('/etc/remote_syslog2.yml').with_content(<<-YAML
---
files: []
exclude_files: []
exclude_patterns: []
hostname: foo.example.com
destination:
  host: logs.papertrailapp.com
  port: 12345
YAML
      )
    end
  end

  context 'port is misconfigured to be a string' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.automatic['hostname'] = 'foo.example.com'
        node.set['remote_syslog2']['config']['destination']['port'] = '514'
      end.converge(described_recipe)
    end

    it 'should write out configuration with the port as an integer' do
      expect(chef_run).to render_file('/etc/remote_syslog2.yml').with_content('port: 514')
    end
  end
end

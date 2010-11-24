require 'guard'
require 'guard/guard'
require 'soca'

module Guard
  class Soca < Guard

    def initialize(watchers = [], options = {})
      super

      appdir = options[:appdir] || File.expand_path(Dir.pwd)
      env = options[:env] || "default"
      config_file = options[:config_file]
      @pusher = ::Soca::Pusher.new(appdir, env, config_file)
      @times = 0
    end

    def start
      true
    end

    def stop
      true
    end

    def reload
      true
    end

    def run_all
      true
    end

    def run_on_change(paths)
      @times += 1
      print "Soca: push..."
      @pusher.push!
      puts "DONE"
      if @times % 5 == 0
        print "Soca: Running a compact..."
        @pusher.compact!
        puts "DONE"
      end
    end

  end
end

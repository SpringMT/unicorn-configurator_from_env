require 'unicorn'

class Unicorn::Configurator
  def worker_processes(nr)
    unless ENV['UNICORN_WORKER_PROCESS_NUM'].nil?
      nr = ENV['UNICORN_WORKER_PROCESS_NUM'].to_i
    end
    set_int(:worker_processes, nr, 1)
  end
end


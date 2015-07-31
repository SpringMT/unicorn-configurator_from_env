require 'unicorn'

class Unicorn::Configurator
  def timeout(seconds)
    unless ENV['UNICORN_TIMEOUT_SECONDS'].nil?
      seconds = ENV['UNICORN_TIMEOUT_SECONDS'].to_i
    end
    set_int(:timeout, seconds, 3)
    # POSIX says 31 days is the smallest allowed maximum timeout for select()
    max = 30 * 60 * 60 * 24
    set[:timeout] = seconds > max ? max : seconds
  end

  def worker_processes(nr)
    unless ENV['UNICORN_WORKER_PROCESS_NUM'].nil?
      nr = ENV['UNICORN_WORKER_PROCESS_NUM'].to_i
    end
    set_int(:worker_processes, nr, 1)
  end
end


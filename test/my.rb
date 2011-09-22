require "logger"

class My
  def initialize(age, logger)
    @age = age
    @logger = logger
  end

  def age
    @age
  end

  def age= value
    @age = value
    @logger.debug "new age = #{@age}" if @logger
  end
end
# invoker
class UIButton
  attr_reader :command

  def initialize(command)
    @command = command
  end

  def click_button
    @command.execute
  end
end

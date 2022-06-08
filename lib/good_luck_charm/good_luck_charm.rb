# frozen_string_literal: true

require 'rounding'

# This utility can be used by writing a good luck charm.
# ```rb
#   loop do
#     (@charm ||= GoodLuckCharm.new).tondeke!
#     if @charm.changed_per?(60)
#       puts 'kana' # this statement is called only once in a minute)
#     end
#     sleep 1
#   end
# ````
class GoodLuckCharm
  # 飛んでけ!
  def tondeke!
    @last_time = @current_time
    @current_time = Time.now
    self
  end

  # returns true once a specified period
  # @param [Numeric] seconds 周期
  # @param [Boolean] init returned value at first run
  def changed_per?(seconds, init: false)
    return init unless @last_time && Time.now

    @last_time.ceil_to(seconds) <= Time.now
  end
end

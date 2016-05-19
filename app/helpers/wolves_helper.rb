module WolvesHelper
  # [ ['Drew', 1], ['Andrew', 2] ]
  def wolves_options
    Wolf.all.map do |wolf|
      [wolf.name, wolf.id]
    end
  end
end

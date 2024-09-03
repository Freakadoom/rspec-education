class Computer
  attr_accessor :video_card, :processor, :ram,  :cooler, :motherboard

  def initialize(attrs = {})
    attrs.each { |k, v| public_send("#{k}=", v) }
  end

  def display_specs
    specs = <<~SPECS
      Video Card: #{@video_card}
      Processor: #{@processor}
      RAM: #{@ram} GB
      Cooler: #{@cooler}
      Motherboard: #{@motherboard}
    SPECS
    return specs
  end

  def compatible?(required_ram, required_processor)
    @ram >= required_ram && @processor == required_processor
  end

  def upgrade_ram(additional_ram)
    @ram += additional_ram
  end
end
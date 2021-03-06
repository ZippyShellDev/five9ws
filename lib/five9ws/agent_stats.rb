module Five9ws
  class AgentStats < Statistics
    attr_accessor :stats
    def initialize(username,password,timeout=300)
      @stats = nil
      super(username,password,timeout)
    end

    def getStatistics(columns=[])
      @stats = super("AgentStatistics",columns)
    end

    def getStatisticsUpdate(long_polling_timeout=10000)
      super("AgentStatistics","Username",long_polling_timeout)
    end
  end
end

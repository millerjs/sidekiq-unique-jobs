class BeforeYieldWorker
  include Sidekiq::Worker

  sidekiq_options queue: :unlock_ordering
  sidekiq_options unique: true, unique_lock: :until_executing

  def perform
  end
end

class SwarmRequest < ActiveRecord::Base
  
  acts_as_mappable :auto_geocode => true
  
  belongs_to :user
  has_many :bids
  scope :open, where(:accepted => false)
  
  def geocoded?
    self.lat.present? && self.lng.present?
  end

  def accept_bid(bid)
    # Step two associate the bid with the swarm and mark the swarm as accepted
    bid.update_attributes(:swarm_request_id => self.id)
    update_attributes(:accepted => true)

    # Step three, send out a notification
    UserMailer.accept_bid_notification(self).deliver
  end

end

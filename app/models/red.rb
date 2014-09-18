class Red < ActiveRecord::Base
  belongs_to :isp
  belongs_to :pass_type
  has_one :localization
  has_one :router
  has_many :captures
end

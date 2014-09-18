class Red < ActiveRecord::Base
  belongs_to :isp
  has_one :localization
  has_one :router
  has_one :pass_type
  has_many :captures
end

class QlTv < ApplicationRecord
    validates :sv_id, uniqueness: true, allow_blank: false

end

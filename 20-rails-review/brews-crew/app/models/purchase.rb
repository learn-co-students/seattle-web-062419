class Purchase < ApplicationRecord
    belongs_to :brew
    validates :size, inclusion: {in: %w(small medium large)}
    validates :creamer_strength, inclusion: {in: %w(light regular none)}
    validates :special_instructions, length: {maximum: 140}
end

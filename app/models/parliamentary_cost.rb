class ParliamentaryCost < ApplicationRecord
    validates :txNomeParlamentar, :sgUF, :vlrLiquido, presence: true
end

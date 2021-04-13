class User < ApplicationRecord
  CSV_COLUMNS = %w[name age height].freeze
  def self.import_csv(file:)
    User.transaction do
      CSV.foreach(file.path, headers: true) do |row|
        create!(row.to_h.slice(*CSV_COLUMNS))
      end
    end
  end
end

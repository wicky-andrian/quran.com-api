# == Schema Information
#
# Table name: rukus
#
#  id                :bigint           not null, primary key
#  ruku_number       :integer
#  surah_ruku_number :integer
#  verse_mapping     :json
#  verses_count      :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  first_verse_id    :integer
#  last_verse_id     :integer
#
# Indexes
#
#  index_rukus_on_first_verse_id_and_last_verse_id  (first_verse_id,last_verse_id)
#  index_rukus_on_ruku_number                       (ruku_number)
#
class Ruku < ApplicationRecord
  include QuranNavigationSearchable

  has_many :verses, foreign_key: :ruku_number
end

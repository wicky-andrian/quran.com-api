# frozen_string_literal: true

# == Schema Information
#
# Table name: roots
#
#  id               :integer          not null, primary key
#  uniq_words_count :integer
#  value            :string
#  words_count      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Root < ApplicationRecord
  has_many :word_roots
  has_many :words, through: :word_roots
  has_many :verses, through: :words
end

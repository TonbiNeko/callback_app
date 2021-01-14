# class User < ApplicationRecord
#   # before_create :ensure_has_name
#   before_create do
#     self.name = 'Taro' if name.blank?
#   end
#   after_initialize do |user|
#     p user
#     puts "オブジェクトを生成しました"
#     user.name = "Taro"
#   end
#   private

#   # def ensure_has_name
#   #   puts "nameの値をtaroに設定します"
#   #   self.name = 'Taro' if name.blank?
#   # end
# end

# class User < ApplicationRecord
#   before_create :ensure_has_name

#   def ensure_has_name
#     self.name = 'Taro' if name.blank?
#   end
# end

# ----------上2つ、結果は同じ

# class User < ApplicationRecord
#   before_save do
#     puts '１番目に呼ばれたコールバック'
#   end
#   before_save do
#     puts '２番目に呼ばれたコールバック'
#   end
# end

#------------------

class User < ApplicationRecord
  before_create CreateAgeAtCallback.new
end

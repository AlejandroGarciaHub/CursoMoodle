class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def permission_level=(permission_level)
  end
  def permission_level
    permission_level=self.permission_level.to_i
  end
end

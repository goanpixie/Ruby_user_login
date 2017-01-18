User.create(first_name:"Sneaky", last_name:"Pete", email_address:"spete@serial.com")

User.create(first_name:"marius", last_name:"Ablovic", email_address:"ja@serial.com")

ww=User.new
+----+------------+-----------+---------------+-----+------------+------------+
| id | first_name | last_name | email_address | age | created_at | updated_at |
+----+------------+-----------+---------------+-----+------------+------------+
|    |            |           |               |     |            |            |

+----+------------+-----------+---------------+-----+------------+------------

ww.valid?

 ww.save

User.destroy(3)

 reload!

  User.first

   User.last

   User.order(first_name: :asc)

    User.find(3)

    User.rb file:
    class User < ActiveRecord::Base
	
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
	validates :email_address, :age, presence: true
	validates_numericality_of :age, :greater_than_or_equal_to => 10, :less_than =>150
	
end

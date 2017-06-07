class FacebookUser

  attr_reader :photos
  attr_accessor :email, :firstname, :lastname, :photos

  # Tonight's livecode (OOP #1)
  def initialize(email, password)
    @email = email
    @password = password
    @photos = []
    @friends = []
  end

  def to_s
    tmp = "#{@email}, #{@friends.size} mates"
  end

  def add_friend(friend)
    @friends << friend if friend.class == FacebookUser
  end

  def fullname
    if @firstname && @lastname
      @firstname + " " + @lastname
    else
      "invalid input"
    end
  end

  def change_passwd(old_pswd, new_pswd)
    # check if old pswd match @password
    if old_pswd == @password
      @password = new_pswd
      true
    else
      false
    end
  end

  def add_photo(url)
    @photos << url
  end



# Let's create a Facebook User class.

# ## DATA (STATE)
# A facebook user should have:
# - an email (mandatory)
# - a password (mandatory)
# - a first_name
# - a last_name
# - some photos
# - some friends (other facebook user instances)

# ## BEHAVIOUR
# A facebook user should be able to:
# - change its password
# - add friends.

# ## BONUS
# When we print a facebook user (`puts`), it should display:
# "Dimitri Bosch - 24 friends"
end

facebookuser = FacebookUser.new("miyako_hosikuzu@hotmail.com", "secret")
# p facebookuser
# # facebookuser.firstname = "miyako"
# # facebookuser.lastname = "hosikuzu"
# p facebookuser
# puts facebookuser.firstname
# puts facebookuser.fullname

facebookuser.add_photo("www.hdeuhiwuh.com/something.jpg")
modi_chan = FacebookUser.new("india@prick.com", "bozo")
abe_chan = FacebookUser.new("respect@boj.com", "dai bozo")

facebookuser.add_friend(modi_chan)
facebookuser.add_friend(abe_chan)
facebookuser.add_friend("dimitri")
p facebookuser
puts facebookuser

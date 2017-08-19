module RubyExercise1
  class UsersList
    attr_reader :users
    NoUserError = Class.new(StandardError)

    def initialize
      @users = []
    end

    def create_new_user(name)
      user = Struct.new(:user_name).new(name)
      add_user_to_list(user)
      user_name = get_user_name(user)
      "Created user with name: #{user_name}"
    end


    def get_user_name(user)
      user_name = user && user.user_name
      if user_name.nil? || user_name.strip.empty?
        raise NoUserError, "No user or empty name"
      else
        user_name
      end
    end


    private


    def add_user_to_list(user)
      @users << user
    end

  end

end

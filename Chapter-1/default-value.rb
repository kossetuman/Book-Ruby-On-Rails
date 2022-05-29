class User
  attr_accessor :name
    def name(full, with_age)
      n = if full
            "#{family_name} #{given_name}"
          else
            given_name
          end
    n << "(#{age})" if with_age

    n
    end
  end    

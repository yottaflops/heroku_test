module Constraint
  class Authenticated
    def self.matches?(request)
      puts "debug statement"
      # add authentication logic
      # example: request.cookies['auth_token'].present?
    end
  end
end

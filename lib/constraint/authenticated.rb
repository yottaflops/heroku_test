module Constraint
  class Authenticated
    def self.matches?(request)
      # add authentication logic
      # example: request.cookies['auth_token'].present?
    end
  end
end

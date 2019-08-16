require_relative 'services'
require_relative 'employee_login'
login
if @success == 1
  services
else
  abort
end

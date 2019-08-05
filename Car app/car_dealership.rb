require_relative 'ui'
require_relative 'employee_login'
login
if @success == 1
  ui
else
  abort
end

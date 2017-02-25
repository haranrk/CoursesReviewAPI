class Course < ApplicationRecord
	scope :dep, -> (dept_id){where dept_id: dept_id}
	scope :profscope, -> (prof){where prof: prof}
end

class Course < ApplicationRecord
	scope :dep, -> (dept_id){where dept_id: dept_id}
	scope :profscope, -> (prof){where prof: prof}
	scope :search, ->(search){where('name LIKE ? OR prof LIKE ?', "%#{search}%","%#{search}%") }
end

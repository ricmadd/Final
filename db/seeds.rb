# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sample_project = [{ :id => "1",
                    :name => "Sample WBS Builder",
                    :manager => "Ricardo Maduro",
                    :client => "KIEI 925",
                    :location => "Evanston, IL",
                    :description => "MVP of PM Tool",
                    :contractvalue => "10000"
                   }]

sample_task = [{:id => "1",
                :name => "Build App Structure",
                :project_id => "1"
                },
                {:id => "2",
                 :name => "Deploy App to Web",
                 :project_id =>"1"
                }
              ]

sample_wbs2 = [{:id => "1",
                :name => "Ensure the Code Works",
                :task_id => "1",
                :project_id => "1"
                },
                {:id => "2",
                 :name => "Create a Heroku Account",
                 :task_id => "2",
                 :project_id =>"1"
                }
              ]


Project.destroy_all
sample_project.each do |basic_project|
  p = Project.new
  p.id = basic_project[:id]
  p.name = basic_project[:name]
  p.manager = basic_project[:manager]
  p.client = basic_project[:client]
  p.location = basic_project[:location]
  p.description = basic_project[:description]
  p.contractvalue = basic_project[:contractvalue]
  p.save
end


Task.destroy_all
sample_task.each do |basic_task|
  t = Task.new
  t.id = basic_task[:id]
  t.name = basic_task[:name]
  t.project_id = basic_task[:project_id]
  t.save
end


Wbs2.destroy_all
sample_wbs2.each do |basic_wbs2|
  wbs2 = Wbs2.new
  wbs2.id = basic_wbs2[:id]
  wbs2.name = basic_wbs2[:name]
  wbs2.task_id = basic_wbs2[:task_id]
  wbs2.save
end

Wbs3.destroy_all

User.destroy_all





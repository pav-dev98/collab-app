require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "should not save project without title" do
    project = Project.new
    assert_not project.save
  end

  test "should not save project if array is empty" do
    project = Project.new
    project.name = "Project 1"
    project.description = "Description of project 1"
    project.technologies = []
    assert_not project.save
  end
end

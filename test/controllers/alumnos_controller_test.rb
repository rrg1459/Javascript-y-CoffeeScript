require 'test_helper'

class AlumnosControllerTest < ActionDispatch::IntegrationTest
  test "should get calificar" do
    get alumnos_calificar_url
    assert_response :success
  end

end

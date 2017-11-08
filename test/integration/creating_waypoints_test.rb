require 'test_helper'

class CreatingWaypointsTest < ActionDispatch::IntegrationTest
  test "create waypoints" do
    post "/api/v1/waypoints",
      params: { 
        waypoint: {
          latitude: 20.23,
          longitude: -0.56,
          sent_at: Time.now,
          vehicle_identifier: "HA-3452"
        }
       }

    assert_equal 201, response.status
    # assert_equal 'HA-3452', response.vehicle_identifier
    # assert_equal Mime[:JSON], response.content_type

    # episode = json(response.body)
    # assert_equal episode_url(episode[:id]), response.vehicle_identifier

  end
end

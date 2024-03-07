require "test_helper"
require "net/http"

class VCRTest < ActiveSupport::TestCase
    test "fetch a github user" do
        VCR.use_cassette("gh_user") do
        response = Net::HTTP.get(github_url)
        user = JSON.parse response
        assert_equal "torvalds", user.fetch("login")
    end
end

private
def github_url
    URI "https://api.github.com/users/torvalds"
end
end

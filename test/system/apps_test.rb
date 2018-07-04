require "application_system_test_case"

class AppsTest < ApplicationSystemTestCase
  setup do
    @app = apps(:one)
  end

  test "visiting the index" do
    visit apps_url
    assert_selector "h1", text: "Apps"
  end

  test "creating a App" do
    visit apps_url
    click_on "New App"

    fill_in "Author", with: @app.author
    fill_in "Description", with: @app.description
    fill_in "Downloads", with: @app.downloads
    fill_in "Name", with: @app.name
    fill_in "Rated Times", with: @app.rated_times
    fill_in "Rating", with: @app.rating
    fill_in "Release Date", with: @app.release_date
    fill_in "Version", with: @app.version
    click_on "Create App"

    assert_text "App was successfully created"
    click_on "Back"
  end

  test "updating a App" do
    visit apps_url
    click_on "Edit", match: :first

    fill_in "Author", with: @app.author
    fill_in "Description", with: @app.description
    fill_in "Downloads", with: @app.downloads
    fill_in "Name", with: @app.name
    fill_in "Rated Times", with: @app.rated_times
    fill_in "Rating", with: @app.rating
    fill_in "Release Date", with: @app.release_date
    fill_in "Version", with: @app.version
    click_on "Update App"

    assert_text "App was successfully updated"
    click_on "Back"
  end

  test "destroying a App" do
    visit apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App was successfully destroyed"
  end
end

require "application_system_test_case"

class EnrolmentsTest < ApplicationSystemTestCase
  setup do
    @enrolment = enrolments(:one)
  end

  test "visiting the index" do
    visit enrolments_url
    assert_selector "h1", text: "Enrolments"
  end

  test "creating a Enrolment" do
    visit enrolments_url
    click_on "New Enrolment"

    fill_in "Course", with: @enrolment.course_id
    fill_in "Date", with: @enrolment.date
    fill_in "Number", with: @enrolment.number
    fill_in "Student", with: @enrolment.student_id
    click_on "Create Enrolment"

    assert_text "Enrolment was successfully created"
    click_on "Back"
  end

  test "updating a Enrolment" do
    visit enrolments_url
    click_on "Edit", match: :first

    fill_in "Course", with: @enrolment.course_id
    fill_in "Date", with: @enrolment.date
    fill_in "Number", with: @enrolment.number
    fill_in "Student", with: @enrolment.student_id
    click_on "Update Enrolment"

    assert_text "Enrolment was successfully updated"
    click_on "Back"
  end

  test "destroying a Enrolment" do
    visit enrolments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enrolment was successfully destroyed"
  end
end

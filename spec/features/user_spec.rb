require "rails_helper"
require "support/features/clearance_helpers"

describe 'User' do
  it 'can see projects that they manage or are part of when they log in' do
    user = FactoryBot.create(:user)
    project1 = Project.create(project_number: '999-99', project_name: 'a project', user: user, client: "A client")
    project2 = FactoryBot.create(:project)
    team_member = TeamMember.create(user: user, project: project2)
    sign_in_with(user.email, user.password)
    visit root_path
    expect(page).to have_content(project1.project_number)
    expect(page).to have_content(project2.project_number)
    expect(page).to have_content("Project Manager")
    expect(page).to have_content("Team Member")
  end

  it 'has a show page that can be accessed' do
    user = FactoryBot.create(:user)
    sign_in_with(user.email, user.password)
    visit user_path(user)
  end

  it 'redirects user show to sign_in if not signed in' do
    user = FactoryBot.create(:user)
    visit user_path(user)
    expect(current_path).to eq(sign_in_path)

  end

end

require 'spec_helper'

feature 'TrueAutomation.IO capybara example' do
  scenario 'Test example' do
    visit 'https://trueautomation.io/'

    fill_in ta(   'trueautomationio:home:SFFemail'), with: 'qa@test.com'
    # fill in last Email fild on the Home Page
    fill_in ta(   'trueautomationio:home:SFFemailTop'), with: 'qa@test.com'
    # fill the firs Email field on top Page

    find(ta(   'trueautomationio:home:SFFokButton')).click
    # click on OK button to go auth/signup
    find(ta(   'trueautomationio:auth:signup:SingUpBtn')).click
    find(ta(   'trueautomationio:auth:signup:BackToMainBtn')).click

    # NOW Go 2 LOGIN >>>>>>>
    find(ta(   'trueautomationio:home:loginBtn')).click
    # Click on Login button
    fill_in ta(   'trueautomationio:auth:signin:EmailField'), with: 'stas.odessa@ua.fm'
    fill_in ta(   'trueautomationio:auth:signin:PasswordField'), with: '7167276Ss'

    find(ta(   'trueautomationio:auth:signin:LoginBtn')).click
    sleep 3
    #Clicl on present buttoms in cloud
    find(ta(   'trueautomationio:app:297:project:Users')).click
    find(ta(   'trueautomationio:app:297:project:Project')).click
    #find(ta(   'trueautomationio:app:297:project:Documentation')).click
    sleep 3
    # Redirect to Documents Page
    #ind(ta(   'trueautomationio:docs:null:BackToCloud')).click

    # Doing Log OUT
    find(ta(   'trueautomationio:app:297:project:HiStanislav')).click
    find(ta(   'trueautomationio:app:297:project:LogOut')).click
    # Press <Back button
    find(ta(   'trueautomationio:auth:signin:BackToMainBtn')).click

  end
end

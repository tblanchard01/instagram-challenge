def sign_up 
    click_link('Sign up')
    fill_in('Username', with: 'testuser')
    fill_in('Email', with: 'testuser@test.con')
    fill_in('Password', with: 'abc123')
    fill_in('Password confirmation', with: 'abc123')
    click_button('Sign up')
end 

def login 
    click_link('Login')
    fill_in('Email', with: 'testuser@test.con')
    fill_in('Password', with: 'abc123')
    click_button('Log in')
end 
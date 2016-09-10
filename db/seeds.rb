User.create!([
  {email: "jcotzin@gmail.com", encrypted_password: "$2a$11$wBJImiuEVb/VSA9zajmst.ckkJ514XcwONw/QGCIHjmDUjC6JSqjq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-09-10 22:37:23", last_sign_in_at: "2016-09-10 22:37:23", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Resource.create!([
  {title: "Learn to Code with Me", description: nil, user_id: 1, thumb: "http://learntocodewith.me", rating: nil},
  {title: "Udemy", description: nil, user_id: 1, thumb: "https://www.udemy.com/", rating: nil},
  {title: "Watch and Code", description: nil, user_id: 1, thumb: "https://watchandcode.com/courses/practical-javascript", rating: nil},
  {title: "Code Avengers", description: nil, user_id: 1, thumb: "https://www.codeavengers.com/profile#all", rating: nil}
])
Review.create!([
  {rating: 5, comment: "Laurence Bradford from LTCWM really inspired me to begin my coding journey. Her website is full of great information and advice for newbies. Sign up for her mailing list and she sends out some good resources. Her podcast is pretty interesting too!", user_id: 1, resource_id: 1}
])

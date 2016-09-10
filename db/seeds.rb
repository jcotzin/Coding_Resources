
Resource.create!([
  {title: "Learn to Code with Me", description: nil, user_id: 1, thumb: "http://learntocodewith.me", rating: nil},
  {title: "Udemy", description: nil, user_id: 1, thumb: "https://www.udemy.com/", rating: nil},
  {title: "Watch and Code", description: nil, user_id: 1, thumb: "https://watchandcode.com/courses/practical-javascript", rating: nil},
  {title: "Code Avengers", description: nil, user_id: 1, thumb: "https://www.codeavengers.com/profile#all", rating: nil}
])
Review.create!([
  {rating: 5, comment: "Laurence Bradford from LTCWM really inspired me to begin my coding journey. Her website is full of great information and advice for newbies. Sign up for her mailing list and she sends out some good resources. Her podcast is pretty interesting too!", user_id: 1, resource_id: 1}
])

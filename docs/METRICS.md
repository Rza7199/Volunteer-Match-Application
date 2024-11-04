## Metrics
- https://docs.google.com/presentation/d/1aOs2WFT1qUoCyEORVix6u-WVyDbWPcduUF35LQREJeE/edit?usp=sharing
- Retention: Firebase automatically tracks retention analytics such as retention of users returning back to the app, and user activity by cohort.

## NPS
- Have a rating system at the end of the Golden Path
- Save this score as user_score in collection, total up all users with cloud function and divide to calculate NPS score.

# CTR Tracking

-Track impressions and clicks for "Sign Up" and "Login" buttons to calculate CTR. Save **button_impression** and **button_click** events in Firebase Analytics.

### Adoptation
- Firebase automatically track adoptation with the default events, such as first_open and screen_view.
- First_open open tracks the number of new users start using your app
- screen_view track the those user time spend on the app.

## DAU (Daily Active Users)
- Collecting DAU using built-in Firebase Analytics to track daily user engagement within the app.
- Firebase Analytics automatically logs daily sessions, enabling the identification of active users and analysis of DAU trends over time.

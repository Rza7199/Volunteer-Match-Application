## Metrics
- https://docs.google.com/presentation/d/1aOs2WFT1qUoCyEORVix6u-WVyDbWPcduUF35LQREJeE/edit?usp=sharing
- Retention: Firebase automatically tracks retention analytics such as retention of users returning back to the app, and user activity by cohort.

## NPS
- Have a rating system at the end of the Golden Path
- Save this score as user_score in collection, total up all users with cloud function and divide to calculate NPS score.

# CTR Tracking for Sign Up and Login

-Track impressions and clicks for "Sign Up" and "Login" buttons to calculate CTR. Save **button_impression** and **button_click** events in Firebase Analytics. Use a cloud function to divide clicks by impressions for each button and store the CTR score in a collection (e.g., `user_engagement_metrics`). Display CTR data on a dashboard to monitor engagement.

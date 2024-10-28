
# Ryan Atella
# A/B Test: Font Style Impact on Readability and Engagement

### User Story Number
- **US4** (Golden Path)

### Metrics (HEART Framework)
1. **Happiness**: User satisfaction with overall readability.
2. **Engagement**: Average session time and page scroll depth.
3. **Adoption**: Increase in feature or page usage after readability improvement.
4. **Retention**: Returning users to previously visited sections of the app.

### Hypothesis
Switching to a new, cleaner font style will improve readability, making it easier for users to digest content quickly, which will lead to higher engagement and adoption rates.

### Problem We’re Solving
Current feedback suggests some users find the font slightly hard to read, particularly on mobile devices. This impacts user satisfaction and can contribute to users spending less time on content-heavy pages. Since readability directly influences user engagement and satisfaction, addressing this issue is crucial to ensuring users progress smoothly along the Golden Path.

### Experiment Setup
- **Audience**: Allocate 50% of the user base to the test group and 50% to the control group.
- **Tracking with Firebase Analytics**:
  - Measure session duration, page scroll depth, and returning user rates.
  - Track specific pages where font readability could impact user retention and progression along the Golden Path.
  - Set up satisfaction feedback prompts for a subset of users in each group to gather insights on font preference.

### Variations
1. **Control Group**: Current font style.
2. **Test Group**: New font style (e.g., sans-serif, optimized for readability).

### Mockups
Include mockups showing:
- Original font (Control Group)
- New font design (Test Group)

Each design should illustrate how key pages and components look under each variation, ensuring consistency and readability across devices.

# Redwan Albadawi

## A/B Test Name
**"Enhanced Conversion: Sign In Button Color Change"**  
This A/B test aims to determine if changing the color of the "Sign In" or "Login" button improves user interaction and increases sign-in rates.

## User Story Number
**US4**

## Metrics
Our team will use the **HEART** metrics to measure the success of this test:
- **Happiness:** Positive feedback rates and NPS (Net Promoter Score) post-login.
- **Engagement:** Percentage increase in login button clicks.
- **Adoption:** New user registration rates driven by increased interaction with the login page.
- **Retention:** Percentage of users returning to log in within 7 days.
- **Task Success:** Conversion rate of users successfully logging in.

## Hypothesis
**Hypothesis:** Changing the button color to a high-contrast option (e.g., a bright blue or green) will increase button visibility and encourage more users to click on it, resulting in a higher sign-in rate.

## Problem Statement
**Problem:** User analytics show a high drop-off rate on the login page, indicating that users may not be engaging with the call-to-action button. This issue could stem from the button not standing out enough due to its current color, which might blend in with the overall design.

**Impact:** Increasing user engagement with the login button can drive improved sign-in rates, which is crucial for user retention and the onboarding experience. 

**Bottleneck Analysis:** By focusing on the visual aspect of the login button, this test isolates the design variable without modifying other login page elements, ensuring clear results about the button's visibility as the root cause.

## Experiment Setup
**Audience:** 
- We will use **50% of the user base** for this experiment, with an equal split between two groups:
  - **Control Group:** Users see the existing button color.
  - **Experiment Group:** Users see the newly colored (higher contrast) button.

**Firebase Analytics Tracking:**  
- **Event Tracking:** Track "button_impression" and "button_click" events on the login page.
- **Conversion Goal:** Monitor the "successful_login" event to measure the impact of the button color on actual sign-ins.

## Variations
**Control:** Current button color (e.g., gray).
**Variation A:** New button color in high-contrast (e.g., blue or green).

### Mockups
1. **Control Design:** Gray button on standard background.
2. **Variation A Design:** Blue/Green button on the same background for high visibility.

> (Add mockups or diagrams here to visually depict the button color changes).

By running this A/B test, we aim to gather insights on how small visual changes can impact user interaction and increase task completion on the login page.
# Adam Kuan
# A/B Test: Logo Variations

### User Story Number
- **US5** (User Attraction)

### Metrics (HEART Framework)
1. **Happiness**: User satisfaction measured through feedback surveys on brand appeal.
2. **Engagement**: Interactions such as logo clicks, homepage time spent, and initial page interactions.
3. **Adoption**: Conversion rates for new users during their first session (e.g., registrations, initiating a volunteer match).
4. **Retention**: Return visits within the first week, particularly to sections accessed through the logo.
5. **Task Success**: Completion rate of key actions like signing up for volunteer matches or engaging with call-to-action elements.

### Hypothesis
*If the logo design is more visually appealing and aligns with the app's mission of community and volunteering, users will be more likely to engage with the platform, leading to increased new-user adoption rates.*

### Problem We’re Solving
User feedback indicates that the current logo may appear unappealing or unrelated to our mission, which can affect initial trust and engagement. This results in a high drop-off rate on the homepage, where users disengage before moving forward with the app. Since the logo is one of the first elements users see, enhancing its appeal could reduce drop-off rates and improve conversions.

**Impact:** Increasing initial engagement with the logo could enhance user acquisition, targeting a 10-15% improvement in signup rates for volunteer matching services.

### Experiment Setup
- **Audience**: Allocate 50% of the user base to the test group and 50% to the control group.
- **Tracking with Firebase Analytics**:
  - Track engagement metrics like logo clicks, homepage dwell time, and interaction with CTAs.
  - Monitor conversion rates from the homepage to registration or volunteer match pages.
  - Measure retention by tracking the frequency of users returning within a 7-day period.
  - Include a feedback survey for a subset of users to gauge logo appeal.

### Variations
1. **Control Group**: Current logo.
2. **Test Group**: New mission-driven logo, featuring a simplified handshake icon and warm colors to reflect trust and inclusivity.

### Mockups
- **Control Group**: Display of the original logo on the homepage.
- **Test Group**: Mockup of the mission-driven logo, showing updated colors, iconography, and overall layout on key pages.

## Conclusion
This A/B test will help determine if a refined, mission-driven logo enhances engagement, adoption, and retention rates. By setting up targeted tracking and using Firebase for detailed user insights, we aim to make informed decisions to improve user onboarding and interaction with the platform.

# Rami Aldine
## A/B Test Name: Background Color Preference for Improved Engagement
User Story Number
US4 (Golden Path)

## Metrics
Our HEART metrics focus on Engagement and Satisfaction:

### Engagement: Measured by Daily Active Users (DAUs) and the average time spent on a page.
Satisfaction: Measured through click-through rates (CTR) on specific calls-to-action (CTAs).
Hypothesis
We believe that adjusting the background color of the main screen to a more visually appealing color (Variation B) will enhance user engagement and satisfaction. Specifically, we hypothesize that users will spend more time on the app and interact more with CTAs when the background is softer and less visually straining.

### Problem Statement
What Problem Are We Trying to Solve?
Our app currently has a high bounce rate, with users spending less time on the home screen than expected. User feedback has suggested that the default background color (Variation A - light gray) may not be appealing or inviting, which could be contributing to lower engagement levels.

### Impact
Increasing user engagement on the main screen could lead to improved satisfaction, longer session times, and higher conversion on CTAs. Small increases in engagement may yield significant gains in user retention.

## Experiment Setup
We’ll use Firebase Remote Config to run this A/B test, targeting 50% of new users as the test audience while leaving the other 50% as the control group.

Audience: New users will be divided randomly between:
Control (A): Default background color (light gray)
Variation (B): New background color (soft blue)
Firebase Analytics Tracking:
Screen View Duration: Track time spent on the main screen for each variation.
CTA Clicks: Measure click-through rates on key buttons (e.g., “Get Started” or “Learn More”).
User Feedback: Implement an optional feedback button asking about the visual appeal of the page.
Variations
Variation	Description
Control (A)	Background color: Light Gray (#F5F5F5)
Variation (B)	Background color: Soft Blue (#E8F4FD)
Visual Design for Variations
Mockups:
Control (A):
Variation (B)

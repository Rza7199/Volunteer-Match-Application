
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

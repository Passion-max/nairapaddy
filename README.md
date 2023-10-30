
# NairaPaddy - AI Power Finance Manager


The goal of the project is to use AI LLM to build a personal finance manager that can handle customer queries, resolve disputes, demystify, classify, and understand customer transactions. This will, in turn, generate insights into customer behavior and possible products of interest while leveraging modern technologies like Flutterflow (NoCode Development tool), ChatGPT OpenAI API, Cloud Functions, and Firebase.

## 1. MVP Objectives:
- **Ease of Onboarding:** Ensure users can easily create an account and start using the application.
- **Transaction Demystification:** Automatically categorize and tag user transactions to provide insights.
- **Customer Voice Integration:** Create a system to gather, analyze, and address user feedback and disputes.

## 2. MVP Features:
### a. User Onboarding:
- Account Creation: A simple sign-up and login system.
- User account Setup: Easy intuitive guide for users in linking their bank accounts and setting up their profiles.

### b. Personal Finance Management:
- Transaction Feed: Display user's financial transactions fetched from linked bank statements.
- Automatic Classification: Use OpenAI LLM to categorize transactions into categories like 'Groceries', 'Utilities', 'Entertainment', etc.
- Insights Dashboard: Show user their spending patterns, savings, and potential anomalies.

### c. Voice of the Customer:
- Feedback System: Users can provide feedback through text.
- Dispute Management: AI-driven chatbot to address common user queries and concerns, leveraging the company's FAQs and training guide.
- Feedback Analysis: ML algorithms process user feedback to derive actionable insights and recommendations.

## 3. Data Utilization:
- Training Guide & FAQs: Use these resources to train the chatbot. They will help in understanding common user queries and providing accurate responses.
- Financial & Bank Statements: Use these to extract transaction details and train the AI for transaction classification.

## 4. Development Steps:
![Development Process Image](https://github.com/Passion-max/nairapaddy/blob/main/Whimsical%20WorkFlow.png)
### a. Data Preparation:
- Clean and preprocess the financial & bank statements data. Extract features relevant for transaction classification.
- Process FAQs and training guide into a Q&A format suitable for chatbot training.

### b. AI & ML Model Development:
- CHATGPT API - Develop a chatbot using the Q&A dataset. Integrate Natural Language Processing (NLP) capabilities to understand user feedback and queries.
- VertexAI - Use transaction data to train a classification model.

### c. Application Development:
- Build a simple mobile interface using Flutterflow.
- Integrate the AI models for transaction classification and the chatbot.
- Develop the insights dashboard to visually represent user's financial behavior.

### d. Testing and Iteration:
- Beta test the application with a small group. Focus on ease of onboarding, accuracy of transaction classification, and efficiency of the chatbot.
- Collect feedback from beta testers.
- Refine the application based on feedback.

## 5. Tools & Technologies:
- Web/Mobile Application: FlutterFlow
- AI/ML Model Development: OpenAI API
- Backend: firebase
- Database: firestore

  ## UI
  ![App UI](https://github.com/Passion-max/nairapaddy/blob/main/protype%202.png)

## Prompt Used In Training the OpenAI Agent:
### Customer Service Query Classification
You will be provided with customer service queries. The customer service query will be delimited with `####` characters. Classify each query into a primary category and a secondary category. Respond also with a very short response as a customer service agent of an imaginary bank FCMB and make sure to tell the user that you are an AI agent yet to be trained with company information at the end of the response.

Provide your output in JSON format with the keys: primary, secondary, and response structured like this:
`{"primary":"General Inquiry", "secondary":"others", "response":"I am an AI customer service agent"}`.

### Primary Categories:
- Billing
- Technical Support
- Account Management
- General Inquiry

### Billing Secondary Categories:
- Unsubscribe or upgrade
- Add a payment method
- Explanation for charge
- Dispute a charge

### Technical Support Secondary Categories:
- General troubleshooting
- Device compatibility
- Software updates

### Account Management Secondary Categories:
- Password reset
- Update personal information
- Close account
- Account security

### General Inquiry Secondary Categories:
- Product information
- Service information
- Pricing
- Feedback
- Speak to a human
- Others

## About the Project:
### Theme:
Beyond Banking; Leveraging FCMB APIs (The App of The FUTURE)

### Description:
I4G HACKFest 2023 in partnership with FCMB is conducting a virtual Hackathon, leveraging FCMB API to promote open banking initiatives.

### Problem Statement:
The Voice of the Customer: Customer Onboarding, Dispute Management on Alternate Channels leveraging Artificial Intelligence & Machine Learning.

### The App Of The Future:
NairaPaddy - NairaPaddy is a Personal Financial Manager (PFM) which you can use to manage your finance. It's a software that gives you insight into your overall income and expenditures per time and suggests better ways which you can leverage in controlling your expenses while increasing your incomes.

## About The Team:
The building team for this groundbreaking MVP application are young and talented individuals who saw the need in managing humans' daily financial services. They include:

- **Name:** Emmanuel Eke
  - **Role:** Full stack Software developer, Data engineer, AI dev.
  - **Contact:** engr.emmaeke@gmail.com

- **Name:** Gospel Udechukwu
  - **Role:** Full stack Software developer, Technical Writer.
  - **Contact:** gosmajesty@gmail.com

- **Name:** Faruq Durotade Abiodun
  - **Role:** Backend developer
  - **Contact:** faruqhassan176@gmail.com

- **Name:** Evans Kelly
  - **Role:** UI/UX designer
  - **Contact:** kellyevans405@gmail.com

- **Name:** Ukpaka Precious
  - **Role:** Graphics designer
  - **Contact:** preciouschinaemerem@gmail.com

- **Name:** Awe Daniel
  - **Role:** Cyber security & AWS cloud engineer
  - **Contact:** awe.daniel1@yahoo.com

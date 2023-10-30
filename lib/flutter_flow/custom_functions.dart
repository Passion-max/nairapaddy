import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  String system_message =
      """You will act as a customer service agent for an imaginary Bank FCMB, your goal is to handle customer query, Customer Onboarding and Dispute Management . The customer service query will be delimited with #### characters.  Classify each query into a primary category and a secondary category.  Respond also with a very short response and act as if you have all the whole company important needed.   Provide your output in json format with the keys: primary, secondary and response structured like this {primary:General Inquiry, secondary: others, response:Hi there, I am your customer support agent, how can I assist you. }.  Primary categories: Billing, Technical Support, Account Management, or General Inquiry. Billing secondary categories:  Unsubscribe or upgrade, Add a payment method,  Explanation for charge, Dispute a charge. Technical Support secondary categories: General troubleshooting, Device compatibility, Software updates. Account Management secondary categories:  Password reset, Update personal information, Close account,  Account security    General Inquiry secondary categories:  Product information, Service information, Pricing, Feedback, Speak to a human or others. more context About this project: this project was build as part of a challenge solution Theme: Beyond Banking; Leveraging FCMB APIs (The App of The FUTURE) Description: I4G HACKFest 2023 in partnership with FCMB is conducting a virtual Hackathon, leveraging FCMB API to promoting open banking initiatives. Problem Statement: The Voice of the Customer: Customer Onboarding, Dispute Management on Alternate Channels leveraging Artificial Intelligence & Machine Learning. The App Of The Future: NairaPaddy - NairaPaddy is a Personal Financial Manager (PFM) which you can use to manage your finance. It's a software that gives you insight on your overall income and expenditures per time and suggests better ways which you can leverage in controlling your expenses while increasing your incomes. About The Team: The building team for this ground breaking MVP application are young and talented individuals who saw the need in managing humans' daily financial services. They include: 1. Name: Emmanuel Eke Role: Full stack Software developer, Data engineer, AI dev. Contact: engr.emmaeke@gmail.com 2. Name: Gospel Udechukwu Role: Full stack Software developer, Technical Writer. Contact: gosmajesty@gmail.com 3. Name: Faruq Durotade Abiodun Role: Backend developer Contact: faruqhassan176@gmail.com 4. Name: Evans Kelly Role: UI/UX designer Contact: kellyevans405@gmail.com 5. Name: Ukpaka Precious Role: Graphics designer Contact: preciouschinaemerem@gmail.com 6. Name: Awe Daniel Role: Cyber security & AWS cloud engineer Contact: awe.daniel1@yahoo.com """;

// If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [
      newChat,
      jsonDecode('{"role": "system", "content": "$system_message"}')
    ];
  }
}

dynamic convertToJSON(String? prompt) {
  // take the prompt and return a JSON with form
  // [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

dynamic covertMsgJson(String msgString) {
  // String msgJson = msgString.replaceAll("\\", "");
  return jsonDecode(msgString);
}

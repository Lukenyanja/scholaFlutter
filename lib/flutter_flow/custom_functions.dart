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
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  // If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

String? newCustomFunction(
  String? input,
  String? find,
  String? replace,
) {
  String replaceAll(String input, String find, String replaceWith) {
    return input.replaceAll(find, replaceWith);
  }
}

String? replaceAll(
  String? input,
  String? find,
  String? replaceWith,
) {
  String replaceAllAdvanced(
      String input, String pattern, String replaceWith, bool caseInsensitive) {
    final regex = RegExp(
      pattern,
      caseSensitive: !caseInsensitive,
      multiLine: false,
    );
    return input.replaceAll(regex, '');
  }
}

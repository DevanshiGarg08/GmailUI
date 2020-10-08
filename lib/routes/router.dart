

import 'package:flutter/material.dart';
import 'package:navigation/main.dart';
import 'package:navigation/inbox/home.dart';
import 'package:navigation/inbox/internal.dart';


var customRoute = <String,WidgetBuilder>{
"/":(context)=>App(),
"/emails":(context)=>Internal()
};
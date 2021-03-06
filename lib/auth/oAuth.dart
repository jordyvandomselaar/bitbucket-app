import 'dart:io';

import 'package:bitbucket_app/env/env.dart';
import 'package:bitbucket_app/src/state/auth.dart';
import "package:flutter/material.dart";

class OAuth {
  static final String key = Env.get("key");
  static final String secret = Env.get("secret");
  static const int port = 8001;

  static void startServer(BuildContext c) async {
    HttpServer server = await HttpServer.bind(InternetAddress.LOOPBACK_IP_V4, port);
    server.listen((HttpRequest request) async {
      request.response
        ..statusCode = 200
        ..headers.set("Content-Type", ContentType.HTML.mimeType)
        ..write("<html><h1>You can now close this window</h1></html>");

      String token = request.requestedUri.toString().substring(
          request.requestedUri.toString().indexOf("?code=") + 6
      );

      Auth
          .of(c)
          .token
          .value = token;

      await request.response.close();
      await server.close(force: true);
    });
  }
}

import 'dart:io';

import 'package:dio/dio.dart';

class DioClient {
  DioClient(this.baseUrl, this._dio) {
    _dio = _dio ?? Dio();
  }

  Dio? _dio;
  final String baseUrl;

  Future<dynamic> get({required Map<String, dynamic> queryParameters}) async {
    try {
      final response = await _dio!.get(
        baseUrl,
        queryParameters: queryParameters,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } on DioError catch (err) {
      return err;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> put(
    String uri, {
    required Map<String, dynamic> queryParameters,
  }) async {
    try {
      final response = await _dio!.get(
        uri,
        queryParameters: queryParameters,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } on DioError catch (err) {
      return err;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> delete(
    String uri, {
    required Map<String, dynamic> queryParameters,
  }) async {
    try {
      final response = await _dio!.get(
        uri,
        queryParameters: queryParameters,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } on DioError catch (err) {
      return err;
    } catch (e) {
      throw e;
    }
  }
}

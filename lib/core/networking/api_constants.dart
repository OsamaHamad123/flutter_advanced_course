class ApiConstants {
  static const String apiBaseUrl = 'https://vcare.integration25.com/api/';
  static const String loginEndpoint = 'auth/login';
  static const String registerEndpoint = 'auth/register';
}

class ApiErrors {
  ApiErrors._(); // private constructor to prevent instantiation

  // General client-side / runtime errors
  static const String noInternet = 'No Internet Connection';
  static const String timeout = 'Request Timed Out';
  static const String unknown = 'Unknown Error Occurred';
  static const String unexpectedError = 'Unexpected Error Occurred';
  static const String formatError = 'Data Format Error';
  static const String typeError = 'Type Error Occurred';
  static const String stateError = 'State Error Occurred';
  static const String argumentError = 'Invalid Argument Error';
  static const String noSuchMethodError = 'No Such Method Error';
  static const String rangeError = 'Range Error Occurred';
  static const String castError = 'Cast Error Occurred';
  static const String unsupportedError = 'Unsupported Operation Error';
  static const String assertionError = 'Assertion Error Occurred';
  static const String customError = 'Custom Error Occurred';

  // HTTP / network related
  static const String serverError = 'Server Error Occurred';
  static const String badRequest = 'Bad Request Error';
  static const String unauthorized = 'Unauthorized Access Error';
  static const String forbidden = 'Forbidden Access Error';
  static const String notFound = 'Resource Not Found Error';
  static const String internalServerError = 'Internal Server Error';
  static const String serviceUnavailable = 'Service Unavailable Error';
  static const String gatewayTimeout = 'Gateway Timeout Error';
  static const String conflictError = 'Conflict Error Occurred';
  static const String preconditionFailed = 'Precondition Failed Error';
  static const String tooManyRequests = 'Too Many Requests Error';
  static const String notImplemented = 'Not Implemented Error';
  static const String badGateway = 'Bad Gateway Error';
  static const String httpVersionNotSupported =
      'HTTP Version Not Supported Error';
  static const String insufficientStorage = 'Insufficient Storage Error';
  static const String loopDetected = 'Loop Detected Error';
  static const String notExtended = 'Not Extended Error';
  static const String networkAuthenticationRequired =
      'Network Authentication Required Error';

  // Lower-level networking issues
  static const String dnsLookupFailed = 'DNS Lookup Failed Error';
  static const String sslHandshakeFailed = 'SSL Handshake Failed Error';
  static const String connectionClosed = 'Connection Closed Error';
  static const String connectionReset = 'Connection Reset Error';
  static const String connectionRefused = 'Connection Refused Error';
  static const String hostUnreachable = 'Host Unreachable Error';
  static const String addressInUse = 'Address In Use Error';
  static const String addressNotAvailable = 'Address Not Available Error';
  static const String networkDown = 'Network Down Error';
  static const String networkReset = 'Network Reset Error';
  static const String noRouteToHost = 'No Route To Host Error';
  static const String timedOut = 'Connection Timed Out Error';
  static const String unreachable = 'Host Unreachable Error';
  static const String writeFailed = 'Write Failed Error';

  // Map of well-known HTTP status codes to messages (convenience helper)
  static const Map<int, String> httpStatusMessages = {
    400: badRequest,
    401: unauthorized,
    403: forbidden,
    404: notFound,
    408: gatewayTimeout,
    409: conflictError,
    412: preconditionFailed,
    415: notImplemented,
    429: tooManyRequests,
    500: internalServerError,
    502: badGateway,
    503: serviceUnavailable,
    504: gatewayTimeout,
  };

  /// Return a message for a given HTTP status code, falling back to [unknown].
  static String fromStatusCode(int? code) {
    if (code == null) return unknown;
    return httpStatusMessages[code] ?? unknown;
  }
}

/// Extensions for the [String] class to provide additional functionality.
extension NACDStringExtensions on String {
  /// Whether the string represents a valid network URL.
  ///
  /// Checks if the string matches common URL patterns with protocols
  /// such as http, https, ftp, file, ws, or wss.
  bool get isNetworkUrl {
    // Create a RegExp that matches common URL protocols
    final RegExp urlPattern = RegExp(
      r'^(https?|ftp|file|wss?):\/\/' // Protocol (http, https, ftp, file, ws, wss)
      r'(([a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}' // Domain name with valid TLD
      r'|(\d{1,3}\.){3}\d{1,3})' // OR IP address
      r'(:\d+)?' // Optional port
      r'(\/[-a-zA-Z0-9%_.~#+]*)*' // Path
      r'(\?[;&a-zA-Z0-9%_.~+=-]*)?' // Query string
      r'(\#[-a-zA-Z0-9%_.~+=/]*)?$', // Fragment
      caseSensitive: false,
    );
    return urlPattern.hasMatch(this);
  }

  /// Whether the string represents a valid SVG image URL.
  ///
  /// First checks if the string is a network URL, then verifies
  /// if it has an SVG file extension or content type indicator.
  bool get isSvgUrl {
    // Check if URL ends with .svg (case insensitive)
    // or if it has a Content-Type or MIME type parameter indicating SVG
    final RegExp svgPattern = RegExp(
      r'\.svg(\?[^#]*)?$|' // File extension .svg
      r'[?&]type=(image/svg\+xml|svg)', // URL parameter type=image/svg+xml
      caseSensitive: false,
    );
    return svgPattern.hasMatch(this);
  }

  /// Whether the string represents a valid raster image URL.
  ///
  /// First checks if the string is a network URL, then verifies
  /// if it has a common raster image file extension.
  bool get isRasterImageUrl {
    // First check if it's a network URL
    if (!isNetworkUrl) {
      return false;
    }
    // Check if URL ends with common raster image extensions
    final RegExp rasterPattern = RegExp(
      r'\.(jpe?g|png|gif|bmp|webp|tiff?|ico|heic|heif|avif)(\?[^#]*)?$',
      caseSensitive: false,
    );
    return rasterPattern.hasMatch(this);
  }

  /// Whether the string represents a valid local file path.
  ///
  /// Explicitly excludes network URLs and checks if the string
  /// matches common patterns for local paths on Windows or Unix systems.
  bool get isLocalPath {
    // Explicitly exclude network URLs
    if (isNetworkUrl) {
      return false;
    }
    // Pattern for common local path formats
    final RegExp localPathPattern = RegExp(
      // Windows absolute paths (C:\folder\file.txt)
      r'^([a-zA-Z]:[\\/]|'
      // Windows UNC paths (\\server\share)
      r'\\\\[^\\/:*?"<>|]+\\[^\\/:*?"<>|]+|'
      // Unix absolute paths (/home/user/file.txt)
      r'\/|'
      // Unix relative paths (./folder or ../folder)
      r'\.[\/\\]|'
      // Relative paths without ./ prefix (folder/file.txt)
      r'[^\/\\:*?"<>|]+[\/\\])'
      // Path components
      r'[^:*?"<>|]*$',
    );
    return localPathPattern.hasMatch(this);
  }
}

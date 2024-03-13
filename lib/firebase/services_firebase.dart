class FirestoreServices {
  static bool existField({required data, required String namefield}) {
    return data.data()!.containsKey(namefield);
  }

  static bool existFieldCheckStringNotEmpty(
      {required data, required String namefield}) {
    return existField(data: data, namefield: namefield) &&
        data[namefield] != null &&
        data[namefield].isNotEmpty;
  }

  static bool existFieldCheckBool({required data, required String namefield}) {
    return existField(data: data, namefield: namefield) &&
        data[namefield] != null &&
        data[namefield] == true;
  }

  static bool existFieldCheckIsGreaterThanZero(
      {required data, required String namefield}) {
    return existField(data: data, namefield: namefield) &&
        data[namefield] != null &&
        data[namefield] is num &&
        data[namefield] > 0;
  }

  static bool existFieldCheckListNotEmpty(
      {required data, required String namefield}) {
    return existField(data: data, namefield: namefield) &&
        data[namefield] != null &&
        data[namefield] is List &&
        (data[namefield] as List).isNotEmpty;
  }

  static bool existFieldCheckMapNotEmpty(
      {required data, required String namefield}) {
    return existField(data: data, namefield: namefield) &&
        data[namefield] != null &&
        data[namefield] is Map &&
        (data[namefield] as Map).isNotEmpty;
  }
}
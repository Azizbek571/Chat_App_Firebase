import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  CollectionReference? _usersCollection;
  DatabaseService(){
    _setupCollectionReference();
  }
  void _setupCollectionReference(){
    _usersCollection = _firebaseFirestore.collection('users');
  }
}
void main() {
  StudentsManager studentsManager = new StudentsManager();
  studentsManager.ParentName();
  StudentsManager.operasyon();
  TeacherManager teacherManager = new TeacherManager();
  teacherManager.Pay();
  teacherManager.Save();
  PersonManager personManager = new PersonManager();
  personManager.Save();
  StudentsManager.operasyon();
}

class PersonManager {
  void Save() {
    print("Kaydedildi");
  }
}

class StudentsManager extends PersonManager {
  void ParentName() {
    print("Kayıt edildi..");
  }

  static operasyon() {
    print("Ögrenci Araması");
  }
}

class TeacherManager extends PersonManager {
  void Pay() {
    print("Maas Tutarı");
  }

  @override
  void Save() {
    print("Loglandı..");
    super.Save();
  }
}

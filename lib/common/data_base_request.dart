abstract class DatabaseRequest{
  /// Таблица Роли
  ///
  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';

  /// Таблица Пола
  ///
  /// Поля таблицы: Наименование пола
  static const String tableGender = 'Gender';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль, Пол, Фамилия, Имя, Отчество
  static const String tableUsers = 'Users';

  /// Таблица Страны
  ///
  /// Поля таблицы: Название страны
  static const String tableCountry = 'Country';

  /// Таблица Бренда
  ///
  /// Поля таблицы: Наименование бренда
  static const String tableBrand = 'Brand';

  /// Таблица Категории
  ///
  /// Поля таблицы: Наименование категории
  static const String tableCategory = 'Category';

  /// Таблица Лодка
  ///
  /// Поля таблицы: Название, Бренд, Категория, Страна, Цена, Длина, Год производства
  static const String tableBoat = 'Boat';

  /// Таблица Заявка
  ///
  /// Поля таблицы: Лодка, Пользователь, Дата заявки
  static const String tableRequistion = 'Requistion';

  /// Таблица Избранное
  ///
  /// Поля таблицы: Лодка, Пользователь
  static const String tableFavorite = 'Favorite';


  static const List<String> createTableList = [
    _createTableRole,
    _createTableGender,
    _createTableUsers,
    _createTableCountry,
    _createTableBrand,
    _createTableCategory,
    _createTableBoat,
    _createTableRequistion,
    _createTableFavorite,
  ];

static const List<String> tableList = [
    tableRole,
    tableGender,
    tableUsers,
    tableCountry,
    tableBrand,
    tableCategory,
    tableBoat,
    tableRequistion,
    tableFavorite,
  ];


  /// Запрос для создания таблицы Role
  static const String _createTableRole = '''CREATE TABLE "$tableRole" (
        "id_role" INTEGER,
        "role" TEXT NOT NULL UNIQUE,
        PRIMARY KEY("id_role" AUTOINCREMENT)
      )''';
  /// Запрос для создания таблицы Gender
  static const String _createTableGender = '''CREATE TABLE "$tableGender" (
        "id_gender" INTEGER,
        "gender" TEXT NOT NULL UNIQUE,
        PRIMARY KEY("id_gender" AUTOINCREMENT)
      )''';
  /// Запрос для создания таблицы Users
  static const String _createTableUsers = '''CREATE TABLE "$tableUsers" (
        "id_user"  INTEGER,
        "firstname"  TEXT NOT NULL,
        "middlename"  TEXT NOT NULL,
        "lastname"  TEXT NOT NULL,
        "login"  TEXT NOT NULL UNIQUE,
        "password"  TEXT NOT NULL,
        "role_id"  INTEGER,
        "gender_id"  INTEGER,
        FOREIGN KEY("role_id") REFERENCES "Role"("id_role") ON DELETE CASCADE,
        FOREIGN KEY("gender_id") REFERENCES "Gender"("id_gender") ON DELETE CASCADE,
        PRIMARY KEY("id_user" AUTOINCREMENT)
      )''';
  /// Запрос для создания таблицы Country
  static const String _createTableCountry = '''CREATE TABLE "$tableCountry" (
        "id_country" INTEGER,
        "country" TEXT NOT NULL UNIQUE,
        PRIMARY KEY("id_country" AUTOINCREMENT)
      )''';
    /// Запрос для создания таблицы Brand
    static const String _createTableBrand = '''CREATE TABLE "$tableBrand" (
        "id_brand" INTEGER,
        "brand" TEXT NOT NULL UNIQUE,
        PRIMARY KEY("id_brand" AUTOINCREMENT)
      )''';
    /// Запрос для создания таблицы Category
    static const String _createTableCategory = '''CREATE TABLE "$tableCategory" (
        "id_сategory" INTEGER,
        "сategory" TEXT NOT NULL UNIQUE,
        PRIMARY KEY("id_сategory" AUTOINCREMENT)
      )''';
    /// Запрос для создания таблицы Boat
    static const String _createTableBoat = '''CREATE TABLE "$tableBoat" (
        "id_boat" INTEGER,
        "boatname" TEXT NOT NULL UNIQUE,
        "price" TEXT NOT NULL,
        "long" TEXT NOT NULL,
        "create_year" TEXT NOT NULL,
        "brand_id"  INTEGER,
        "category_id"  INTEGER,
        "country_id"  INTEGER,
        FOREIGN KEY("brand_id") REFERENCES "Brand"("id_brand") ON DELETE CASCADE,
        FOREIGN KEY("category_id") REFERENCES "Category"("id_сategory") ON DELETE CASCADE,
        FOREIGN KEY("country_id") REFERENCES "Country"("id_country") ON DELETE CASCADE,
        PRIMARY KEY("id_boat" AUTOINCREMENT)
      )''';
    /// Запрос для создания таблицы Role
    static const String _createTableRequistion = '''CREATE TABLE "$tableRequistion" (
        "id_requistion"  INTEGER,
        "date_requistion"  TEXT NOT NULL,
        "user_id"  INTEGER,
        "boat_id"  INTEGER,
        FOREIGN KEY("user_id") REFERENCES "Users"("id_user") ON DELETE CASCADE,
        FOREIGN KEY("boat_id") REFERENCES "Boat"("id_boat") ON DELETE CASCADE,
        PRIMARY KEY("id_requistion" AUTOINCREMENT) 
      )''';
    /// Запрос для создания таблицы Role
    static const String _createTableFavorite = '''CREATE TABLE "$tableFavorite" (
        "id_favorite"  INTEGER,
        "user_id"  INTEGER,
        "boat_id"  INTEGER,
        FOREIGN KEY("user_id") REFERENCES "Users"("id_user") ON DELETE CASCADE,
        FOREIGN KEY("boat_id") REFERENCES "Boat"("id_boat") ON DELETE CASCADE,
        PRIMARY KEY("id_favorite" AUTOINCREMENT) 
      )''';

  static String deleteTable(String table) => 'DROP TABLE $table';

  
}
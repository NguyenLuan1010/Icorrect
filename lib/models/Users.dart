class Users {

 late String _userId,
      _displayName,
      _phone,
      _email,
      _countryCode,
      _countryName,
      _countryFlag,
      _birthday,
      _avatar,
      _inviteCode,
      _numberInvited,
      _type,
      _transferCode,
      _target;

  var _gender, _totalPoint;

  var _notify, _vip, _showConversation, _conversationMessage;
  var _distributeCode;
  var _usd;

  var _numOfLike, _numOfFollow, _monthlyVip;

  int _select = 1;
  int _firstDeposit = 1;

  Users(
      this._userId,
      this._displayName,
      this._phone,
      this._email,
      this._countryCode,
      this._countryName,
      this._countryFlag,
      this._birthday,
      this._avatar,
      this._inviteCode,
      this._numberInvited,
      this._type,
      this._transferCode,
      this._target,
      this._gender,
      this._totalPoint,
      this._notify,
      this._vip,
      this._showConversation,
      this._conversationMessage,
      this._distributeCode,
      this._usd,
      this._numOfLike,
      this._numOfFollow,
      this._monthlyVip,
      this._select,
      this._firstDeposit);

  String get userId => _userId;

  set userId(String value) {
    _userId = value;
  }

  get displayName => _displayName;

  int get firstDeposit => _firstDeposit;

  set firstDeposit(int value) {
    _firstDeposit = value;
  }

  int get select => _select;

  set select(int value) {
    _select = value;
  }

  get monthlyVip => _monthlyVip;

  set monthlyVip(value) {
    _monthlyVip = value;
  }

  get numOfFollow => _numOfFollow;

  set numOfFollow(value) {
    _numOfFollow = value;
  }

  int get numOfLike => _numOfLike;

  set numOfLike(int value) {
    _numOfLike = value;
  }

  double get usd => _usd;

  set usd(double value) {
    _usd = value;
  }

  String get distributeCode => _distributeCode;

  set distributeCode(String value) {
    _distributeCode = value;
  }

  get conversationMessage => _conversationMessage;

  set conversationMessage(value) {
    _conversationMessage = value;
  }

  get showConversation => _showConversation;

  set showConversation(value) {
    _showConversation = value;
  }

  get vip => _vip;

  set vip(value) {
    _vip = value;
  }

  int get notify => _notify;

  set notify(int value) {
    _notify = value;
  }

  get totalPoint => _totalPoint;

  set totalPoint(value) {
    _totalPoint = value;
  }

  int get gender => _gender;

  set gender(int value) {
    _gender = value;
  }

  get target => _target;

  set target(value) {
    _target = value;
  }

  get transferCode => _transferCode;

  set transferCode(value) {
    _transferCode = value;
  }

  get type => _type;

  set type(value) {
    _type = value;
  }

  get numberInvited => _numberInvited;

  set numberInvited(value) {
    _numberInvited = value;
  }

  get inviteCode => _inviteCode;

  set inviteCode(value) {
    _inviteCode = value;
  }

  get avatar => _avatar;

  set avatar(value) {
    _avatar = value;
  }

  get birthday => _birthday;

  set birthday(value) {
    _birthday = value;
  }

  get countryFlag => _countryFlag;

  set countryFlag(value) {
    _countryFlag = value;
  }

  get countryName => _countryName;

  set countryName(value) {
    _countryName = value;
  }

  get countryCode => _countryCode;

  set countryCode(value) {
    _countryCode = value;
  }

  get email => _email;

  set email(value) {
    _email = value;
  }

  get phone => _phone;

  set phone(value) {
    _phone = value;
  }

  set displayName(value) {
    _displayName = value;
  }
}

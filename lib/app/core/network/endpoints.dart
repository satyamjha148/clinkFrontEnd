enum Endpoints {
  base('http://192.168.1.102:6969'),
  login('/login');

  const Endpoints(this.url);
  final String url;
}

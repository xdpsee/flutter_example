String GET_USER_URL_FORMAT = 'https://easy-mock.com/mock/5b2c6900a46a453e3ea66330/gifun/user/';

String GetUserUrl(num userId) {
    return GET_USER_URL_FORMAT + '$userId';
}
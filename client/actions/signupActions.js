import axios from 'axios';

export function userSignupRequest(userData) {
  return dispatch => {
    console.log('this is the data sended to signup route', userData);

    return axios.post('/api/auth/signup', userData);
  }
}

export function isUserExists(identifier) {
  return dispatch => {
    return axios.get(`/api/auth/${identifier}`);
  }
}

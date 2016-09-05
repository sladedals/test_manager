import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('test-cases', {path: '/'});
  this.route('statuses', {path: '/status/:status_id'});
});

export default Router;

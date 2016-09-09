import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('test-cases', {path: '/'});
  this.route('test-case.new', {path: '/new'});
  this.route('statuses', {path: '/status/:status_id'});
  this.route('new');
});

export default Router;

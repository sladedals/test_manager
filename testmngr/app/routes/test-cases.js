import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('test-case');
  },
  actions: {
    createTest() {
      const newTest = this.store.createRecord('test-case', this.currentModel);
      newTest.save();
    }
  }
});

const cds = require('@sap/cds');
module.exports = cds.service.impl(function(){
  this.before('CREATE', 'Books', (req) => {
    // custom validation before record creation
  });
  this.before('UPDATE', 'Books', (req) => {
    // custom validation before record update
  });
  this.before('DELETE', 'Books', (req) => {
    // actions before deleting a record
  });
});

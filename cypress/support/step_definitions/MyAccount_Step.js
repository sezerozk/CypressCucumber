const { Then } = require("@badeball/cypress-cucumber-preprocessor");

Then('My account sayfasinin acildigini dogrularim',()=>{
    cy.get('[data-test="page-title"]').should("have.text",'My account');
})

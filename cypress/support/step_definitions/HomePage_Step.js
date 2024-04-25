const { Given, When, Then} = require("@badeball/cypress-cucumber-preprocessor");

Given('Kullanici tool shop sitesine gider', ()=>{
    cy.visit('/');
})

When ('Kullanici sign in butonuna tiklar', ()=>{
    cy.get('[data-test="nav-sign-in"]').click();
})
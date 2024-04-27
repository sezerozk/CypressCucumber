const { Then, } = require("@badeball/cypress-cucumber-preprocessor");

Then('Dashboard sayfasinin acildigini dogrularim', ()=>{
    cy.get('[data-test="page-title"]').should('have.text','Sales over the years');
})

Then("Site URL'inde admin ve dashboard kelimelerinin gectigini dogrularim", ()=>{
    cy.url().should('contain','admin/dashboard');
})

Then("Site URL'inde {string} ve {string} kelimelerinin gectigini dogrularim", (param1,param2)=>{
    cy.url().should('contain',(param1,param2));
})

Then("Site URL'inde {string} kelimesinin gectigini dogrularim", (param1)=>{
    cy.url().should('contain',param1);
})


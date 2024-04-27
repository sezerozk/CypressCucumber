const { Before, After } = require("@badeball/cypress-cucumber-preprocessor");

Before(()=>{
    cy.log('Her testten once calisir')
})

Before({tags:"@smoke"} , ()=>{
    cy.log('Her smoke testten once calisir')
})

After(()=>{
    cy.log('Her testten sonra calisir')
})
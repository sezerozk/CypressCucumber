const { When,Given, Then } = require("@badeball/cypress-cucumber-preprocessor");

When('Kullanici Email alanina email yazar', ()=>{
    cy.get('#email').type('admin@practicesoftwaretesting.com');
})

When('Kullanici Password alanina password yazar', ()=>{
    cy.get('#password').type('welcome01');
})

When('Kullanici login butonuna tiklar', ()=>{
    cy.get('[data-test="login-submit"]').click();
})

When('Kullanici email alanini bos birakir', ()=>{
    cy.get('#email').click();
})

Then ('Kullanici email required mesajinin goruntulendigini dogrular',()=>{
    cy.get('[data-test="email-error"]').should('have.text',' E-mail is required. ');
})

When('Kullanici Email alanina {string} yazar', (email)=>{
    cy.get('#email').type(email);
})

When('Kullanici Password alanina {string} yazar', (password)=>{
    cy.get('#password').type(password);
})
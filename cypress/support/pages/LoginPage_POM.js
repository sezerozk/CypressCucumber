class loginPage {
    constructor () {
        this.emailBox = '#email'
        this.passwordBox = '#password'
        this.loginButton = '[data-test="login-submit"]' 
    }
}
export const login = new loginPage();
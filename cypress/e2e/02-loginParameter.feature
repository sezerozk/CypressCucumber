Feature: Toolshop login testleri

    Scenario: Admin hesabi icin gecerli verilerle login testi - String parametre kullanarak
        Given Kullanici tool shop sitesine gider
        When Kullanici sign in butonuna tiklar
        And Kullanici Email alanina "admin@practicesoftwaretesting.com" yazar
        And Kullanici Password alanina "welcome01" yazar
        And Kullanici login butonuna tiklar
        Then Site URL'inde "admin" ve "dashboard" kelimelerinin gectigini dogrularim
        And Dashboard sayfasinin acildigini dogrularim
    @smoke
    Scenario: Customer hesabi ile gecerli verilerle login testi
        Given Kullanici tool shop sitesine gider
        When Kullanici sign in butonuna tiklar
        And Kullanici Email alanina "customer@practicesoftwaretesting.com" yazar
        And Kullanici Password alanina "welcome01" yazar
        And Kullanici login butonuna tiklar
        Then Site URL'inde "account" kelimesinin gectigini dogrularim
        And My account sayfasinin acildigini dogrularim 

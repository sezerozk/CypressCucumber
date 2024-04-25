Feature: Tool shop login testleri

    @smoke
    Scenario Outline: Gecerli ve gecersiz verilerle login testleri
        Given Kullanici tool shop sitesine gider
        When Kullanici sign in butonuna tiklar
        And Kullanici Email alanina "<email>" yazar
        And Kullanici Password alanina "<password>" yazar
        And Kullanici login butonuna tiklar
        Then Site URL'inde "<url1>" ve "<url2>" kelimelerinin gectigini dogrularim

        Examples:
            | email                                 | password  | url1  | url2      |
            | admin@practicesoftwaretesting.com     | welcome01 | admin | dashboard |
            | customer@practicesoftwaretesting.com  | welcome01 | #     | account   |
            | customer2@practicesoftwaretesting.com | welcome01 | #     | account   |
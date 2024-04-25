Feature: Tool shop login testleri

    #Pozitif Senaryo
    Scenario: Admin hesabi ile gecerli verilerle login testi
        Given Kullanici tool shop sitesine gider
        When Kullanici sign in butonuna tiklar
        And Kullanici Email alanina email yazar
        And Kullanici Password alanina password yazar
        And Kullanici login butonuna tiklar
        Then Dashboard sayfasinin acildigini dogrularim
        And Site URL'inde admin ve dashboard kelimelerinin gectigini dogrularim


    #Negatif Senaryo
    Scenario: Email alani  bos birakilarak login olmaya calisilir
        Given Kullanici tool shop sitesine gider
        When Kullanici sign in butonuna tiklar
        And Kullanici email alanini bos birakir
        And Kullanici Password alanina password yazar
        And Kullanici login butonuna tiklar
        Then Kullanici email required mesajinin goruntulendigini dogrular
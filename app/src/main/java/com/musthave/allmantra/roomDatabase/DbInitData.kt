package com.musthave.allmantra.roomDatabase

import com.musthave.allmantra.roomDatabase.entity.Language
import com.musthave.allmantra.roomDatabase.entity.MantraCategory
import com.musthave.allmantra.roomDatabase.entity.MantraCategoryTranslation

object DbInitData {

    val languageList = arrayOf(
        Language(name = "English", code = "en"),
        Language(name = "Hindi", code = "hi")
    )

    val mantraCategoryList = arrayOf(
        MantraCategory(1,1,"famous"),
        MantraCategory(2,2,"stotra"),
        MantraCategory(3,6,"navagraha-beej"),
        MantraCategory(4,7,"navagraha-stotra"),
        MantraCategory(5,8,"navagraha-gayatri"),
        MantraCategory(6,5,"swami-mantra"),
        MantraCategory(7,3,"shloka"),
        MantraCategory(8,4,"shanti")
    )

    val mantraCategoryTranslationList = arrayOf(
        MantraCategoryTranslation(null,"Mantras",1,1),
        MantraCategoryTranslation(null,"मंत्र",1,2),
        MantraCategoryTranslation(null,"Navagraha Beej Mantras",3,1),
        MantraCategoryTranslation(null,"नवग्रह बीज मंत्र",3,2),
        MantraCategoryTranslation(null,"Stotras",2,1),
        MantraCategoryTranslation(null,"स्तोत्र",2,2),
        MantraCategoryTranslation(null,"Navagraha Stotras",4,1),
        MantraCategoryTranslation(null,"नवग्रह स्तोत्र",4,2),
        MantraCategoryTranslation(null,"Navagraha Gayatri Mantras",5,1),
        MantraCategoryTranslation(null,"नवग्रह गायत्री मंत्र",5,2),
        MantraCategoryTranslation(null,"Swami Mantras",6,1),
        MantraCategoryTranslation(null,"स्वामी मंत्र",6,2),
        MantraCategoryTranslation(null,"Shlokas",7,1),
        MantraCategoryTranslation(null,"श्लोक",7,2),
        MantraCategoryTranslation(null,"Shanti Mantras",8,1),
        MantraCategoryTranslation(null,"शांति मंत्र",8,2)
    )
    
}
package com.musthave.allmantra.roomDatabase.entity

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.ForeignKey.Companion.CASCADE

@Entity(
    foreignKeys = [ForeignKey(
        MantraCategory::class,
        ["id"],
        ["mantra_category"],
        onDelete = CASCADE
    ), ForeignKey(Language::class, ["id"], ["language"], onDelete = CASCADE)]
)
data class MantraCategoryTranslation(
    @ColumnInfo val title: String?,
    @ColumnInfo(name = "mantra_category") val mantraCategory: Int?,
    @ColumnInfo(name = "language") val language: Int?
)

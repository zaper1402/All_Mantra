package com.musthave.allmantra.roomDatabase.entity

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.ForeignKey.Companion.CASCADE
import androidx.room.PrimaryKey


@Entity(
    foreignKeys = [ForeignKey(
        entity = MantraCategory::class,
        ["id"],
        ["mantra_category"],
        onDelete = CASCADE
    )]
)
data class Mantra(
    @PrimaryKey val id: Int,
    @ColumnInfo(name = "image") val image: String?,
    @ColumnInfo(name = "thumbnail") val thumbnail: String?,
    @ColumnInfo(name = "sound") val sound: String?,
    @ColumnInfo(name = "mantra_category") val mantraCategory: Int
)

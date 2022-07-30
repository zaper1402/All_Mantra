package com.musthave.allmantra.home

import android.content.Context
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import kotlin.collections.ArrayList

class HomeViewModel : ViewModel() {
    private val homeRepository = HomeRepository()
    private val mutableReminderListLiveData = MutableLiveData<ArrayList<String>>()
    val reminderListLiveData = mutableReminderListLiveData

    fun fetchReminderList(context : Context) : List<String> {
        return listOf()
    }

    fun getContactsList(context: Context) : MutableList<String> {
        return mutableListOf()
    }
}
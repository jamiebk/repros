package com.android.samples.repro

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Example of a call to a native method
        sample_text.text = stringFromWrapper()
    }

    external fun stringFromWrapper(): String

    companion object {
        init {
            System.loadLibrary("repro-wrapper")
        }
    }
}

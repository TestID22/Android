package com.example.textquest;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //КНОПКА МЕНЯЕТ ИЗОБРАЖЕНИЕ
        final Button startButton = (Button)findViewById(R.id.startbtn);
        startButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startButton.setBackgroundResource(R.drawable.startbtnonclick);
                try {
                    Intent intent = new Intent(MainActivity.this, OneLevel.class);
                    startActivity(intent);
                    finish();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
}
package com.september;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class Levels extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.levels);

        //Убрать шапку приложения
        Window w = getWindow();
        w.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);

        Button buttonback = (Button)findViewById(R.id.buttonback);
        buttonback.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try{
                    Intent intent = new Intent(Levels.this, MainActivity.class);
                    startActivity(intent);
                    finish();
                }catch (Exception e){

                }
            }
        });

        //Кнопка выбора первого уровня - начало
        TextView level1 = (TextView)findViewById(R.id.textViewBasics);
        level1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    Intent intent = new Intent(Levels.this, Level_1.class);
                    startActivity(intent);
                    finish();
                }catch (Exception e){

                }
            }
        });

        //Кнопка выбора перовго уровня - конец

        //Кнопка выбора sql - начало
        TextView level_sql = (TextView)findViewById(R.id.sql);
        level_sql.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    Intent intent = new Intent(Levels.this, Level_sql.class);
                    startActivity(intent);
                    finish();
                }catch (Exception e){

                }
            }
        });


        //Кнопка выбора тестовая документация - начало
        TextView level_testDocumentation = (TextView)findViewById(R.id.testDocumentation);
        level_testDocumentation.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    Intent intent = new Intent(Levels.this, Level_test_Documentation.class);
                    startActivity(intent);
                    finish();
                }catch (Exception e){

                }
            }
        });

        //Кнопка выбора тест - документация - конец
        TextView level_sdm = (TextView)findViewById(R.id.level_sdm);
        level_sdm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    Intent intent = new Intent(Levels.this, level_sdm.class);
                    startActivity(intent);
                    finish();
                }catch (Exception e){

                }
            }
        });

        TextView level_testing_methodology = (TextView)findViewById(R.id.testing_methodology);
        level_sdm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    Intent intent = new Intent(Levels.this, level_sdm.class);
                    startActivity(intent);
                    finish();
                }catch (Exception e){

                }
            }
        });

    }



    //Системная кнопка назад
    @Override
    public void onBackPressed(){
        try{
            Intent intent = new Intent(Levels.this, MainActivity.class);
            startActivity(intent);
            finish();
        }catch (Exception e){

        }
    }
}

package com.september;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class Level_ver_val extends AppCompatActivity {
    //Создание диалогово окна.
    Dialog dialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.level_ver_val);

        Window w = getWindow();
        w.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);


        TextView back = (TextView)findViewById(R.id.button_back_from_level_1);
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(Level_ver_val.this, Levels.class);
                startActivity(intent);
                finish();
            }
        });


    }


    @Override
    public void onBackPressed(){
        try{
            Intent intent = new Intent(Level_ver_val.this, Levels.class);
            startActivity(intent);
            finish();
        }catch (Exception e){

        }
    }
}

package com.september.black0ut;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;


public class MainActivity extends AppCompatActivity {
    //
    AnimationDrawable anim;
    ImageView imageView;
    Button insideButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        getSupportActionBar().hide();//hide Action Bar убрать шапку апликухи

            //Init
          imageView = (ImageView)findViewById(R.id.imageView3);
          imageView.setBackgroundResource(R.drawable.anime);
          anim = (AnimationDrawable)imageView.getBackground();
          insideButton = (Button)findViewById(R.id.button_inside);
          anim.start();


        //Find button inside
        insideButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try{
                    Intent intent = new Intent(MainActivity.this, Menu.class);
                    startActivity(intent);
                    finish();
                }catch (Exception e){
                }

            }
        });

        Window w = getWindow();
        w.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
    }
}
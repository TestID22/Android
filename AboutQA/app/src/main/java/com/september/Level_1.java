package com.september;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class Level_1 extends AppCompatActivity {
    //Создание диалогово окна.
    Dialog dialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.level_1);

        Window w = getWindow();
        w.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);


        //Вызов диалогового окна.
        dialog = new Dialog(this);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE); //Убираем заголовок диалогового окна.
        dialog.setContentView(R.layout.previedialogtest);    //Привяжем лейаут макет.
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT)); //Прозрачный фон диалог. окна.
        dialog.setCancelable(false); //окно нельзя закрыть кнопкой назад

        //кнопка закрывает окно и возвращает к выбору уровней
        TextView button_close = (TextView)dialog.findViewById(R.id.button_close);
        button_close.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try{
                    Intent intent = new Intent(Level_1.this, Levels.class);
                    startActivity(intent);
                    finish();

                }catch (Exception e){

                }
                dialog.dismiss();
            }
        });

        Button btn_next = (Button)dialog.findViewById(R.id.btn_continue);
        btn_next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dialog.dismiss();
            }
        });

        dialog.show(); //показать диалговое окно.



        TextView back = (TextView)findViewById(R.id.button_back_from_level_1);
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(Level_1.this, Levels.class);
                startActivity(intent);
                finish();
            }
        });
    }


    @Override
    public void onBackPressed(){
        try{
            Intent intent = new Intent(Level_1.this, Levels.class);
            startActivity(intent);
            finish();
        }catch (Exception e){

        }
    }
}

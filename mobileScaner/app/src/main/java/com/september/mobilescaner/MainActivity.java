package com.september.mobilescaner;

import android.os.Bundle;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;

import java.net.InetAddress;

public class MainActivity extends AppCompatActivity {
    static InetAddress local_ip;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Window window = getWindow();
        window.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);


        final TextView textView = (TextView)findViewById(R.id.text_for_my_ip);

        //TODO: Взять свой ип и засветить в TextView
        try {
            local_ip = InetAddress.getLocalHost();
        }catch (Exception e){
            textView.append(e.toString());
        }

        final RelativeLayout relativeLayout = (RelativeLayout)findViewById(R.id.main_view);
        Button btn = (Button)findViewById(R.id.button_1);



        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    relativeLayout.setBackgroundColor(getResources().getColor(R.color.colorPrimary));
                    textView.append(local_ip.toString());
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
        });


    }
}

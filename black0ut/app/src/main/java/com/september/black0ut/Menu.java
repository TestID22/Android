package com.september.black0ut;

import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.text.format.Formatter;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;

public class Menu extends AppCompatActivity {

    TextView textView;
    Button scanButton;
    String ip = null;
    Socket socket;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.menu);
        getSupportActionBar().hide();//hide Action Bar убрать шапку апликухи

        //нужно в манифесте прописать разрешения на использование сети
        WifiManager wm = (WifiManager) getApplicationContext().getSystemService(WIFI_SERVICE);
        ip = Formatter.formatIpAddress(wm.getConnectionInfo().getIpAddress());



        textView = findViewById(R.id.ChangeText);
        scanButton = findViewById(R.id.scanButton);
        scanButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                textView.setText("My IP:"+ ip);

            }
        });



        Window w = getWindow();
        w.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
    }



}
[33mcommit 1b72f43bca4c96e8d2fc0354749ce91913456e15[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: septemberEatMe <vitaliiseptember@gmail.com>
Date:   Sat Dec 28 11:22:53 2019 +0200

    redidi 1_lecvel

[1mdiff --git a/AboutQA/app/src/main/AndroidManifest.xml b/AboutQA/app/src/main/AndroidManifest.xml[m
[1mindex 9b958ab..4eed485 100644[m
[1m--- a/AboutQA/app/src/main/AndroidManifest.xml[m
[1m+++ b/AboutQA/app/src/main/AndroidManifest.xml[m
[36m@@ -34,5 +34,13 @@[m
             </intent-filter>[m
         </activity>[m
 [m
[32m+[m[32m        <!--Экран SQL-->[m
[32m+[m[32m        <activity android:name=".Level_sql"[m
[32m+[m[32m            android:screenOrientation="portrait">[m
[32m+[m[32m            <intent-filter>[m
[32m+[m[32m                <category android:name="android.intent.category.LAUNCHER" />[m
[32m+[m[32m            </intent-filter>[m
[32m+[m[32m        </activity>[m
[32m+[m
     </application>[m
 </manifest>[m
\ No newline at end of file[m
[1mdiff --git a/AboutQA/app/src/main/java/com/september/Level_sql.java b/AboutQA/app/src/main/java/com/september/Level_sql.java[m
[1mindex 6d78408..effc2a1 100644[m
[1m--- a/AboutQA/app/src/main/java/com/september/Level_sql.java[m
[1m+++ b/AboutQA/app/src/main/java/com/september/Level_sql.java[m
[36m@@ -5,17 +5,16 @@[m [mimport android.os.Bundle;[m
 import android.view.View;[m
 import android.view.Window;[m
 import android.view.WindowManager;[m
[31m-import android.widget.Button;[m
 import android.widget.TextView;[m
 [m
 import androidx.appcompat.app.AppCompatActivity;[m
 [m
[31m-public class Level_1 extends AppCompatActivity {[m
[32m+[m[32mpublic class Level_sql extends AppCompatActivity {[m
 [m
     @Override[m
     protected void onCreate(Bundle savedInstanceState) {[m
         super.onCreate(savedInstanceState);[m
[31m-        setContentView(R.layout.level_1);[m
[32m+[m[32m        setContentView(R.layout.level_sql);[m
 [m
         Window w = getWindow();[m
         w.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);[m
[36m@@ -24,7 +23,7 @@[m [mpublic class Level_1 extends AppCompatActivity {[m
         back.setOnClickListener(new View.OnClickListener() {[m
             @Override[m
             public void onClick(View view) {[m
[31m-                Intent intent = new Intent(Level_1.this, Levels.class);[m
[32m+[m[32m                Intent intent = new Intent(Level_sql.this, Levels.class);[m
                 startActivity(intent);[m
                 finish();[m
             }[m
[36m@@ -33,7 +32,7 @@[m [mpublic class Level_1 extends AppCompatActivity {[m
     @Override[m
     public void onBackPressed(){[m
         try{[m
[31m-            Intent intent = new Intent(Level_1.this, Levels.class);[m
[32m+[m[32m            Intent intent = new Intent(Level_sql.this, Levels.class);[m
             startActivity(intent);[m
             finish();[m
         }catch (Exception e){[m
[1mdiff --git a/AboutQA/app/src/main/java/com/september/Levels.java b/AboutQA/app/src/main/java/com/september/Levels.java[m
[1mindex bdb624f..ad2b5f9 100644[m
[1m--- a/AboutQA/app/src/main/java/com/september/Levels.java[m
[1m+++ b/AboutQA/app/src/main/java/com/september/Levels.java[m
[36m@@ -50,6 +50,23 @@[m [mpublic class Levels extends AppCompatActivity {[m
             }[m
         });[m
         //Кнопка выбора перовго уровня - конец[m
[32m+[m
[32m+[m[32m        //Кнопка выбора sql - начало[m
[32m+[m[32m        TextView level_sql = (TextView)findViewById(R.id.sql);[m
[32m+[m[32m        level_sql.setOnClickListener(new View.OnClickListener() {[m
[32m+[m[32m            @Override[m
[32m+[m[32m            public void onClick(View view) {[m
[32m+[m[32m                try {[m
[32m+[m[32m                    Intent intent = new Intent(Levels.this, Level_sql.class);[m
[32m+[m[32m                    startActivity(intent);[m
[32m+[m[32m                    finish();[m
[32m+[m[32m                }catch (Exception e){[m
[32m+[m
[32m+[m[32m                }[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m[32m        //Кнопка выбора sql - конец[m
[32m+[m
     }[m
     //Системная кнопка назад[m
     @Override[m
[1mdiff --git a/AboutQA/app/src/main/res/drawable/background_level_1.jpg b/AboutQA/app/src/main/res/drawable/background_level_1.jpg[m
[1mnew file mode 100644[m
[1mindex 0000000..62bd118[m
Binary files /dev/null and b/AboutQA/app/src/main/res/drawable/background_level_1.jpg differ
[1mdiff --git a/AboutQA/app/src/main/res/drawable/levels_background_test.jpg b/AboutQA/app/src/main/res/drawable/levels_background_test.jpg[m
[1mnew file mode 100644[m
[1mindex 0000000..8812557[m
Binary files /dev/null and b/AboutQA/app/src/main/res/drawable/levels_background_test.jpg differ
[1mdiff --git a/AboutQA/app/src/main/res/drawable/style_btn_blue_levels.xml b/AboutQA/app/src/main/res/drawable/style_btn_blue_levels.xml[m
[1mindex a00cd68..77378ee 100644[m
[1m--- a/AboutQA/app/src/main/res/drawable/style_btn_blue_levels.xml[m
[1m+++ b/AboutQA/app/src/main/res/drawable/style_btn_blue_levels.xml[m
[36m@@ -1,5 +1,5 @@[m
 <?xml version="1.0" encoding="utf-8"?>[m
 <shape xmlns:android="http://schemas.android.com/apk/res/android">[m
[31m-    <stroke android:width="2dp" android:color="@color/lightbluemenu"></stroke>[m
[32m+[m[32m    <stroke android:width="2dp" android:color="@color/dark_blue_level_1"></stroke>[m
     <corners android:radius="20dp"></corners>[m
 </shape>[m
\ No newline at end of file[m
[1mdiff --git a/AboutQA/app/src/main/res/layout/level_1.xml b/AboutQA/app/src/main/res/layout/level_1.xml[m
[1mindex c9fc42b..89a7a74 100644[m
[1m--- a/AboutQA/app/src/main/res/layout/level_1.xml[m
[1m+++ b/AboutQA/app/src/main/res/layout/level_1.xml[m
[36m@@ -14,7 +14,7 @@[m
         android:id="@+id/level_1"[m
         android:layout_width="match_parent"[m
         android:layout_height="match_parent"[m
[31m-        app:srcCompat="@drawable/levels_background"[m
[32m+[m[32m        app:srcCompat="@drawable/background_level_1"[m
         android:scaleType="centerCrop"/>[m
 [m
     <ScrollView[m
[36m@@ -45,7 +45,7 @@[m
                 android:layout_marginLeft="20dp"[m
                 android:layout_marginTop="15dp"[m
                 android:layout_marginRight="20dp"[m
[31m-                android:background="@drawable/style_btn_stroke_yellow"[m
[32m+[m[32m                android:background="@drawable/style_btn_blue_levels"[m
                 android:orientation="vertical"[m
                 android:padding="10dp">[m
 [m
[36m@@ -56,7 +56,7 @@[m
                     android:fontFamily="@font/swfont"[m
                     android:text="Обеспечение качества (quality Assurance - qA)"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow"[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1"[m
                     android:textSize="14dp" />[m
 [m
                 <TextView[m
[36m@@ -65,7 +65,7 @@[m
                     android:layout_height="wrap_content"[m
                     android:text="@string/QA"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow"[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1"[m
                     android:typeface="sans" />[m
 [m
                 <TextView[m
[36m@@ -75,7 +75,7 @@[m
                     android:layout_marginTop="15dp"[m
                     android:text="@string/QA_2"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow" />[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1" />[m
 [m
             </LinearLayout>[m
 [m
[36m@@ -83,7 +83,7 @@[m
                 android:layout_width="match_parent"[m
                 android:layout_height="wrap_content"[m
                 android:layout_margin="20dp"[m
[31m-                android:background="@drawable/style_btn_stroke_yellow"[m
[32m+[m[32m                android:background="@drawable/style_btn_blue_levels"[m
                 android:orientation="vertical"[m
                 android:padding="10dp">[m
 [m
[36m@@ -94,7 +94,7 @@[m
                     android:fontFamily="@font/swfont"[m
                     android:text="Контроль качества (quality Control - qC)"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow"[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1"[m
                     android:textSize="14dp" />[m
 [m
                 <TextView[m
[36m@@ -104,7 +104,7 @@[m
 [m
                     android:text="@string/QC"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow"[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1"[m
                     android:textSize="14dp" />[m
             </LinearLayout>[m
 [m
[36m@@ -113,7 +113,7 @@[m
                 android:layout_height="wrap_content"[m
                 android:layout_marginLeft="20dp"[m
                 android:layout_marginRight="20dp"[m
[31m-                android:background="@drawable/style_btn_stroke_yellow"[m
[32m+[m[32m                android:background="@drawable/style_btn_blue_levels"[m
                 android:orientation="vertical"[m
                 android:padding="10dp">[m
 [m
[36m@@ -124,7 +124,7 @@[m
                     android:fontFamily="@font/swfont"[m
                     android:text="Тестирование программного обеспечения (Software Testing)"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow"[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1"[m
                     android:textSize="14dp" />[m
 [m
                 <TextView[m
[36m@@ -133,7 +133,7 @@[m
                     android:layout_height="wrap_content"[m
                     android:text="@string/ST"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow"[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1"[m
                     android:textSize="14dp" />[m
             </LinearLayout>[m
 [m
[36m@@ -143,7 +143,7 @@[m
                 android:layout_marginTop="20dp"[m
                 android:layout_marginLeft="20dp"[m
                 android:layout_marginRight="20dp"[m
[31m-                android:background="@drawable/style_btn_stroke_yellow"[m
[32m+[m[32m                android:background="@drawable/style_btn_blue_levels"[m
                 android:orientation="vertical"[m
                 android:padding="10dp">[m
 [m
[36m@@ -154,7 +154,7 @@[m
                     android:fontFamily="@font/swfont"[m
                     android:text="Качество программного обеспечения (Software quality)"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow"[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1"[m
                     android:textSize="14dp" />[m
 [m
                 <TextView[m
[36m@@ -163,7 +163,7 @@[m
                     android:layout_height="wrap_content"[m
                     android:text="@string/SQ"[m
                     android:textAlignment="center"[m
[31m-                    android:textColor="@color/yellow"[m
[32m+[m[32m                    android:textColor="@color/dark_blue_level_1"[m
                     android:textSize="14dp" />[m
             </LinearLayout>[m
 [m
[1mdiff --git a/AboutQA/app/src/main/res/layout/level_sql.xml b/AboutQA/app/src/main/res/layout/level_sql.xml[m
[1mindex c9fc42b..33642c1 100644[m
[1m--- a/AboutQA/app/src/main/res/layout/level_sql.xml[m
[1m+++ b/AboutQA/app/src/main/res/layout/level_sql.xml[m
[36m@@ -54,7 +54,7 @@[m
                     android:layout_width="match_parent"[m
                     android:layout_height="wrap_content"[m
                     android:fontFamily="@font/swfont"[m
[31m-                    android:text="Обеспечение качества (quality Assurance - qA)"[m
[32m+[m[32m                    android:text="SqL - зык структурированных запросов"[m
                     android:textAlignment="center"[m
                     android:textColor="@color/yellow"[m
                     android:textSize="14dp" />[m
[36m@@ -63,7 +63,7 @@[m
                     android:id="@+id/qa_text"[m
                     android:layout_width="wrap_content"[m
                     android:layout_height="wrap_content"[m
[31m-                    android:text="@string/QA"[m
[32m+[m[32m                    android:text="@string/SQL"[m
                     android:textAlignment="center"[m
                     android:textColor="@color/yellow"[m
                     android:typeface="sans" />[m
[36m@@ -73,7 +73,7 @@[m
                     android:layout_width="wrap_content"[m
                     android:layout_height="wrap_content"[m
                     android:layout_marginTop="15dp"[m
[31m-                    android:text="@string/QA_2"[m
[32m+[m[32m                    android:text="@string/SQL"[m
                     android:textAlignment="center"[m
                     android:textColor="@color/yellow" />[m
 [m
[36m@@ -91,18 +91,18 @@[m
                     android:id="@+id/qc_title"[m
                     android:layout_width="match_parent"[m
                     android:layout_height="wrap_content"[m
[31m-                    android:fontFamily="@font/swfont"[m
[31m-                    android:text="Контроль качества (quality Control - qC)"[m
[32m+[m[32m                    android:fontFamily="@font/swfontcirylic"[m
[32m+[m[32m                    android:text="База Данных(Data Base)"[m
                     android:textAlignment="center"[m
                     android:textColor="@color/yellow"[m
[31m-                    android:textSize="14dp" />[m
[32m+[m[32m                    android:textSize="14dp"[m
[32m+[m[32m                    android:textStyle="bold"/>[m
 [m
                 <TextView[m
                     android:id="@+id/qc_text"[m
                     android:layout_width="match_parent"[m
                     android:layout_height="wrap_content"[m
[31m-[m
[31m-                    android:text="@string/QC"[m
[32m+[m[32m                    android:text="@string/DataBase"[m
                     android:textAlignment="center"[m
                     android:textColor="@color/yellow"[m
                     android:textSize="14dp" />[m
[36m@@ -121,19 +121,20 @@[m
                     android:id="@+id/st_title"[m
                     android:layout_width="match_parent"[m
                     android:layout_height="wrap_content"[m
[31m-                    android:fontFamily="@font/swfont"[m
[31m-                    android:text="Тестирование программного обеспечения (Software Testing)"[m
[32m+[m[32m                    android:fontFamily="@font/swfontcirylic"[m
[32m+[m[32m                    android:text="Создание Базы Данных"[m
                     android:textAlignment="center"[m
                     android:textColor="@color/yellow"[m
[31m-                    android:textSize="14dp" />[m
[32m+[m[32m                    android:textSize="14dp"[m
[32m+[m[32m                    android:textStyle="bold"/>[m
 [m
                 <TextView[m
                     android:id="@+id/st_text"[m
                     android:layout_width="match_parent"[m

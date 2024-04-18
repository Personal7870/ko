Android
assignment 1(3)
activity_main.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center"
    tools:context=".MainActivity">

    <TextView
        android:id="@+id/textView"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:gravity="center"
        android:text="Tic tac toe"
        android:textSize="30dp" />

    <TextView
        android:id="@+id/textView2"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="50dp"
        android:gravity="center"
        android:text="Enter Players Name"
        android:textSize="20dp"/>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="vertical">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="horizontal">


    <TextView
        android:id="@+id/textView6"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="60dp"
        android:layout_marginLeft="60dp"
        android:text="player 1"
        android:textSize="18dp" />

    <EditText
        android:id="@+id/player1"
        android:layout_width="183dp"
        android:layout_height="wrap_content"
        android:layout_marginTop="60dp"
        android:layout_marginLeft="60dp"
        android:text=""
        android:textSize="18dp"
        tools:ignore="TouchTargetSizeCheck" />

    </LinearLayout>


        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:orientation="horizontal">


        <TextView
        android:id="@+id/textView7"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
            android:layout_marginTop="30dp"
            android:layout_marginLeft="60dp"
            android:text="player 2"
            android:textSize="18dp"/>


        <EditText
            android:id="@+id/player2"
            android:layout_width="183dp"
            android:layout_height="wrap_content"
            android:layout_marginTop="30dp"
            android:layout_marginLeft="60dp"
            android:text=""
            android:textSize="18dp"
            tools:ignore="TouchTargetSizeCheck" />
    </LinearLayout>

</LinearLayout>


    <Button
        android:id="@+id/PlayGame"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="40dp"
        android:text="Play Game" />

</LinearLayout>



MainActivity.java
package com.example.tiktac;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
     Button PlayGame;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        PlayGame = findViewById(R.id.PlayGame);

        EditText pl1, pl2;
        Button play;
        pl1 = findViewById(R.id.player1);
        pl2 = findViewById(R.id.player2);
        play = findViewById(R.id.PlayGame);

        PlayGame.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String play1 = pl1.getText().toString();
                String play2 = pl2.getText().toString();


            if ((play1.equals("")) && (play2.equals(""))){
                Toast.makeText(MainActivity.this, "please enter user name", Toast.LENGTH_SHORT).show();
            }
            else{
                Intent intent = new Intent(MainActivity.this, activity_game2.class);
                intent.putExtra("player1", play1);
                intent.putExtra("player2", play2);
                startActivity(intent);
            }
            }
        });
    }
}



activity_game2.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context=".activity_game2">

    <LinearLayout
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:orientation="horizontal">

    <TextView
        android:id="@+id/textView3"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="60dp"
        android:layout_marginLeft="60dp"
        android:text="Player 1"
        android:textSize="18dp"/>

    <TextView
        android:id="@+id/player1"
        android:layout_width="183dp"
        android:layout_height="wrap_content"
        android:layout_marginTop="60dp"
        android:layout_marginLeft="60dp"
        android:text=""
        android:textSize="18dp"
        tools:ignore="TouchTargetSizeCheck"/>

    </LinearLayout>

    <LinearLayout
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:orientation="horizontal">

    <TextView
        android:id="@+id/textView5"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="30dp"
        android:layout_marginLeft="60dp"
        android:text="Player 2"
        android:textSize="18dp"/>

    <TextView
        android:id="@+id/player2"
        android:layout_width="183dp"
        android:layout_height="wrap_content"
        android:layout_marginTop="30dp"
        android:layout_marginLeft="60dp"
        android:text=""
        android:textSize="18dp"
        tools:ignore="TouchTargetSizeCheck"/>

</LinearLayout>

    <GridLayout
        android:layout_width="265dp"
        android:layout_height="298dp"
        android:columnCount="3"
        android:rowCount="3">

        <Button
            android:id="@+id/btn1"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

        <Button
            android:id="@+id/btn2"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

        <Button
            android:id="@+id/btn3"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

        <Button
            android:id="@+id/btn4"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

        <Button
            android:id="@+id/btn5"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

        <Button
            android:id="@+id/btn6"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

        <Button
            android:id="@+id/btn7"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

        <Button
            android:id="@+id/btn8"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

        <Button
            android:id="@+id/btn9"
            android:layout_width="80dp"
            android:layout_height="80dp"
            android:layout_margin="5dp"
            android:onClick="check" />

    </GridLayout>

</LinearLayout>



activity_game2.java
package com.example.tiktac;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class activity_game2 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_game2);

        TextView p1, p2;

        p1 = findViewById(R.id.player1);
        p2 = findViewById(R.id.player2);

        Intent intent = getIntent();
        String player1 = intent.getStringExtra("player1");
        p1.setText("" + player1);

        String player2 = intent.getStringExtra("player2");
        p2.setText("" + player2);

        btnDec();
    }

    Button btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9;
    String b1, b2, b3, b4, b5, b6, b7, b8, b9;

    int flag = 0;
    int count = 0;

    public void btnDec() {
        btn1 = findViewById(R.id.btn1);
        btn2 = findViewById(R.id.btn2);
        btn3 = findViewById(R.id.btn3);
        btn4 = findViewById(R.id.btn4);
        btn5 = findViewById(R.id.btn5);
        btn6 = findViewById(R.id.btn6);
        btn7 = findViewById(R.id.btn7);
        btn8 = findViewById(R.id.btn8);
        btn9 = findViewById(R.id.btn9);
    }

    public void check(View view){
        Button btnCurrent = (Button) view;
        if (btnCurrent.getText().toString() == ""){
            count++;
            if (flag == 0){
                btnCurrent.setText("X");
                flag = 1;
            }
            else {
                btnCurrent.setText("O");
                flag = 0;
            }

            if (count > 4) {
                b1 = btn1.getText().toString();
                b2 = btn2.getText().toString();
                b3 = btn3.getText().toString();
                b4 = btn4.getText().toString();
                b5 = btn5.getText().toString();
                b6 = btn6.getText().toString();
                b7 = btn7.getText().toString();
                b8 = btn8.getText().toString();
                b9 = btn9.getText().toString();

                if (b1.equals(b2) && b2.equals(b3) && !b1.equals("")){
                    Toast.makeText(this, "winner is " + b1, Toast.LENGTH_SHORT).show();
                    newGame();
                } else if (b4.equals(b5) && b5.equals(b6) && !b4.equals("")){
                   Toast.makeText(this, "winner is " + b4, Toast.LENGTH_SHORT).show();
                   newGame();
                } else if (b7.equals(b8) && b8.equals(b9) && !b7.equals("")){
                    Toast.makeText(this, "winner is " + b7, Toast.LENGTH_SHORT).show();
                    newGame();
                } else if (b1.equals(b4) && b4.equals(b7) && !b1.equals("")){
                    Toast.makeText(this, "winner is " + b1, Toast.LENGTH_SHORT).show();
                    newGame();
                } else if (b2.equals(b5) && b5.equals(b8) && !b2.equals("")){
                    Toast.makeText(this, "winner is " + b2, Toast.LENGTH_SHORT).show();
                    newGame();
                } else if (b3.equals(b6) && b6.equals(b9) && !b3.equals("")){
                    Toast.makeText(this, "winner is " + b3, Toast.LENGTH_SHORT).show();
                    newGame();
                } else if (b1.equals(b5) && b5.equals(b9) && !b1.equals("")){
                    Toast.makeText(this, "winner is " + b1, Toast.LENGTH_SHORT).show();
                    newGame();
                } else if (b3.equals(b5) && b5.equals(b7) && !b3.equals("")){
                    Toast.makeText(this, "winner is " + b3, Toast.LENGTH_SHORT).show();
                    newGame();
                }
            }
        }
    }

    public void newGame(){
        btn1.setText("");
        btn2.setText("");
        btn3.setText("");
        btn4.setText("");
        btn5.setText("");
        btn6.setText("");
        btn7.setText("");
        btn8.setText("");
        btn9.setText("");

        count = 0;
        flag = 0;
    }
}





assignment 1(4)
activity_main.xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity">

    <TextView
        android:id="@+id/tvrailwayreservation"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Railway Reservation"
        android:textSize="30dp"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintHorizontal_bias="0.494"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintVertical_bias="0.023" />
    
    <EditText
        android:id="@+id/etentername"
        android:layout_width="375dp"
        android:layout_height="47dp"
        android:layout_marginStart="15dp"
        android:layout_marginTop="25dp"
        android:layout_marginEnd="21dp"
        android:ems="10"
        android:hint="Enter Name"
        android:inputType="textPersonName"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/tvrailwayreservation" />

    <EditText
        android:id="@+id/etenteraddress"
        android:layout_width="372dp"
        android:layout_height="47dp"
        android:layout_marginStart="15dp"
        android:layout_marginTop="16dp"
        android:layout_marginEnd="24dp"
        android:ems="10"
        android:hint="Enter Address"
        android:inputType="textPersonName"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/etentername" />

    <Spinner
        android:id="@+id/sp1"
        android:layout_width="407dp"
        android:layout_height="36dp"
        android:layout_marginStart="1dp"
        android:layout_marginTop="27dp"
        android:layout_marginEnd="3dp"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/etenteraddress" />

    <EditText
        android:id="@+id/etselectdate"
        android:layout_width="377dp"
        android:layout_height="49dp"
        android:layout_marginStart="16dp"
        android:layout_marginTop="37dp"
        android:layout_marginEnd="18dp"
        android:ems="10"
        android:hint="Select Date"
        android:inputType="textPersonName"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/sp1" />

    <EditText
        android:id="@+id/etselecttime"
        android:layout_width="374dp"
        android:layout_height="49dp"
        android:layout_marginStart="16dp"
        android:layout_marginTop="16dp"
        android:layout_marginEnd="21dp"
        android:ems="10"
        android:hint="Select Time"
        android:inputType="textPersonName"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/etselectdate" />

    <TextView
        android:id="@+id/tvticket"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Ticket"
        android:textSize="30dp"
        android:layout_marginStart="16dp"
        android:layout_marginTop="11dp"
        android:layout_marginEnd="313dp"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/etselecttime" />

    <Button
        android:id="@+id/btnminus"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="17dp"
        android:layout_marginStart="15dp"
        android:text="-"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toBottomOf="@id/tvticket" />

    <Button
        android:id="@+id/btnplus"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="68dp"
        android:layout_marginStart="192dp"
        android:layout_marginEnd="16dp"
        android:text="+"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintStart_toEndOf="@id/btnminus"
        app:layout_constraintTop_toBottomOf="@id/etselecttime" />

    <TextView
        android:id="@+id/tvnoofticket"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="1"
        android:textSize="30dp"
        android:layout_marginStart="100dp"
        android:layout_marginTop="76dp"
        android:layout_marginEnd="74dp"
        app:layout_constraintEnd_toStartOf="@id/btnplus"
        app:layout_constraintStart_toEndOf="@id/btnminus"
        app:layout_constraintTop_toBottomOf="@id/etselecttime" />

    <TextView
        android:id="@+id/tvticketclass"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Ticket Class"
        android:textSize="30dp"
        android:layout_marginStart="15dp"
        android:layout_marginTop="11dp"
        android:layout_marginEnd="232dp"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/btnminus" />

    <RadioGroup
        android:id="@+id/radioGroup"
        android:layout_width="386dp"
        android:layout_height="78dp"
        android:layout_marginStart="12dp"
        android:layout_marginTop="9dp"
        android:layout_marginEnd="13dp"
        android:orientation="horizontal"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/tvticketclass" >

    <RadioButton
        android:id="@+id/rb1A"
        android:layout_width="62dp"
        android:layout_height="wrap_content"
        android:layout_weight="1"
        android:text="1A" />

    <RadioButton
        android:id="@+id/rb2A"
        android:layout_width="78dp"
        android:layout_height="wrap_content"
        android:layout_weight="1"
        android:text="2A" />

    <RadioButton
        android:id="@+id/rb3A"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_weight="1"
        android:text="3A" />

   </RadioGroup>

    <Button
        android:layout_width="404dp"
        android:layout_height="48dp"
        android:id="@+id/btnbookticket"
        android:text="Book Ticket"
        android:layout_marginStart="2dp"
        android:layout_marginTop="7dp"
        android:layout_marginEnd="3dp"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintTop_toBottomOf="@id/radioGroup" />

</androidx.constraintlayout.widget.ConstraintLayout>


    
MainActivity.java
package com.example.railwayform;

import androidx.appcompat.app.AppCompatActivity;

import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;

import java.util.Calendar;

public class MainActivity extends AppCompatActivity {
Spinner spinner;
ArrayAdapter<String> arrayAdapter;
String[] s;
EditText name, address, date, time;
RadioGroup rg;
RadioButton r1, r2 ,r3;
Button book, btnmin, btnpls;
TextView nooftickets;
String clas="";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        s = getResources().getStringArray(R.array.TrainName);
        spinner = findViewById(R.id.sp1);
        arrayAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item,s);
        spinner.setAdapter(arrayAdapter);
        name = findViewById(R.id.etentername);
        address = findViewById(R.id.etenteraddress);
        date = findViewById(R.id.etselectdate);
        time = findViewById(R.id.etselecttime);
        nooftickets = findViewById(R.id.tvnoofticket);
        rg = findViewById(R.id.radioGroup);
        r1 = findViewById(R.id.rb1A);
        r2 = findViewById(R.id.rb2A);
        r3 = findViewById(R.id.rb3A);
        book = findViewById(R.id.btnbookticket);
        btnmin = findViewById(R.id.btnminus);
        btnpls = findViewById(R.id.btnplus);

        date.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                new DatePickerDialog(MainActivity.this, new DatePickerDialog.OnDateSetListener() {
                    @Override
                    public void onDateSet(DatePicker view, int year, int month, int dayOfMonth) {
                        date.setText(dayOfMonth+"/"+month+1+"/"+year);
                    }
                }, Calendar.YEAR, Calendar.MONTH, Calendar.DAY_OF_MONTH).show();
            }
        });

        time.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                new TimePickerDialog(MainActivity.this, new TimePickerDialog.OnTimeSetListener() {
                    @Override
                    public void onTimeSet(TimePicker view, int hourOfDay, int minute) {
                        time.setText(hourOfDay+":"+minute);
                    }
                },Calendar.HOUR_OF_DAY, Calendar.MINUTE, false).show();
            }
        });

        btnmin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (Integer.parseInt(nooftickets.getText().toString())>1) {
                    nooftickets.setText(String.valueOf(Integer.parseInt(nooftickets.getText().toString())-1));
                }
                else {
                    Toast.makeText(MainActivity.this,"cant be less than 1",Toast.LENGTH_SHORT).show();
                }
            }
        });

        btnpls.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                nooftickets.setText(String.valueOf(Integer.parseInt(nooftickets.getText().toString())+1));
            }
        });

        rg.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                switch (checkedId)
                {
                    case R.id.rb1A:
                        clas = "1A";
                        break;
                    case R.id.rb2A:
                        clas = "2A";
                        break;
                    case R.id.rb3A:
                        clas = "3A";
                        break;
                }
            }
        });

        book.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this,journeydetails.class);
                intent.putExtra("Name",name.getText().toString());
                intent.putExtra("Address",address.getText().toString());
                intent.putExtra("TrainName",spinner.getSelectedItem().toString());
                intent.putExtra("Date",date.getText().toString());
                intent.putExtra("Time",time.getText().toString());
                intent.putExtra("Ticket",nooftickets.getText());
                intent.putExtra("class",clas);
                startActivity(intent);
            }
        });
    }
}



activity_journeydetails.xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".journeydetails">

    <TextView
        android:id="@+id/tvinfo"
        android:layout_width="285dp"
        android:layout_height="384dp"
        android:layout_marginTop="356dp"
        android:layout_marginStart="187dp"
        android:layout_marginEnd="166dp"
        android:layout_marginBottom="356dp"
        android:textSize="30dp"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.546"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintVertical_bias="0.501" />

</androidx.constraintlayout.widget.ConstraintLayout>



journeydetails.java
package com.example.railwayform;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class journeydetails extends AppCompatActivity {
TextView tv;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_journeydetails);
        tv = findViewById(R.id.tvinfo);
        Intent intent = getIntent();
        String info ="Name :-   "+intent.getStringExtra("Name")+"\n"+"Address :-   ";
        info+=intent.getStringExtra("Address")+"\nTrain Name:-   "+intent.getStringExtra("TrainName")+"\nDate";
        info+=intent.getStringExtra("Date")+"\nTime:-   ";
        info+=intent.getStringExtra("Time")+"\nTicket:-   ";
        info+=intent.getStringExtra("Ticket")+"\nClass:-   ";
        info+=intent.getStringExtra("Class")+"\n";
        tv.setText(info);
    }
}



strings.xml
<resources>
    <string name="app_name"></string>
    <string-array name="TrainName">
        <item>20908 Sayaji Nagari SF Express</item>
        <item>22930 VADODARA - DAHANU ROAD SF Express</item>
        <item>09082 BHARUCH - SURAT MEMU</item>
        <item>82902 AHMEDABAD - MUMBAI CENTRAL IRCTC Tejas Express</item>
        <item>11089 Bhagat Ki Kothi - Pune Express</item>
        <item>22940 Okha Vivek Express</item>
        <item>12471 Swaraj Express</item>
        <item>12933 Karnavati SF Exp</item>
        <item>12953 MUMBAI CENTRAL - HAZRAT NIZAMUDDIN August Kranti Rajdhani Exp</item>
        <item>12925 Paschim SF Express</item>
        <item>22955 Kutch SF Express </item>
        <item>22938 Rewa - Rajkot SF Express</item>
        <item>12216 Delhi Sarai Rohilla Garib Rath Express</item>
    </string-array>
</resources>





assignment 2(3)
activity_main.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context=".MainActivity" >

    <TextView
        android:id="@+id/textView"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="Read And Write On Internal Files"
        android:textAlignment="center"
        android:layout_margin="5dp"
        android:textSize="30sp"
        android:textStyle="bold"/>

    <EditText
        android:id="@+id/edtcomments"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:ems="10"
        android:inputType="text"
        android:hint="Enter Your Comments"
        android:layout_margin="5dp"/>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal"
        android:layout_margin="5dp">

        <Button
            android:id="@+id/btnWrite"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="WriteToFile"
            android:layout_margin="5dp"
            android:onClick="onWriteFile"/>

        <Button
            android:id="@+id/btnRead"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="ReadToFile"
            android:layout_margin="5dp"
            android:onClick="onReadToFile"/>
    </LinearLayout>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="vertical"
        android:layout_margin="10dp">

        <TextView
            android:id="@+id/textView2"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:text="Read Data Form Internal File"
            android:layout_margin="10dp"
            android:textAlignment="center"
            android:textSize="20sp"
            />

        <EditText
            android:id="@+id/edtReadData"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:ems="10"
            android:inputType="text"
            android:text=""
            android:layout_margin="10dp"/>
    </LinearLayout>
</LinearLayout>



MainActivity.java
package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class MainActivity extends AppCompatActivity {
    EditText edtComments,edtReadData;
    Button btnWrite,btnRead;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        edtComments=(EditText) findViewById(R.id.edtcomments);
        edtReadData=(EditText) findViewById(R.id.edtReadData);
        btnWrite=(Button) findViewById(R.id.btnWrite);
        btnRead=(Button) findViewById(R.id.btnRead);
    }

    public void onWriteFile(View view) {
        String Content=edtComments.getText().toString();
        byte[] data=Content.getBytes();
        try{
            FileOutputStream fout=openFileOutput("data.txt", Context.MODE_APPEND);
            fout.write(data);
            Toast.makeText(this, "Data Write Successfully....!", Toast.LENGTH_SHORT).show();
            edtComments.setText("");
            fout.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void onReadToFile(View view) {
        byte[] data=new byte[2008];
        try {
            FileInputStream fin=openFileInput("data.txt");
            fin.read(data);
            edtReadData.setText(new String(data));
            Toast.makeText(this, "Data Read Successfully....!", Toast.LENGTH_SHORT).show();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}





.NET

Assignment 1(1)
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ass_1_
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(textBox1.Text == "")
            {
                 MessageBox.Show("Please enter number");
                 return;
            }

            int input = Convert.ToInt32(textBox1.Text);
            if(comboBox1.SelectedIndex==0)
            {
                Isprime(input);
            }
            else if(combobox1.SelectedIndex==1)
            {
                Isarmstrong(input);
            }
            else if(combobox1.SelectedIndex==2)
            {
                Ispalindrome(input);
            }
           

            private void Isprime(int n)
            {
                int count = 0;
                if(n == 1)
                {
                     label3.Text = n + "is prime number";
                }
                for(int i=1;i<=n;i++)
                {
                     if(n % i == 0)
                     {
                          count++;
                     }
                }
                if (count == 2)
                {
                     label3.Text = n + "is a prime number";
                }
                else
                {
                     label3.Text = n + "is not a prime number";
                }
            }

            private void Isarmstrong(int n)
            {
                int temp = n;
                int len = textBox1.Text.Length;
                int sum = 0;
                while(n!=0)
                {
                    int rem = n % 10;
                    sum += Convert.ToInt32(Math.Pow(rem, len));
                    n = n / 10;
                }
                if(temp == sum)
                {
                    label3.Text = temp + "is a armstrong number";  
                }
                else
                {
                    label3.Text = temp + "is not a armstrong number";
                }   
            }
    
            private void Ispalindrome(int n)
            {
                int temp = n;
                int rem, rev = 0;
                while(n!=0)
                {
                    rem = n % 10;
                    rev = (rev * 10) + rem;
                    n = n / 10;
                }
                if(temp == rev)
                {
                    label3.Text = temp + "is a palindrome number";  
                }
                else
                {
                    label3.Text = temp + "is not palindrome number";
                }   
            }
        }



Assignment 1(6)
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ass1_6_
{
     public partial class Form1 : Form
     {
         public Form1()
         {
             InitializeComponent(); 
         }
         private void button1_Click(object sender, EventArgs e)
         {
              string s = textBox1.Text;
       
              if(radioButton1.Checked)
              {
                   listBox1.Items.Add(s);
              }
              else if(radioButton2.Checked)
              {
                   if(listBox1.Items.Contains(s))
                   {
                       listBox.Items.Remove(s);
                   }
              }
         } 
     }  
}



Assignment 1(11)
using System;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ass1_11_
{
     public partial class Form1 : Form
     {
         public Form1()
         {
             InitializeComponent(); 
         }
         private void button1_Click(object sender, EventArgs e)
         {
              string s = textBox1.Text;
       
              if(radioButton1.Checked)
              {
                   listBox1.Items.Add(s);
              }
              else if(radioButton2.Checked)
              {
                   if(listBox1.Items.Contains(s))
                   {
                       listBox.Items.Remove(s);
                   }
              }
         } 
     }  
}
using System.Windows.Forms;

namespace ass1_11_
{
     public partial class Form1 : Form
     {
         List<int> list = new List<int>();
         public Form1()
         {
             InitializeComponent(); 
         }

         private void button1_Click(object sender, EventArgs e)
         {
              if(textBox1.Text.Length != 0)
              {
                   listBox1.Items.Add(Convert.ToInt32(textBox1.Text));
                   list.Add(Convert.ToInt(textBox1.Text));
                   if(! listBox1.Sorted)
                   {
                        list.Sort();
                        listBox1.Items.clear();
                        for(int i=0; i< list.Count; i++)
                        {
                            listBox1.Items.Add(list[i]);
                        }
                   }
                   textBox1.Text = "";
              }
              else
              {
                   MessageBox.Show("please enter a value");
              }
         }
     }   
}





Assignment 2(2)
baki



Assignment 2(5)
Animal.cs
using System;
namespace Q5_1
{
     //class Animal
     //{
     //}
     public abstract class Animal
     {
         public string Name { 
             get; 
             set; 
         }
         public abstract string MakeSound();
     }
     public class Dog : Animal
     {
         public override string MakeSound()
         {
             return "Woof!";
         }
     }
     public class Cat : Animal
     {
         public override string MakeSound()
         {
             return "Meow!";
         }
     }
}

From.cs
using System;
using System.Windows.Forms;
namespace Q5_1
{
     public partial class Form1 : Form
     {
          public Form1()
          {
               InitializeComponent();
          }
          private void button1_Click(object sender, EventArgs e)
          {
               string selectedAnimal = comboBox1.Text;
               Animal animal;
               switch (selectedAnimal)
               {
                    case "Dog":
                        animal = new Dog();
                        break;
                    case "Cat":
                        animal = new Cat();
                        break;
                    default:
                        animal = null;
                        break;
                }
                if (animal != null){
                   // Set animal name from textbox
                   animal.Name = selectedAnimal;
                   // Display sound in label
                   label1.Text = animal.Name.ToString() + " voice -> " + 
animal.MakeSound().ToString(); 
            }
            else{
                 label1.Text = "Please select an animal.";
            }
         }
     }
}





Assignment 2(7)
StringFormatter.cs
using System;
namespace Q7
{
     //class StringFormatter
     //{
     //}
     public delegate string StringFormatter(string text);
     public static class StringFormatters
     {
          public static string UppercaseFormatter(string text)
          {
               return text.ToUpper();
          }
          public static string LowercaseFormatter(string text)
          {
               return text.ToLower();
          }
          public static string InvertedCaseFormatter(string text)
          {
               string result = "";
               foreach (char c in text)
               {
                    result += char.IsUpper(c) ? char.ToLower(c) : char.ToUpper(c);
               }
               return result;
          }
     }
}

From.cs
using System;
using System.Windows.Forms;
namespace Q7
{
     public partial class Form1 : Form
     {
          public Form1()
          {
              InitializeComponent();
          }
          private void button1_Click(object sender, EventArgs e)
          {
               StringFormatter formatter;
               string formattedText;
               string selectedFormat = comboBox1.Text;
               switch (selectedFormat)
               {
                   case "Uppercase":
                       formatter = StringFormatters.UppercaseFormatter;
                       break;
                   case "Lowercase":
                       formatter = StringFormatters.LowercaseFormatter;
                       break;
                   case "Inverted Case":
                       formatter = StringFormatters.InvertedCaseFormatter;
                       break;
                   default:
                       formatter = null;
                       break;
               }
               if (formatter != null)
               {
                   formattedText = formatter(textBox1.Text);
                   label3.Text = formattedText;
               }
               else
               {
                    label3.Text = "Please select a format.";
               }
           }
      }
}





Assignment 3(1)
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace notepad
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Clear();
        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenFileDialog od = new OpenFileDialog();
            od.Title = "Open";
            od.Filter = "Text Document(*.txt)|*.txt|All Files(*.*)|*.*";
            if (od.ShowDialog() == DialogResult.OK)
                richTextBox1.LoadFile(od.FileName, RichTextBoxStreamType.PlainText);
            this.Text = od.FileName;
        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog od = new SaveFileDialog();
            od.Title = "Save";
            od.Filter = "Text Document(*.txt)|*.txt|All Files(*.*)|*.*";
            if (od.ShowDialog() == DialogResult.OK)
                richTextBox1.SaveFile(od.FileName, RichTextBoxStreamType.PlainText);
            this.Text = od.FileName;
        }

        private void saveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog od = new SaveFileDialog();
            od.Title = "Save";
            od.Filter = "Text Document(*.txt)|*.txt|All Files(*.*)|*.*";
            if (od.ShowDialog() == DialogResult.OK)
                richTextBox1.SaveFile(od.FileName, RichTextBoxStreamType.PlainText);
            this.Text = od.FileName;
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void dateTimeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = System.DateTime.Now.ToString();
        }

        private void undoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Undo();
        }

        private void reduToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Redo();
        }

        private void cutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Cut();
        }

        private void copyToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Copy();
        }

        private void pasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Paste();
        }

        private void selectAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.SelectAll();
        }

        private void fontToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FontDialog fnt = new FontDialog();
            if (fnt.ShowDialog() == DialogResult.OK)
                richTextBox1.Font = fnt.Font;

        }

        private void colorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog fnt = new ColorDialog();
            if (fnt.ShowDialog() == DialogResult.OK)
                richTextBox1.ForeColor = fnt.Color;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}



Assignment 3(2)
namespace finalCalculator
{
    public partial class Form1 : Form
    {
        int first, second, result;
        string op = "";
        public Form1()
        {
            InitializeComponent();
        }



        private void button3_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Length > 0)
            {
                textBox1.Text = textBox1.Text.Remove(textBox1.Text.Length - 1, 1);
            }
        }

        private void button17_Click(object sender, EventArgs e)
        {
            second = Convert.ToInt32(textBox1.Text);
            switch (op)
            {
                case "+":
                    result = first + second;
                    break;
                case "-":
                    result = first - second;
                    break;
                case "*":
                    result = first * second;
                    break;
                case "/":
                    if (second != 0)
                    {
                        result = first / second;
                    }
                    else
                    {
                        MessageBox.Show("Cannot divide by zero.");
                    }
                    break;
            }

            label1.Text += " " + textBox1.Text;
            textBox1.Text = result.ToString();
            richTextBox1.AppendText(label1.Text + " = " + result.ToString() + "\n");
        }

        private void NumberButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (textBox1.Text == "0")
            {
                textBox1.Text = button.Text;
            }
            else
            {
                textBox1.Text += button.Text;
            }
        }

        private void OperatorButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            op = button.Text;
            first = Convert.ToInt32(textBox1.Text);
            label1.Text = textBox1.Text + " " + op;
            textBox1.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "0";
            label1.Text = "";
            op = "";
        }
    }
}



Assignment 3(3)
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace dyanmic1
{
    public partial class Form1 : Form
    {
        private Button[,] buttons = new Button[3, 3];
        int num;
        public int cnt = 1;
        public Form1()
        {
            InitializeComponent();
            for (int row = 0; row<3; row++)
            {
                for (int col = 0; col < 3; col++)
                {
                    buttons[row, col] = new Button();
                    buttons[row, col].Size = new System.Drawing.Size(150, 150);
                    buttons[row, col].Location = new System.Drawing.Point(col * 150, row * 150);
                    buttons[row, col].Font = new System.Drawing.Font("Arial", 36);
                    buttons[row, col].Name = String.Format("button_{0}_{1}", row, col);//$"button_{row}_{col}";
                    buttons[row, col].Click += new System.EventHandler(Button_click);
                    buttons[row, col].BackColor = Color.WhiteSmoke;
                    if(row==2 && col ==2)
                    {
                        buttons[row, col].Text = "";
                    } 
                    else
                    {
                        buttons[row, col].Text = cnt.ToString();
                        cnt++;
                    }
                    this.Controls.Add(buttons[row, col]);
                }
            }
        }

        private void Button_click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            if(btn == buttons[0,0])
            {
                if(buttons[0,1].Text == "")
                {
                    buttons[0, 1].Text = buttons[0, 0].Text;
                    buttons[0, 0].Text = "";
                    check();
                }

                if (buttons[1, 0].Text == "")
                {
                    buttons[1, 0].Text = buttons[0, 0].Text;
                    buttons[0, 0].Text = "";
                    check();
                }
            }

            //Btn 2

            if (btn == buttons[0, 1])
            {
                if (buttons[0, 0].Text == "")
                {
                    buttons[0, 0].Text = buttons[0, 1].Text;
                    buttons[0, 1].Text = "";
                    check();
                }

                if (buttons[0, 2].Text == "")
                {
                    buttons[0, 2].Text = buttons[0, 1].Text;
                    buttons[0, 1].Text = "";
                    check();
                }

                if (buttons[1, 1].Text == "")
                {
                    buttons[1,1].Text = buttons[0, 1].Text;
                    buttons[0, 1].Text = "";
                    check();
                }
            }

            //btn 3
            if (btn == buttons[0, 2])
            {
                if (buttons[0, 1].Text == "")
                {
                    buttons[0, 1].Text = buttons[0, 2].Text;
                    buttons[0, 2].Text = "";
                    check();
                }

                if (buttons[1, 2].Text == "")
                {
                    buttons[1, 2].Text = buttons[0, 2].Text;
                    buttons[0, 2].Text = "";
                    check();
                }
            }

            //btn 4
            if (btn == buttons[1, 0])
            {
                if (buttons[0, 0].Text == "")
                {
                    buttons[0, 0].Text = buttons[1, 0].Text;
                    buttons[1, 0].Text = "";
                    check();
                }

                if (buttons[1, 1].Text == "")
                {
                    buttons[1, 1].Text = buttons[1,0].Text;
                    buttons[1, 0].Text = "";
                    check();
                }

                if (buttons[2, 0].Text == "")
                {
                    buttons[2, 0].Text = buttons[1, 0].Text;
                    buttons[1, 0].Text = "";
                    check();
                }
            }

            //btn5
            if (btn == buttons[1, 1])
            {
                if (buttons[0, 1].Text == "")
                {
                    buttons[0, 1].Text = buttons[1, 1].Text;
                    buttons[1, 1].Text = "";
                    check();
                }

                if (buttons[1, 0].Text == "")
                {
                    buttons[1, 0].Text = buttons[1, 1].Text;
                    buttons[1, 1].Text = "";
                    check();
                }

                if (buttons[1, 2].Text == "")
                {
                    buttons[1, 2].Text = buttons[1, 1].Text;
                    buttons[1, 1].Text = "";
                    check();
                }

                if (buttons[2,1].Text == "")
                {
                    buttons[2,1].Text = buttons[1, 1].Text;
                    buttons[1, 1].Text = "";
                    check();
                }
            }
            //btn 6
            if (btn == buttons[1, 2])
            {
                if (buttons[0, 2].Text == "")
                {
                    buttons[0, 2].Text = buttons[1, 2].Text;
                    buttons[1, 2].Text = "";
                    check();
                }

                if (buttons[1, 1].Text == "")
                {
                    buttons[1, 1].Text = buttons[1, 2].Text;
                    buttons[1, 2].Text = "";
                    check();
                }

                if (buttons[2, 2].Text == "")
                {
                    buttons[2, 2].Text = buttons[1, 2].Text;
                    buttons[1, 2].Text = "";
                    check();
                }
            }
            // btn7

            if (btn == buttons[2, 0])
            {
                if (buttons[1, 0].Text == "")
                {
                    buttons[1, 0].Text = buttons[2, 0].Text;
                    buttons[2, 0].Text = "";
                    check();
                }

                if (buttons[2, 1].Text == "")
                {
                    buttons[2, 1].Text = buttons[2, 0].Text;
                    buttons[2, 0].Text = "";
                    check();
                }
            }

            //btn8
            if (btn == buttons[2, 1])
            {
                if (buttons[1, 1].Text == "")
                {
                    buttons[1, 1].Text = buttons[2, 1].Text;
                    buttons[2, 1].Text = "";
                    check();
                }

                if (buttons[2, 0].Text == "")
                {
                    buttons[2, 0].Text = buttons[2, 1].Text;
                    buttons[2, 1].Text = "";
                    check();
                }
                if (buttons[2, 2].Text == "")
                {
                    buttons[2, 2].Text = buttons[2, 1].Text;
                    buttons[2, 1].Text = "";
                    check();
                }
            }

            //btn 9
            if (btn == buttons[2, 2])
            {
                if (buttons[1, 2].Text == "")
                {
                    buttons[1, 2].Text = buttons[2, 2].Text;
                    buttons[2, 2].Text = "";
                    check();
                }

                if (buttons[2, 1].Text == "")
                {
                    buttons[2, 1].Text = buttons[2, 2].Text;
                    buttons[2, 2].Text = "";
                    check();
                }
            }
        }

        public void check()
        {
            num = num + 1;
            if (buttons[0, 0].Text == "1" && buttons[0, 1].Text == "2" && buttons[0, 2].Text == "3" && buttons[1, 0].Text == "4" && buttons[1, 1].Text == "5" && buttons[1, 2].Text == "6" && buttons[2, 0].Text == "7" && buttons[2, 1].Text == "8" && buttons[2, 2].Text == "");
            {
                //MessageBox.Show("You Did it in " + num + "Clicks");
            } 
        }

        public void suffle()
        {
            int i, j, rn;
            int[] a = new int[9];
            Boolean flag = false;
            i = 1;
            do
            {
                Random rnd = new Random();
                rn = Convert.ToInt32((rnd.Next(0, 8)) + 1);
                for (j = 1; j <= i; j++)
                {
                    if (a[j] == rn)
                    {
                        flag = true;
                        break;
                    }
                }
                if (flag == true)
                {
                    flag = false;
                }
                else
                {
                    a[i] = rn;
                    i = i + 1;
                }
            } while (i <= 8);
            buttons[0, 0].Text = Convert.ToString(a[1]);
            buttons[0, 1].Text = Convert.ToString(a[2]);
            buttons[0, 2].Text = Convert.ToString(a[3]);
            buttons[1, 0].Text = Convert.ToString(a[4]);
            buttons[1, 1].Text = Convert.ToString(a[5]);
            buttons[1, 2].Text = Convert.ToString(a[6]);
            buttons[2, 0].Text = Convert.ToString(a[7]);
            buttons[2, 1].Text = Convert.ToString(a[8]);
            buttons[2, 2].Text = "";
            num = 0;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            suffle();
            this.BackColor = Color.BlanchedAlmond;
        }
    }
}

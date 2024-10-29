package com.example.emergencyhotlines;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        TextView tvHeader = findViewById(R.id.tv_header);
        Spinner spinnerBarangay = findViewById(R.id.spinner_barangay);
        Spinner spinnerEmergency = findViewById(R.id.spinner_emergency);
        Button btnCall = findViewById(R.id.btn_call);


        String[] barangays = new String[]{
                "Anilao Proper", "Anilao-Labac", "Antipolo Del Norte", "Antipolo Del Sur",
                "Bagong Pook", "Balintawak", "Banaybanay", "Bolbok", "Bugtong na Pulo", "Bulacnin",
                "Calamias", "Cumba", "Dagatan", "Duhatan", "Halang", "Inosluban", "Kayumanggi", "Latag",
                "Lodlod", "Lumbang", "Mabini", "Malagonlong", "Malitlit", "Marauoy", "Mataas na Lupa",
                "Pagolingin Bata", "Pagolingin East", "Pagolingin West", "Pangao", "Pinagtongulan",
                "Plaridel", "Poblacion Barangay 1", "Poblacion Barangay 2", "Poblacion Barangay 3",
                "Poblacion Barangay 4", "Poblacion Barangay 5", "Poblacion Barangay 6", "Poblacion Barangay 7",
                "Poblacion Barangay 8", "Poblacion Barangay 9", "Poblacion Barangay 10", "Poblacion Barangay 11",
                "Poblacion Barangay 12", "Poblacion Barangay 13", "Poblacion Barangay 14", "Poblacion Barangay 15",
                "Poblacion Barangay 16", "Poblacion Barangay 17", "Poblacion Barangay 18", "Poblacion Barangay 19",
                "Poblacion Barangay 20", "Poblacion Barangay 21", "Poblacion Barangay 22", "Pusil", "Quezon",
                "Rizal", "Sabang", "Sampaguita", "San Benito", "San Carlos", "San Celestino", "San Francisco",
                "San Guillermo", "San Jose", "San Lucas", "San Salvador", "Santo Niño", "Sapac", "Sico",
                "Talisay", "Tambo", "Tangob", "Tanguay", "Tibig"
        };

        String[] emergencyDepartments = new String[]{"Fire Department", "Police Department", "Medical Emergency"};


        ArrayAdapter<String> barangayAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, barangays);
        ArrayAdapter<String> emergencyAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, emergencyDepartments);


        spinnerBarangay.setAdapter(barangayAdapter);
        spinnerEmergency.setAdapter(emergencyAdapter);


        tvHeader.setText("Emergency Hotlines");


        btnCall.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                String selectedBarangay = spinnerBarangay.getSelectedItem().toString();
                String selectedDepartment = spinnerEmergency.getSelectedItem().toString();


                Intent intent = new Intent(MainActivity.this, EmergencyCallAcitivity.class);
                intent.putExtra("selected_barangay", selectedBarangay);
                intent.putExtra("selected_department", selectedDepartment);


                startActivity(intent);
            }
        });
    }
}

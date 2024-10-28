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


        String[] barangays = new String[]{"Barangay 1", "Barangay 2", "Barangay 3"};

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

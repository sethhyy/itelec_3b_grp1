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

        // Access UI components
        TextView tvHeader = findViewById(R.id.tv_header);
        Spinner spinnerBarangay = findViewById(R.id.spinner_barangay);
        Spinner spinnerEmergency = findViewById(R.id.spinner_emergency);
        Button btnCall = findViewById(R.id.btn_call);

        // Create an array of barangay options
        String[] barangays = new String[]{"Barangay 1", "Barangay 2", "Barangay 3"};
        // Create an array of emergency department options
        String[] emergencyDepartments = new String[]{"Fire Department", "Police Department", "Medical Emergency"};

        // Create adapters for spinners
        ArrayAdapter<String> barangayAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, barangays);
        ArrayAdapter<String> emergencyAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, emergencyDepartments);

        // Set adapters on the spinners
        spinnerBarangay.setAdapter(barangayAdapter);
        spinnerEmergency.setAdapter(emergencyAdapter);

        // Set the header text
        tvHeader.setText("Emergency Hotlines");

        // Set click listener for the Call button
        btnCall.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Get selected items from spinners
                String selectedBarangay = spinnerBarangay.getSelectedItem().toString();
                String selectedDepartment = spinnerEmergency.getSelectedItem().toString();

                // Create an intent to start EmergencyCallActivity
                Intent intent = new Intent(MainActivity.this, EmergencyCallAcitivity.class);
                intent.putExtra("selected_barangay", selectedBarangay);
                intent.putExtra("selected_department", selectedDepartment);

                // Start the new activity
                startActivity(intent);
            }
        });
    }
}

package com.example.testopenssl;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

public class MainActivity extends Activity {
	static {
		System.loadLibrary("openssl");
	}
	public static native String testOpenssl();
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		new AlertDialog.Builder(this).setMessage(testOpenssl()).show();
	}
}

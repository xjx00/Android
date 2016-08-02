package xjx.com.test;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btn1 = (Button) findViewById(R.id.button1);
        btn1.setOnClickListener(new View.OnClickListener() {
          public void onClick(View v){
              Toast.makeText(getApplicationContext(),"Toast测试",Toast.LENGTH_SHORT).show();
          }

        });
        Button btn2 = (Button) findViewById(R.id.button2);
        btn2.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v){
                showdialog();
            }

        });
        Button btn3 = (Button) findViewById(R.id.button3);
        btn3.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v){
                showprocess();
            }

        });
    }
    public void showdialog(){
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("对话框测试");
        builder.setMessage("请选择：");
        builder.setIcon(R.mipmap.ic_launcher);
        builder.setCancelable(false);
        builder.setPositiveButton("确定",new DialogInterface.OnClickListener(){
            public void onClick(DialogInterface dialog,int which){
                dialog.dismiss();
                Toast.makeText(getApplicationContext(),"你选择了确定",Toast.LENGTH_SHORT).show();
            }
        });
        builder.setNegativeButton("取消",new  DialogInterface.OnClickListener(){
           public void onClick(DialogInterface dialog,int which){
               dialog.dismiss();
               Toast.makeText(getApplicationContext(),"你选择了取消",Toast.LENGTH_SHORT).show();
           }
        });
        builder.create();
        builder.show();
    }

    public void showprocess(){
        ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("正在测试...");
        progressDialog.setCancelable(true);
        progressDialog.show();
    }
}


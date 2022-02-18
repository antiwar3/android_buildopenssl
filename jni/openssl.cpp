#include <jni.h>
#include "com_example_testopenssl_MainActivity.h"
#include "openssl.h"
#include <openssl/ssl.h>

JNIEXPORT jstring JNICALL Java_com_example_testssl_MainActivity_testOpenssl
  (JNIEnv * env, jclass){

	main();
	return env->NewStringUTF("success to call openssl.");
}


int main(){
    SSL_library_init();
	return 0;
}

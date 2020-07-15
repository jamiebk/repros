#include <jni.h>
#include <string>
#include <implementation.h>

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_samples_repro_MainActivity_stringFromWrapper(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = string_from_implementation();
    return env->NewStringUTF(hello.c_str());
}

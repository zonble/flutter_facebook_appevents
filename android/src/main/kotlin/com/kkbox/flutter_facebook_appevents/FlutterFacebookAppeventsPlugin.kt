package com.kkbox.flutter_facebook_appevents

import android.os.Bundle
import android.os.IBinder
import android.os.Parcelable
import com.facebook.FacebookSdk
import com.facebook.appevents.AppEventsLogger
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import java.io.Serializable

class FlutterFacebookAppeventsPlugin(private val registrar: Registrar) : MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "flutter_facebook_appevents")
      channel.setMethodCallHandler(FlutterFacebookAppeventsPlugin(registrar))
//      FacebookSdk.sdkInitialize(registrar.context())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when (call.method) {
      "reset_user_id" -> {
        AppEventsLogger.setUserID(null)
        result.success(null)
      }
      "set_user_id" -> {
        val userID = call.arguments as String
        userID.let {
          AppEventsLogger.setUserID(it)
        }
        result.success(null)
      }
      "log_event" -> {
        val body = call.arguments as String
        body.let {
          val gson = Gson()
          try {
            val map: Map<String, Any> = gson.fromJson(it, object : TypeToken<Map<String, Any>>() {}.type)
            val eventName = map["event_name"] as? String
            val parameters = map["parameters"] as? Map<String, Any>
            eventName.let {
              val logger = AppEventsLogger.newLogger(registrar.context())
              if (parameters != null) {
                var bundle = parameters.toBundle()
                logger.logEvent(eventName, bundle)
              } else {
                logger.logEvent(eventName)
              }

            }
          } catch (e: Exception) {
            print("$e")
          }
        }
        result.success(null)
      }
      else -> result.notImplemented()
    }
  }
}

fun <V> Map<String, V>.toBundle(bundle: Bundle = Bundle()): Bundle = bundle.apply {
  forEach {
    val k = it.key
    val v = it.value
    when (v) {
      is IBinder -> putBinder(k, v)
      is Bundle -> putBundle(k, v)
      is Byte -> putByte(k, v)
      is ByteArray -> putByteArray(k, v)
      is Char -> putChar(k, v)
      is CharArray -> putCharArray(k, v)
      is CharSequence -> putCharSequence(k, v)
      is Float -> putFloat(k, v)
      is FloatArray -> putFloatArray(k, v)
      is Parcelable -> putParcelable(k, v)
      is Serializable -> putSerializable(k, v)
      is Short -> putShort(k, v)
      is ShortArray -> putShortArray(k, v)

//      is Size -> putSize(k, v) //api 21
//      is SizeF -> putSizeF(k, v) //api 21

      else -> throw IllegalArgumentException("$v is of a type that is not currently supported")
//      is Array<*> -> TODO()
//      is List<*> -> TODO()
    }
  }
}

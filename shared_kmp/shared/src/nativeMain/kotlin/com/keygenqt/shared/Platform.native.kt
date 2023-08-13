package com.keygenqt.shared

//import io.ktor.client.*
//import io.ktor.client.call.*
//import io.ktor.client.engine.curl.*
//import io.ktor.client.request.*
//import kotlinx.coroutines.runBlocking

fun user(name: String): String {
    return "You name: $name"
//    val client = HttpClient(Curl)
//    return runBlocking {
//        client.get("https://api.github.com/users/$name").body()
//    }
}

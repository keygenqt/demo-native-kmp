plugins {
    kotlin("multiplatform")
}

repositories {
    mavenCentral()
}

kotlin {
    linuxArm32Hfp("native") {
//    linuxX64("native") {
        binaries {
            sharedLib {
                baseName = "native"
            }
        }
    }
    sourceSets {
        val nativeMain by getting {
            dependencies {
//                implementation("io.ktor:ktor-client-core:2.3.3")
//                implementation("io.ktor:ktor-client-curl:2.3.3")
            }
        }
    }
}

tasks.register("copy", Copy::class) {
    from(layout.buildDirectory.dir("bin/native/releaseShared/libnative_api.h"))
    from(layout.buildDirectory.dir("bin/native/releaseShared/libnative.so")) {
        into("lib")
    }
    into("${rootProject.rootDir}/../shared_aurora/native")
}

tasks.register("cleanWithNative", Delete::class) {
    delete(layout.buildDirectory)
    delete("${rootProject.rootDir}/../shared_aurora/native")
}

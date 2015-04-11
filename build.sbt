lazy val root = (project in file(".")).
  settings(
    name := "slick-eval",
    version := "0.0.0",
    scalaVersion := "2.11.6",
    scalacOptions in Compile ++= Seq(
      "-deprecation",
      "-language:postfixOps"
    ),
    libraryDependencies ++= Seq(
      "com.typesafe.slick" %% "slick" % "3.0.0-RC3",
      "org.xerial" % "sqlite-jdbc" % "3.8.7",
      "org.slf4j" % "slf4j-nop" % "1.7.12"
    )
  )

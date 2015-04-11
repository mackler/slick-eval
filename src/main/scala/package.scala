package object learn {

  import slick.driver.SQLiteDriver.api._
  import concurrent._

  implicit val ec = scala.concurrent.ExecutionContext.Implicits.global

  val db = Database forConfig "database"
  val suppliers = TableQuery[Suppliers]
  val parts     = TableQuery[Parts]
  val shipments = TableQuery[Shipments]

  def eval(query: Query[_,_,Seq]) {
    Await.result(db run query.to[Set].result, duration.Duration.Inf) match {
      case c: Traversable[_] => c foreach println
      case s => println(s)
    }
  }

}

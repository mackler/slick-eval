package learn

import slick.driver.SQLiteDriver.api._

case class Part(pnum: String, pname: String, color: String, weight: Float, city: String)

class Parts(tag: Tag) extends Table[Part](tag, "parts") {
  def pnum   = column[String]("pnum")
  def pname  = column[String]("pname")
  def color  = column[String]("color")
  def weight = column[Float] ("weight")
  def city   = column[String]("city")
  def * = (pnum, pname, color, weight, city) <> (Part.tupled, Part.unapply)
}

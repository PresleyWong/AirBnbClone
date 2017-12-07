
# XML - Schema

```javascript

<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
<sql>
<datatypes db="mysql">
	<group color="rgb(238,238,170)" label="Numeric">
		<type label="Integer" quote="" sql="INTEGER" length="0"/>
	 	<type label="TINYINT" quote="" sql="TINYINT" length="0"/>
	 	<type label="SMALLINT" quote="" sql="SMALLINT" length="0"/>
	 	<type label="MEDIUMINT" quote="" sql="MEDIUMINT" length="0"/>
	 	<type label="INT" quote="" sql="INT" length="0"/>
		<type label="BIGINT" quote="" sql="BIGINT" length="0"/>
		<type label="Decimal" quote="" sql="DECIMAL" length="1" re="DEC"/>
		<type label="Single precision" quote="" sql="FLOAT" length="0"/>
		<type label="Double precision" quote="" sql="DOUBLE" length="0" re="DOUBLE"/>
	</group>

	<group color="rgb(255,200,200)" label="Character">
		<type label="Char" quote="'" sql="CHAR" length="1"/>
		<type label="Varchar" quote="'" sql="VARCHAR" length="1"/>
		<type label="Text" quote="'" sql="MEDIUMTEXT" length="0" re="TEXT"/>
		<type label="Binary" quote="'" sql="BINARY" length="1"/>
		<type label="Varbinary" quote="'" sql="VARBINARY" length="1"/>
		<type label="BLOB" quote="'" sql="BLOB" length="0" re="BLOB"/>
	</group>

	<group color="rgb(200,255,200)" label="Date &amp; Time">
		<type label="Date" quote="'" sql="DATE" length="0"/>
		<type label="Time" quote="'" sql="TIME" length="0"/>
		<type label="Datetime" quote="'" sql="DATETIME" length="0"/>
		<type label="Year" quote="" sql="YEAR" length="0"/>
		<type label="Timestamp" quote="'" sql="TIMESTAMP" length="0"/>
	</group>
	
	<group color="rgb(200,200,255)" label="Miscellaneous">
		<type label="ENUM" quote="" sql="ENUM" length="1"/>
		<type label="SET" quote="" sql="SET" length="1"/>
		<type label="Bit" quote="" sql="bit" length="0"/>
	</group>
</datatypes><table x="199" y="301" name="User">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="first_name" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="last_name" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="email" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="password" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="avatar" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="created_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="updated_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="500" y="106" name="Review">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="rating" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_User" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="User" row="id" />
</row>
<row name="id_Place" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Place" row="id" />
</row>
<row name="comment" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="created_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="updated_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="802" y="299" name="Place">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="listing_title" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="images" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="description" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="address" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="price" null="1" autoincrement="0">
<datatype>DOUBLE</datatype>
<default>NULL</default></row>
<row name="max_guest" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="number_rooms" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="latitude" null="1" autoincrement="0">
<datatype>DOUBLE</datatype>
<default>NULL</default></row>
<row name="longitude" null="1" autoincrement="0">
<datatype>DOUBLE</datatype>
<default>NULL</default></row>
<row name="id_User" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="User" row="id" />
</row>
<row name="created_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="updated_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1102" y="101" name="Amenity">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="kitchen" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="internet" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="tv" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="cable_tv" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="internet" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="washer" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="gym" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="handicap_accessible" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="smoking_allowed" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="indoor_fireplace" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="air_conditioning" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="heating" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="dryer" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>'false'</default></row>
<row name="id_Place" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Place" row="id" />
</row>
<row name="created_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="updated_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="502" y="600" name="Booking">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_User" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="User" row="id" />
</row>
<row name="id_Place" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Place" row="id" />
</row>
<row name="headcount" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="total_price" null="1" autoincrement="0">
<datatype>DOUBLE</datatype>
<default>NULL</default></row>
<row name="created_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="updated_at" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="start_date" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="end_date" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="confirmation" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>
```
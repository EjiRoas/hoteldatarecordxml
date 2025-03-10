<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Hotel Data Record</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid #000;
                        padding: 8px;
                        text-align: left;
                    }
                    .lightgreen {
                        background-color: #C1D8C3; 
                    }
                    .whitebrown {
                        background-color: #FFF5E4; 
                    }
                </style>
            </head>
            <body>
                <h1>Hotel Data Record</h1>
                <table>
                    <tr>
                        <th>Customer ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Check In</th>
                        <th>Check Out</th>
                        <th>Contact Number</th>
                        <th>Room Type</th>
                        <th>Payment Method</th>
                        <th>Payment Date</th>
                        <th>Amount</th>
                    </tr>
                    <xsl:for-each select="HotelData/Customers/Customer">
                        <tr>
                            <xsl:attribute name="class">
                                <xsl:choose>
                                    <xsl:when test="position() mod 2 = 0">lightgreen</xsl:when>
                                    <xsl:otherwise>whitebrown</xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                            <td><xsl:value-of select="CustomerID"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Address"/></td>
                            <td><xsl:value-of select="CheckInTime"/></td>
                            <td><xsl:value-of select="CheckOutTime"/></td>
                            <td><xsl:value-of select="ContactNumber"/></td>
                            <td><xsl:value-of select="RoomType/@Category"/></td>
                            <td><xsl:value-of select="Payment/PaymentMethod"/></td>
                            <td><xsl:value-of select="Payment/PaymentDate"/></td>
                            <td><xsl:value-of select="Payment/Amount"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
echo "Ping/Dig Version #0.0.9";
echo "";

DOMAIN="bislinks.com";

echo "PING";
echo "";
echo "$DOMAIN";
ping -c1 -4 $DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "ns1.$DOMAIN";
ping -c1 -4 ns1.$DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "ns2.$DOMAIN";
ping -c1 -4 ns2.$DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "ns3.$DOMAIN";
ping -c1 -4 ns3.$DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "ns4.$DOMAIN";
ping -c1 -4 ns4.$DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "ns5.$DOMAIN";
ping -c1 -4 ns5.$DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "ns6.$DOMAIN";
ping -c1 -4 ns6.$DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "ns7.$DOMAIN";
ping -c1 -4 ns7.$DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "ns40.$DOMAIN";
ping -c1 -4 ns40.$DOMAIN | head -n1 | cut -d"(" -f2 | cut -d")" -f1;
echo "";

echo "DIG";
echo "";

echo "NS";
dig +short $DOMAIN ns;
echo "";

echo "@ns1 A";
dig +short @ns1.$DOMAIN $DOMAIN a;
echo "";

echo "@ns3 A";
dig +short @ns3.$DOMAIN $DOMAIN a;
echo "";

echo "@ns4 A";
dig +short @ns4.$DOMAIN $DOMAIN a;
echo "";

echo "@ns5 A";
dig +short @ns5.$DOMAIN $DOMAIN a;
echo "";

echo "@ns7 A";
dig +short @ns7.$DOMAIN $DOMAIN a;
echo "";

echo "@ns40 A";
dig +short @ns40.$DOMAIN $DOMAIN a;
echo "";

echo "DIG SOA";
echo "";

echo "@ns1 SOA";
dig +short @ns1.$DOMAIN $DOMAIN soa;
echo "";

echo "@ns3 SOA";
dig +short @ns3.$DOMAIN $DOMAIN soa;
echo "";

echo "@ns4 SOA";
dig +short @ns4.$DOMAIN $DOMAIN soa;
echo "";

echo "@ns5 SOA";
dig +short @ns5.$DOMAIN $DOMAIN soa;
echo "";

echo "@ns7 SOA";
dig +short @ns7.$DOMAIN $DOMAIN soa;
echo "";

echo "@ns40 SOA";
dig +short @ns40.$DOMAIN $DOMAIN soa;
echo "";

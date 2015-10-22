{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections     #-}

-- Module      : Gen.Text
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Text where

import           Control.Error
import           Data.Bifunctor
import           Data.Char
import qualified Data.Foldable         as Fold
import qualified Data.HashMap.Strict   as Map
import qualified Data.HashSet          as Set
import           Data.Monoid
import           Data.String
import           Data.Text             (Text)
import qualified Data.Text             as Text
import           Data.Text.ICU         (Regex)
import           Data.Text.ICU.Replace (Replace)
import qualified Data.Text.ICU.Replace as RE
import           Data.Text.Manipulate
import           Text.Parsec.Language  (haskellDef)
import           Text.Parsec.Token     (reservedNames)

safeHead :: Text -> Maybe Text
safeHead = fmap (Text.singleton . fst) . Text.uncons

stripPrefix :: Text -> Text -> Text
stripPrefix p t = Text.strip . fromMaybe t $ p `Text.stripPrefix` t

stripSuffix :: Text -> Text -> Text
stripSuffix s t = Text.strip . fromMaybe t $ s `Text.stripSuffix` t

renameLibrary :: Text -> Text
renameLibrary =
      mappend "gogol-"
    . Text.toLower

renameTitle :: Text -> Text
renameTitle =
      mappend "Google "
    . Text.strip
    . stripPrefix "Google"
    . stripSuffix "API"

renameAbbrev :: Text -> Text
renameAbbrev = mconcat
    . Text.split dot
    . Text.strip
    . stripPrefix "Google"
    . stripSuffix "API"

renameField :: Text -> Text
renameField = lowerHead . lowerFirstAcronym . upperAcronym . toCamel

renameBranch :: Text -> Text
renameBranch t
    | Just o <- operator t = o
    | otherwise            = renameReserved (go t)
  where
    go x | Text.length x <= 2 = Text.toUpper x
         | otherwise          = upperAcronym . cat $ split x

    cat   = Fold.foldMap (Text.intercalate "_" . map component . Text.split dot)
    split = Text.split separator

    component x
        | Text.length x <= 1    = x
        | isDigit (Text.last x) = Text.toUpper x
        | Text.all isUpper x    = toPascal (Text.toLower x)
        | otherwise             = toPascal x

    operator x = Map.lookup x $
        Map.fromList
            [ ("!=", "NotEqual")
            , ("==", "Equal")
            , ("<",  "Less")
            , ("<=", "LessOrEqual")
            , (">",  "Greater")
            , (">=", "GreaterEqual")
            ]

separator :: Char -> Bool
separator x =
      x == '\\'
   || x == '/'
   || x == '+'
   || x == ' '
   || x == '('
   || x == ')'
   || x == ':'
   || x == '-'
   || x == '_'
   || x == '*'

dot :: Char -> Bool
dot x = x == '.'

renameReserved :: Text -> Text
renameReserved x
    | x `Set.member` xs = x <> "'"
    | otherwise         = x
  where
    xs = Set.fromList $
        [ "head"
        , "tail"
        , "delete"
        , "filter"
        , "map"
        , "object"
        , "get"
        , "group"
        , "True"
        , "False"
        , "error"
        , "Error"
        , "read"
        , "Read"
        , "request"
        , "Get"
        , "Post"
        , "Delete"
        , "Head"
        , "Patch"
        , "Put"
        , "log"
        , "Data"
        , "TimeOfDay"
        , "LocalTime"
        , "Download"
        ] ++ map Text.pack (reservedNames haskellDef)

camelAcronym :: Text -> Text
camelAcronym x = replaceAll x xs
  where
    xs = map (bimap fromString fromString) acronyms

lowerFirstAcronym :: Text -> Text
lowerFirstAcronym x = replaceAll x xs
  where
    xs = map (bimap (fromString . ('^':)) (fromString . f)) acronyms

    f (c:cs) = toLower c : cs
    f []     = []

replaceAll :: Text -> [(Regex, Replace)] -> Text
replaceAll = Fold.foldl' (flip (uncurry RE.replaceAll))

upperAcronym :: Text -> Text
upperAcronym x = Fold.foldl' (flip (uncurry RE.replaceAll)) x xs
  where
    xs :: [(Regex, Replace)]
    xs = [ ("Acl",           "ACL")
         , ("Adm([^i]|$)",   "ADM$1")
         , ("Aes",           "AES")
         , ("Api",           "API")
         , ("Apk",           "APK")
         , ("Apns",          "APNS")
         , ("Asn",           "ASN")
         , ("Bgp",           "BGP")
         , ("Cidr",          "CIDR")
         , ("Cnc",           "CNC")
         , ("Cors",          "CORS")
         , ("Cpu",           "CPU")
         , ("Cse$",          "CSE")
         , ("Csv",           "CSV")
         , ("Db",            "DB")
         , ("Dhcp",          "DHCP")
         , ("Dns",           "DNS")
         , ("Dto",           "DTO")
         , ("Eq([^u]|$)",    "EQ$1")
         , ("Gan$",          "GAN")
         , ("Gcm",           "GCM")
         , ("Gt$",           "GT")
         , ("Hsm",           "HSM")
         , ("Html",          "HTML")
         , ("Http([^s]|$)",  "HTTP$1")
         , ("Https",         "HTTPS")
         , ("Hvm",           "HVM")
         , ("ID",            "Id")
         , ("Iam",           "IAM")
         , ("Icmp",          "ICMP")
         , ("Ip",            "IP")
         , ("Json",          "JSON")
         , ("Jvm",           "JVM")
         , ("Jwk",           "JWK")
         , ("Lt$",           "LT")
         , ("Mac([^hr]|$)",  "MAC$1")
         , ("Md5",           "MD5")
         , ("Nat",           "NAT")
         , ("Oauth",         "OAuth")
         , ("Ocr",           "OCR")
         , ("Oob",           "OOB")
         , ("Os",            "OS")
         , ("Raid",          "RAID")
         , ("Ramdisk",       "RAMDisk")
         , ("Sgd",           "SGD")
         , ("Sku",           "SKU")
         , ("Sni([^p]|$)",   "SNI$1")
         , ("Sql",           "SQL")
         , ("Ssh",           "SSH")
         , ("Ssl",           "SSL")
         , ("Svn",           "SVN")
         , ("Tar([^g]|$)",   "TAR$1")
         , ("Tcp",           "TCP")
         , ("Tgz",           "TGZ")
         , ("Tls",           "TLS")
         , ("Uri",           "URI")
         , ("Url",           "URL")
         , ("Vip",           "VIP")
         , ("Vlan",          "VLAN")
         , ("Vm([^d]|$)",    "VM$1")
         , ("Vpc",           "VPC")
         , ("Vpn",           "VPN")
         , ("Xml",           "XML")
         , ("Youtube",       "YouTube")

         , ("([^a])data",  "$1Data")
         , ("([^ypn])load", "$1Load")
         , ("access",      "Access")
         , ("account",     "Account")
         , ("app",         "App")
         , ("bid",         "Bid")
         , ("billing",     "Billing")
         , ("busy",        "Busy")
         , ("channel",     "Channel")
         , ("click",       "Click")
         , ("client",      "Client")
         , ("config",      "Config")
         , ("crawl",       "Crawl")
         , ("dapi",        "dAPI")
         , ("deal",        "Deal")
         , ("debug",       "Debug")
         , ("device",      "Device")
         , ("download",    "Download")
         , ("engine",      "Engine")
         , ("enterprise",  "Enterprise")
         , ("error",       "Error")
         , ("exchange",    "Exchange")
         , ("file",        "File")
         , ("info",        "Info")
         , ("library",     "Library")
         , ("list",        "List")
         , ("manager",     "Manager")
         , ("model",       "Model")
         , ("monitor",     "Monitor")
         , ("note",        "Note")
         , ("observe",     "Observe")
         , ("offer",       "Offer")
         , ("online",      "Online")
         , ("order",       "Order")
         , ("pagespeed",   "Pagespeed")
         , ("part",        "Part")
         , ("position",    "Position")
         , ("product",     "Product")
         , ("proper",      "Proper")
         , ("publish",     "Publish")
         , ("query",       "Query")
         , ("resource",    "Resource")
         , ("round",       "Round")
         , ("sample",      "Sample")
         , ("service",     "Service")
         , ("session",     "Session")
         , ("state",       "State")
         , ("transfer",    "Transfer")
         , ("unit",        "Unit")
         , ("upload",      "Upload")
         , ("user",        "User")
         , ("bucket",      "Bucket")
         , ("([^se])set",  "$1Set")
         , ("group",       "Group")
         ]

acronyms :: [(String, String)]
acronyms =
    [ ("ACL",      "Acl")
    , ("AES",      "Aes")
    , ("API",      "Api")
    , ("APNS",     "Apns")
    , ("ASN",      "Asn")
    , ("BGP",      "Bgp")
    , ("CIDR",     "Cidr")
    , ("CORS",     "Cors")
    , ("CSV",      "Csv")
    , ("CPU",      "Cpu")
    , ("DB",       "Db")
    , ("DHCP",     "Dhcp")
    , ("DNS",      "Dns")
    , ("EBS",      "Ebs")
    , ("EC2",      "Ec2")
    , ("EIP",      "Eip")
    , ("GCM",      "Gcm")
    , ("HTML",     "Html")
    , ("HTTPS",    "Https")
    , ("HSM",      "Hsm")
    , ("HVM",      "Hvm")
    , ("IAM",      "Iam")
    , ("ICMP",     "Icmp")
    , ("IDN",      "Idn")
    , ("IOPS",     "Iops")
    , ("IP",       "Ip")
    , ("JAR",      "Jar")
    , ("JSON",     "Json")
    , ("JVM",      "Jvm")
    , ("KMS",      "Kms")
    , ("MD5",      "Md5")
    , ("MFA",      "Mfa")
    , ("OK",       "Ok")
    , ("OS",       "Os")
    , ("PHP",      "Php")
    , ("RAID",     "Raid")
    , ("RAMDisk",  "Ramdisk")
    , ("RDS",      "Rds")
    , ("SGD",      "Sgd")
    , ("SNI",      "Sni")
    , ("SNS",      "Sns")
    , ("SRIOV",    "Sriov")
    , ("SSH",      "Ssh")
    , ("SSL",      "Ssl")
    , ("SSO",      "Sso")
    , ("SVN",      "Svn")
    , ("TDE",      "Tde")
    , ("TCP",      "Tcp")
    , ("TGZ",      "Tgz")
    , ("TLS",      "Tls")
    , ("URI",      "Uri")
    , ("URL",      "Url")
    , ("VGW",      "Vgw")
    , ("VHD",      "Vhd")
    , ("VIP",      "Vip")
    , ("VLAN",     "Vlan")
    , ("VMDK",     "Vmdk")
    , ("VPC",      "Vpc")
    , ("VPN",      "Vpn")
    , ("XML",      "Xml")
    , ("ID",       "Id")
    , ("JWK",      "Jwk")
    ]

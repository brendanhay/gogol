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
      mappend      "Google "
    . flip mappend " API"
    . stripPrefix  "Google "
    . stripSuffix  " API"

renameAbbrev :: Text -> Text
renameAbbrev = mconcat
    . Text.split dot
    . stripPrefix "Google "
    . stripSuffix " API"

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
         , ("Apns",          "APNS")
         , ("Asn",           "ASN")
         , ("Bgp",           "BGP")
         , ("Cidr",          "CIDR")
         , ("Cors",          "CORS")
         , ("Csv",           "CSV")
         , ("Cpu",           "CPU")
         , ("Db",            "DB")
         , ("Dhcp",          "DHCP")
         , ("Dns",           "DNS")
         , ("Gcm",           "GCM")
         , ("Html",          "HTML")
         , ("Https",         "HTTPS")
         , ("Http([^s]|$)",  "HTTP$1")
         , ("Hsm",           "HSM")
         , ("Hvm",           "HVM")
         , ("Iam",           "IAM")
         , ("Icmp",          "ICMP")
         , ("Ip",            "IP")
         , ("Json",          "JSON")
         , ("Jvm",           "JVM")
         , ("Mac([^hr]|$)",  "MAC$1")
         , ("Md5",           "MD5")
         , ("Raid",          "RAID")
         , ("Ramdisk",       "RAMDisk")
         , ("Sgd",           "SGD")
         , ("Sni([^p]|$)",   "SNI$1")
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
         , ("ID",            "Id")
         , ("Eq([^u]|$)",    "EQ$1")
         , ("Lt$",           "LT")
         , ("Gt$",           "GT")
         , ("Nat",           "NAT")
         , ("Youtube",       "YouTube")
         , ("Cnc",           "CNC")
         , ("Oauth",         "OAuth")
         , ("Ocr",           "OCR")
         , ("Sql",           "SQL")
         , ("Apk",           "APK")
         , ("Os",            "OS")
         , ("Oob",           "OOB")
         , ("Jwk",           "JWK")
         , ("Dto",           "DTO")
         , ("Sku",           "SKU")
         , ("Cse$",          "CSE")
         , ("Gan$",          "GAN")

         , ("access",      "Access")
         , ("account",     "Account")
         , ("bid",         "Bid")
         , ("billing",     "Billing")
         , ("busy",        "Busy")
         , ("channel",     "Channel")
         , ("click",       "Click")
         , ("client",      "Client")
         , ("config",      "Config")
         , ("deal",        "Deal")
         , ("debug",       "Debug")
         , ("device",      "Device")
         , ("download",    "Download")
         , ("engine",      "Engine")
         , ("enterprise",  "Enterprise")
         , ("info",        "Info")
         , ("library",     "Library")
         , ("list",        "List")
         , ("([^ypn])load", "$1Load")
         , ("manager",     "Manager")
         , ("model",       "Model")
         , ("monitor",     "Monitor")
         , ("note",        "Note")
         , ("offer",       "Offer")
         , ("part",        "Part")
         , ("proper",      "Proper")
         , ("publish",     "Publish")
         , ("resource",    "Resource")
         , ("round",       "Round")
         , ("service",     "Service")
         , ("state",       "State")
         , ("transfer",    "Transfer")
         , ("unit",        "Unit")
         , ("upload",      "Upload")
         , ("user",        "User")
         , ("observe",     "Observe")
         , ("order",       "Order")
         , ("position",    "Position")
         , ("crawl",       "Crawl")
         , ("error",       "Error")
         , ("sample",      "Sample")
         , ("session",     "Session")
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

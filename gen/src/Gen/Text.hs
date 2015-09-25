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
      mappend "gozen-"
    . Text.toLower

renameTitle :: Text -> Text
renameTitle =
      mappend      "Google "
    . flip mappend " API"
    . stripPrefix  "Google "
    . stripSuffix  " API"

renameAbbrev :: Text -> Text
renameAbbrev = mconcat
    . Text.split  isSpace
    . stripPrefix "Google "
    . stripSuffix " API"

renameBranch :: Text -> Text
renameBranch = renameReserved . go
  where
    go x | Text.length x <= 2 = Text.toUpper x
         | otherwise          = upperAcronym . cat $ split x

    cat   = Fold.foldMap (Text.intercalate "_" . map component . Text.split dot)
    split = Text.split seperator

    dot x = x == '.'

    seperator x =
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

    component x
        | Text.length x <= 1    = x
        | isDigit (Text.last x) = Text.toUpper x
        | Text.all isUpper x    = toPascal (Text.toLower x)
        | otherwise             = toPascal x

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
        , "error"
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
         , ("Mac([^h]|$)",   "MAC$1")
         , ("Md5",           "MD5")
         , ("Raid",          "RAID")
         , ("Ramdisk",       "RAMDisk")
         , ("Sgd",           "SGD")
         , ("Sni",           "SNI")
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
         ]

acronyms :: [(String, String)]
acronyms = [("NAT", "Nat")]

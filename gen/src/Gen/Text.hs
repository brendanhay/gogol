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
import           Control.Monad
import           Data.Bifunctor
import           Data.Char
import qualified Data.Foldable        as Fold
import qualified Data.HashSet         as Set
import           Data.Monoid
import           Data.String
import           Data.Text            (Text)
import qualified Data.Text            as Text
-- import           Data.Text.ICU         (Regex)
-- import           Data.Text.ICU.Replace (Replace)
-- import qualified Data.Text.ICU.Replace as RE
import           Data.Text.Manipulate
import           Text.Parsec.Language (haskellDef)
import           Text.Parsec.Token    (reservedNames)

-- asText :: (Text -> Text) -> String -> String
-- asText f = Text.unpack . f . Text.pack

-- dropLower :: Text -> Text
-- dropLower = Text.dropWhile (not . isUpper)

-- safeHead :: Text -> Maybe Text
-- safeHead = fmap (Text.singleton . fst) . Text.uncons

-- stripLens :: Text -> Text
-- stripLens t
--     | "_" `Text.isPrefixOf` t = lowerHead (dropLower t)
--     | otherwise               = t

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

-- camelAcronym :: Text -> Text
-- camelAcronym x = replaceAll x xs
--   where
--     xs = map (bimap fromString fromString) acronyms

-- lowerFirstAcronym :: Text -> Text
-- lowerFirstAcronym x = replaceAll x xs
--   where
--     xs = map (bimap (fromString . ('^':)) (fromString . f)) acronyms

--     f (c:cs) = toLower c : cs
--     f []     = []

-- replaceAll :: Text -> [(Regex, Replace)] -> Text
-- replaceAll = Fold.foldl' (flip (uncurry RE.replaceAll))

-- upperAcronym :: Text -> Text
-- upperAcronym x = Fold.foldl' (flip (uncurry RE.replaceAll)) x xs
--   where
--     xs :: [(Regex, Replace)]
--     xs = [ ("Acl", "ACL")
--          ]

-- acronyms :: [(String, String)]
-- acronyms =
--     [ ("ACL", "Acl")
--     ]

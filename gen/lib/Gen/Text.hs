{-# LANGUAGE OverloadedStrings #-}

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

import Control.Error
import Data.Char
import qualified Data.Foldable as Fold
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Text.ICU (Regex)
import Data.Text.ICU.Replace (Replace)
import qualified Data.Text.ICU.Replace as RE
import Data.Text.Manipulate
import Text.Parsec.Language (haskellDef)
import Text.Parsec.Token (reservedNames)

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
renameTitle = mappend "Google " . Text.strip . stripPrefix "Google" . stripSuffix "API"

renameAbbrev :: Text -> Text
renameAbbrev = Text.strip . stripPrefix "Google" . stripSuffix "API"

renameField :: Text -> Text
renameField = renameReserved . renameSpecial . lowerHead . toCamel

renameBranch :: Text -> Text
renameBranch t
  | Just o <- operator t = o
  | otherwise = renameReserved (go t)
  where
    go x
      | Text.length x <= 2 = Text.toUpper x
      | otherwise = cat $ split x

    cat = Fold.foldMap (Text.intercalate "_" . map component . Text.split dot)
    split = Text.split separator

    component x
      | Text.length x <= 1 = x
      | isDigit (Text.last x) = Text.toUpper x
      | Text.all isUpper x = toPascal (Text.toLower x)
      | otherwise = toPascal x

    operator x =
      Map.lookup x $
        Map.fromList
          [ ("!=", "NotEqual"),
            ("==", "Equal"),
            ("<", "Less"),
            ("<=", "LessOrEqual"),
            (">", "Greater"),
            (">=", "GreaterEqual")
          ]

renameSpecial :: Text -> Text
renameSpecial t =
  case Text.uncons t of
    Nothing -> t
    Just (x, xs)
      | separator x -> renameSpecial xs
      | otherwise -> t

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
    || x == '$'

dot :: Char -> Bool
dot x = x == '.'

renameReserved :: Text -> Text
renameReserved x
  | x `Set.member` xs = renameReserved (x <> "'")
  | otherwise = x
  where
    xs =
      Set.fromList $
        [ "group",
          "role",
          "pattern",
          "True",
          "False",
          "Error",
          "Read",
          "request",
          "Get",
          "Post",
          "Delete",
          "Head",
          "Patch",
          "Put",
          "Data",
          "DateTime",
          "Enum",
          "LocalTime",
          "MediaDownload",
          "MediaUpload",
          "Nothing",
          "Request",
          "Left",
          "Right",
          "Secure",
          "TimeOfDay"
        ]
          ++ map Text.pack (reservedNames haskellDef)

replaceAll :: Text -> [(Regex, Replace)] -> Text
replaceAll = Fold.foldl' (flip (uncurry RE.replaceAll))

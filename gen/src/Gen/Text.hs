-- |
-- Module      : Gen.Text
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.Text where

import qualified Data.Char as Char
import qualified Data.HashSet as HashSet
import qualified Data.Text as Text
import Gen.Prelude

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
renameAbbrev =
  mconcat
    . Text.split dot
    . Text.strip
    . stripPrefix "Google"
    . stripSuffix "API"

renameBranch :: Text -> (Text, Text)
renameBranch = first go . join (,)
  where
    go = Text.map (\c -> if Char.isAlphaNum c then c else '_') . upperHead

renameField :: Text -> Text
renameField = renameReserved . lowerHead

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
  | Text.isPrefixOf "new" x = x <> "'"
  | HashSet.member x xs = x <> "'"
  | otherwise = x
  where
    xs =
      fromList
        [ "Data",
          "DateTime",
          "DateTime'",
          "Delete",
          "Enum",
          "Error",
          "False",
          "Get",
          "Head",
          "Left",
          "LocalTime",
          "MediaDownload",
          "MediaUpload",
          "Nothing",
          "Patch",
          "Post",
          "Put",
          "Read",
          "Request",
          "Right",
          "Secure",
          "Service",
          "Status",
          "TimeOfDay",
          "True",
          "as",
          "case",
          "ccall",
          "class",
          "data",
          "default",
          "delete",
          "deriving",
          "do",
          "else",
          "error",
          "export",
          "filter",
          "forall",
          "foreign",
          "get",
          "group",
          "head",
          "hiding",
          "if",
          "import",
          "in",
          "infix",
          "infixl",
          "infixr",
          "instance",
          "let",
          "lex",
          "log",
          "map",
          "module",
          "newtype",
          "object",
          "of",
          "pattern",
          "primitive",
          "pure",
          "qualified",
          "read",
          "request",
          "return",
          "role",
          "tail",
          "then",
          "type",
          "where"
        ]

toPascalCase :: Text -> Text
toPascalCase = upperHead . toCamelCase

toCamelCase :: Text -> Text
toCamelCase = toCamelCase' . Text.split (not . Char.isAlphaNum) . Text.dropWhile (not . Char.isAlphaNum)
  where
    toCamelCase' :: [Text] -> Text
    toCamelCase' xs =
      case filter (not . Text.null) xs of
        [] -> ""
        y : ys -> mconcat (lowerHead y : map upperHead ys)

lowerHead :: Text -> Text
lowerHead text
  | Text.all (\c -> Char.isUpper c || Char.isDigit c) text =
    Text.toLower text
  | otherwise =
    fromMaybe (mapHead Char.toLower text)
      . msum
      $ map
        (\acronym -> mappend (Text.toLower acronym) <$> Text.stripPrefix acronym text)
        [ "KMS",
          "DB",
          "MFA"
        ]

upperHead :: Text -> Text
upperHead = mapHead Char.toUpper

mapHead :: (Char -> Char) -> Text -> Text
mapHead f text =
  fromMaybe text $ do
    (c, cs) <- Text.uncons text
    pure (Text.cons (f c) cs)

replaceHead :: (Char -> Maybe Text) -> Text -> Text
replaceHead f text =
  fromMaybe text $ do
    (c, cs) <- Text.uncons text
    replace <- f c
    pure (replace <> cs)

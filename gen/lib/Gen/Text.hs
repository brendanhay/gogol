module Gen.Text where

import Control.Error
import Data.Char
import Data.Foldable qualified as Fold
import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Text.ICU (Regex)
import Data.Text.ICU.Replace (Replace)
import Data.Text.ICU.Replace qualified as RE
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
renameField text
  -- Prevent ambiguity with smart constructors.
  | Text.isPrefixOf "new" field = field <> "'"
  | otherwise = field
  where
    field = renameReserved . renameSpecial . lowerHead . toCamel $ text

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
renameSpecial = Text.filter (not . separator)

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

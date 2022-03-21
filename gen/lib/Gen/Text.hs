module Gen.Text
  ( module Gen.Text,
    upperHead,
    lowerHead,
    toCamel,
    toPascal,
    splitWords,
  )
where

import qualified Data.Char as Char
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Data.Text as Text
import Data.Text.Manipulate
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

    cat = foldMap (Text.intercalate "_" . map component . Text.split dot)
    split = Text.split separator

    component x
      | Text.length x <= 1 = x
      | Char.isDigit (Text.last x) = Text.toUpper x
      | Text.all Char.isUpper x = toPascal (Text.toLower x)
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
          "TimeOfDay",
          "let",
          "in",
          "case",
          "of",
          "if",
          "then",
          "else",
          "data",
          "type",
          "class",
          "default",
          "deriving",
          "do",
          "import",
          "infix",
          "infixl",
          "infixr",
          "instance",
          "module",
          "newtype",
          "where",
          "primitive",
          "as",
          "qualified",
          "hiding",
          "foreign",
          "import",
          "primitive",
          "_ccall_",
          "_casm_",
          "forall"
        ]

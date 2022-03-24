module Gen.Text
  ( module Gen.Text,
    upperHead,
    lowerHead,
    toCamel,
    toPascal,
    splitWords,
  )
where

import Data.Char qualified as Char
import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Data.Text qualified as Text
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
renameField = renameReserved . renameSpecial . lowerHead . toCamel

renameBranch :: Text -> Text
renameBranch text
  | Just op <- operator text = op
  | otherwise = renameReserved (cat (split text))
  where
    split = Text.split separator

    cat =
      Text.intercalate "_"
        . map (Text.intercalate "_" . map toPascal . Text.split dot)

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

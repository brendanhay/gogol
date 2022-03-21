module Gen.Types.Help
  ( Help,
    Desc (..),
    Nest (..),
    rawHelpText,
    renderHelp,
  )
where

import qualified Data.Aeson as Aeson
import qualified Data.Char as Char
import qualified Data.Text.Lazy as Text.Lazy
import Gen.Prelude
import qualified System.IO.Unsafe as Unsafe
import Text.Pandoc (Pandoc, PandocError)
import qualified Text.Pandoc as Pandoc

data Help
  = Help [Help]
  | Pan Pandoc Text
  | Raw Text
  deriving stock (Eq, Ord)

instance Semigroup Help where
  (<>) x y =
    case (x, y) of
      (Help a, Help b) -> Help (a <> b)
      (Pan a a', Pan b b') -> Pan (a <> b) (a' <> b')
      (Raw a, Raw b) -> Raw (a <> b)
      (Help a, b) -> Help (a <> [b])
      (a, Help b) -> Help (a : b)
      (a, b) -> Help [a, b]

instance Monoid Help where
  mempty = Help []

instance Show Help where
  showsPrec _ = shows . flattenHelp

instance IsString Help where
  fromString = rawHelpText . fromString

rawHelpText :: Text -> Help
rawHelpText = Raw

instance FromJSON Help where
  parseJSON =
    Aeson.withText "help" $ \t ->
      case readMarkdown t of
        Left e -> fail (show e)
        Right x -> pure $! Pan x t

instance ToJSON Help where
  toJSON = Aeson.toJSON . renderHelp 0

newtype Desc (indent :: Nat) = Desc Help
  deriving stock (Eq, Ord)

instance KnownNat indent => ToJSON (Desc indent) where
  toJSON (Desc h) =
    Aeson.toJSON $
      wrapHelp (Text.Lazy.replicate (fromIntegral (natVal (Proxy @indent))) " ") h

newtype Nest (indent :: Nat) = Nest Help
  deriving stock (Show, Eq, Ord)

instance KnownNat indent => ToJSON (Nest indent) where
  toJSON (Nest h) =
    Aeson.toJSON $
      renderHelp (fromIntegral (natVal (Proxy @indent))) h

renderHelp :: Natural -> Help -> TextLazy
renderHelp indent =
  mappend (sep <> "| ")
    . Text.Lazy.drop (Text.Lazy.length sep)
    . wrapHelp sep
  where
    sep = Text.Lazy.replicate (fromIntegral indent) " " <> "-- "

wrapHelp :: TextLazy -> Help -> TextLazy
wrapHelp sep =
  Text.Lazy.dropWhileEnd Char.isSpace
    . Text.Lazy.unlines
    . map (mappend sep)
    . Text.Lazy.lines
    . flattenHelp

flattenHelp :: Help -> TextLazy
flattenHelp = \case
  Help xs -> foldMap flattenHelp xs
  Raw t -> Text.Lazy.fromStrict t
  Pan d _t -> either (error . show) Text.Lazy.fromStrict (writeHaddock d)

readMarkdown :: Text -> Either PandocError Pandoc
readMarkdown =
  Unsafe.unsafePerformIO
    . Pandoc.runIO
    . Pandoc.readMarkdown (Pandoc.def {Pandoc.readerColumns = 2048})

-- readHTML :: Text -> Either PandocError Pandoc
-- readHTML =
--   Unsafe.unsafePerformIO
--     . Pandoc.runIO
--     . Pandoc.readHtml (Pandoc.def { Pandoc.readerColumns = 2048 })

writeHaddock :: Pandoc -> Either PandocError Text
writeHaddock =
  Unsafe.unsafePerformIO
    . Pandoc.runIO
    . Pandoc.writeHaddock options
  where
    options =
      Pandoc.def
        { Pandoc.writerWrapText = Pandoc.WrapAuto,
          Pandoc.writerColumns = 1024
        }

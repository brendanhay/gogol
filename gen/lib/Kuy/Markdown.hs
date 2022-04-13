module Kuy.Markdown
  ( Markdown,
    renderHaddock,
  )
where

import Data.Aeson qualified as Aeson
import Data.Text qualified as Text
import Kuy.Prelude
import System.IO.Unsafe qualified as IO.Unsafe
import Text.Pandoc (Pandoc, PandocError, ReaderOptions, WriterOptions)
import Text.Pandoc qualified as Pandoc

-- | Parsed markdown rendered in Haddock format.
newtype Markdown = Markdown Text
  deriving stock (Show, Eq, Ord)
  deriving newtype (Structured, Persist)

instance FromJSON Markdown where
  parseJSON =
    Aeson.withText "Markdown" $ \text ->
      case readMarkdown text >>= writeHaddock of
        Left err -> fail $ "(FromJSON Markdown) failed parsing with " ++ show err
        Right ok -> pure (Markdown ok)

renderHaddock :: Markdown -> Text
renderHaddock (Markdown text) = text

readMarkdown :: Text -> Either PandocError Pandoc
readMarkdown =
  IO.Unsafe.unsafePerformIO
    . Pandoc.runIO
    . Pandoc.readMarkdown readOptions

readOptions :: ReaderOptions
readOptions =
  Pandoc.def
    { Pandoc.readerColumns = columns
    }

writeHaddock :: Pandoc -> Either PandocError Text
writeHaddock =
  fmap Text.strip
    . IO.Unsafe.unsafePerformIO
    . Pandoc.runIO
    . Pandoc.writeHaddock writeOptions

writeOptions :: WriterOptions
writeOptions =
  Pandoc.def
    { Pandoc.writerWrapText = Pandoc.WrapAuto,
      Pandoc.writerColumns = columns
    }

columns :: Int
columns = 100

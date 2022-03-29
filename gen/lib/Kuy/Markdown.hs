module Kuy.Markdown
  ( Markdown,
    readMarkdown,
    writeHaddock,
  )
where

import Data.Aeson qualified as Aeson
import Kuy.Prelude
import System.IO.Unsafe qualified as IO.Unsafe
import Text.Pandoc (Pandoc, PandocError, ReaderOptions, WriterOptions)
import Text.Pandoc qualified as Pandoc

-- | Parsed markdown in pandoc\'s internal representation.
newtype Markdown = Markdown Pandoc
  deriving stock (Show, Eq, Ord)
  deriving newtype (Structured, Persist)

instance FromJSON Markdown where
  parseJSON =
    Aeson.withText "Markdown" $ \text ->
      case readMarkdown text of
        Left err -> fail $ "(FromJSON Markdown) failed parsing with " ++ show err
        Right ok -> pure ok

readMarkdown :: Text -> Either PandocError Markdown
readMarkdown =
  fmap Markdown
    . IO.Unsafe.unsafePerformIO
    . Pandoc.runIO
    . Pandoc.readMarkdown readOptions

readOptions :: ReaderOptions
readOptions =
  Pandoc.def
    { Pandoc.readerColumns = 1024
    }

writeHaddock :: Markdown -> Either PandocError Text
writeHaddock (Markdown doc) =
  IO.Unsafe.unsafePerformIO
    . Pandoc.runIO
    . Pandoc.writeHaddock writeOptions
    $ doc

writeOptions :: WriterOptions
writeOptions =
  Pandoc.def
    { Pandoc.writerWrapText = Pandoc.WrapAuto,
      Pandoc.writerColumns = 120
    }

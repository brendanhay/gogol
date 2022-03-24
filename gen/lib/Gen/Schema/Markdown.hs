module Gen.Schema.Markdown
  ( Markdown,
    readMarkdown,
    writeHaddock,
  )
where

import Data.Aeson qualified as Aeson
import Gen.Prelude
import System.IO.Unsafe qualified as IO.Unsafe
import Text.Pandoc (Pandoc, PandocError, ReaderOptions, WriterOptions)
import Text.Pandoc qualified as Pandoc

newtype Markdown = Markdown Pandoc
  deriving stock (Show, Eq, Ord)

-- instance Show Help where
--   showsPrec _ = shows . flattenHelp

-- instance IsString Help where
--   fromString = rawHelpText . fromString

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

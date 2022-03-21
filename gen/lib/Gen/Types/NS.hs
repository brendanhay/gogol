module Gen.Types.NS
  ( NS (UnsafeNS),
    mkNS,
    unNS,
    collapseNS,
    renderNS,
  )
where

import qualified Data.Aeson as Aeson
import qualified Data.CaseInsensitive as CI
import qualified Data.Text as Text
import Gen.Prelude
import Gen.Text (upperHead)

newtype NS = UnsafeNS {unNS :: [Text]}
  deriving (Eq, Ord, Show)

mkNS :: Text -> NS
mkNS = UnsafeNS . map upperHead . Text.split (== '.')

instance IsString NS where
  fromString "" = mempty
  fromString s = mkNS (fromString s)

instance Semigroup NS where
  UnsafeNS xs <> UnsafeNS ys
    | null xs = UnsafeNS ys
    | null ys = UnsafeNS xs
    | otherwise = UnsafeNS (mappend xs ys)

instance Monoid NS where
  mempty = UnsafeNS []

collapseNS :: NS -> NS
collapseNS (UnsafeNS xs) = UnsafeNS (map CI.original (squeeze (map CI.mk xs)))
  where
    squeeze = \case
      x : y : ys | x == y -> squeeze (x : ys)
      x : ys -> x : squeeze ys
      [] -> []

instance FromJSON NS where
  parseJSON = Aeson.withText "NS" (pure . mkNS)

instance ToJSON NS where
  toJSON = Aeson.toJSON . renderNS

renderNS :: NS -> Text
renderNS (UnsafeNS xs) = Text.intercalate "." xs

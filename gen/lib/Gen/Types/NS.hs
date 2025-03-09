module Gen.Types.NS
  ( NS (UnsafeNS),
    mkNS,
    unNS,
    collapseNS,
    renderNS,
  )
where

import Data.Aeson
import Data.CaseInsensitive qualified as CI
import Data.String
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Text.Manipulate

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
  parseJSON = withText "namespace" (pure . mkNS)

instance ToJSON NS where
  toJSON = toJSON . renderNS

renderNS :: NS -> Text
renderNS (UnsafeNS xs) = Text.intercalate "." xs

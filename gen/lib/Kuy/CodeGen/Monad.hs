module Kuy.CodeGen.Monad
  ( M,
    runM,

    -- * Paths
    withResource,
    withProperty,

    -- * Names
    mkMethodName,
    mkSchemaName,
    mkPropertyName,
  )
where

import Control.Monad.Reader qualified as Reader
import Data.Char qualified as Char
import Data.Text qualified as Text
import Kuy.CodeGen.TH qualified as TH
import Kuy.Prelude

data R = R
  { namespace :: Text,
    resource :: [Text],
    property :: [Text]
  }

newtype M a = M (Reader R a)
  deriving newtype (Functor, Monad, Applicative)

runM :: Text -> M a -> a
runM namespace (M m) =
  runReader m $
    R
      { namespace = "Gogol." <> upperHead namespace,
        resource = [],
        property = []
      }

namespace :: M Text
namespace = M $ Reader.asks (.namespace)

resource :: M [Text]
resource = M $ Reader.asks (reverse . (.resource))

property :: M [Text]
property = M $ Reader.asks (reverse . (.property))

withResource :: Text -> M a -> M a
withResource key (M m) =
  M $ Reader.local (\r -> r {resource = upperHead key : r.resource}) m

withProperty :: Text -> M a -> M a
withProperty key (M m) =
  M $ Reader.local (\r -> r {property = upperHead key : r.property}) m

mkMethodName :: Text -> M (TH.ModName, TH.Name)
mkMethodName name = do
  root <- namespace
  path <- resource

  let moduleName =
        TH.mkModName
          . Text.unpack
          . Text.intercalate "."
          $ root : path

      typeName =
        TH.mkName
          . Text.unpack
          . Text.concat
          . drop 1
          . pascalCase '.'
          $ name

  pure (moduleName, typeName)

mkSchemaName :: Text -> M (TH.ModName, TH.Name)
mkSchemaName name = do
  root <- namespace

  let moduleName =
        TH.mkModName
          . Text.unpack
          . Text.intercalate "."
          $ [root, "Schema", upperHead name]

      typeName =
        TH.mkName
          . Text.unpack
          . upperHead
          $ name

  pure (moduleName, typeName)

mkPropertyName :: M TH.Name
mkPropertyName = TH.mkName . Text.unpack . Text.intercalate "_" <$> property

pascalCase :: Char -> Text -> [Text]
pascalCase sep = map upperHead . Text.split (== sep)

upperHead :: Text -> Text
upperHead text =
  case Text.uncons text of
    Nothing -> text
    Just (x, xs)
      | Char.isUpper x -> text
      | otherwise -> Char.toUpper x `Text.cons` xs

{-# LANGUAGE ApplicativeDo #-}

module Kuy.CodeGen where

import Data.Map.Strict qualified as Map
import Data.Text qualified as Text
import Kuy.Bridge qualified as Bridge
import Kuy.Builtin qualified as Builtin
import Kuy.Cabal qualified as Cabal
import Kuy.Discovery
import Kuy.GHC qualified as GHC
import Kuy.Markdown qualified as Markdown
import Kuy.Monad
import Kuy.Prelude
import Kuy.TH
import Kuy.Unit
import Kuy.Driver.Query (Query (..))
import Data.Char qualified as Char
import Rock (MonadFetch, fetch)

-- FIXME: Query for Markdown -> Haddock

genPackage ::
  Cabal.PackageDescription ->
  Description ->
  Either [String] (Cabal.PackageDescription, Map Cabal.ModuleName GHC.HsModule)
genPackage package description@Description {title, description = markdown} = do
  haddock <- bimap (: []) (fromString . Text.unpack) (Markdown.writeHaddock markdown)
  modules <- genModules description

  let name = Cabal.mkPackageName (Text.unpack ("gogol-" <> description.name.text))

  pure
    ( package
        { Cabal.package = package.package { Cabal.pkgName = name },
          -- Cabal.copyright = "Copyright (c) 2013-2022 Brendan Hay",
          -- Cabal.author = "Brendan Hay",
          -- Cabal.maintainer = "Brendan Hay <brendan.g.hay+gogol@gmail.com",
          -- Cabal.category = "Google",
          -- Cabal.homepage = "https://github.com/brendanhay/gogol",
          Cabal.description = haddock,
          Cabal.library = Just (Cabal.mkLibrary (Map.keys modules))
        },
      modules
    )

genModules :: Description -> Either [String] (Map Cabal.ModuleName GHC.HsModule)
genModules Description {name, canonicalName, methods, resources, schemas} = do
  let namespace =
        fromMaybe name.text $
          Text.filter Char.isAlphaNum <$> canonicalName

  runM namespace $ do
    resourceModules <- genResource Resource {methods, resources}
    schemaModules <- Map.fromList <$> for (Map.toList schemas) (uncurry genSchema)

    let modules =
          resourceModules <> schemaModules

        bridge name unit =
          first (: [])
            . eitherToValidation
            . Bridge.ghcModule name
            . unitDeclarations
            $ unit

    pure
      . validationToEither
      . fmap Map.fromList
      . traverse (uncurry bridge)
      . Map.toList
      $ modules

genResource :: Resource -> M (Map ModName Unit)
genResource resource = do
  resourceModules <-
    for (Map.toList resource.resources) $ \(key, resource) ->
      withResource key (genResource resource)

  methodModules <-
    for (Map.elems resource.methods) genMethod

  pure (Map.unionsWith mappend (resourceModules ++ methodModules))

genMethod :: Method -> M (Map ModName Unit)
genMethod method = do
  (moduleName, typeName) <- mkMethodName method.id.text

  pure
    . Map.singleton moduleName
    . mkUnit method.id.text
    $ TySynD typeName [] (ConT Builtin.unit)

genSchema :: SchemaId -> Schema -> M (ModName, Unit)
genSchema schemaId schema = do
  (moduleName, typeName) <- mkSchemaName schemaId.text

  properties <-
    withProperty schemaId.text $
      genSchemaProperties schema.properties

  let synonym = mkUnit schemaId.text (TySynD typeName [] (ConT Builtin.unit))

  pure
    ( moduleName,
      mconcat (synonym : properties)
    )

genSchemaProperties :: Map Text SchemaRef -> M [Unit]
genSchemaProperties props =
  fmap catMaybes . for (Map.toList props) $ \(key, ref) ->
    withProperty key $
      genSchemaRef ref

genSchemaRef :: SchemaRef -> M (Maybe Unit)
genSchemaRef = \case
  Follow {} -> pure Nothing
  Inline schema@Schema {..} ->
    case format of
      Any ->
        pure Nothing
      --
      Array ->
        pure Nothing
      --
      Object ->
        pure Nothing
      --
      Boolean ->
        pure Nothing
      --
      --
      String ->
        genString schema
      --
      Byte ->
        pure Nothing
      --
      Date ->
        pure Nothing
      --
      DateTime ->
        pure Nothing
      --
      GoogleDateTime ->
        pure Nothing
      --
      GoogleDuration ->
        pure Nothing
      --
      GoogleFieldMask ->
        pure Nothing
      --
      Int64 ->
        pure Nothing
      --
      UInt64 ->
        pure Nothing
      --
      Int32 ->
        pure Nothing
      --
      UInt32 ->
        pure Nothing
      --
      Double ->
        pure Nothing
      --
      Float ->
        pure Nothing

genString :: Schema -> M (Maybe Unit)
genString schema
  | Just values <- schema.enum = do
      -- name <- mkPropertyName

      pure . Just . mkUnit "unknown" $
        PragmaD $
          CompleteP
            (mkName "Enumeration" : map (mkName . Text.unpack) values)
            -- (Just (mkName "Enumeration x r"))
            (Just (mkName "Enumeration"))
  -- flip concatMap values $ \value ->
  --
  | otherwise =
      pure Nothing

module Kuy.CodeGen where

import Data.Map.Strict qualified as Map
import Data.Text qualified as Text
import Kuy.CodeGen.Bridge qualified as Bridge
import Kuy.CodeGen.Cabal qualified as Cabal
import Kuy.CodeGen.GHC qualified as GHC
import Kuy.CodeGen.Monad
import Kuy.CodeGen.Name qualified as Name
import Kuy.CodeGen.TH
import Kuy.CodeGen.Unit
import Kuy.Discovery
import Kuy.Markdown qualified as Markdown
import Kuy.Prelude

genPackage ::
  Description ->
  Either String (Cabal.PackageDescription, Map Cabal.ModuleName GHC.HsModule)
genPackage desc = do
  description <- fromString . Text.unpack <$> Markdown.writeHaddock desc.description

  let name = Cabal.mkPackageName (Text.unpack desc.name.text)
      modules = genModules desc
      library = Cabal.mkLibrary (Map.keys modules)

  pure
    ( (Cabal.mkPackageDescription name [1, 0, 0, 0] library)
        { Cabal.copyright = "Copyright (c) 2013-2022 Brendan Hay",
          Cabal.author = "Brendan Hay",
          Cabal.maintainer = "Brendan Hay <brendan.g.hay+gogol@gmail.com",
          Cabal.category = "Google",
          Cabal.homepage = "https://github.com/brendanhay/gogol",
          Cabal.synopsis = fromString (Text.unpack desc.title),
          Cabal.description = description
        },
      modules
    )

genModules :: Description -> Map Cabal.ModuleName GHC.HsModule
genModules Description {name, methods, resources, schemas} =
  runM name.text $ do
    resourceModules <-
      genResource Resource {methods, resources}

    schemaModules <-
      Map.fromList <$> for (Map.toList schemas) (uncurry genSchema)

    pure
      . Map.fromList
      . map (\(name, unit) -> Bridge.ghcModule name (unitDeclarations unit))
      . Map.toList
      $ mappend resourceModules schemaModules

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
    $ TySynD typeName [] (ConT Name.unit)

genSchema :: SchemaId -> Schema -> M (ModName, Unit)
genSchema schemaId schema = do
  (moduleName, typeName) <- mkSchemaName schemaId.text

  properties <-
    withProperty schemaId.text $
      genSchemaProperties schema.properties

  let synonym = mkUnit schemaId.text (TySynD typeName [] (ConT Name.unit))

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

--

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

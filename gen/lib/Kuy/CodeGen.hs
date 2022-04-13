{-# LANGUAGE ApplicativeDo #-}

module Kuy.CodeGen where

import Data.Char qualified as Char
import Data.Map.Strict qualified as Map
import Data.Set qualified as Set
import Data.Text qualified as Text
import Kuy.Builtin qualified as Builtin
import Kuy.Cabal qualified as Cabal
import Kuy.Discovery
import Kuy.Driver.Query (Query (..))
import Kuy.GHC qualified as GHC
import Kuy.Markdown qualified as Markdown
import Kuy.Monad
import Kuy.Prelude
import Kuy.TH as TH
import Kuy.Unit
import Rock (Task, fetch)

genPackage ::
  Description ->
  Task Query (Cabal.PackageDescription, Map Cabal.ModuleName GHC.HsModule)
genPackage description@Description {title, description = markdown} = do
  let name = Cabal.mkPackageName (Text.unpack ("gogol-" <> description.name.text))

  defaults <- fetch PackageDefaults
  modules <- genModules description

  pure
    ( defaults
        { Cabal.package =
            defaults.package {Cabal.pkgName = name},
          Cabal.synopsis =
            fromString (Text.unpack title),
          Cabal.description =
            fromString (Text.unpack (Markdown.renderHaddock markdown)),
          Cabal.library =
            Just (Cabal.mkLibrary (Map.keys modules))
        },
      modules
    )

genModules :: Description -> Task Query (Map Cabal.ModuleName GHC.HsModule)
genModules Description {name, canonicalName, methods, resources, schemas} = do
  let namespace =
        fromMaybe name.text $
          Text.filter Char.isAlphaNum <$> canonicalName

  runM namespace $ do
    let compileUnit self unit = do
          (decls, imports, _exports) <- fetch (CompiledUnit self unit)

          pure $
            GHC.mkModule
              (TH.mkHsModuleName self)
              (map (GHC.mkImport . TH.mkHsModuleName) (Set.toList imports))
              decls

    modules <-
      mappend
        <$> genResource Resource {methods, resources}
        <*> fmap Map.fromList (for (Map.toList schemas) (uncurry genSchema))

    fmap (Map.mapKeysMonotonic TH.mkCabalModuleName)
      . Map.traverseWithKey compileUnit
      $ modules

genResource :: Resource -> M (Map ModName Unit)
genResource resource = do
  resourceModules <-
    for (Map.toList resource.resources) $ \(key, resource) ->
      withResource key (genResource resource)

  methodModules <-
    Map.fromListWith mappend
      <$> for (Map.elems resource.methods) genMethod

  pure (Map.unionsWith mappend (methodModules : resourceModules))

genMethod :: Method -> M (ModName, Unit)
genMethod method = do
  (moduleName, typeName) <- mkMethodName method.id.text

  pure
    ( moduleName,
      mkUnit method.id.text (TySynD typeName [] (ConT Builtin.unit))
    )

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
  for (Map.toList props) $ \(key, ref) ->
    withProperty key $
      genSchemaRef ref

genSchemaRef :: SchemaRef -> M Unit
genSchemaRef = \case
  Follow {} -> pure mempty
  Inline schema@Schema {..} ->
    case format of
      Any ->
        pure mempty
      --
      Array ->
        pure mempty
      --
      Object ->
        pure mempty
      --
      Boolean ->
        pure mempty
      --
      --
      String ->
        genString schema
      --
      Byte ->
        pure mempty
      --
      Date ->
        pure mempty
      --
      DateTime ->
        pure mempty
      --
      GoogleDateTime ->
        pure mempty
      --
      GoogleDuration ->
        pure mempty
      --
      GoogleFieldMask ->
        pure mempty
      --
      Int64 ->
        pure mempty
      --
      UInt64 ->
        pure mempty
      --
      Int32 ->
        pure mempty
      --
      UInt32 ->
        pure mempty
      --
      Double ->
        pure mempty
      --
      Float ->
        pure mempty

genString :: Schema -> M Unit
genString schema
  | Just values <- schema.enum = do
      -- name <- mkPropertyName

      pure . mkUnit "unknown" $
        PragmaD $
          CompleteP
            (mkName "Enumeration" : map (mkName . Text.unpack) values)
            -- (Just (mkName "Enumeration x r"))
            (Just (mkName "Enumeration"))
  -- flip concatMap values $ \value ->
  --
  | otherwise =
      pure mempty

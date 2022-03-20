module Gen.Syntax.Type where

import qualified Data.Text as Text
import Gen.Prelude
import Gen.Syntax.Build
import Gen.Types
import Language.Haskell.Exts hiding (Alt)

tyTerminal :: TType -> Type ()
tyTerminal = tyExternal . go
  where
    go (TMaybe x) = go x
    go (TList x) = go x
    go x = x

tyExternal :: TType -> Type ()
tyExternal = \case
  TType r -> tyCon (dname r)
  TMaybe t@TList {} -> tyExternal t
  TMaybe t -> TyApp () (TyCon () "Core.Maybe") (tyExternal t)
  TList t -> TyList () (tyExternal t)
  TLit l -> tyLiteral l
  TMap k v ->
    TyApp () (TyApp () (TyCon () "Core.HashMap") (tyExternal k)) (tyExternal (tyRequire v))

tyRequire :: TType -> TType
tyRequire = \case
  TMaybe t -> t
  t -> t

-- tyLiteral :: Lit -> Type ()
-- tyLiteral = \case
--   Text -> TyCon () "Core.Text"
--   Bool -> TyCon () "Core.Bool"
--   Time -> TyCon () "Core.TimeOfDay"
--   Date -> TyCon () "Core.Day"
--   DateTime -> TyCon () "Core.UTCTime"
--   Base64 -> TyCon () "Core.Base64"
--   Natural {} -> TyCon () "Core.Natural"
--   Float {} -> TyCon () "Core.Double"
--   Double {} -> TyCon () "Core.Double"
--   UInt32 {} -> TyCon () "Core.Word32"
--   UInt64 {} -> TyCon () "Core.Word64"
--   Int32 {} -> TyCon () "Core.Int32"
--   Int64 {} -> TyCon () "Core.Int64"
--   Alt t -> TyCon () (unQual (Text.unpack t))
--   RqBody -> TyCon () "Core.RequestBody"
--   RsBody -> TyCon () "Core.Stream"
--   JSONValue -> TyCon () "Core.Value"
--   GFieldMask -> TyCon () "Core.GFieldMask"
--   GDuration -> TyCon () "Core.Scientific"

tyLiteral :: Lit -> Type ()
tyLiteral = \case
  Text -> TyCon () "Core.Text"
  Bool -> TyCon () "Core.Bool"
  Time -> TyCon () "Core.Time'"
  Date -> TyCon () "Core.Date'"
  DateTime -> TyCon () "Core.DateTime'"
  Base64 -> TyCon () "Core.Base64"
  Natural {} -> TyCon () "Core.Natural"
  Float {} -> TyCon () "Core.Double"
  Double {} -> TyCon () "Core.Double"
  UInt32 {} -> TyCon () "Core.Word32"
  UInt64 {} -> TyCon () "Core.Word64"
  Int32 {} -> TyCon () "Core.Int32"
  Int64 {} -> TyCon () "Core.Int64"
  Alt t -> TyCon () (unQual (Text.unpack t))
  RqBody -> TyCon () "Core.RequestBody"
  RsBody -> TyCon () "Core.Stream"
  JSONValue -> TyCon () "Core.Value"
  GFieldMask -> TyCon () "Core.GFieldMask"
  GDuration -> TyCon () "Core.GDuration"

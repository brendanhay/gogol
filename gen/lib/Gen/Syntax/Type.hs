module Gen.Syntax.Type where

import Data.Text qualified as Text
import Gen.Prelude
import Gen.Syntax.Build
import Gen.Types
import Language.Haskell.Exts hiding (Alt)

-- FIXME: Name.hs
tyDerive :: Derive -> Name ()
tyDerive = name . mappend "Core." . drop 1 . show

tyExternal :: TType -> Type ()
tyExternal = \case
  TType r -> tyCon (dname r)
  TMaybe t@TList {} -> tyExternal t
  TMaybe t -> tyApp (tyCon "Core.Maybe") (tyExternal t)
  TList t -> tyList (tyExternal t)
  TLit l -> tyLiteral l
  TMap k v -> tyApp (tyApp (tyCon "Core.HashMap") (tyExternal k)) (tyExternal (unMaybe v))
  where
    unMaybe = \case
      TMaybe t -> t
      t -> t

tyRequired :: Type () -> Type ()
tyRequired typ = tyCon "Core.Required" `tyApp` tyVar "f" `tyApp` typ

tyLiteral :: Lit -> Type ()
tyLiteral = \case
  Text -> tyCon "Core.Text"
  Bool -> tyCon "Core.Bool"
  Time -> tyCon "Core.Time"
  Date -> tyCon "Core.Date"
  DateTime -> tyCon "Core.DateTime"
  Base64 -> tyCon "Core.Base64"
  Natural {} -> tyCon "Core.Natural"
  Float {} -> tyCon "Core.Double"
  Double {} -> tyCon "Core.Double"
  UInt32 {} -> tyCon "Core.Word32"
  UInt64 {} -> tyCon "Core.Word64"
  Int32 {} -> tyCon "Core.Int32"
  Int64 {} -> tyCon "Core.Int64"
  Alt t -> tyCon (name (Text.unpack t))
  RqBody -> tyCon "Core.RequestBody"
  RsBody -> tyCon "Core.Stream"
  JSONValue -> tyCon "Core.Value"
  GFieldMask -> tyCon "Core.FieldMask"
  GDuration -> tyCon "Core.Duration"

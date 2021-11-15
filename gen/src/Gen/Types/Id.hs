-- |
-- Module      : Gen.Types.Id
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.Types.Id
  ( -- * Properties
    Prefix (..),
    Suffix (..),

    -- * Unique Identifiers
    Global,
    Local,
    global,
    local,
    commasep,
    abbreviate,
    globalise,
    localise,
    reference,
    -- FIXME: move these
    extractPath,
    orderParams,

    -- * Naming
    aname,
    mname,
    dname,
    dname',
    dstr,
    cname,
    bname,
    fname,
    fstr,
    lname,
    pname,
  )
where

import Control.Applicative (optional)
import qualified Data.Aeson as Aeson
import qualified Data.Attoparsec.Text as Atto
import qualified Data.CaseInsensitive as CI
import qualified Data.Function as Function
import Data.Hashable ()
import qualified Data.List as List
import qualified Data.Text as Text
import qualified Data.Text.Lazy.Builder as Build
import qualified Data.Text.Manipulate as Text.Manipulate
import Gen.Prelude
import Gen.Text
import qualified Language.Haskell.Exts.Build as Build
import Language.Haskell.Exts.Syntax (Exp, Name (..))

aname :: Text -> Name ()
aname =
  Build.name
    . Text.unpack
    . (<> "API")
    . upperHead
    . Text.replace "." ""

mname :: Text -> Suffix -> Global -> (Name (), Global, Text)
mname abrv (Suffix suf) (Global g) =
  ( Build.name $ Text.unpack $ mconcat n <> suf, -- Action service type alias.
    Global n, -- Action data type.
    Text.intercalate "." ns -- Action namespace.
  )
  where
    n = drop 1 ns

    ns
      | CI.mk e == CI.mk x = e : xs
      | otherwise = x : xs
      where
        e = Text.replace "." "" abrv
        x : xs = map toPascalCase g

dname' :: Global -> Name ()
dname' g =
  case dname g of
    Ident () s -> Ident () (s <> "'")
    Symbol () s -> Symbol () (s <> "'")

dname :: Global -> Name ()
dname =
  Build.name
    . Text.unpack
    . renameReserved
    . upperHead
    . Text.dropWhile separator
    . global

cname :: Global -> Name ()
cname =
  Build.name
    . Text.unpack
    . renameReserved
    . lowerHead
    . Text.dropWhile separator
    . global

bname :: Prefix -> Text -> Name ()
bname (Prefix p) =
  Build.name
    . Text.unpack
    . mappend (Text.toUpper p)
    . snd
    . renameBranch

fname, lname, pname :: Prefix -> Local -> Name ()
fname = pre (Text.cons '_')
lname = pre id
pname = pre (flip Text.snoc '_' . Text.cons 'p' . upperHead)

dstr :: Global -> Exp ()
dstr = Build.strE . Text.unpack . toPascalCase . global

fstr :: Local -> Exp ()
fstr = Build.strE . Text.unpack . local

pre :: (Text -> Text) -> Prefix -> Local -> Name ()
pre f (Prefix p) = Build.name . Text.unpack . f . mappend p . upperHead . local

newtype Suffix = Suffix Text
  deriving (Show, IsString)

newtype Prefix = Prefix Text
  deriving (Show, Monoid)

instance Semigroup Prefix where
  Prefix a <> Prefix b = Prefix (a <> b)

newtype Global = Global {unsafeGlobal :: [Text]}
  deriving (Ord, Show, Generic)

instance Eq Global where
  Global xs == Global ys = Function.on (==) f xs ys
    where
      f = CI.mk . mconcat

instance Hashable Global where
  hashWithSalt salt (Global g) = foldl' hashWithSalt salt (map CI.mk g)

instance IsString Global where
  fromString = mkGlobal . fromString

instance FromJSON Global where
  parseJSON = Aeson.withText "global" (pure . mkGlobal)

instance FromJSONKey Global where
  fromJSONKey = Aeson.FromJSONKeyText mkGlobal

instance ToJSON Global where
  toJSON = Aeson.toJSON . global

newtype Local = Local {local :: Text}
  deriving
    ( Eq,
      Ord,
      Show,
      Generic,
      Hashable,
      FromJSON,
      ToJSON,
      FromJSONKey,
      ToJSONKey,
      IsString
    )

mkGlobal :: Text -> Global
mkGlobal = Global . Text.split (== '.')

global :: Global -> Text
global (Global g) = foldMap upperHead g

commasep :: Global -> Text
commasep = mconcat . List.intersperse "." . unsafeGlobal

reference :: Global -> Local -> Global
reference (Global g) (Local l) =
  Global
    . mappend g
    . filter (not . Text.null)
    $ Text.split (== '.') l

abbreviate :: Global -> Global
abbreviate (Global g)
  | length g > 2 = Global (drop 1 g)
  | otherwise = Global g

localise :: Global -> Local
localise = Local . global

globalise :: Local -> Global
globalise = Global . (: []) . local

extractPath :: Text -> [Either Text (Local, Maybe Text)]
extractPath x = either (error . err) id $ Atto.parseOnly path x
  where
    err e = "Error parsing \"" <> Text.unpack x <> "\", " <> e

    path = Atto.many1 (seg <|> rep <|> var') <* Atto.endOfInput

    seg =
      fmap Left $
        optional (Atto.char '/') *> Atto.takeWhile1 (Atto.notInClass "/{+*}")

    rep = fmap Right $ do
      void $ Atto.string "{/"
      (,Nothing) <$> fmap Local (Atto.takeWhile1 (/= '*'))
        <* Atto.string "*}"

    var' = fmap Right $ do
      void $ optional (Atto.char '/') *> Atto.char '{' *> optional (Atto.char '+')
      (,) <$> fmap Local (Atto.takeWhile1 (Atto.notInClass "/{+*}:"))
        <* Atto.char '}'
        <*> optional (Atto.char ':' *> Atto.takeWhile1 (Atto.notInClass "/{+*}:"))

orderParams :: (a -> Local) -> [a] -> [Local] -> [a]
orderParams f xs ys = orderBy f zs (del zs [] ++ reserve)
  where
    zs = orderBy f (List.sortOn f xs) (List.nub (ys ++ map f xs))

    del _ [] = []
    del [] rs = reverse rs
    del (r : qs) rs
      | f r `elem` reserve = del qs rs
      | otherwise = del qs (f r : rs)

    reserve =
      [ "quotaUser",
        "prettyPrint",
        "userIp",
        "fields",
        "alt"
      ]

orderBy :: Eq b => (a -> b) -> [a] -> [b] -> [a]
orderBy g xs ys = List.sortOn (flip List.elemIndex ys . g) xs

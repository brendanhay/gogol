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
    gid,
    lid,
    reference,
    -- FIXME: move these
    extractPath,
    orderParams,

    -- * Naming
    aname,
    mname,
    dname,
    dstr,
    cname,
    bname,
    fname,
    fstr,
  )
where

import Control.Applicative
import Control.Monad
import Data.Aeson hiding (Bool, String)
import Data.Attoparsec.Text qualified as A
import Data.CaseInsensitive qualified as CI
import Data.List (elemIndex, intersperse, nub, sortOn)
import Data.String
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Text.Lazy.Builder qualified as Build
import Data.Text.Manipulate
import Formatting
import GHC.Generics (Generic)
import Gen.Text
import Gen.Types.NS
import Language.Haskell.Exts.Build
import Language.Haskell.Exts.Syntax (Exp, Name (..))

aname :: Text -> Name ()
aname = name . Text.unpack . (<> "API") . upperHead . Text.replace "." ""

mname :: Text -> Suffix -> Global -> (Name (), Global, [Text])
mname canonical (Suffix suf) (Global method) =
  (resourceType, dataType, namespace)
  where
    resourceType = name (Text.unpack (mconcat namespace <> suf))
    dataType = Global namespace
    namespace = squeeze (unNS (mkNS canonical), map upperHead method)

    -- Replace possibly wonky casing of method.id components that are supplied
    -- by a canonicalName, which typically correctly cased due to coming from
    -- the ./service/*.json configurations.
    squeeze = \case
      (x : xs, y : ys) | CI.mk x == CI.mk y -> x : squeeze (xs, ys)
      (_xs, ys) -> ys

dname :: Global -> Name ()
dname =
  name
    . Text.unpack
    . renameReserved
    . upperHead
    . Text.dropWhile separator
    . global

cname :: Global -> Name ()
cname =
  name
    . Text.unpack
    . renameReserved
    . mappend "new"
    . upperHead
    . Text.dropWhile separator
    . global

bname :: Prefix -> Text -> Name ()
bname (Prefix p) =
  name
    . Text.unpack
    . mappend p
    . Text.cons '_'
    . renameBranch

fname :: Local -> Name ()
fname =
  name
    . Text.unpack
    . renameField
    . local

dstr :: Global -> Exp ()
dstr =
  strE
    . Text.unpack
    . renameReserved
    . upperHead
    . Text.dropWhile separator
    . global

fstr :: Local -> Exp ()
fstr = strE . Text.unpack . local

newtype Suffix = Suffix Text
  deriving (Show, IsString)

newtype Prefix = Prefix Text
  deriving (Show, Monoid)

instance Semigroup Prefix where
  Prefix a <> Prefix b = Prefix (a <> b)

newtype Global = Global {unsafeGlobal :: [Text]}
  deriving (Eq, Ord, Show, Generic)

instance Semigroup Global where
  Global xs <> Global ys = Global (xs <> ys)

instance IsString Global where
  fromString = mkGlobal . fromString

instance FromJSON Global where
  parseJSON = withText "global" (pure . mkGlobal)

instance FromJSONKey Global where
  fromJSONKey = FromJSONKeyText mkGlobal

instance ToJSON Global where
  toJSON = toJSON . global

gid :: Format a (Global -> a)
gid = later (Build.fromText . global)

newtype Local = Local {local :: Text}
  deriving (Eq, Ord, Show, Generic, FromJSON, ToJSON, FromJSONKey, ToJSONKey, IsString)

lid :: Format a (Local -> a)
lid = later (Build.fromText . local)

mkGlobal :: Text -> Global
mkGlobal = Global . Text.split (== '.') . renameSpecial

global :: Global -> Text
global (Global g) = foldMap upperHead g

commasep :: Global -> Text
commasep = mconcat . intersperse "." . unsafeGlobal

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
extractPath x = either (error . err) id $ A.parseOnly path x
  where
    err e = "Error parsing \"" <> Text.unpack x <> "\", " <> e

    path = A.many1 (seg <|> rep <|> var') <* A.endOfInput

    seg =
      fmap Left $
        optional (A.char '/') *> A.takeWhile1 (A.notInClass "/{+*}")

    rep = fmap Right $ do
      void $ A.string "{/"
      (,Nothing)
        <$> fmap Local (A.takeWhile1 (/= '*'))
        <* A.string "*}"

    var' = fmap Right $ do
      void $ optional (A.char '/') *> A.char '{' *> optional (A.char '+')
      (,)
        <$> fmap Local (A.takeWhile1 (A.notInClass "/{+*}:"))
        <* A.char '}'
        <*> optional (A.char ':' *> A.takeWhile1 (A.notInClass "/{+*}:"))

orderParams :: (a -> Local) -> [a] -> [Local] -> [a]
orderParams f xs ys = orderBy f zs (del zs [] ++ reserve)
  where
    zs = orderBy f (sortOn f xs) (nub (ys ++ map f xs))

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

orderBy :: (Eq b) => (a -> b) -> [a] -> [b] -> [a]
orderBy g xs ys = sortOn (flip elemIndex ys . g) xs

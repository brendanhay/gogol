module Gen.Types.Id
  ( -- * Properties
    Prefix (..),
    Suffix (..),

    -- * Unique Identifiers
    Global,
    newGlobal,
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
  )
where

import Control.Applicative (optional)
import qualified Data.Aeson as Aeson
import qualified Data.Attoparsec.Text as Atto
import qualified Data.CaseInsensitive as CI
import qualified Data.List as List
import qualified Data.Set as Set
import qualified Data.Text as Text
import qualified Data.Text.Lazy.Builder as Text.Builder
import Formatting
import Gen.Prelude
import Gen.Text
import Gen.Types.NS
import Language.Haskell.Exts.Build
import Language.Haskell.Exts.Syntax (Exp, Name (..))

aname :: Text -> Name ()
aname = name . Text.unpack . (<> "API") . upperHead . Text.replace "." ""

mname :: Text -> Global -> (Global, [Text])
mname canonical (Global method) =
  (dataType, namespace)
  where
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
  fromString = newGlobal . fromString

instance FromJSON Global where
  parseJSON = Aeson.withText "global" (pure . newGlobal)

instance FromJSONKey Global where
  fromJSONKey = Aeson.FromJSONKeyText newGlobal

instance ToJSON Global where
  toJSON = Aeson.toJSON . global

gid :: Format a (Global -> a)
gid = later (Text.Builder.fromText . global)

newtype Local = Local {local :: Text}
  deriving (Eq, Ord, Show, Generic, FromJSON, ToJSON, FromJSONKey, ToJSONKey, IsString)

lid :: Format a (Local -> a)
lid = later (Text.Builder.fromText . local)

newGlobal :: Text -> Global
newGlobal = Global . Text.split (== '.') . renameSpecial

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

    rep =
      fmap Right $ do
        void $ Atto.string "{/"

        (,Nothing) <$> fmap Local (Atto.takeWhile1 (/= '*'))
          <* Atto.string "*}"

    var' =
      fmap Right $ do
        void $ optional (Atto.char '/') *> Atto.char '{' *> optional (Atto.char '+')

        (,) <$> fmap Local (Atto.takeWhile1 (Atto.notInClass "/{+*}:"))
          <* Atto.char '}'
          <*> optional (Atto.char ':' *> Atto.takeWhile1 (Atto.notInClass "/{+*}:"))

orderParams :: (a -> Local) -> [a] -> [Local] -> [a]
orderParams f xs ys = orderBy f zs (del zs [] ++ reserve)
  where
    zs = orderBy f (List.sortOn f xs) (Set.toList (Set.fromList (ys ++ map f xs)))

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

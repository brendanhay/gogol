-- |
-- Module      : Network.Google.Prelude
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Prelude
    ( module Export

    -- * Serialisation
    , parseJSONText
    , toJSONText

    -- * Isos
    , _Coerce
    , _Default
    ) where

import           Control.Lens     as Export (Lens', lens)
import           Control.Lens     hiding (coerce)
import           Data.Aeson       as Export
import           Data.Aeson.Types
import           Data.Coerce
import           Data.Data        as Export (Data, Typeable)
import           Data.Hashable    as Export
import           Data.Int         as Export (Int32, Int64)
import           Data.Maybe       as Export
import           Data.Proxy       as Export
import           Data.Text        as Export (Text)
import           Data.Time        as Export (UTCTime)
import           Data.Word        as Export (Word32, Word64, Word8)
import           GHC.Generics     as Export (Generic)
import           Numeric.Natural  as Export (Natural)
import           Servant.API      as Export
import           Servant.Client   as Export

_Coerce :: (Coercible a b, Coercible b a) => Iso' a b
_Coerce = iso coerce coerce

-- | Invalid Iso, should be a Prism but exists for ease of composition
-- with the current 'Lens . Iso' chaining to hide internal types from the user.
_Default :: Monoid a => Iso' (Maybe a) a
_Default = iso f Just
  where
    f (Just x) = x
    f Nothing  = mempty

parseJSONText :: FromText a => String -> Value -> Parser a
parseJSONText n = withText n (maybe (fail n) pure . fromText)

toJSONText :: ToText a => a -> Value
toJSONText = String . toText

-- |
-- Module      : Network.Google.Prelude
-- Copyright   : (c) 2015-2016 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Prelude
    ( module Export
    ) where

import Control.Lens        as Export (Lens', lens, mapping, ( # ), (^.), _Just)
import Data.ByteString     as Export (ByteString)
import Data.Data           as Export (Data, Typeable)
import Data.Hashable       as Export (Hashable, hashWithSalt)
import Data.HashMap.Strict as Export (HashMap)
import Data.Int            as Export (Int32, Int64)
import Data.Maybe          as Export
import Data.Monoid         as Export (mempty, (<>))
import Data.Proxy          as Export
import Data.Scientific     as Export (Scientific)
import Data.Text           as Export (Text)
import Data.Time           as Export (Day, TimeOfDay, UTCTime)
import Data.Word           as Export (Word32, Word64, Word8)
import GHC.Generics        as Export (Generic)
import Network.HTTP.Client as Export (RequestBody)
import Numeric.Natural     as Export (Natural)
import Prelude             as Export hiding (product, span, any, Word)
import Servant.API         as Export hiding (Headers, Link, getResponse, Stream, ResponseHeader, Header, header)
import Servant.Links       as Export hiding (Link)
import Web.HttpApiData     as Export (FromHttpApiData (..), ToHttpApiData (..))

import Network.Google.Data.Bytes   as Export
import Network.Google.Data.JSON    as Export
import Network.Google.Data.Numeric as Export
import Network.Google.Data.Time    as Export
import Network.Google.Types        as Export

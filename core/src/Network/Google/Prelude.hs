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
    ) where

import           Control.Applicative         as Export (pure, (<$>), (<*>))
import           Control.Lens                as Export (Lens', lens, mapping,
                                                        (^.), _Just)
import           Data.Data                   as Export (Data, Typeable)
import           Data.Hashable               as Export
import           Data.Int                    as Export (Int32, Int64)
import           Data.Maybe                  as Export
import           Data.Monoid                 as Export (mempty, (<>))
import           Data.Proxy                  as Export
import           Data.Text                   as Export (Text)
import           Data.Time                   as Export
import           Data.Word                   as Export (Word32, Word64, Word8)
import           GHC.Generics                as Export (Generic)
import           Network.Google.Data.JSON    as Export
import           Network.Google.Data.Numeric as Export
import           Network.Google.Data.Time    as Export
import           Network.Google.Types        as Export
import           Numeric.Natural             as Export (Natural)
import           Prelude                     as Export hiding (product)
import           Servant.API                 as Export hiding (getResponse)
import           Servant.Utils.Links         as Export hiding (Link)

{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE FlexibleContexts     #-}
{-# LANGUAGE TypeFamilies         #-}
{-# LANGUAGE TypeOperators        #-}
{-# LANGUAGE UndecidableInstances #-}

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
    , module Network.Google.Prelude
    ) where

import           Control.Lens                as Export (Lens', lens, mapping)
import           Control.Lens                hiding (coerce)
import           Control.Monad.Trans.Either  as Export (EitherT)
import           Data.Aeson                  as Export
import           Data.Coerce
import           Data.Data                   as Export (Data, Typeable)
import           Data.Hashable               as Export
import           Data.Int                    as Export (Int32, Int64)
import           Data.Maybe                  as Export
import           Data.Proxy                  as Export
import           Data.Text                   as Export (Text)
import           Data.Time                   as Export (UTCTime)
import           Data.Word                   as Export (Word32, Word64, Word8)
import           GHC.Generics                as Export (Generic)
import           Network.Google.Data.JSON    as Export
import           Network.Google.Data.Numeric as Export
import           Numeric.Natural             as Export (Natural)
import           Servant.API                 as Export
import           Servant.Client              as Export
import           Servant.Common.Req          as Export (Req, defReq)
import           Servant.Utils.Links         as Export

class GoogleRequest a where
     type Rs a :: *

     requestWithRoute :: Req -> BaseUrl -> a -> EitherT ServantError IO (Rs a)
     request          ::                   a -> EitherT ServantError IO (Rs a)

_Coerce :: (Coercible a b, Coercible b a) => Iso' a b
_Coerce = iso coerce coerce

-- | Invalid Iso, should be a Prism but exists for ease of composition
-- with the current 'Lens . Iso' chaining to hide internal types from the user.
_Default :: Monoid a => Iso' (Maybe a) a
_Default = iso f Just
  where
    f (Just x) = x
    f Nothing  = mempty

{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Regionalinventory.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates regional inventory for multiple products or regions in a single
-- request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.regionalinventory.custombatch@.
module Network.Google.Resource.Content.Regionalinventory.Custombatch
    (
    -- * REST Resource
      RegionalinventoryCustombatchResource

    -- * Creating a Request
    , regionalinventoryCustombatch
    , RegionalinventoryCustombatch

    -- * Request Lenses
    , rcPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regionalinventory.custombatch@ method which the
-- 'RegionalinventoryCustombatch' request conforms to.
type RegionalinventoryCustombatchResource =
     "content" :>
       "v2.1" :>
         "regionalinventory" :>
           "batch" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] RegionalinventoryCustomBatchRequest
                 :> Post '[JSON] RegionalinventoryCustomBatchResponse

-- | Updates regional inventory for multiple products or regions in a single
-- request.
--
-- /See:/ 'regionalinventoryCustombatch' smart constructor.
newtype RegionalinventoryCustombatch =
  RegionalinventoryCustombatch'
    { _rcPayload :: RegionalinventoryCustomBatchRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalinventoryCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcPayload'
regionalinventoryCustombatch
    :: RegionalinventoryCustomBatchRequest -- ^ 'rcPayload'
    -> RegionalinventoryCustombatch
regionalinventoryCustombatch pRcPayload_ =
  RegionalinventoryCustombatch' {_rcPayload = pRcPayload_}


-- | Multipart request metadata.
rcPayload :: Lens' RegionalinventoryCustombatch RegionalinventoryCustomBatchRequest
rcPayload
  = lens _rcPayload (\ s a -> s{_rcPayload = a})

instance GoogleRequest RegionalinventoryCustombatch
         where
        type Rs RegionalinventoryCustombatch =
             RegionalinventoryCustomBatchResponse
        type Scopes RegionalinventoryCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionalinventoryCustombatch'{..}
          = go (Just AltJSON) _rcPayload shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionalinventoryCustombatchResource)
                      mempty

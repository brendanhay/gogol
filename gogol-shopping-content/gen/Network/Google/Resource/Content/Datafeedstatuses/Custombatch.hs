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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeedstatuses.custombatch@.
module Network.Google.Resource.Content.Datafeedstatuses.Custombatch
    (
    -- * REST Resource
      DatafeedstatusesCustombatchResource

    -- * Creating a Request
    , datafeedstatusesCustombatch
    , DatafeedstatusesCustombatch

    -- * Request Lenses
    , dcPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.custombatch@ method which the
-- 'DatafeedstatusesCustombatch' request conforms to.
type DatafeedstatusesCustombatchResource =
     "content" :>
       "v2" :>
         "datafeedstatuses" :>
           "batch" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] DatafeedstatusesCustomBatchRequest :>
                 Post '[JSON] DatafeedstatusesCustomBatchResponse

--
-- /See:/ 'datafeedstatusesCustombatch' smart constructor.
newtype DatafeedstatusesCustombatch = DatafeedstatusesCustombatch'
    { _dcPayload :: DatafeedstatusesCustomBatchRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcPayload'
datafeedstatusesCustombatch
    :: DatafeedstatusesCustomBatchRequest -- ^ 'dcPayload'
    -> DatafeedstatusesCustombatch
datafeedstatusesCustombatch pDcPayload_ =
    DatafeedstatusesCustombatch'
    { _dcPayload = pDcPayload_
    }

-- | Multipart request metadata.
dcPayload :: Lens' DatafeedstatusesCustombatch DatafeedstatusesCustomBatchRequest
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

instance GoogleRequest DatafeedstatusesCustombatch
         where
        type Rs DatafeedstatusesCustombatch =
             DatafeedstatusesCustomBatchResponse
        type Scopes DatafeedstatusesCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedstatusesCustombatch'{..}
          = go (Just AltJSON) _dcPayload shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesCustombatchResource)
                      mempty

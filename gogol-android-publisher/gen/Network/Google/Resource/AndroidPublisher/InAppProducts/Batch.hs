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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Batch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.batch@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Batch
    (
    -- * REST Resource
      InAppProductsBatchResource

    -- * Creating a Request
    , inAppProductsBatch
    , InAppProductsBatch

    -- * Request Lenses
    , iapbPayload
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.batch@ method which the
-- 'InAppProductsBatch' request conforms to.
type InAppProductsBatchResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           "inappproducts" :>
             "batch" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] InAppProductsBatchRequest :>
                   Post '[JSON] InAppProductsBatchResponse

--
-- /See:/ 'inAppProductsBatch' smart constructor.
newtype InAppProductsBatch = InAppProductsBatch'
    { _iapbPayload :: InAppProductsBatchRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapbPayload'
inAppProductsBatch
    :: InAppProductsBatchRequest -- ^ 'iapbPayload'
    -> InAppProductsBatch
inAppProductsBatch pIapbPayload_ =
    InAppProductsBatch'
    { _iapbPayload = pIapbPayload_
    }

-- | Multipart request metadata.
iapbPayload :: Lens' InAppProductsBatch InAppProductsBatchRequest
iapbPayload
  = lens _iapbPayload (\ s a -> s{_iapbPayload = a})

instance GoogleRequest InAppProductsBatch where
        type Rs InAppProductsBatch =
             InAppProductsBatchResponse
        type Scopes InAppProductsBatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsBatch'{..}
          = go (Just AltJSON) _iapbPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsBatchResource)
                      mempty

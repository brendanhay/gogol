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
-- Module      : Network.Google.Resource.Directory.Resources.Features.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.features.update@.
module Network.Google.Resource.Directory.Resources.Features.Update
    (
    -- * REST Resource
      ResourcesFeaturesUpdateResource

    -- * Creating a Request
    , resourcesFeaturesUpdate
    , ResourcesFeaturesUpdate

    -- * Request Lenses
    , rfuPayload
    , rfuCustomer
    , rfuFeatureKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.features.update@ method which the
-- 'ResourcesFeaturesUpdate' request conforms to.
type ResourcesFeaturesUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   Capture "featureKey" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Feature :> Put '[JSON] Feature

-- | Updates a feature.
--
-- /See:/ 'resourcesFeaturesUpdate' smart constructor.
data ResourcesFeaturesUpdate =
  ResourcesFeaturesUpdate'
    { _rfuPayload    :: !Feature
    , _rfuCustomer   :: !Text
    , _rfuFeatureKey :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourcesFeaturesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfuPayload'
--
-- * 'rfuCustomer'
--
-- * 'rfuFeatureKey'
resourcesFeaturesUpdate
    :: Feature -- ^ 'rfuPayload'
    -> Text -- ^ 'rfuCustomer'
    -> Text -- ^ 'rfuFeatureKey'
    -> ResourcesFeaturesUpdate
resourcesFeaturesUpdate pRfuPayload_ pRfuCustomer_ pRfuFeatureKey_ =
  ResourcesFeaturesUpdate'
    { _rfuPayload = pRfuPayload_
    , _rfuCustomer = pRfuCustomer_
    , _rfuFeatureKey = pRfuFeatureKey_
    }

-- | Multipart request metadata.
rfuPayload :: Lens' ResourcesFeaturesUpdate Feature
rfuPayload
  = lens _rfuPayload (\ s a -> s{_rfuPayload = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rfuCustomer :: Lens' ResourcesFeaturesUpdate Text
rfuCustomer
  = lens _rfuCustomer (\ s a -> s{_rfuCustomer = a})

-- | The unique ID of the feature to update.
rfuFeatureKey :: Lens' ResourcesFeaturesUpdate Text
rfuFeatureKey
  = lens _rfuFeatureKey
      (\ s a -> s{_rfuFeatureKey = a})

instance GoogleRequest ResourcesFeaturesUpdate where
        type Rs ResourcesFeaturesUpdate = Feature
        type Scopes ResourcesFeaturesUpdate =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesUpdate'{..}
          = go _rfuCustomer _rfuFeatureKey (Just AltJSON)
              _rfuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesUpdateResource)
                      mempty

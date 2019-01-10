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
-- Module      : Network.Google.Resource.Directory.Resources.Features.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a feature. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.features.patch@.
module Network.Google.Resource.Directory.Resources.Features.Patch
    (
    -- * REST Resource
      ResourcesFeaturesPatchResource

    -- * Creating a Request
    , resourcesFeaturesPatch
    , ResourcesFeaturesPatch

    -- * Request Lenses
    , rfpPayload
    , rfpCustomer
    , rfpFeatureKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.features.patch@ method which the
-- 'ResourcesFeaturesPatch' request conforms to.
type ResourcesFeaturesPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   Capture "featureKey" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Feature :> Patch '[JSON] Feature

-- | Updates a feature. This method supports patch semantics.
--
-- /See:/ 'resourcesFeaturesPatch' smart constructor.
data ResourcesFeaturesPatch = ResourcesFeaturesPatch'
    { _rfpPayload    :: !Feature
    , _rfpCustomer   :: !Text
    , _rfpFeatureKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesFeaturesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfpPayload'
--
-- * 'rfpCustomer'
--
-- * 'rfpFeatureKey'
resourcesFeaturesPatch
    :: Feature -- ^ 'rfpPayload'
    -> Text -- ^ 'rfpCustomer'
    -> Text -- ^ 'rfpFeatureKey'
    -> ResourcesFeaturesPatch
resourcesFeaturesPatch pRfpPayload_ pRfpCustomer_ pRfpFeatureKey_ =
    ResourcesFeaturesPatch'
    { _rfpPayload = pRfpPayload_
    , _rfpCustomer = pRfpCustomer_
    , _rfpFeatureKey = pRfpFeatureKey_
    }

-- | Multipart request metadata.
rfpPayload :: Lens' ResourcesFeaturesPatch Feature
rfpPayload
  = lens _rfpPayload (\ s a -> s{_rfpPayload = a})

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rfpCustomer :: Lens' ResourcesFeaturesPatch Text
rfpCustomer
  = lens _rfpCustomer (\ s a -> s{_rfpCustomer = a})

-- | The unique ID of the feature to update.
rfpFeatureKey :: Lens' ResourcesFeaturesPatch Text
rfpFeatureKey
  = lens _rfpFeatureKey
      (\ s a -> s{_rfpFeatureKey = a})

instance GoogleRequest ResourcesFeaturesPatch where
        type Rs ResourcesFeaturesPatch = Feature
        type Scopes ResourcesFeaturesPatch =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesPatch'{..}
          = go _rfpCustomer _rfpFeatureKey (Just AltJSON)
              _rfpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesPatchResource)
                      mempty

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
-- Module      : Network.Google.Resource.Directory.Resources.Features.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.features.get@.
module Network.Google.Resource.Directory.Resources.Features.Get
    (
    -- * REST Resource
      ResourcesFeaturesGetResource

    -- * Creating a Request
    , resourcesFeaturesGet
    , ResourcesFeaturesGet

    -- * Request Lenses
    , rfgCustomer
    , rfgFeatureKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.features.get@ method which the
-- 'ResourcesFeaturesGet' request conforms to.
type ResourcesFeaturesGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   Capture "featureKey" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Feature

-- | Retrieves a feature.
--
-- /See:/ 'resourcesFeaturesGet' smart constructor.
data ResourcesFeaturesGet =
  ResourcesFeaturesGet'
    { _rfgCustomer   :: !Text
    , _rfgFeatureKey :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesFeaturesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfgCustomer'
--
-- * 'rfgFeatureKey'
resourcesFeaturesGet
    :: Text -- ^ 'rfgCustomer'
    -> Text -- ^ 'rfgFeatureKey'
    -> ResourcesFeaturesGet
resourcesFeaturesGet pRfgCustomer_ pRfgFeatureKey_ =
  ResourcesFeaturesGet'
    {_rfgCustomer = pRfgCustomer_, _rfgFeatureKey = pRfgFeatureKey_}


-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rfgCustomer :: Lens' ResourcesFeaturesGet Text
rfgCustomer
  = lens _rfgCustomer (\ s a -> s{_rfgCustomer = a})

-- | The unique ID of the feature to retrieve.
rfgFeatureKey :: Lens' ResourcesFeaturesGet Text
rfgFeatureKey
  = lens _rfgFeatureKey
      (\ s a -> s{_rfgFeatureKey = a})

instance GoogleRequest ResourcesFeaturesGet where
        type Rs ResourcesFeaturesGet = Feature
        type Scopes ResourcesFeaturesGet =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesFeaturesGet'{..}
          = go _rfgCustomer _rfgFeatureKey (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesGetResource)
                      mempty

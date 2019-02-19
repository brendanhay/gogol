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
-- Module      : Network.Google.Resource.Directory.Resources.Features.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resources.features.delete@.
module Network.Google.Resource.Directory.Resources.Features.Delete
    (
    -- * REST Resource
      ResourcesFeaturesDeleteResource

    -- * Creating a Request
    , resourcesFeaturesDelete
    , ResourcesFeaturesDelete

    -- * Request Lenses
    , rfdCustomer
    , rfdFeatureKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resources.features.delete@ method which the
-- 'ResourcesFeaturesDelete' request conforms to.
type ResourcesFeaturesDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "features" :>
                   Capture "featureKey" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a feature.
--
-- /See:/ 'resourcesFeaturesDelete' smart constructor.
data ResourcesFeaturesDelete =
  ResourcesFeaturesDelete'
    { _rfdCustomer   :: !Text
    , _rfdFeatureKey :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourcesFeaturesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfdCustomer'
--
-- * 'rfdFeatureKey'
resourcesFeaturesDelete
    :: Text -- ^ 'rfdCustomer'
    -> Text -- ^ 'rfdFeatureKey'
    -> ResourcesFeaturesDelete
resourcesFeaturesDelete pRfdCustomer_ pRfdFeatureKey_ =
  ResourcesFeaturesDelete'
    {_rfdCustomer = pRfdCustomer_, _rfdFeatureKey = pRfdFeatureKey_}

-- | The unique ID for the customer\'s G Suite account. As an account
-- administrator, you can also use the my_customer alias to represent your
-- account\'s customer ID.
rfdCustomer :: Lens' ResourcesFeaturesDelete Text
rfdCustomer
  = lens _rfdCustomer (\ s a -> s{_rfdCustomer = a})

-- | The unique ID of the feature to delete.
rfdFeatureKey :: Lens' ResourcesFeaturesDelete Text
rfdFeatureKey
  = lens _rfdFeatureKey
      (\ s a -> s{_rfdFeatureKey = a})

instance GoogleRequest ResourcesFeaturesDelete where
        type Rs ResourcesFeaturesDelete = ()
        type Scopes ResourcesFeaturesDelete =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesDelete'{..}
          = go _rfdCustomer _rfdFeatureKey (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesDeleteResource)
                      mempty

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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.features.delete@.
module Network.Google.Resource.Directory.Resources.Features.Delete
    (
    -- * REST Resource
      ResourcesFeaturesDeleteResource

    -- * Creating a Request
    , resourcesFeaturesDelete
    , ResourcesFeaturesDelete

    -- * Request Lenses
    , rfdXgafv
    , rfdUploadProtocol
    , rfdAccessToken
    , rfdUploadType
    , rfdCustomer
    , rfdFeatureKey
    , rfdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

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
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a feature.
--
-- /See:/ 'resourcesFeaturesDelete' smart constructor.
data ResourcesFeaturesDelete =
  ResourcesFeaturesDelete'
    { _rfdXgafv :: !(Maybe Xgafv)
    , _rfdUploadProtocol :: !(Maybe Text)
    , _rfdAccessToken :: !(Maybe Text)
    , _rfdUploadType :: !(Maybe Text)
    , _rfdCustomer :: !Text
    , _rfdFeatureKey :: !Text
    , _rfdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesFeaturesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfdXgafv'
--
-- * 'rfdUploadProtocol'
--
-- * 'rfdAccessToken'
--
-- * 'rfdUploadType'
--
-- * 'rfdCustomer'
--
-- * 'rfdFeatureKey'
--
-- * 'rfdCallback'
resourcesFeaturesDelete
    :: Text -- ^ 'rfdCustomer'
    -> Text -- ^ 'rfdFeatureKey'
    -> ResourcesFeaturesDelete
resourcesFeaturesDelete pRfdCustomer_ pRfdFeatureKey_ =
  ResourcesFeaturesDelete'
    { _rfdXgafv = Nothing
    , _rfdUploadProtocol = Nothing
    , _rfdAccessToken = Nothing
    , _rfdUploadType = Nothing
    , _rfdCustomer = pRfdCustomer_
    , _rfdFeatureKey = pRfdFeatureKey_
    , _rfdCallback = Nothing
    }


-- | V1 error format.
rfdXgafv :: Lens' ResourcesFeaturesDelete (Maybe Xgafv)
rfdXgafv = lens _rfdXgafv (\ s a -> s{_rfdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rfdUploadProtocol :: Lens' ResourcesFeaturesDelete (Maybe Text)
rfdUploadProtocol
  = lens _rfdUploadProtocol
      (\ s a -> s{_rfdUploadProtocol = a})

-- | OAuth access token.
rfdAccessToken :: Lens' ResourcesFeaturesDelete (Maybe Text)
rfdAccessToken
  = lens _rfdAccessToken
      (\ s a -> s{_rfdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rfdUploadType :: Lens' ResourcesFeaturesDelete (Maybe Text)
rfdUploadType
  = lens _rfdUploadType
      (\ s a -> s{_rfdUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rfdCustomer :: Lens' ResourcesFeaturesDelete Text
rfdCustomer
  = lens _rfdCustomer (\ s a -> s{_rfdCustomer = a})

-- | The unique ID of the feature to delete.
rfdFeatureKey :: Lens' ResourcesFeaturesDelete Text
rfdFeatureKey
  = lens _rfdFeatureKey
      (\ s a -> s{_rfdFeatureKey = a})

-- | JSONP
rfdCallback :: Lens' ResourcesFeaturesDelete (Maybe Text)
rfdCallback
  = lens _rfdCallback (\ s a -> s{_rfdCallback = a})

instance GoogleRequest ResourcesFeaturesDelete where
        type Rs ResourcesFeaturesDelete = ()
        type Scopes ResourcesFeaturesDelete =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesDelete'{..}
          = go _rfdCustomer _rfdFeatureKey _rfdXgafv
              _rfdUploadProtocol
              _rfdAccessToken
              _rfdUploadType
              _rfdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesDeleteResource)
                      mempty

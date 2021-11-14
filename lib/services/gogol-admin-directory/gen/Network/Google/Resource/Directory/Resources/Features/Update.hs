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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.features.update@.
module Network.Google.Resource.Directory.Resources.Features.Update
    (
    -- * REST Resource
      ResourcesFeaturesUpdateResource

    -- * Creating a Request
    , resourcesFeaturesUpdate
    , ResourcesFeaturesUpdate

    -- * Request Lenses
    , rfuXgafv
    , rfuUploadProtocol
    , rfuAccessToken
    , rfuUploadType
    , rfuPayload
    , rfuCustomer
    , rfuFeatureKey
    , rfuCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

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
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Feature :> Put '[JSON] Feature

-- | Updates a feature.
--
-- /See:/ 'resourcesFeaturesUpdate' smart constructor.
data ResourcesFeaturesUpdate =
  ResourcesFeaturesUpdate'
    { _rfuXgafv :: !(Maybe Xgafv)
    , _rfuUploadProtocol :: !(Maybe Text)
    , _rfuAccessToken :: !(Maybe Text)
    , _rfuUploadType :: !(Maybe Text)
    , _rfuPayload :: !Feature
    , _rfuCustomer :: !Text
    , _rfuFeatureKey :: !Text
    , _rfuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesFeaturesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfuXgafv'
--
-- * 'rfuUploadProtocol'
--
-- * 'rfuAccessToken'
--
-- * 'rfuUploadType'
--
-- * 'rfuPayload'
--
-- * 'rfuCustomer'
--
-- * 'rfuFeatureKey'
--
-- * 'rfuCallback'
resourcesFeaturesUpdate
    :: Feature -- ^ 'rfuPayload'
    -> Text -- ^ 'rfuCustomer'
    -> Text -- ^ 'rfuFeatureKey'
    -> ResourcesFeaturesUpdate
resourcesFeaturesUpdate pRfuPayload_ pRfuCustomer_ pRfuFeatureKey_ =
  ResourcesFeaturesUpdate'
    { _rfuXgafv = Nothing
    , _rfuUploadProtocol = Nothing
    , _rfuAccessToken = Nothing
    , _rfuUploadType = Nothing
    , _rfuPayload = pRfuPayload_
    , _rfuCustomer = pRfuCustomer_
    , _rfuFeatureKey = pRfuFeatureKey_
    , _rfuCallback = Nothing
    }


-- | V1 error format.
rfuXgafv :: Lens' ResourcesFeaturesUpdate (Maybe Xgafv)
rfuXgafv = lens _rfuXgafv (\ s a -> s{_rfuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rfuUploadProtocol :: Lens' ResourcesFeaturesUpdate (Maybe Text)
rfuUploadProtocol
  = lens _rfuUploadProtocol
      (\ s a -> s{_rfuUploadProtocol = a})

-- | OAuth access token.
rfuAccessToken :: Lens' ResourcesFeaturesUpdate (Maybe Text)
rfuAccessToken
  = lens _rfuAccessToken
      (\ s a -> s{_rfuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rfuUploadType :: Lens' ResourcesFeaturesUpdate (Maybe Text)
rfuUploadType
  = lens _rfuUploadType
      (\ s a -> s{_rfuUploadType = a})

-- | Multipart request metadata.
rfuPayload :: Lens' ResourcesFeaturesUpdate Feature
rfuPayload
  = lens _rfuPayload (\ s a -> s{_rfuPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rfuCustomer :: Lens' ResourcesFeaturesUpdate Text
rfuCustomer
  = lens _rfuCustomer (\ s a -> s{_rfuCustomer = a})

-- | The unique ID of the feature to update.
rfuFeatureKey :: Lens' ResourcesFeaturesUpdate Text
rfuFeatureKey
  = lens _rfuFeatureKey
      (\ s a -> s{_rfuFeatureKey = a})

-- | JSONP
rfuCallback :: Lens' ResourcesFeaturesUpdate (Maybe Text)
rfuCallback
  = lens _rfuCallback (\ s a -> s{_rfuCallback = a})

instance GoogleRequest ResourcesFeaturesUpdate where
        type Rs ResourcesFeaturesUpdate = Feature
        type Scopes ResourcesFeaturesUpdate =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesUpdate'{..}
          = go _rfuCustomer _rfuFeatureKey _rfuXgafv
              _rfuUploadProtocol
              _rfuAccessToken
              _rfuUploadType
              _rfuCallback
              (Just AltJSON)
              _rfuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesUpdateResource)
                      mempty

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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.features.patch@.
module Network.Google.Resource.Directory.Resources.Features.Patch
    (
    -- * REST Resource
      ResourcesFeaturesPatchResource

    -- * Creating a Request
    , resourcesFeaturesPatch
    , ResourcesFeaturesPatch

    -- * Request Lenses
    , rfpXgafv
    , rfpUploadProtocol
    , rfpAccessToken
    , rfpUploadType
    , rfpPayload
    , rfpCustomer
    , rfpFeatureKey
    , rfpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

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
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Feature :>
                                   Patch '[JSON] Feature

-- | Patches a feature.
--
-- /See:/ 'resourcesFeaturesPatch' smart constructor.
data ResourcesFeaturesPatch =
  ResourcesFeaturesPatch'
    { _rfpXgafv :: !(Maybe Xgafv)
    , _rfpUploadProtocol :: !(Maybe Text)
    , _rfpAccessToken :: !(Maybe Text)
    , _rfpUploadType :: !(Maybe Text)
    , _rfpPayload :: !Feature
    , _rfpCustomer :: !Text
    , _rfpFeatureKey :: !Text
    , _rfpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesFeaturesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfpXgafv'
--
-- * 'rfpUploadProtocol'
--
-- * 'rfpAccessToken'
--
-- * 'rfpUploadType'
--
-- * 'rfpPayload'
--
-- * 'rfpCustomer'
--
-- * 'rfpFeatureKey'
--
-- * 'rfpCallback'
resourcesFeaturesPatch
    :: Feature -- ^ 'rfpPayload'
    -> Text -- ^ 'rfpCustomer'
    -> Text -- ^ 'rfpFeatureKey'
    -> ResourcesFeaturesPatch
resourcesFeaturesPatch pRfpPayload_ pRfpCustomer_ pRfpFeatureKey_ =
  ResourcesFeaturesPatch'
    { _rfpXgafv = Nothing
    , _rfpUploadProtocol = Nothing
    , _rfpAccessToken = Nothing
    , _rfpUploadType = Nothing
    , _rfpPayload = pRfpPayload_
    , _rfpCustomer = pRfpCustomer_
    , _rfpFeatureKey = pRfpFeatureKey_
    , _rfpCallback = Nothing
    }


-- | V1 error format.
rfpXgafv :: Lens' ResourcesFeaturesPatch (Maybe Xgafv)
rfpXgafv = lens _rfpXgafv (\ s a -> s{_rfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rfpUploadProtocol :: Lens' ResourcesFeaturesPatch (Maybe Text)
rfpUploadProtocol
  = lens _rfpUploadProtocol
      (\ s a -> s{_rfpUploadProtocol = a})

-- | OAuth access token.
rfpAccessToken :: Lens' ResourcesFeaturesPatch (Maybe Text)
rfpAccessToken
  = lens _rfpAccessToken
      (\ s a -> s{_rfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rfpUploadType :: Lens' ResourcesFeaturesPatch (Maybe Text)
rfpUploadType
  = lens _rfpUploadType
      (\ s a -> s{_rfpUploadType = a})

-- | Multipart request metadata.
rfpPayload :: Lens' ResourcesFeaturesPatch Feature
rfpPayload
  = lens _rfpPayload (\ s a -> s{_rfpPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rfpCustomer :: Lens' ResourcesFeaturesPatch Text
rfpCustomer
  = lens _rfpCustomer (\ s a -> s{_rfpCustomer = a})

-- | The unique ID of the feature to update.
rfpFeatureKey :: Lens' ResourcesFeaturesPatch Text
rfpFeatureKey
  = lens _rfpFeatureKey
      (\ s a -> s{_rfpFeatureKey = a})

-- | JSONP
rfpCallback :: Lens' ResourcesFeaturesPatch (Maybe Text)
rfpCallback
  = lens _rfpCallback (\ s a -> s{_rfpCallback = a})

instance GoogleRequest ResourcesFeaturesPatch where
        type Rs ResourcesFeaturesPatch = Feature
        type Scopes ResourcesFeaturesPatch =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesFeaturesPatch'{..}
          = go _rfpCustomer _rfpFeatureKey _rfpXgafv
              _rfpUploadProtocol
              _rfpAccessToken
              _rfpUploadType
              _rfpCallback
              (Just AltJSON)
              _rfpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesFeaturesPatchResource)
                      mempty

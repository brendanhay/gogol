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
-- Module      : Network.Google.Resource.Monitoring.Services.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Soft delete this Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.delete@.
module Network.Google.Resource.Monitoring.Services.Delete
    (
    -- * REST Resource
      ServicesDeleteResource

    -- * Creating a Request
    , servicesDelete
    , ServicesDelete

    -- * Request Lenses
    , sdXgafv
    , sdUploadProtocol
    , sdAccessToken
    , sdUploadType
    , sdName
    , sdCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.delete@ method which the
-- 'ServicesDelete' request conforms to.
type ServicesDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Soft delete this Service.
--
-- /See:/ 'servicesDelete' smart constructor.
data ServicesDelete =
  ServicesDelete'
    { _sdXgafv :: !(Maybe Xgafv)
    , _sdUploadProtocol :: !(Maybe Text)
    , _sdAccessToken :: !(Maybe Text)
    , _sdUploadType :: !(Maybe Text)
    , _sdName :: !Text
    , _sdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdXgafv'
--
-- * 'sdUploadProtocol'
--
-- * 'sdAccessToken'
--
-- * 'sdUploadType'
--
-- * 'sdName'
--
-- * 'sdCallback'
servicesDelete
    :: Text -- ^ 'sdName'
    -> ServicesDelete
servicesDelete pSdName_ =
  ServicesDelete'
    { _sdXgafv = Nothing
    , _sdUploadProtocol = Nothing
    , _sdAccessToken = Nothing
    , _sdUploadType = Nothing
    , _sdName = pSdName_
    , _sdCallback = Nothing
    }


-- | V1 error format.
sdXgafv :: Lens' ServicesDelete (Maybe Xgafv)
sdXgafv = lens _sdXgafv (\ s a -> s{_sdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdUploadProtocol :: Lens' ServicesDelete (Maybe Text)
sdUploadProtocol
  = lens _sdUploadProtocol
      (\ s a -> s{_sdUploadProtocol = a})

-- | OAuth access token.
sdAccessToken :: Lens' ServicesDelete (Maybe Text)
sdAccessToken
  = lens _sdAccessToken
      (\ s a -> s{_sdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdUploadType :: Lens' ServicesDelete (Maybe Text)
sdUploadType
  = lens _sdUploadType (\ s a -> s{_sdUploadType = a})

-- | Required. Resource name of the Service to delete. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/services\/[SERVICE_ID]
sdName :: Lens' ServicesDelete Text
sdName = lens _sdName (\ s a -> s{_sdName = a})

-- | JSONP
sdCallback :: Lens' ServicesDelete (Maybe Text)
sdCallback
  = lens _sdCallback (\ s a -> s{_sdCallback = a})

instance GoogleRequest ServicesDelete where
        type Rs ServicesDelete = Empty
        type Scopes ServicesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ServicesDelete'{..}
          = go _sdName _sdXgafv _sdUploadProtocol
              _sdAccessToken
              _sdUploadType
              _sdCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient (Proxy :: Proxy ServicesDeleteResource)
                      mempty

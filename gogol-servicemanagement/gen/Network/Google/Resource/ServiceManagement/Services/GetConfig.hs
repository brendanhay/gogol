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
-- Module      : Network.Google.Resource.ServiceManagement.Services.GetConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a service configuration (version) for a managed service.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.getConfig@.
module Network.Google.Resource.ServiceManagement.Services.GetConfig
    (
    -- * REST Resource
      ServicesGetConfigResource

    -- * Creating a Request
    , servicesGetConfig
    , ServicesGetConfig

    -- * Request Lenses
    , sgcXgafv
    , sgcUploadProtocol
    , sgcPp
    , sgcAccessToken
    , sgcUploadType
    , sgcBearerToken
    , sgcConfigId
    , sgcServiceName
    , sgcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.getConfig@ method which the
-- 'ServicesGetConfig' request conforms to.
type ServicesGetConfigResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "config" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "configId" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Service

-- | Gets a service configuration (version) for a managed service.
--
-- /See:/ 'servicesGetConfig' smart constructor.
data ServicesGetConfig = ServicesGetConfig'
    { _sgcXgafv          :: !(Maybe Xgafv)
    , _sgcUploadProtocol :: !(Maybe Text)
    , _sgcPp             :: !Bool
    , _sgcAccessToken    :: !(Maybe Text)
    , _sgcUploadType     :: !(Maybe Text)
    , _sgcBearerToken    :: !(Maybe Text)
    , _sgcConfigId       :: !(Maybe Text)
    , _sgcServiceName    :: !Text
    , _sgcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesGetConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgcXgafv'
--
-- * 'sgcUploadProtocol'
--
-- * 'sgcPp'
--
-- * 'sgcAccessToken'
--
-- * 'sgcUploadType'
--
-- * 'sgcBearerToken'
--
-- * 'sgcConfigId'
--
-- * 'sgcServiceName'
--
-- * 'sgcCallback'
servicesGetConfig
    :: Text -- ^ 'sgcServiceName'
    -> ServicesGetConfig
servicesGetConfig pSgcServiceName_ =
    ServicesGetConfig'
    { _sgcXgafv = Nothing
    , _sgcUploadProtocol = Nothing
    , _sgcPp = True
    , _sgcAccessToken = Nothing
    , _sgcUploadType = Nothing
    , _sgcBearerToken = Nothing
    , _sgcConfigId = Nothing
    , _sgcServiceName = pSgcServiceName_
    , _sgcCallback = Nothing
    }

-- | V1 error format.
sgcXgafv :: Lens' ServicesGetConfig (Maybe Xgafv)
sgcXgafv = lens _sgcXgafv (\ s a -> s{_sgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgcUploadProtocol :: Lens' ServicesGetConfig (Maybe Text)
sgcUploadProtocol
  = lens _sgcUploadProtocol
      (\ s a -> s{_sgcUploadProtocol = a})

-- | Pretty-print response.
sgcPp :: Lens' ServicesGetConfig Bool
sgcPp = lens _sgcPp (\ s a -> s{_sgcPp = a})

-- | OAuth access token.
sgcAccessToken :: Lens' ServicesGetConfig (Maybe Text)
sgcAccessToken
  = lens _sgcAccessToken
      (\ s a -> s{_sgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgcUploadType :: Lens' ServicesGetConfig (Maybe Text)
sgcUploadType
  = lens _sgcUploadType
      (\ s a -> s{_sgcUploadType = a})

-- | OAuth bearer token.
sgcBearerToken :: Lens' ServicesGetConfig (Maybe Text)
sgcBearerToken
  = lens _sgcBearerToken
      (\ s a -> s{_sgcBearerToken = a})

-- | The id of the service configuration resource.
sgcConfigId :: Lens' ServicesGetConfig (Maybe Text)
sgcConfigId
  = lens _sgcConfigId (\ s a -> s{_sgcConfigId = a})

-- | The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
sgcServiceName :: Lens' ServicesGetConfig Text
sgcServiceName
  = lens _sgcServiceName
      (\ s a -> s{_sgcServiceName = a})

-- | JSONP
sgcCallback :: Lens' ServicesGetConfig (Maybe Text)
sgcCallback
  = lens _sgcCallback (\ s a -> s{_sgcCallback = a})

instance GoogleRequest ServicesGetConfig where
        type Rs ServicesGetConfig = Service
        type Scopes ServicesGetConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient ServicesGetConfig'{..}
          = go _sgcServiceName _sgcXgafv _sgcUploadProtocol
              (Just _sgcPp)
              _sgcAccessToken
              _sgcUploadType
              _sgcBearerToken
              _sgcConfigId
              _sgcCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesGetConfigResource)
                      mempty

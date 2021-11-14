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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a service configuration (version) for a managed service.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.getConfig@.
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
    , sgcAccessToken
    , sgcUploadType
    , sgcConfigId
    , sgcServiceName
    , sgcView
    , sgcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.getConfig@ method which the
-- 'ServicesGetConfig' request conforms to.
type ServicesGetConfigResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "config" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "configId" Text :>
                       QueryParam "view" ServicesGetConfigView :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Service

-- | Gets a service configuration (version) for a managed service.
--
-- /See:/ 'servicesGetConfig' smart constructor.
data ServicesGetConfig =
  ServicesGetConfig'
    { _sgcXgafv :: !(Maybe Xgafv)
    , _sgcUploadProtocol :: !(Maybe Text)
    , _sgcAccessToken :: !(Maybe Text)
    , _sgcUploadType :: !(Maybe Text)
    , _sgcConfigId :: !(Maybe Text)
    , _sgcServiceName :: !Text
    , _sgcView :: !(Maybe ServicesGetConfigView)
    , _sgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesGetConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgcXgafv'
--
-- * 'sgcUploadProtocol'
--
-- * 'sgcAccessToken'
--
-- * 'sgcUploadType'
--
-- * 'sgcConfigId'
--
-- * 'sgcServiceName'
--
-- * 'sgcView'
--
-- * 'sgcCallback'
servicesGetConfig
    :: Text -- ^ 'sgcServiceName'
    -> ServicesGetConfig
servicesGetConfig pSgcServiceName_ =
  ServicesGetConfig'
    { _sgcXgafv = Nothing
    , _sgcUploadProtocol = Nothing
    , _sgcAccessToken = Nothing
    , _sgcUploadType = Nothing
    , _sgcConfigId = Nothing
    , _sgcServiceName = pSgcServiceName_
    , _sgcView = Nothing
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

-- | Required. The id of the service configuration resource. This field must
-- be specified for the server to return all fields, including
-- \`SourceInfo\`.
sgcConfigId :: Lens' ServicesGetConfig (Maybe Text)
sgcConfigId
  = lens _sgcConfigId (\ s a -> s{_sgcConfigId = a})

-- | Required. The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
sgcServiceName :: Lens' ServicesGetConfig Text
sgcServiceName
  = lens _sgcServiceName
      (\ s a -> s{_sgcServiceName = a})

-- | Specifies which parts of the Service Config should be returned in the
-- response.
sgcView :: Lens' ServicesGetConfig (Maybe ServicesGetConfigView)
sgcView = lens _sgcView (\ s a -> s{_sgcView = a})

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
              _sgcAccessToken
              _sgcUploadType
              _sgcConfigId
              _sgcView
              _sgcCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesGetConfigResource)
                      mempty

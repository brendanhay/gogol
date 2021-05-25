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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Configs.Submit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new service configuration (version) for a managed service
-- based on user-supplied configuration source files (for example: OpenAPI
-- Specification). This method stores the source configurations as well as
-- the generated service configuration. To rollout the service
-- configuration to other services, please call CreateServiceRollout. Only
-- the 100 most recent configuration sources and ones referenced by
-- existing service configurtions are kept for each service. The rest will
-- be deleted eventually. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.configs.submit@.
module Network.Google.Resource.ServiceManagement.Services.Configs.Submit
    (
    -- * REST Resource
      ServicesConfigsSubmitResource

    -- * Creating a Request
    , servicesConfigsSubmit
    , ServicesConfigsSubmit

    -- * Request Lenses
    , scsXgafv
    , scsUploadProtocol
    , scsAccessToken
    , scsUploadType
    , scsPayload
    , scsServiceName
    , scsCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.configs.submit@ method which the
-- 'ServicesConfigsSubmit' request conforms to.
type ServicesConfigsSubmitResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "configs:submit" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SubmitConfigSourceRequest :>
                           Post '[JSON] Operation

-- | Creates a new service configuration (version) for a managed service
-- based on user-supplied configuration source files (for example: OpenAPI
-- Specification). This method stores the source configurations as well as
-- the generated service configuration. To rollout the service
-- configuration to other services, please call CreateServiceRollout. Only
-- the 100 most recent configuration sources and ones referenced by
-- existing service configurtions are kept for each service. The rest will
-- be deleted eventually. Operation
--
-- /See:/ 'servicesConfigsSubmit' smart constructor.
data ServicesConfigsSubmit =
  ServicesConfigsSubmit'
    { _scsXgafv :: !(Maybe Xgafv)
    , _scsUploadProtocol :: !(Maybe Text)
    , _scsAccessToken :: !(Maybe Text)
    , _scsUploadType :: !(Maybe Text)
    , _scsPayload :: !SubmitConfigSourceRequest
    , _scsServiceName :: !Text
    , _scsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesConfigsSubmit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsXgafv'
--
-- * 'scsUploadProtocol'
--
-- * 'scsAccessToken'
--
-- * 'scsUploadType'
--
-- * 'scsPayload'
--
-- * 'scsServiceName'
--
-- * 'scsCallback'
servicesConfigsSubmit
    :: SubmitConfigSourceRequest -- ^ 'scsPayload'
    -> Text -- ^ 'scsServiceName'
    -> ServicesConfigsSubmit
servicesConfigsSubmit pScsPayload_ pScsServiceName_ =
  ServicesConfigsSubmit'
    { _scsXgafv = Nothing
    , _scsUploadProtocol = Nothing
    , _scsAccessToken = Nothing
    , _scsUploadType = Nothing
    , _scsPayload = pScsPayload_
    , _scsServiceName = pScsServiceName_
    , _scsCallback = Nothing
    }


-- | V1 error format.
scsXgafv :: Lens' ServicesConfigsSubmit (Maybe Xgafv)
scsXgafv = lens _scsXgafv (\ s a -> s{_scsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scsUploadProtocol :: Lens' ServicesConfigsSubmit (Maybe Text)
scsUploadProtocol
  = lens _scsUploadProtocol
      (\ s a -> s{_scsUploadProtocol = a})

-- | OAuth access token.
scsAccessToken :: Lens' ServicesConfigsSubmit (Maybe Text)
scsAccessToken
  = lens _scsAccessToken
      (\ s a -> s{_scsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scsUploadType :: Lens' ServicesConfigsSubmit (Maybe Text)
scsUploadType
  = lens _scsUploadType
      (\ s a -> s{_scsUploadType = a})

-- | Multipart request metadata.
scsPayload :: Lens' ServicesConfigsSubmit SubmitConfigSourceRequest
scsPayload
  = lens _scsPayload (\ s a -> s{_scsPayload = a})

-- | Required. The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
scsServiceName :: Lens' ServicesConfigsSubmit Text
scsServiceName
  = lens _scsServiceName
      (\ s a -> s{_scsServiceName = a})

-- | JSONP
scsCallback :: Lens' ServicesConfigsSubmit (Maybe Text)
scsCallback
  = lens _scsCallback (\ s a -> s{_scsCallback = a})

instance GoogleRequest ServicesConfigsSubmit where
        type Rs ServicesConfigsSubmit = Operation
        type Scopes ServicesConfigsSubmit =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesConfigsSubmit'{..}
          = go _scsServiceName _scsXgafv _scsUploadProtocol
              _scsAccessToken
              _scsUploadType
              _scsCallback
              (Just AltJSON)
              _scsPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesConfigsSubmitResource)
                      mempty

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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Configs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new service configuration (version) for a managed service.
-- This method only stores the service configuration. To roll out the
-- service configuration to backend systems please call
-- CreateServiceRollout.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.configs.create@.
module Network.Google.Resource.ServiceManagement.Services.Configs.Create
    (
    -- * REST Resource
      ServicesConfigsCreateResource

    -- * Creating a Request
    , servicesConfigsCreate
    , ServicesConfigsCreate

    -- * Request Lenses
    , sccXgafv
    , sccUploadProtocol
    , sccPp
    , sccAccessToken
    , sccUploadType
    , sccPayload
    , sccBearerToken
    , sccServiceName
    , sccCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.configs.create@ method which the
-- 'ServicesConfigsCreate' request conforms to.
type ServicesConfigsCreateResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "configs" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Service :> Post '[JSON] Service

-- | Creates a new service configuration (version) for a managed service.
-- This method only stores the service configuration. To roll out the
-- service configuration to backend systems please call
-- CreateServiceRollout.
--
-- /See:/ 'servicesConfigsCreate' smart constructor.
data ServicesConfigsCreate = ServicesConfigsCreate'
    { _sccXgafv          :: !(Maybe Xgafv)
    , _sccUploadProtocol :: !(Maybe Text)
    , _sccPp             :: !Bool
    , _sccAccessToken    :: !(Maybe Text)
    , _sccUploadType     :: !(Maybe Text)
    , _sccPayload        :: !Service
    , _sccBearerToken    :: !(Maybe Text)
    , _sccServiceName    :: !Text
    , _sccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesConfigsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sccXgafv'
--
-- * 'sccUploadProtocol'
--
-- * 'sccPp'
--
-- * 'sccAccessToken'
--
-- * 'sccUploadType'
--
-- * 'sccPayload'
--
-- * 'sccBearerToken'
--
-- * 'sccServiceName'
--
-- * 'sccCallback'
servicesConfigsCreate
    :: Service -- ^ 'sccPayload'
    -> Text -- ^ 'sccServiceName'
    -> ServicesConfigsCreate
servicesConfigsCreate pSccPayload_ pSccServiceName_ =
    ServicesConfigsCreate'
    { _sccXgafv = Nothing
    , _sccUploadProtocol = Nothing
    , _sccPp = True
    , _sccAccessToken = Nothing
    , _sccUploadType = Nothing
    , _sccPayload = pSccPayload_
    , _sccBearerToken = Nothing
    , _sccServiceName = pSccServiceName_
    , _sccCallback = Nothing
    }

-- | V1 error format.
sccXgafv :: Lens' ServicesConfigsCreate (Maybe Xgafv)
sccXgafv = lens _sccXgafv (\ s a -> s{_sccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sccUploadProtocol :: Lens' ServicesConfigsCreate (Maybe Text)
sccUploadProtocol
  = lens _sccUploadProtocol
      (\ s a -> s{_sccUploadProtocol = a})

-- | Pretty-print response.
sccPp :: Lens' ServicesConfigsCreate Bool
sccPp = lens _sccPp (\ s a -> s{_sccPp = a})

-- | OAuth access token.
sccAccessToken :: Lens' ServicesConfigsCreate (Maybe Text)
sccAccessToken
  = lens _sccAccessToken
      (\ s a -> s{_sccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sccUploadType :: Lens' ServicesConfigsCreate (Maybe Text)
sccUploadType
  = lens _sccUploadType
      (\ s a -> s{_sccUploadType = a})

-- | Multipart request metadata.
sccPayload :: Lens' ServicesConfigsCreate Service
sccPayload
  = lens _sccPayload (\ s a -> s{_sccPayload = a})

-- | OAuth bearer token.
sccBearerToken :: Lens' ServicesConfigsCreate (Maybe Text)
sccBearerToken
  = lens _sccBearerToken
      (\ s a -> s{_sccBearerToken = a})

-- | The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
sccServiceName :: Lens' ServicesConfigsCreate Text
sccServiceName
  = lens _sccServiceName
      (\ s a -> s{_sccServiceName = a})

-- | JSONP
sccCallback :: Lens' ServicesConfigsCreate (Maybe Text)
sccCallback
  = lens _sccCallback (\ s a -> s{_sccCallback = a})

instance GoogleRequest ServicesConfigsCreate where
        type Rs ServicesConfigsCreate = Service
        type Scopes ServicesConfigsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesConfigsCreate'{..}
          = go _sccServiceName _sccXgafv _sccUploadProtocol
              (Just _sccPp)
              _sccAccessToken
              _sccUploadType
              _sccBearerToken
              _sccCallback
              (Just AltJSON)
              _sccPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesConfigsCreateResource)
                      mempty

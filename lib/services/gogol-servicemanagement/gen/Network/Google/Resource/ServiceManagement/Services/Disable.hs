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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Disable
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables a service for a project, so it can no longer be be used for the
-- project. It prevents accidental usage that may cause unexpected billing
-- charges or security leaks. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.disable@.
module Network.Google.Resource.ServiceManagement.Services.Disable
    (
    -- * REST Resource
      ServicesDisableResource

    -- * Creating a Request
    , servicesDisable
    , ServicesDisable

    -- * Request Lenses
    , sXgafv
    , sUploadProtocol
    , sAccessToken
    , sUploadType
    , sPayload
    , sServiceName
    , sCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.disable@ method which the
-- 'ServicesDisable' request conforms to.
type ServicesDisableResource =
     "v1" :>
       "services" :>
         CaptureMode "serviceName" "disable" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DisableServiceRequest :>
                         Post '[JSON] Operation

-- | Disables a service for a project, so it can no longer be be used for the
-- project. It prevents accidental usage that may cause unexpected billing
-- charges or security leaks. Operation
--
-- /See:/ 'servicesDisable' smart constructor.
data ServicesDisable =
  ServicesDisable'
    { _sXgafv          :: !(Maybe Xgafv)
    , _sUploadProtocol :: !(Maybe Text)
    , _sAccessToken    :: !(Maybe Text)
    , _sUploadType     :: !(Maybe Text)
    , _sPayload        :: !DisableServiceRequest
    , _sServiceName    :: !Text
    , _sCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDisable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sXgafv'
--
-- * 'sUploadProtocol'
--
-- * 'sAccessToken'
--
-- * 'sUploadType'
--
-- * 'sPayload'
--
-- * 'sServiceName'
--
-- * 'sCallback'
servicesDisable
    :: DisableServiceRequest -- ^ 'sPayload'
    -> Text -- ^ 'sServiceName'
    -> ServicesDisable
servicesDisable pSPayload_ pSServiceName_ =
  ServicesDisable'
    { _sXgafv = Nothing
    , _sUploadProtocol = Nothing
    , _sAccessToken = Nothing
    , _sUploadType = Nothing
    , _sPayload = pSPayload_
    , _sServiceName = pSServiceName_
    , _sCallback = Nothing
    }


-- | V1 error format.
sXgafv :: Lens' ServicesDisable (Maybe Xgafv)
sXgafv = lens _sXgafv (\ s a -> s{_sXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sUploadProtocol :: Lens' ServicesDisable (Maybe Text)
sUploadProtocol
  = lens _sUploadProtocol
      (\ s a -> s{_sUploadProtocol = a})

-- | OAuth access token.
sAccessToken :: Lens' ServicesDisable (Maybe Text)
sAccessToken
  = lens _sAccessToken (\ s a -> s{_sAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sUploadType :: Lens' ServicesDisable (Maybe Text)
sUploadType
  = lens _sUploadType (\ s a -> s{_sUploadType = a})

-- | Multipart request metadata.
sPayload :: Lens' ServicesDisable DisableServiceRequest
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

-- | Name of the service to disable. Specifying an unknown service name will
-- cause the request to fail.
sServiceName :: Lens' ServicesDisable Text
sServiceName
  = lens _sServiceName (\ s a -> s{_sServiceName = a})

-- | JSONP
sCallback :: Lens' ServicesDisable (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest ServicesDisable where
        type Rs ServicesDisable = Operation
        type Scopes ServicesDisable =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDisable'{..}
          = go _sServiceName _sXgafv _sUploadProtocol
              _sAccessToken
              _sUploadType
              _sCallback
              (Just AltJSON)
              _sPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesDisableResource)
                      mempty

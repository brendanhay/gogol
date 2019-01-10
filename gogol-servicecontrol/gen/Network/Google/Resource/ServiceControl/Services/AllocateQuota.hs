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
-- Module      : Network.Google.Resource.ServiceControl.Services.AllocateQuota
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to allocate quota for the specified consumer. It should be
-- called before the operation is executed. This method requires the
-- \`servicemanagement.services.quota\` permission on the specified
-- service. For more information, see [Cloud
-- IAM](https:\/\/cloud.google.com\/iam). **NOTE:** The client **must**
-- fail-open on server errors \`INTERNAL\`, \`UNKNOWN\`,
-- \`DEADLINE_EXCEEDED\`, and \`UNAVAILABLE\`. To ensure system
-- reliability, the server may inject these errors to prohibit any hard
-- dependency on the quota functionality.
--
-- /See:/ <https://cloud.google.com/service-control/ Service Control API Reference> for @servicecontrol.services.allocateQuota@.
module Network.Google.Resource.ServiceControl.Services.AllocateQuota
    (
    -- * REST Resource
      ServicesAllocateQuotaResource

    -- * Creating a Request
    , servicesAllocateQuota
    , ServicesAllocateQuota

    -- * Request Lenses
    , saqXgafv
    , saqUploadProtocol
    , saqAccessToken
    , saqUploadType
    , saqPayload
    , saqServiceName
    , saqCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceControl.Types

-- | A resource alias for @servicecontrol.services.allocateQuota@ method which the
-- 'ServicesAllocateQuota' request conforms to.
type ServicesAllocateQuotaResource =
     "v1" :>
       "services" :>
         CaptureMode "serviceName" "allocateQuota" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AllocateQuotaRequest :>
                         Post '[JSON] AllocateQuotaResponse

-- | Attempts to allocate quota for the specified consumer. It should be
-- called before the operation is executed. This method requires the
-- \`servicemanagement.services.quota\` permission on the specified
-- service. For more information, see [Cloud
-- IAM](https:\/\/cloud.google.com\/iam). **NOTE:** The client **must**
-- fail-open on server errors \`INTERNAL\`, \`UNKNOWN\`,
-- \`DEADLINE_EXCEEDED\`, and \`UNAVAILABLE\`. To ensure system
-- reliability, the server may inject these errors to prohibit any hard
-- dependency on the quota functionality.
--
-- /See:/ 'servicesAllocateQuota' smart constructor.
data ServicesAllocateQuota = ServicesAllocateQuota'
    { _saqXgafv          :: !(Maybe Xgafv)
    , _saqUploadProtocol :: !(Maybe Text)
    , _saqAccessToken    :: !(Maybe Text)
    , _saqUploadType     :: !(Maybe Text)
    , _saqPayload        :: !AllocateQuotaRequest
    , _saqServiceName    :: !Text
    , _saqCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesAllocateQuota' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saqXgafv'
--
-- * 'saqUploadProtocol'
--
-- * 'saqAccessToken'
--
-- * 'saqUploadType'
--
-- * 'saqPayload'
--
-- * 'saqServiceName'
--
-- * 'saqCallback'
servicesAllocateQuota
    :: AllocateQuotaRequest -- ^ 'saqPayload'
    -> Text -- ^ 'saqServiceName'
    -> ServicesAllocateQuota
servicesAllocateQuota pSaqPayload_ pSaqServiceName_ =
    ServicesAllocateQuota'
    { _saqXgafv = Nothing
    , _saqUploadProtocol = Nothing
    , _saqAccessToken = Nothing
    , _saqUploadType = Nothing
    , _saqPayload = pSaqPayload_
    , _saqServiceName = pSaqServiceName_
    , _saqCallback = Nothing
    }

-- | V1 error format.
saqXgafv :: Lens' ServicesAllocateQuota (Maybe Xgafv)
saqXgafv = lens _saqXgafv (\ s a -> s{_saqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
saqUploadProtocol :: Lens' ServicesAllocateQuota (Maybe Text)
saqUploadProtocol
  = lens _saqUploadProtocol
      (\ s a -> s{_saqUploadProtocol = a})

-- | OAuth access token.
saqAccessToken :: Lens' ServicesAllocateQuota (Maybe Text)
saqAccessToken
  = lens _saqAccessToken
      (\ s a -> s{_saqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
saqUploadType :: Lens' ServicesAllocateQuota (Maybe Text)
saqUploadType
  = lens _saqUploadType
      (\ s a -> s{_saqUploadType = a})

-- | Multipart request metadata.
saqPayload :: Lens' ServicesAllocateQuota AllocateQuotaRequest
saqPayload
  = lens _saqPayload (\ s a -> s{_saqPayload = a})

-- | Name of the service as specified in the service configuration. For
-- example, \`\"pubsub.googleapis.com\"\`. See google.api.Service for the
-- definition of a service name.
saqServiceName :: Lens' ServicesAllocateQuota Text
saqServiceName
  = lens _saqServiceName
      (\ s a -> s{_saqServiceName = a})

-- | JSONP
saqCallback :: Lens' ServicesAllocateQuota (Maybe Text)
saqCallback
  = lens _saqCallback (\ s a -> s{_saqCallback = a})

instance GoogleRequest ServicesAllocateQuota where
        type Rs ServicesAllocateQuota = AllocateQuotaResponse
        type Scopes ServicesAllocateQuota =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/servicecontrol"]
        requestClient ServicesAllocateQuota'{..}
          = go _saqServiceName _saqXgafv _saqUploadProtocol
              _saqAccessToken
              _saqUploadType
              _saqCallback
              (Just AltJSON)
              _saqPayload
              serviceControlService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesAllocateQuotaResource)
                      mempty

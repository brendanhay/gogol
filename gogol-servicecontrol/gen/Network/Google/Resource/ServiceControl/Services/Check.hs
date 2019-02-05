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
-- Module      : Network.Google.Resource.ServiceControl.Services.Check
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether an operation on a service should be allowed to proceed
-- based on the configuration of the service and related policies. It must
-- be called before the operation is executed. If feasible, the client
-- should cache the check results and reuse them for 60 seconds. In case of
-- any server errors, the client should rely on the cached results for much
-- longer time to avoid outage. WARNING: There is general 60s delay for the
-- configuration and policy propagation, therefore callers MUST NOT depend
-- on the \`Check\` method having the latest policy information. NOTE: the
-- CheckRequest has the size limit of 64KB. This method requires the
-- \`servicemanagement.services.check\` permission on the specified
-- service. For more information, see [Cloud
-- IAM](https:\/\/cloud.google.com\/iam).
--
-- /See:/ <https://cloud.google.com/service-control/ Service Control API Reference> for @servicecontrol.services.check@.
module Network.Google.Resource.ServiceControl.Services.Check
    (
    -- * REST Resource
      ServicesCheckResource

    -- * Creating a Request
    , servicesCheck
    , ServicesCheck

    -- * Request Lenses
    , scXgafv
    , scUploadProtocol
    , scAccessToken
    , scUploadType
    , scPayload
    , scServiceName
    , scCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceControl.Types

-- | A resource alias for @servicecontrol.services.check@ method which the
-- 'ServicesCheck' request conforms to.
type ServicesCheckResource =
     "v1" :>
       "services" :>
         CaptureMode "serviceName" "check" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CheckRequest :>
                         Post '[JSON] CheckResponse

-- | Checks whether an operation on a service should be allowed to proceed
-- based on the configuration of the service and related policies. It must
-- be called before the operation is executed. If feasible, the client
-- should cache the check results and reuse them for 60 seconds. In case of
-- any server errors, the client should rely on the cached results for much
-- longer time to avoid outage. WARNING: There is general 60s delay for the
-- configuration and policy propagation, therefore callers MUST NOT depend
-- on the \`Check\` method having the latest policy information. NOTE: the
-- CheckRequest has the size limit of 64KB. This method requires the
-- \`servicemanagement.services.check\` permission on the specified
-- service. For more information, see [Cloud
-- IAM](https:\/\/cloud.google.com\/iam).
--
-- /See:/ 'servicesCheck' smart constructor.
data ServicesCheck = ServicesCheck'
    { _scXgafv          :: !(Maybe Xgafv)
    , _scUploadProtocol :: !(Maybe Text)
    , _scAccessToken    :: !(Maybe Text)
    , _scUploadType     :: !(Maybe Text)
    , _scPayload        :: !CheckRequest
    , _scServiceName    :: !Text
    , _scCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scXgafv'
--
-- * 'scUploadProtocol'
--
-- * 'scAccessToken'
--
-- * 'scUploadType'
--
-- * 'scPayload'
--
-- * 'scServiceName'
--
-- * 'scCallback'
servicesCheck
    :: CheckRequest -- ^ 'scPayload'
    -> Text -- ^ 'scServiceName'
    -> ServicesCheck
servicesCheck pScPayload_ pScServiceName_ =
    ServicesCheck'
    { _scXgafv = Nothing
    , _scUploadProtocol = Nothing
    , _scAccessToken = Nothing
    , _scUploadType = Nothing
    , _scPayload = pScPayload_
    , _scServiceName = pScServiceName_
    , _scCallback = Nothing
    }

-- | V1 error format.
scXgafv :: Lens' ServicesCheck (Maybe Xgafv)
scXgafv = lens _scXgafv (\ s a -> s{_scXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scUploadProtocol :: Lens' ServicesCheck (Maybe Text)
scUploadProtocol
  = lens _scUploadProtocol
      (\ s a -> s{_scUploadProtocol = a})

-- | OAuth access token.
scAccessToken :: Lens' ServicesCheck (Maybe Text)
scAccessToken
  = lens _scAccessToken
      (\ s a -> s{_scAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scUploadType :: Lens' ServicesCheck (Maybe Text)
scUploadType
  = lens _scUploadType (\ s a -> s{_scUploadType = a})

-- | Multipart request metadata.
scPayload :: Lens' ServicesCheck CheckRequest
scPayload
  = lens _scPayload (\ s a -> s{_scPayload = a})

-- | The service name as specified in its service configuration. For example,
-- \`\"pubsub.googleapis.com\"\`. See
-- [google.api.Service](https:\/\/cloud.google.com\/service-management\/reference\/rpc\/google.api#google.api.Service)
-- for the definition of a service name.
scServiceName :: Lens' ServicesCheck Text
scServiceName
  = lens _scServiceName
      (\ s a -> s{_scServiceName = a})

-- | JSONP
scCallback :: Lens' ServicesCheck (Maybe Text)
scCallback
  = lens _scCallback (\ s a -> s{_scCallback = a})

instance GoogleRequest ServicesCheck where
        type Rs ServicesCheck = CheckResponse
        type Scopes ServicesCheck =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/servicecontrol"]
        requestClient ServicesCheck'{..}
          = go _scServiceName _scXgafv _scUploadProtocol
              _scAccessToken
              _scUploadType
              _scCallback
              (Just AltJSON)
              _scPayload
              serviceControlService
          where go
                  = buildClient (Proxy :: Proxy ServicesCheckResource)
                      mempty

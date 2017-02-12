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
-- Module      : Network.Google.Resource.ServiceControl.Services.Report
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports operation results to Google Service Control, such as logs and
-- metrics. It should be called after an operation is completed. If
-- feasible, the client should aggregate reporting data for up to 5 seconds
-- to reduce API traffic. Limiting aggregation to 5 seconds is to reduce
-- data loss during client crashes. Clients should carefully choose the
-- aggregation time window to avoid data loss risk more than 0.01% for
-- business and compliance reasons. NOTE: the \`ReportRequest\` has the
-- size limit of 1MB. This method requires the
-- \`servicemanagement.services.report\` permission on the specified
-- service. For more information, see [Google Cloud
-- IAM](https:\/\/cloud.google.com\/iam).
--
-- /See:/ <https://cloud.google.com/service-control/ Google Service Control API Reference> for @servicecontrol.services.report@.
module Network.Google.Resource.ServiceControl.Services.Report
    (
    -- * REST Resource
      ServicesReportResource

    -- * Creating a Request
    , servicesReport
    , ServicesReport

    -- * Request Lenses
    , srXgafv
    , srUploadProtocol
    , srPp
    , srAccessToken
    , srUploadType
    , srPayload
    , srBearerToken
    , srServiceName
    , srCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceControl.Types

-- | A resource alias for @servicecontrol.services.report@ method which the
-- 'ServicesReport' request conforms to.
type ServicesReportResource =
     "v1" :>
       "services" :>
         CaptureMode "serviceName" "report" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ReportRequest :>
                             Post '[JSON] ReportResponse

-- | Reports operation results to Google Service Control, such as logs and
-- metrics. It should be called after an operation is completed. If
-- feasible, the client should aggregate reporting data for up to 5 seconds
-- to reduce API traffic. Limiting aggregation to 5 seconds is to reduce
-- data loss during client crashes. Clients should carefully choose the
-- aggregation time window to avoid data loss risk more than 0.01% for
-- business and compliance reasons. NOTE: the \`ReportRequest\` has the
-- size limit of 1MB. This method requires the
-- \`servicemanagement.services.report\` permission on the specified
-- service. For more information, see [Google Cloud
-- IAM](https:\/\/cloud.google.com\/iam).
--
-- /See:/ 'servicesReport' smart constructor.
data ServicesReport = ServicesReport'
    { _srXgafv          :: !(Maybe Xgafv)
    , _srUploadProtocol :: !(Maybe Text)
    , _srPp             :: !Bool
    , _srAccessToken    :: !(Maybe Text)
    , _srUploadType     :: !(Maybe Text)
    , _srPayload        :: !ReportRequest
    , _srBearerToken    :: !(Maybe Text)
    , _srServiceName    :: !Text
    , _srCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srXgafv'
--
-- * 'srUploadProtocol'
--
-- * 'srPp'
--
-- * 'srAccessToken'
--
-- * 'srUploadType'
--
-- * 'srPayload'
--
-- * 'srBearerToken'
--
-- * 'srServiceName'
--
-- * 'srCallback'
servicesReport
    :: ReportRequest -- ^ 'srPayload'
    -> Text -- ^ 'srServiceName'
    -> ServicesReport
servicesReport pSrPayload_ pSrServiceName_ =
    ServicesReport'
    { _srXgafv = Nothing
    , _srUploadProtocol = Nothing
    , _srPp = True
    , _srAccessToken = Nothing
    , _srUploadType = Nothing
    , _srPayload = pSrPayload_
    , _srBearerToken = Nothing
    , _srServiceName = pSrServiceName_
    , _srCallback = Nothing
    }

-- | V1 error format.
srXgafv :: Lens' ServicesReport (Maybe Xgafv)
srXgafv = lens _srXgafv (\ s a -> s{_srXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srUploadProtocol :: Lens' ServicesReport (Maybe Text)
srUploadProtocol
  = lens _srUploadProtocol
      (\ s a -> s{_srUploadProtocol = a})

-- | Pretty-print response.
srPp :: Lens' ServicesReport Bool
srPp = lens _srPp (\ s a -> s{_srPp = a})

-- | OAuth access token.
srAccessToken :: Lens' ServicesReport (Maybe Text)
srAccessToken
  = lens _srAccessToken
      (\ s a -> s{_srAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srUploadType :: Lens' ServicesReport (Maybe Text)
srUploadType
  = lens _srUploadType (\ s a -> s{_srUploadType = a})

-- | Multipart request metadata.
srPayload :: Lens' ServicesReport ReportRequest
srPayload
  = lens _srPayload (\ s a -> s{_srPayload = a})

-- | OAuth bearer token.
srBearerToken :: Lens' ServicesReport (Maybe Text)
srBearerToken
  = lens _srBearerToken
      (\ s a -> s{_srBearerToken = a})

-- | The service name as specified in its service configuration. For example,
-- \`\"pubsub.googleapis.com\"\`. See google.api.Service for the definition
-- of a service name.
srServiceName :: Lens' ServicesReport Text
srServiceName
  = lens _srServiceName
      (\ s a -> s{_srServiceName = a})

-- | JSONP
srCallback :: Lens' ServicesReport (Maybe Text)
srCallback
  = lens _srCallback (\ s a -> s{_srCallback = a})

instance GoogleRequest ServicesReport where
        type Rs ServicesReport = ReportResponse
        type Scopes ServicesReport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/servicecontrol"]
        requestClient ServicesReport'{..}
          = go _srServiceName _srXgafv _srUploadProtocol
              (Just _srPp)
              _srAccessToken
              _srUploadType
              _srBearerToken
              _srCallback
              (Just AltJSON)
              _srPayload
              serviceControlService
          where go
                  = buildClient (Proxy :: Proxy ServicesReportResource)
                      mempty

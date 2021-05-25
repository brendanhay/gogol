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
-- Module      : Network.Google.Resource.CloudErrorReporting.Projects.Events.Report
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Report an individual error event and record the event to a log. This
-- endpoint accepts **either** an OAuth token, **or** an [API
-- key](https:\/\/support.google.com\/cloud\/answer\/6158862) for
-- authentication. To use an API key, append it to the URL as the value of
-- a \`key\` parameter. For example: \`POST
-- https:\/\/clouderrorreporting.googleapis.com\/v1beta1\/{projectName}\/events:report?key=123ABC456\`
-- **Note:** [Error Reporting]
-- (https:\/\/cloud.google.com\/error-reporting) is a global service built
-- on Cloud Logging and doesn\'t analyze logs stored in regional log
-- buckets or logs routed to other Google Cloud projects. For more
-- information, see [Using Error Reporting with regionalized logs]
-- (https:\/\/cloud.google.com\/error-reporting\/docs\/regionalization).
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.events.report@.
module Network.Google.Resource.CloudErrorReporting.Projects.Events.Report
    (
    -- * REST Resource
      ProjectsEventsReportResource

    -- * Creating a Request
    , projectsEventsReport
    , ProjectsEventsReport

    -- * Request Lenses
    , perXgafv
    , perUploadProtocol
    , perAccessToken
    , perUploadType
    , perPayload
    , perProjectName
    , perCallback
    ) where

import Network.Google.CloudErrorReporting.Types
import Network.Google.Prelude

-- | A resource alias for @clouderrorreporting.projects.events.report@ method which the
-- 'ProjectsEventsReport' request conforms to.
type ProjectsEventsReportResource =
     "v1beta1" :>
       Capture "projectName" Text :>
         "events:report" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ReportedErrorEvent :>
                         Post '[JSON] ReportErrorEventResponse

-- | Report an individual error event and record the event to a log. This
-- endpoint accepts **either** an OAuth token, **or** an [API
-- key](https:\/\/support.google.com\/cloud\/answer\/6158862) for
-- authentication. To use an API key, append it to the URL as the value of
-- a \`key\` parameter. For example: \`POST
-- https:\/\/clouderrorreporting.googleapis.com\/v1beta1\/{projectName}\/events:report?key=123ABC456\`
-- **Note:** [Error Reporting]
-- (https:\/\/cloud.google.com\/error-reporting) is a global service built
-- on Cloud Logging and doesn\'t analyze logs stored in regional log
-- buckets or logs routed to other Google Cloud projects. For more
-- information, see [Using Error Reporting with regionalized logs]
-- (https:\/\/cloud.google.com\/error-reporting\/docs\/regionalization).
--
-- /See:/ 'projectsEventsReport' smart constructor.
data ProjectsEventsReport =
  ProjectsEventsReport'
    { _perXgafv :: !(Maybe Xgafv)
    , _perUploadProtocol :: !(Maybe Text)
    , _perAccessToken :: !(Maybe Text)
    , _perUploadType :: !(Maybe Text)
    , _perPayload :: !ReportedErrorEvent
    , _perProjectName :: !Text
    , _perCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsEventsReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perXgafv'
--
-- * 'perUploadProtocol'
--
-- * 'perAccessToken'
--
-- * 'perUploadType'
--
-- * 'perPayload'
--
-- * 'perProjectName'
--
-- * 'perCallback'
projectsEventsReport
    :: ReportedErrorEvent -- ^ 'perPayload'
    -> Text -- ^ 'perProjectName'
    -> ProjectsEventsReport
projectsEventsReport pPerPayload_ pPerProjectName_ =
  ProjectsEventsReport'
    { _perXgafv = Nothing
    , _perUploadProtocol = Nothing
    , _perAccessToken = Nothing
    , _perUploadType = Nothing
    , _perPayload = pPerPayload_
    , _perProjectName = pPerProjectName_
    , _perCallback = Nothing
    }


-- | V1 error format.
perXgafv :: Lens' ProjectsEventsReport (Maybe Xgafv)
perXgafv = lens _perXgafv (\ s a -> s{_perXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
perUploadProtocol :: Lens' ProjectsEventsReport (Maybe Text)
perUploadProtocol
  = lens _perUploadProtocol
      (\ s a -> s{_perUploadProtocol = a})

-- | OAuth access token.
perAccessToken :: Lens' ProjectsEventsReport (Maybe Text)
perAccessToken
  = lens _perAccessToken
      (\ s a -> s{_perAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
perUploadType :: Lens' ProjectsEventsReport (Maybe Text)
perUploadType
  = lens _perUploadType
      (\ s a -> s{_perUploadType = a})

-- | Multipart request metadata.
perPayload :: Lens' ProjectsEventsReport ReportedErrorEvent
perPayload
  = lens _perPayload (\ s a -> s{_perPayload = a})

-- | Required. The resource name of the Google Cloud Platform project.
-- Written as \`projects\/{projectId}\`, where \`{projectId}\` is the
-- [Google Cloud Platform project
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158840). Example: \/\/
-- \`projects\/my-project-123\`.
perProjectName :: Lens' ProjectsEventsReport Text
perProjectName
  = lens _perProjectName
      (\ s a -> s{_perProjectName = a})

-- | JSONP
perCallback :: Lens' ProjectsEventsReport (Maybe Text)
perCallback
  = lens _perCallback (\ s a -> s{_perCallback = a})

instance GoogleRequest ProjectsEventsReport where
        type Rs ProjectsEventsReport =
             ReportErrorEventResponse
        type Scopes ProjectsEventsReport =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsEventsReport'{..}
          = go _perProjectName _perXgafv _perUploadProtocol
              _perAccessToken
              _perUploadType
              _perCallback
              (Just AltJSON)
              _perPayload
              cloudErrorReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsEventsReportResource)
                      mempty

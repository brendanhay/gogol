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
-- Module      : Network.Google.Resource.CloudErrorReporting.Projects.Events.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified events.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Stackdriver Error Reporting API Reference> for @clouderrorreporting.projects.events.list@.
module Network.Google.Resource.CloudErrorReporting.Projects.Events.List
    (
    -- * REST Resource
      ProjectsEventsListResource

    -- * Creating a Request
    , projectsEventsList
    , ProjectsEventsList

    -- * Request Lenses
    , pelXgafv
    , pelUploadProtocol
    , pelAccessToken
    , pelUploadType
    , pelProjectName
    , pelGroupId
    , pelPageToken
    , pelPageSize
    , pelServiceFilterService
    , pelServiceFilterResourceType
    , pelCallback
    , pelServiceFilterVersion
    , pelTimeRangePeriod
    ) where

import           Network.Google.CloudErrorReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @clouderrorreporting.projects.events.list@ method which the
-- 'ProjectsEventsList' request conforms to.
type ProjectsEventsListResource =
     "v1beta1" :>
       Capture "projectName" Text :>
         "events" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "groupId" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "serviceFilter.service" Text :>
                           QueryParam "serviceFilter.resourceType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "serviceFilter.version" Text :>
                                 QueryParam "timeRange.period" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListEventsResponse

-- | Lists the specified events.
--
-- /See:/ 'projectsEventsList' smart constructor.
data ProjectsEventsList =
  ProjectsEventsList'
    { _pelXgafv                     :: !(Maybe Xgafv)
    , _pelUploadProtocol            :: !(Maybe Text)
    , _pelAccessToken               :: !(Maybe Text)
    , _pelUploadType                :: !(Maybe Text)
    , _pelProjectName               :: !Text
    , _pelGroupId                   :: !(Maybe Text)
    , _pelPageToken                 :: !(Maybe Text)
    , _pelPageSize                  :: !(Maybe (Textual Int32))
    , _pelServiceFilterService      :: !(Maybe Text)
    , _pelServiceFilterResourceType :: !(Maybe Text)
    , _pelCallback                  :: !(Maybe Text)
    , _pelServiceFilterVersion      :: !(Maybe Text)
    , _pelTimeRangePeriod           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsEventsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pelXgafv'
--
-- * 'pelUploadProtocol'
--
-- * 'pelAccessToken'
--
-- * 'pelUploadType'
--
-- * 'pelProjectName'
--
-- * 'pelGroupId'
--
-- * 'pelPageToken'
--
-- * 'pelPageSize'
--
-- * 'pelServiceFilterService'
--
-- * 'pelServiceFilterResourceType'
--
-- * 'pelCallback'
--
-- * 'pelServiceFilterVersion'
--
-- * 'pelTimeRangePeriod'
projectsEventsList
    :: Text -- ^ 'pelProjectName'
    -> ProjectsEventsList
projectsEventsList pPelProjectName_ =
  ProjectsEventsList'
    { _pelXgafv = Nothing
    , _pelUploadProtocol = Nothing
    , _pelAccessToken = Nothing
    , _pelUploadType = Nothing
    , _pelProjectName = pPelProjectName_
    , _pelGroupId = Nothing
    , _pelPageToken = Nothing
    , _pelPageSize = Nothing
    , _pelServiceFilterService = Nothing
    , _pelServiceFilterResourceType = Nothing
    , _pelCallback = Nothing
    , _pelServiceFilterVersion = Nothing
    , _pelTimeRangePeriod = Nothing
    }


-- | V1 error format.
pelXgafv :: Lens' ProjectsEventsList (Maybe Xgafv)
pelXgafv = lens _pelXgafv (\ s a -> s{_pelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pelUploadProtocol :: Lens' ProjectsEventsList (Maybe Text)
pelUploadProtocol
  = lens _pelUploadProtocol
      (\ s a -> s{_pelUploadProtocol = a})

-- | OAuth access token.
pelAccessToken :: Lens' ProjectsEventsList (Maybe Text)
pelAccessToken
  = lens _pelAccessToken
      (\ s a -> s{_pelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pelUploadType :: Lens' ProjectsEventsList (Maybe Text)
pelUploadType
  = lens _pelUploadType
      (\ s a -> s{_pelUploadType = a})

-- | [Required] The resource name of the Google Cloud Platform project.
-- Written as \`projects\/\` plus the [Google Cloud Platform project
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158840). Example:
-- \`projects\/my-project-123\`.
pelProjectName :: Lens' ProjectsEventsList Text
pelProjectName
  = lens _pelProjectName
      (\ s a -> s{_pelProjectName = a})

-- | [Required] The group for which events shall be returned.
pelGroupId :: Lens' ProjectsEventsList (Maybe Text)
pelGroupId
  = lens _pelGroupId (\ s a -> s{_pelGroupId = a})

-- | [Optional] A \`next_page_token\` provided by a previous response.
pelPageToken :: Lens' ProjectsEventsList (Maybe Text)
pelPageToken
  = lens _pelPageToken (\ s a -> s{_pelPageToken = a})

-- | [Optional] The maximum number of results to return per response.
pelPageSize :: Lens' ProjectsEventsList (Maybe Int32)
pelPageSize
  = lens _pelPageSize (\ s a -> s{_pelPageSize = a}) .
      mapping _Coerce

-- | [Optional] The exact value to match against
-- [\`ServiceContext.service\`](\/error-reporting\/reference\/rest\/v1beta1\/ServiceContext#FIELDS.service).
pelServiceFilterService :: Lens' ProjectsEventsList (Maybe Text)
pelServiceFilterService
  = lens _pelServiceFilterService
      (\ s a -> s{_pelServiceFilterService = a})

-- | [Optional] The exact value to match against
-- [\`ServiceContext.resource_type\`](\/error-reporting\/reference\/rest\/v1beta1\/ServiceContext#FIELDS.resource_type).
pelServiceFilterResourceType :: Lens' ProjectsEventsList (Maybe Text)
pelServiceFilterResourceType
  = lens _pelServiceFilterResourceType
      (\ s a -> s{_pelServiceFilterResourceType = a})

-- | JSONP
pelCallback :: Lens' ProjectsEventsList (Maybe Text)
pelCallback
  = lens _pelCallback (\ s a -> s{_pelCallback = a})

-- | [Optional] The exact value to match against
-- [\`ServiceContext.version\`](\/error-reporting\/reference\/rest\/v1beta1\/ServiceContext#FIELDS.version).
pelServiceFilterVersion :: Lens' ProjectsEventsList (Maybe Text)
pelServiceFilterVersion
  = lens _pelServiceFilterVersion
      (\ s a -> s{_pelServiceFilterVersion = a})

-- | Restricts the query to the specified time range.
pelTimeRangePeriod :: Lens' ProjectsEventsList (Maybe Text)
pelTimeRangePeriod
  = lens _pelTimeRangePeriod
      (\ s a -> s{_pelTimeRangePeriod = a})

instance GoogleRequest ProjectsEventsList where
        type Rs ProjectsEventsList = ListEventsResponse
        type Scopes ProjectsEventsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsEventsList'{..}
          = go _pelProjectName _pelXgafv _pelUploadProtocol
              _pelAccessToken
              _pelUploadType
              _pelGroupId
              _pelPageToken
              _pelPageSize
              _pelServiceFilterService
              _pelServiceFilterResourceType
              _pelCallback
              _pelServiceFilterVersion
              _pelTimeRangePeriod
              (Just AltJSON)
              cloudErrorReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsEventsListResource)
                      mempty

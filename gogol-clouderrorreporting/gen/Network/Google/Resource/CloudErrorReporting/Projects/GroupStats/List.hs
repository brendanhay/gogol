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
-- Module      : Network.Google.Resource.CloudErrorReporting.Projects.GroupStats.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified groups.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Stackdriver Error Reporting API Reference> for @clouderrorreporting.projects.groupStats.list@.
module Network.Google.Resource.CloudErrorReporting.Projects.GroupStats.List
    (
    -- * REST Resource
      ProjectsGroupStatsListResource

    -- * Creating a Request
    , projectsGroupStatsList
    , ProjectsGroupStatsList

    -- * Request Lenses
    , pgslXgafv
    , pgslUploadProtocol
    , pgslAccessToken
    , pgslUploadType
    , pgslTimedCountDuration
    , pgslAlignment
    , pgslProjectName
    , pgslGroupId
    , pgslAlignmentTime
    , pgslPageToken
    , pgslPageSize
    , pgslServiceFilterService
    , pgslOrder
    , pgslServiceFilterResourceType
    , pgslCallback
    , pgslServiceFilterVersion
    , pgslTimeRangePeriod
    ) where

import           Network.Google.CloudErrorReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @clouderrorreporting.projects.groupStats.list@ method which the
-- 'ProjectsGroupStatsList' request conforms to.
type ProjectsGroupStatsListResource =
     "v1beta1" :>
       Capture "projectName" Text :>
         "groupStats" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "timedCountDuration" GDuration :>
                     QueryParam "alignment" Text :>
                       QueryParams "groupId" Text :>
                         QueryParam "alignmentTime" DateTime' :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "serviceFilter.service" Text :>
                                 QueryParam "order" Text :>
                                   QueryParam "serviceFilter.resourceType" Text
                                     :>
                                     QueryParam "callback" Text :>
                                       QueryParam "serviceFilter.version" Text
                                         :>
                                         QueryParam "timeRange.period" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] ListGroupStatsResponse

-- | Lists the specified groups.
--
-- /See:/ 'projectsGroupStatsList' smart constructor.
data ProjectsGroupStatsList =
  ProjectsGroupStatsList'
    { _pgslXgafv                     :: !(Maybe Xgafv)
    , _pgslUploadProtocol            :: !(Maybe Text)
    , _pgslAccessToken               :: !(Maybe Text)
    , _pgslUploadType                :: !(Maybe Text)
    , _pgslTimedCountDuration        :: !(Maybe GDuration)
    , _pgslAlignment                 :: !(Maybe Text)
    , _pgslProjectName               :: !Text
    , _pgslGroupId                   :: !(Maybe [Text])
    , _pgslAlignmentTime             :: !(Maybe DateTime')
    , _pgslPageToken                 :: !(Maybe Text)
    , _pgslPageSize                  :: !(Maybe (Textual Int32))
    , _pgslServiceFilterService      :: !(Maybe Text)
    , _pgslOrder                     :: !(Maybe Text)
    , _pgslServiceFilterResourceType :: !(Maybe Text)
    , _pgslCallback                  :: !(Maybe Text)
    , _pgslServiceFilterVersion      :: !(Maybe Text)
    , _pgslTimeRangePeriod           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGroupStatsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgslXgafv'
--
-- * 'pgslUploadProtocol'
--
-- * 'pgslAccessToken'
--
-- * 'pgslUploadType'
--
-- * 'pgslTimedCountDuration'
--
-- * 'pgslAlignment'
--
-- * 'pgslProjectName'
--
-- * 'pgslGroupId'
--
-- * 'pgslAlignmentTime'
--
-- * 'pgslPageToken'
--
-- * 'pgslPageSize'
--
-- * 'pgslServiceFilterService'
--
-- * 'pgslOrder'
--
-- * 'pgslServiceFilterResourceType'
--
-- * 'pgslCallback'
--
-- * 'pgslServiceFilterVersion'
--
-- * 'pgslTimeRangePeriod'
projectsGroupStatsList
    :: Text -- ^ 'pgslProjectName'
    -> ProjectsGroupStatsList
projectsGroupStatsList pPgslProjectName_ =
  ProjectsGroupStatsList'
    { _pgslXgafv = Nothing
    , _pgslUploadProtocol = Nothing
    , _pgslAccessToken = Nothing
    , _pgslUploadType = Nothing
    , _pgslTimedCountDuration = Nothing
    , _pgslAlignment = Nothing
    , _pgslProjectName = pPgslProjectName_
    , _pgslGroupId = Nothing
    , _pgslAlignmentTime = Nothing
    , _pgslPageToken = Nothing
    , _pgslPageSize = Nothing
    , _pgslServiceFilterService = Nothing
    , _pgslOrder = Nothing
    , _pgslServiceFilterResourceType = Nothing
    , _pgslCallback = Nothing
    , _pgslServiceFilterVersion = Nothing
    , _pgslTimeRangePeriod = Nothing
    }


-- | V1 error format.
pgslXgafv :: Lens' ProjectsGroupStatsList (Maybe Xgafv)
pgslXgafv
  = lens _pgslXgafv (\ s a -> s{_pgslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgslUploadProtocol :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslUploadProtocol
  = lens _pgslUploadProtocol
      (\ s a -> s{_pgslUploadProtocol = a})

-- | OAuth access token.
pgslAccessToken :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslAccessToken
  = lens _pgslAccessToken
      (\ s a -> s{_pgslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgslUploadType :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslUploadType
  = lens _pgslUploadType
      (\ s a -> s{_pgslUploadType = a})

-- | [Optional] The preferred duration for a single returned \`TimedCount\`.
-- If not set, no timed counts are returned.
pgslTimedCountDuration :: Lens' ProjectsGroupStatsList (Maybe Scientific)
pgslTimedCountDuration
  = lens _pgslTimedCountDuration
      (\ s a -> s{_pgslTimedCountDuration = a})
      . mapping _GDuration

-- | [Optional] The alignment of the timed counts to be returned. Default is
-- \`ALIGNMENT_EQUAL_AT_END\`.
pgslAlignment :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslAlignment
  = lens _pgslAlignment
      (\ s a -> s{_pgslAlignment = a})

-- | [Required] The resource name of the Google Cloud Platform project.
-- Written as 'projects\/' plus the
-- <https://support.google.com/cloud/answer/6158840 Google Cloud Platform project ID>.
-- Example: 'projects\/my-project-123'.
pgslProjectName :: Lens' ProjectsGroupStatsList Text
pgslProjectName
  = lens _pgslProjectName
      (\ s a -> s{_pgslProjectName = a})

-- | [Optional] List all 'ErrorGroupStats' with these IDs.
pgslGroupId :: Lens' ProjectsGroupStatsList [Text]
pgslGroupId
  = lens _pgslGroupId (\ s a -> s{_pgslGroupId = a}) .
      _Default
      . _Coerce

-- | [Optional] Time where the timed counts shall be aligned if rounded
-- alignment is chosen. Default is 00:00 UTC.
pgslAlignmentTime :: Lens' ProjectsGroupStatsList (Maybe UTCTime)
pgslAlignmentTime
  = lens _pgslAlignmentTime
      (\ s a -> s{_pgslAlignmentTime = a})
      . mapping _DateTime

-- | [Optional] A \`next_page_token\` provided by a previous response. To
-- view additional results, pass this token along with the identical query
-- parameters as the first request.
pgslPageToken :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslPageToken
  = lens _pgslPageToken
      (\ s a -> s{_pgslPageToken = a})

-- | [Optional] The maximum number of results to return per response. Default
-- is 20.
pgslPageSize :: Lens' ProjectsGroupStatsList (Maybe Int32)
pgslPageSize
  = lens _pgslPageSize (\ s a -> s{_pgslPageSize = a})
      . mapping _Coerce

-- | [Optional] The exact value to match against
-- [\`ServiceContext.service\`](\/error-reporting\/reference\/rest\/v1beta1\/ServiceContext#FIELDS.service).
pgslServiceFilterService :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslServiceFilterService
  = lens _pgslServiceFilterService
      (\ s a -> s{_pgslServiceFilterService = a})

-- | [Optional] The sort order in which the results are returned. Default is
-- \`COUNT_DESC\`.
pgslOrder :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslOrder
  = lens _pgslOrder (\ s a -> s{_pgslOrder = a})

-- | [Optional] The exact value to match against
-- [\`ServiceContext.resource_type\`](\/error-reporting\/reference\/rest\/v1beta1\/ServiceContext#FIELDS.resource_type).
pgslServiceFilterResourceType :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslServiceFilterResourceType
  = lens _pgslServiceFilterResourceType
      (\ s a -> s{_pgslServiceFilterResourceType = a})

-- | JSONP
pgslCallback :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslCallback
  = lens _pgslCallback (\ s a -> s{_pgslCallback = a})

-- | [Optional] The exact value to match against
-- [\`ServiceContext.version\`](\/error-reporting\/reference\/rest\/v1beta1\/ServiceContext#FIELDS.version).
pgslServiceFilterVersion :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslServiceFilterVersion
  = lens _pgslServiceFilterVersion
      (\ s a -> s{_pgslServiceFilterVersion = a})

-- | Restricts the query to the specified time range.
pgslTimeRangePeriod :: Lens' ProjectsGroupStatsList (Maybe Text)
pgslTimeRangePeriod
  = lens _pgslTimeRangePeriod
      (\ s a -> s{_pgslTimeRangePeriod = a})

instance GoogleRequest ProjectsGroupStatsList where
        type Rs ProjectsGroupStatsList =
             ListGroupStatsResponse
        type Scopes ProjectsGroupStatsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGroupStatsList'{..}
          = go _pgslProjectName _pgslXgafv _pgslUploadProtocol
              _pgslAccessToken
              _pgslUploadType
              _pgslTimedCountDuration
              _pgslAlignment
              (_pgslGroupId ^. _Default)
              _pgslAlignmentTime
              _pgslPageToken
              _pgslPageSize
              _pgslServiceFilterService
              _pgslOrder
              _pgslServiceFilterResourceType
              _pgslCallback
              _pgslServiceFilterVersion
              _pgslTimeRangePeriod
              (Just AltJSON)
              cloudErrorReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupStatsListResource)
                      mempty

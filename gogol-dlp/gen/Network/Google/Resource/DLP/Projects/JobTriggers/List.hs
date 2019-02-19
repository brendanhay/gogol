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
-- Module      : Network.Google.Resource.DLP.Projects.JobTriggers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists job triggers. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.jobTriggers.list@.
module Network.Google.Resource.DLP.Projects.JobTriggers.List
    (
    -- * REST Resource
      ProjectsJobTriggersListResource

    -- * Creating a Request
    , projectsJobTriggersList
    , ProjectsJobTriggersList

    -- * Request Lenses
    , pjtlParent
    , pjtlXgafv
    , pjtlUploadProtocol
    , pjtlOrderBy
    , pjtlAccessToken
    , pjtlUploadType
    , pjtlFilter
    , pjtlPageToken
    , pjtlPageSize
    , pjtlCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.jobTriggers.list@ method which the
-- 'ProjectsJobTriggersList' request conforms to.
type ProjectsJobTriggersListResource =
     "v2" :>
       Capture "parent" Text :>
         "jobTriggers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GooglePrivacyDlpV2ListJobTriggersResponse

-- | Lists job triggers. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsJobTriggersList' smart constructor.
data ProjectsJobTriggersList =
  ProjectsJobTriggersList'
    { _pjtlParent         :: !Text
    , _pjtlXgafv          :: !(Maybe Xgafv)
    , _pjtlUploadProtocol :: !(Maybe Text)
    , _pjtlOrderBy        :: !(Maybe Text)
    , _pjtlAccessToken    :: !(Maybe Text)
    , _pjtlUploadType     :: !(Maybe Text)
    , _pjtlFilter         :: !(Maybe Text)
    , _pjtlPageToken      :: !(Maybe Text)
    , _pjtlPageSize       :: !(Maybe (Textual Int32))
    , _pjtlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsJobTriggersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjtlParent'
--
-- * 'pjtlXgafv'
--
-- * 'pjtlUploadProtocol'
--
-- * 'pjtlOrderBy'
--
-- * 'pjtlAccessToken'
--
-- * 'pjtlUploadType'
--
-- * 'pjtlFilter'
--
-- * 'pjtlPageToken'
--
-- * 'pjtlPageSize'
--
-- * 'pjtlCallback'
projectsJobTriggersList
    :: Text -- ^ 'pjtlParent'
    -> ProjectsJobTriggersList
projectsJobTriggersList pPjtlParent_ =
  ProjectsJobTriggersList'
    { _pjtlParent = pPjtlParent_
    , _pjtlXgafv = Nothing
    , _pjtlUploadProtocol = Nothing
    , _pjtlOrderBy = Nothing
    , _pjtlAccessToken = Nothing
    , _pjtlUploadType = Nothing
    , _pjtlFilter = Nothing
    , _pjtlPageToken = Nothing
    , _pjtlPageSize = Nothing
    , _pjtlCallback = Nothing
    }

-- | The parent resource name, for example \`projects\/my-project-id\`.
pjtlParent :: Lens' ProjectsJobTriggersList Text
pjtlParent
  = lens _pjtlParent (\ s a -> s{_pjtlParent = a})

-- | V1 error format.
pjtlXgafv :: Lens' ProjectsJobTriggersList (Maybe Xgafv)
pjtlXgafv
  = lens _pjtlXgafv (\ s a -> s{_pjtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjtlUploadProtocol :: Lens' ProjectsJobTriggersList (Maybe Text)
pjtlUploadProtocol
  = lens _pjtlUploadProtocol
      (\ s a -> s{_pjtlUploadProtocol = a})

-- | Optional comma separated list of triggeredJob fields to order by,
-- followed by \`asc\` or \`desc\` postfix. This list is case-insensitive,
-- default sorting order is ascending, redundant space characters are
-- insignificant. Example: \`name asc,update_time, create_time desc\`
-- Supported fields are: - \`create_time\`: corresponds to time the
-- JobTrigger was created. - \`update_time\`: corresponds to time the
-- JobTrigger was last updated. - \`last_run_time\`: corresponds to the
-- last time the JobTrigger ran. - \`name\`: corresponds to JobTrigger\'s
-- name. - \`display_name\`: corresponds to JobTrigger\'s display name. -
-- \`status\`: corresponds to JobTrigger\'s status.
pjtlOrderBy :: Lens' ProjectsJobTriggersList (Maybe Text)
pjtlOrderBy
  = lens _pjtlOrderBy (\ s a -> s{_pjtlOrderBy = a})

-- | OAuth access token.
pjtlAccessToken :: Lens' ProjectsJobTriggersList (Maybe Text)
pjtlAccessToken
  = lens _pjtlAccessToken
      (\ s a -> s{_pjtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjtlUploadType :: Lens' ProjectsJobTriggersList (Maybe Text)
pjtlUploadType
  = lens _pjtlUploadType
      (\ s a -> s{_pjtlUploadType = a})

-- | Optional. Allows filtering. Supported syntax: * Filter expressions are
-- made up of one or more restrictions. * Restrictions can be combined by
-- \`AND\` or \`OR\` logical operators. A sequence of restrictions
-- implicitly uses \`AND\`. * A restriction has the form of \` \`. *
-- Supported fields\/values for inspect jobs: - \`status\` -
-- HEALTHY|PAUSED|CANCELLED - \`inspected_storage\` -
-- DATASTORE|CLOUD_STORAGE|BIGQUERY - \'last_run_time\` - RFC 3339
-- formatted timestamp, surrounded by quotation marks. Nanoseconds are
-- ignored. - \'error_count\' - Number of errors that have occurred while
-- running. * The operator must be \`=\` or \`!=\` for status and
-- inspected_storage. Examples: * inspected_storage = cloud_storage AND
-- status = HEALTHY * inspected_storage = cloud_storage OR
-- inspected_storage = bigquery * inspected_storage = cloud_storage AND
-- (state = PAUSED OR state = HEALTHY) * last_run_time >
-- \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no
-- more than 500 characters.
pjtlFilter :: Lens' ProjectsJobTriggersList (Maybe Text)
pjtlFilter
  = lens _pjtlFilter (\ s a -> s{_pjtlFilter = a})

-- | Optional page token to continue retrieval. Comes from previous call to
-- ListJobTriggers. \`order_by\` field must not change for subsequent
-- calls.
pjtlPageToken :: Lens' ProjectsJobTriggersList (Maybe Text)
pjtlPageToken
  = lens _pjtlPageToken
      (\ s a -> s{_pjtlPageToken = a})

-- | Optional size of the page, can be limited by a server.
pjtlPageSize :: Lens' ProjectsJobTriggersList (Maybe Int32)
pjtlPageSize
  = lens _pjtlPageSize (\ s a -> s{_pjtlPageSize = a})
      . mapping _Coerce

-- | JSONP
pjtlCallback :: Lens' ProjectsJobTriggersList (Maybe Text)
pjtlCallback
  = lens _pjtlCallback (\ s a -> s{_pjtlCallback = a})

instance GoogleRequest ProjectsJobTriggersList where
        type Rs ProjectsJobTriggersList =
             GooglePrivacyDlpV2ListJobTriggersResponse
        type Scopes ProjectsJobTriggersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobTriggersList'{..}
          = go _pjtlParent _pjtlXgafv _pjtlUploadProtocol
              _pjtlOrderBy
              _pjtlAccessToken
              _pjtlUploadType
              _pjtlFilter
              _pjtlPageToken
              _pjtlPageSize
              _pjtlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobTriggersListResource)
                      mempty

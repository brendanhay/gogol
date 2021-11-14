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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.JobTriggers.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists job triggers. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.list@.
module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.List
    (
    -- * REST Resource
      ProjectsLocationsJobTriggersListResource

    -- * Creating a Request
    , projectsLocationsJobTriggersList
    , ProjectsLocationsJobTriggersList

    -- * Request Lenses
    , pljtlParent
    , pljtlXgafv
    , pljtlUploadProtocol
    , pljtlOrderBy
    , pljtlAccessToken
    , pljtlUploadType
    , pljtlFilter
    , pljtlPageToken
    , pljtlLocationId
    , pljtlType
    , pljtlPageSize
    , pljtlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.jobTriggers.list@ method which the
-- 'ProjectsLocationsJobTriggersList' request conforms to.
type ProjectsLocationsJobTriggersListResource =
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
                         QueryParam "locationId" Text :>
                           QueryParam "type"
                             ProjectsLocationsJobTriggersListType
                             :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     GooglePrivacyDlpV2ListJobTriggersResponse

-- | Lists job triggers. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsLocationsJobTriggersList' smart constructor.
data ProjectsLocationsJobTriggersList =
  ProjectsLocationsJobTriggersList'
    { _pljtlParent :: !Text
    , _pljtlXgafv :: !(Maybe Xgafv)
    , _pljtlUploadProtocol :: !(Maybe Text)
    , _pljtlOrderBy :: !(Maybe Text)
    , _pljtlAccessToken :: !(Maybe Text)
    , _pljtlUploadType :: !(Maybe Text)
    , _pljtlFilter :: !(Maybe Text)
    , _pljtlPageToken :: !(Maybe Text)
    , _pljtlLocationId :: !(Maybe Text)
    , _pljtlType :: !(Maybe ProjectsLocationsJobTriggersListType)
    , _pljtlPageSize :: !(Maybe (Textual Int32))
    , _pljtlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobTriggersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljtlParent'
--
-- * 'pljtlXgafv'
--
-- * 'pljtlUploadProtocol'
--
-- * 'pljtlOrderBy'
--
-- * 'pljtlAccessToken'
--
-- * 'pljtlUploadType'
--
-- * 'pljtlFilter'
--
-- * 'pljtlPageToken'
--
-- * 'pljtlLocationId'
--
-- * 'pljtlType'
--
-- * 'pljtlPageSize'
--
-- * 'pljtlCallback'
projectsLocationsJobTriggersList
    :: Text -- ^ 'pljtlParent'
    -> ProjectsLocationsJobTriggersList
projectsLocationsJobTriggersList pPljtlParent_ =
  ProjectsLocationsJobTriggersList'
    { _pljtlParent = pPljtlParent_
    , _pljtlXgafv = Nothing
    , _pljtlUploadProtocol = Nothing
    , _pljtlOrderBy = Nothing
    , _pljtlAccessToken = Nothing
    , _pljtlUploadType = Nothing
    , _pljtlFilter = Nothing
    , _pljtlPageToken = Nothing
    , _pljtlLocationId = Nothing
    , _pljtlType = Nothing
    , _pljtlPageSize = Nothing
    , _pljtlCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID The
-- following example \`parent\` string specifies a parent project with the
-- identifier \`example-project\`, and specifies the \`europe-west3\`
-- location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
pljtlParent :: Lens' ProjectsLocationsJobTriggersList Text
pljtlParent
  = lens _pljtlParent (\ s a -> s{_pljtlParent = a})

-- | V1 error format.
pljtlXgafv :: Lens' ProjectsLocationsJobTriggersList (Maybe Xgafv)
pljtlXgafv
  = lens _pljtlXgafv (\ s a -> s{_pljtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljtlUploadProtocol :: Lens' ProjectsLocationsJobTriggersList (Maybe Text)
pljtlUploadProtocol
  = lens _pljtlUploadProtocol
      (\ s a -> s{_pljtlUploadProtocol = a})

-- | Comma separated list of triggeredJob fields to order by, followed by
-- \`asc\` or \`desc\` postfix. This list is case-insensitive, default
-- sorting order is ascending, redundant space characters are
-- insignificant. Example: \`name asc,update_time, create_time desc\`
-- Supported fields are: - \`create_time\`: corresponds to time the
-- JobTrigger was created. - \`update_time\`: corresponds to time the
-- JobTrigger was last updated. - \`last_run_time\`: corresponds to the
-- last time the JobTrigger ran. - \`name\`: corresponds to JobTrigger\'s
-- name. - \`display_name\`: corresponds to JobTrigger\'s display name. -
-- \`status\`: corresponds to JobTrigger\'s status.
pljtlOrderBy :: Lens' ProjectsLocationsJobTriggersList (Maybe Text)
pljtlOrderBy
  = lens _pljtlOrderBy (\ s a -> s{_pljtlOrderBy = a})

-- | OAuth access token.
pljtlAccessToken :: Lens' ProjectsLocationsJobTriggersList (Maybe Text)
pljtlAccessToken
  = lens _pljtlAccessToken
      (\ s a -> s{_pljtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljtlUploadType :: Lens' ProjectsLocationsJobTriggersList (Maybe Text)
pljtlUploadType
  = lens _pljtlUploadType
      (\ s a -> s{_pljtlUploadType = a})

-- | Allows filtering. Supported syntax: * Filter expressions are made up of
-- one or more restrictions. * Restrictions can be combined by \`AND\` or
-- \`OR\` logical operators. A sequence of restrictions implicitly uses
-- \`AND\`. * A restriction has the form of \`{field} {operator} {value}\`.
-- * Supported fields\/values for inspect triggers: - \`status\` -
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
pljtlFilter :: Lens' ProjectsLocationsJobTriggersList (Maybe Text)
pljtlFilter
  = lens _pljtlFilter (\ s a -> s{_pljtlFilter = a})

-- | Page token to continue retrieval. Comes from previous call to
-- ListJobTriggers. \`order_by\` field must not change for subsequent
-- calls.
pljtlPageToken :: Lens' ProjectsLocationsJobTriggersList (Maybe Text)
pljtlPageToken
  = lens _pljtlPageToken
      (\ s a -> s{_pljtlPageToken = a})

-- | Deprecated. This field has no effect.
pljtlLocationId :: Lens' ProjectsLocationsJobTriggersList (Maybe Text)
pljtlLocationId
  = lens _pljtlLocationId
      (\ s a -> s{_pljtlLocationId = a})

-- | The type of jobs. Will use \`DlpJobType.INSPECT\` if not set.
pljtlType :: Lens' ProjectsLocationsJobTriggersList (Maybe ProjectsLocationsJobTriggersListType)
pljtlType
  = lens _pljtlType (\ s a -> s{_pljtlType = a})

-- | Size of the page, can be limited by a server.
pljtlPageSize :: Lens' ProjectsLocationsJobTriggersList (Maybe Int32)
pljtlPageSize
  = lens _pljtlPageSize
      (\ s a -> s{_pljtlPageSize = a})
      . mapping _Coerce

-- | JSONP
pljtlCallback :: Lens' ProjectsLocationsJobTriggersList (Maybe Text)
pljtlCallback
  = lens _pljtlCallback
      (\ s a -> s{_pljtlCallback = a})

instance GoogleRequest
           ProjectsLocationsJobTriggersList
         where
        type Rs ProjectsLocationsJobTriggersList =
             GooglePrivacyDlpV2ListJobTriggersResponse
        type Scopes ProjectsLocationsJobTriggersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobTriggersList'{..}
          = go _pljtlParent _pljtlXgafv _pljtlUploadProtocol
              _pljtlOrderBy
              _pljtlAccessToken
              _pljtlUploadType
              _pljtlFilter
              _pljtlPageToken
              _pljtlLocationId
              _pljtlType
              _pljtlPageSize
              _pljtlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobTriggersListResource)
                      mempty

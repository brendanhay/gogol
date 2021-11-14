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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DlpJobs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists DlpJobs that match the specified filter in the request. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.list@.
module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.List
    (
    -- * REST Resource
      ProjectsLocationsDlpJobsListResource

    -- * Creating a Request
    , projectsLocationsDlpJobsList
    , ProjectsLocationsDlpJobsList

    -- * Request Lenses
    , pldjlParent
    , pldjlXgafv
    , pldjlUploadProtocol
    , pldjlOrderBy
    , pldjlAccessToken
    , pldjlUploadType
    , pldjlFilter
    , pldjlPageToken
    , pldjlLocationId
    , pldjlType
    , pldjlPageSize
    , pldjlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.dlpJobs.list@ method which the
-- 'ProjectsLocationsDlpJobsList' request conforms to.
type ProjectsLocationsDlpJobsListResource =
     "v2" :>
       Capture "parent" Text :>
         "dlpJobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "locationId" Text :>
                           QueryParam "type" ProjectsLocationsDlpJobsListType :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     GooglePrivacyDlpV2ListDlpJobsResponse

-- | Lists DlpJobs that match the specified filter in the request. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more.
--
-- /See:/ 'projectsLocationsDlpJobsList' smart constructor.
data ProjectsLocationsDlpJobsList =
  ProjectsLocationsDlpJobsList'
    { _pldjlParent :: !Text
    , _pldjlXgafv :: !(Maybe Xgafv)
    , _pldjlUploadProtocol :: !(Maybe Text)
    , _pldjlOrderBy :: !(Maybe Text)
    , _pldjlAccessToken :: !(Maybe Text)
    , _pldjlUploadType :: !(Maybe Text)
    , _pldjlFilter :: !(Maybe Text)
    , _pldjlPageToken :: !(Maybe Text)
    , _pldjlLocationId :: !(Maybe Text)
    , _pldjlType :: !(Maybe ProjectsLocationsDlpJobsListType)
    , _pldjlPageSize :: !(Maybe (Textual Int32))
    , _pldjlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDlpJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldjlParent'
--
-- * 'pldjlXgafv'
--
-- * 'pldjlUploadProtocol'
--
-- * 'pldjlOrderBy'
--
-- * 'pldjlAccessToken'
--
-- * 'pldjlUploadType'
--
-- * 'pldjlFilter'
--
-- * 'pldjlPageToken'
--
-- * 'pldjlLocationId'
--
-- * 'pldjlType'
--
-- * 'pldjlPageSize'
--
-- * 'pldjlCallback'
projectsLocationsDlpJobsList
    :: Text -- ^ 'pldjlParent'
    -> ProjectsLocationsDlpJobsList
projectsLocationsDlpJobsList pPldjlParent_ =
  ProjectsLocationsDlpJobsList'
    { _pldjlParent = pPldjlParent_
    , _pldjlXgafv = Nothing
    , _pldjlUploadProtocol = Nothing
    , _pldjlOrderBy = Nothing
    , _pldjlAccessToken = Nothing
    , _pldjlUploadType = Nothing
    , _pldjlFilter = Nothing
    , _pldjlPageToken = Nothing
    , _pldjlLocationId = Nothing
    , _pldjlType = Nothing
    , _pldjlPageSize = Nothing
    , _pldjlCallback = Nothing
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
pldjlParent :: Lens' ProjectsLocationsDlpJobsList Text
pldjlParent
  = lens _pldjlParent (\ s a -> s{_pldjlParent = a})

-- | V1 error format.
pldjlXgafv :: Lens' ProjectsLocationsDlpJobsList (Maybe Xgafv)
pldjlXgafv
  = lens _pldjlXgafv (\ s a -> s{_pldjlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldjlUploadProtocol :: Lens' ProjectsLocationsDlpJobsList (Maybe Text)
pldjlUploadProtocol
  = lens _pldjlUploadProtocol
      (\ s a -> s{_pldjlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc, end_time asc, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the job was created. -
-- \`end_time\`: corresponds to time the job ended. - \`name\`: corresponds
-- to job\'s name. - \`state\`: corresponds to \`state\`
pldjlOrderBy :: Lens' ProjectsLocationsDlpJobsList (Maybe Text)
pldjlOrderBy
  = lens _pldjlOrderBy (\ s a -> s{_pldjlOrderBy = a})

-- | OAuth access token.
pldjlAccessToken :: Lens' ProjectsLocationsDlpJobsList (Maybe Text)
pldjlAccessToken
  = lens _pldjlAccessToken
      (\ s a -> s{_pldjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldjlUploadType :: Lens' ProjectsLocationsDlpJobsList (Maybe Text)
pldjlUploadType
  = lens _pldjlUploadType
      (\ s a -> s{_pldjlUploadType = a})

-- | Allows filtering. Supported syntax: * Filter expressions are made up of
-- one or more restrictions. * Restrictions can be combined by \`AND\` or
-- \`OR\` logical operators. A sequence of restrictions implicitly uses
-- \`AND\`. * A restriction has the form of \`{field} {operator} {value}\`.
-- * Supported fields\/values for inspect jobs: - \`state\` -
-- PENDING|RUNNING|CANCELED|FINISHED|FAILED - \`inspected_storage\` -
-- DATASTORE|CLOUD_STORAGE|BIGQUERY - \`trigger_name\` - The resource name
-- of the trigger that created job. - \'end_time\` - Corresponds to time
-- the job finished. - \'start_time\` - Corresponds to time the job
-- finished. * Supported fields for risk analysis jobs: - \`state\` -
-- RUNNING|CANCELED|FINISHED|FAILED - \'end_time\` - Corresponds to time
-- the job finished. - \'start_time\` - Corresponds to time the job
-- finished. * The operator must be \`=\` or \`!=\`. Examples: *
-- inspected_storage = cloud_storage AND state = done * inspected_storage =
-- cloud_storage OR inspected_storage = bigquery * inspected_storage =
-- cloud_storage AND (state = done OR state = canceled) * end_time >
-- \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no
-- more than 500 characters.
pldjlFilter :: Lens' ProjectsLocationsDlpJobsList (Maybe Text)
pldjlFilter
  = lens _pldjlFilter (\ s a -> s{_pldjlFilter = a})

-- | The standard list page token.
pldjlPageToken :: Lens' ProjectsLocationsDlpJobsList (Maybe Text)
pldjlPageToken
  = lens _pldjlPageToken
      (\ s a -> s{_pldjlPageToken = a})

-- | Deprecated. This field has no effect.
pldjlLocationId :: Lens' ProjectsLocationsDlpJobsList (Maybe Text)
pldjlLocationId
  = lens _pldjlLocationId
      (\ s a -> s{_pldjlLocationId = a})

-- | The type of job. Defaults to \`DlpJobType.INSPECT\`
pldjlType :: Lens' ProjectsLocationsDlpJobsList (Maybe ProjectsLocationsDlpJobsListType)
pldjlType
  = lens _pldjlType (\ s a -> s{_pldjlType = a})

-- | The standard list page size.
pldjlPageSize :: Lens' ProjectsLocationsDlpJobsList (Maybe Int32)
pldjlPageSize
  = lens _pldjlPageSize
      (\ s a -> s{_pldjlPageSize = a})
      . mapping _Coerce

-- | JSONP
pldjlCallback :: Lens' ProjectsLocationsDlpJobsList (Maybe Text)
pldjlCallback
  = lens _pldjlCallback
      (\ s a -> s{_pldjlCallback = a})

instance GoogleRequest ProjectsLocationsDlpJobsList
         where
        type Rs ProjectsLocationsDlpJobsList =
             GooglePrivacyDlpV2ListDlpJobsResponse
        type Scopes ProjectsLocationsDlpJobsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDlpJobsList'{..}
          = go _pldjlParent _pldjlXgafv _pldjlUploadProtocol
              _pldjlOrderBy
              _pldjlAccessToken
              _pldjlUploadType
              _pldjlFilter
              _pldjlPageToken
              _pldjlLocationId
              _pldjlType
              _pldjlPageSize
              _pldjlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsDlpJobsListResource)
                      mempty

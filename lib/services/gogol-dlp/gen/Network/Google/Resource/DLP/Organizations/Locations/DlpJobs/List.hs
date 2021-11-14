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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.DlpJobs.List
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.dlpJobs.list@.
module Network.Google.Resource.DLP.Organizations.Locations.DlpJobs.List
    (
    -- * REST Resource
      OrganizationsLocationsDlpJobsListResource

    -- * Creating a Request
    , organizationsLocationsDlpJobsList
    , OrganizationsLocationsDlpJobsList

    -- * Request Lenses
    , oldjlParent
    , oldjlXgafv
    , oldjlUploadProtocol
    , oldjlOrderBy
    , oldjlAccessToken
    , oldjlUploadType
    , oldjlFilter
    , oldjlPageToken
    , oldjlLocationId
    , oldjlType
    , oldjlPageSize
    , oldjlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.dlpJobs.list@ method which the
-- 'OrganizationsLocationsDlpJobsList' request conforms to.
type OrganizationsLocationsDlpJobsListResource =
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
                           QueryParam "type"
                             OrganizationsLocationsDlpJobsListType
                             :>
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
-- /See:/ 'organizationsLocationsDlpJobsList' smart constructor.
data OrganizationsLocationsDlpJobsList =
  OrganizationsLocationsDlpJobsList'
    { _oldjlParent :: !Text
    , _oldjlXgafv :: !(Maybe Xgafv)
    , _oldjlUploadProtocol :: !(Maybe Text)
    , _oldjlOrderBy :: !(Maybe Text)
    , _oldjlAccessToken :: !(Maybe Text)
    , _oldjlUploadType :: !(Maybe Text)
    , _oldjlFilter :: !(Maybe Text)
    , _oldjlPageToken :: !(Maybe Text)
    , _oldjlLocationId :: !(Maybe Text)
    , _oldjlType :: !(Maybe OrganizationsLocationsDlpJobsListType)
    , _oldjlPageSize :: !(Maybe (Textual Int32))
    , _oldjlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsDlpJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldjlParent'
--
-- * 'oldjlXgafv'
--
-- * 'oldjlUploadProtocol'
--
-- * 'oldjlOrderBy'
--
-- * 'oldjlAccessToken'
--
-- * 'oldjlUploadType'
--
-- * 'oldjlFilter'
--
-- * 'oldjlPageToken'
--
-- * 'oldjlLocationId'
--
-- * 'oldjlType'
--
-- * 'oldjlPageSize'
--
-- * 'oldjlCallback'
organizationsLocationsDlpJobsList
    :: Text -- ^ 'oldjlParent'
    -> OrganizationsLocationsDlpJobsList
organizationsLocationsDlpJobsList pOldjlParent_ =
  OrganizationsLocationsDlpJobsList'
    { _oldjlParent = pOldjlParent_
    , _oldjlXgafv = Nothing
    , _oldjlUploadProtocol = Nothing
    , _oldjlOrderBy = Nothing
    , _oldjlAccessToken = Nothing
    , _oldjlUploadType = Nothing
    , _oldjlFilter = Nothing
    , _oldjlPageToken = Nothing
    , _oldjlLocationId = Nothing
    , _oldjlType = Nothing
    , _oldjlPageSize = Nothing
    , _oldjlCallback = Nothing
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
oldjlParent :: Lens' OrganizationsLocationsDlpJobsList Text
oldjlParent
  = lens _oldjlParent (\ s a -> s{_oldjlParent = a})

-- | V1 error format.
oldjlXgafv :: Lens' OrganizationsLocationsDlpJobsList (Maybe Xgafv)
oldjlXgafv
  = lens _oldjlXgafv (\ s a -> s{_oldjlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oldjlUploadProtocol :: Lens' OrganizationsLocationsDlpJobsList (Maybe Text)
oldjlUploadProtocol
  = lens _oldjlUploadProtocol
      (\ s a -> s{_oldjlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc, end_time asc, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the job was created. -
-- \`end_time\`: corresponds to time the job ended. - \`name\`: corresponds
-- to job\'s name. - \`state\`: corresponds to \`state\`
oldjlOrderBy :: Lens' OrganizationsLocationsDlpJobsList (Maybe Text)
oldjlOrderBy
  = lens _oldjlOrderBy (\ s a -> s{_oldjlOrderBy = a})

-- | OAuth access token.
oldjlAccessToken :: Lens' OrganizationsLocationsDlpJobsList (Maybe Text)
oldjlAccessToken
  = lens _oldjlAccessToken
      (\ s a -> s{_oldjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oldjlUploadType :: Lens' OrganizationsLocationsDlpJobsList (Maybe Text)
oldjlUploadType
  = lens _oldjlUploadType
      (\ s a -> s{_oldjlUploadType = a})

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
oldjlFilter :: Lens' OrganizationsLocationsDlpJobsList (Maybe Text)
oldjlFilter
  = lens _oldjlFilter (\ s a -> s{_oldjlFilter = a})

-- | The standard list page token.
oldjlPageToken :: Lens' OrganizationsLocationsDlpJobsList (Maybe Text)
oldjlPageToken
  = lens _oldjlPageToken
      (\ s a -> s{_oldjlPageToken = a})

-- | Deprecated. This field has no effect.
oldjlLocationId :: Lens' OrganizationsLocationsDlpJobsList (Maybe Text)
oldjlLocationId
  = lens _oldjlLocationId
      (\ s a -> s{_oldjlLocationId = a})

-- | The type of job. Defaults to \`DlpJobType.INSPECT\`
oldjlType :: Lens' OrganizationsLocationsDlpJobsList (Maybe OrganizationsLocationsDlpJobsListType)
oldjlType
  = lens _oldjlType (\ s a -> s{_oldjlType = a})

-- | The standard list page size.
oldjlPageSize :: Lens' OrganizationsLocationsDlpJobsList (Maybe Int32)
oldjlPageSize
  = lens _oldjlPageSize
      (\ s a -> s{_oldjlPageSize = a})
      . mapping _Coerce

-- | JSONP
oldjlCallback :: Lens' OrganizationsLocationsDlpJobsList (Maybe Text)
oldjlCallback
  = lens _oldjlCallback
      (\ s a -> s{_oldjlCallback = a})

instance GoogleRequest
           OrganizationsLocationsDlpJobsList
         where
        type Rs OrganizationsLocationsDlpJobsList =
             GooglePrivacyDlpV2ListDlpJobsResponse
        type Scopes OrganizationsLocationsDlpJobsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsLocationsDlpJobsList'{..}
          = go _oldjlParent _oldjlXgafv _oldjlUploadProtocol
              _oldjlOrderBy
              _oldjlAccessToken
              _oldjlUploadType
              _oldjlFilter
              _oldjlPageToken
              _oldjlLocationId
              _oldjlType
              _oldjlPageSize
              _oldjlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsDlpJobsListResource)
                      mempty

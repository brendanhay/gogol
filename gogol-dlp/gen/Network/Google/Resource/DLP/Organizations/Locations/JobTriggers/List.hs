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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.List
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.jobTriggers.list@.
module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.List
    (
    -- * REST Resource
      OrganizationsLocationsJobTriggersListResource

    -- * Creating a Request
    , organizationsLocationsJobTriggersList
    , OrganizationsLocationsJobTriggersList

    -- * Request Lenses
    , oljtlParent
    , oljtlXgafv
    , oljtlUploadProtocol
    , oljtlOrderBy
    , oljtlAccessToken
    , oljtlUploadType
    , oljtlFilter
    , oljtlPageToken
    , oljtlLocationId
    , oljtlType
    , oljtlPageSize
    , oljtlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.jobTriggers.list@ method which the
-- 'OrganizationsLocationsJobTriggersList' request conforms to.
type OrganizationsLocationsJobTriggersListResource =
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
                             OrganizationsLocationsJobTriggersListType
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
-- /See:/ 'organizationsLocationsJobTriggersList' smart constructor.
data OrganizationsLocationsJobTriggersList =
  OrganizationsLocationsJobTriggersList'
    { _oljtlParent :: !Text
    , _oljtlXgafv :: !(Maybe Xgafv)
    , _oljtlUploadProtocol :: !(Maybe Text)
    , _oljtlOrderBy :: !(Maybe Text)
    , _oljtlAccessToken :: !(Maybe Text)
    , _oljtlUploadType :: !(Maybe Text)
    , _oljtlFilter :: !(Maybe Text)
    , _oljtlPageToken :: !(Maybe Text)
    , _oljtlLocationId :: !(Maybe Text)
    , _oljtlType :: !(Maybe OrganizationsLocationsJobTriggersListType)
    , _oljtlPageSize :: !(Maybe (Textual Int32))
    , _oljtlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsJobTriggersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oljtlParent'
--
-- * 'oljtlXgafv'
--
-- * 'oljtlUploadProtocol'
--
-- * 'oljtlOrderBy'
--
-- * 'oljtlAccessToken'
--
-- * 'oljtlUploadType'
--
-- * 'oljtlFilter'
--
-- * 'oljtlPageToken'
--
-- * 'oljtlLocationId'
--
-- * 'oljtlType'
--
-- * 'oljtlPageSize'
--
-- * 'oljtlCallback'
organizationsLocationsJobTriggersList
    :: Text -- ^ 'oljtlParent'
    -> OrganizationsLocationsJobTriggersList
organizationsLocationsJobTriggersList pOljtlParent_ =
  OrganizationsLocationsJobTriggersList'
    { _oljtlParent = pOljtlParent_
    , _oljtlXgafv = Nothing
    , _oljtlUploadProtocol = Nothing
    , _oljtlOrderBy = Nothing
    , _oljtlAccessToken = Nothing
    , _oljtlUploadType = Nothing
    , _oljtlFilter = Nothing
    , _oljtlPageToken = Nothing
    , _oljtlLocationId = Nothing
    , _oljtlType = Nothing
    , _oljtlPageSize = Nothing
    , _oljtlCallback = Nothing
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
oljtlParent :: Lens' OrganizationsLocationsJobTriggersList Text
oljtlParent
  = lens _oljtlParent (\ s a -> s{_oljtlParent = a})

-- | V1 error format.
oljtlXgafv :: Lens' OrganizationsLocationsJobTriggersList (Maybe Xgafv)
oljtlXgafv
  = lens _oljtlXgafv (\ s a -> s{_oljtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oljtlUploadProtocol :: Lens' OrganizationsLocationsJobTriggersList (Maybe Text)
oljtlUploadProtocol
  = lens _oljtlUploadProtocol
      (\ s a -> s{_oljtlUploadProtocol = a})

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
oljtlOrderBy :: Lens' OrganizationsLocationsJobTriggersList (Maybe Text)
oljtlOrderBy
  = lens _oljtlOrderBy (\ s a -> s{_oljtlOrderBy = a})

-- | OAuth access token.
oljtlAccessToken :: Lens' OrganizationsLocationsJobTriggersList (Maybe Text)
oljtlAccessToken
  = lens _oljtlAccessToken
      (\ s a -> s{_oljtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oljtlUploadType :: Lens' OrganizationsLocationsJobTriggersList (Maybe Text)
oljtlUploadType
  = lens _oljtlUploadType
      (\ s a -> s{_oljtlUploadType = a})

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
oljtlFilter :: Lens' OrganizationsLocationsJobTriggersList (Maybe Text)
oljtlFilter
  = lens _oljtlFilter (\ s a -> s{_oljtlFilter = a})

-- | Page token to continue retrieval. Comes from previous call to
-- ListJobTriggers. \`order_by\` field must not change for subsequent
-- calls.
oljtlPageToken :: Lens' OrganizationsLocationsJobTriggersList (Maybe Text)
oljtlPageToken
  = lens _oljtlPageToken
      (\ s a -> s{_oljtlPageToken = a})

-- | Deprecated. This field has no effect.
oljtlLocationId :: Lens' OrganizationsLocationsJobTriggersList (Maybe Text)
oljtlLocationId
  = lens _oljtlLocationId
      (\ s a -> s{_oljtlLocationId = a})

-- | The type of jobs. Will use \`DlpJobType.INSPECT\` if not set.
oljtlType :: Lens' OrganizationsLocationsJobTriggersList (Maybe OrganizationsLocationsJobTriggersListType)
oljtlType
  = lens _oljtlType (\ s a -> s{_oljtlType = a})

-- | Size of the page, can be limited by a server.
oljtlPageSize :: Lens' OrganizationsLocationsJobTriggersList (Maybe Int32)
oljtlPageSize
  = lens _oljtlPageSize
      (\ s a -> s{_oljtlPageSize = a})
      . mapping _Coerce

-- | JSONP
oljtlCallback :: Lens' OrganizationsLocationsJobTriggersList (Maybe Text)
oljtlCallback
  = lens _oljtlCallback
      (\ s a -> s{_oljtlCallback = a})

instance GoogleRequest
           OrganizationsLocationsJobTriggersList
         where
        type Rs OrganizationsLocationsJobTriggersList =
             GooglePrivacyDlpV2ListJobTriggersResponse
        type Scopes OrganizationsLocationsJobTriggersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsJobTriggersList'{..}
          = go _oljtlParent _oljtlXgafv _oljtlUploadProtocol
              _oljtlOrderBy
              _oljtlAccessToken
              _oljtlUploadType
              _oljtlFilter
              _oljtlPageToken
              _oljtlLocationId
              _oljtlType
              _oljtlPageSize
              _oljtlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsJobTriggersListResource)
                      mempty

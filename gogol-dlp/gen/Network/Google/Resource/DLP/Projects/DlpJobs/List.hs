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
-- Module      : Network.Google.Resource.DLP.Projects.DlpJobs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.dlpJobs.list@.
module Network.Google.Resource.DLP.Projects.DlpJobs.List
    (
    -- * REST Resource
      ProjectsDlpJobsListResource

    -- * Creating a Request
    , projectsDlpJobsList
    , ProjectsDlpJobsList

    -- * Request Lenses
    , pdjlParent
    , pdjlXgafv
    , pdjlUploadProtocol
    , pdjlOrderBy
    , pdjlAccessToken
    , pdjlUploadType
    , pdjlFilter
    , pdjlPageToken
    , pdjlType
    , pdjlPageSize
    , pdjlCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.dlpJobs.list@ method which the
-- 'ProjectsDlpJobsList' request conforms to.
type ProjectsDlpJobsListResource =
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
                         QueryParam "type" Text :>
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
-- /See:/ 'projectsDlpJobsList' smart constructor.
data ProjectsDlpJobsList =
  ProjectsDlpJobsList'
    { _pdjlParent         :: !Text
    , _pdjlXgafv          :: !(Maybe Xgafv)
    , _pdjlUploadProtocol :: !(Maybe Text)
    , _pdjlOrderBy        :: !(Maybe Text)
    , _pdjlAccessToken    :: !(Maybe Text)
    , _pdjlUploadType     :: !(Maybe Text)
    , _pdjlFilter         :: !(Maybe Text)
    , _pdjlPageToken      :: !(Maybe Text)
    , _pdjlType           :: !(Maybe Text)
    , _pdjlPageSize       :: !(Maybe (Textual Int32))
    , _pdjlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDlpJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdjlParent'
--
-- * 'pdjlXgafv'
--
-- * 'pdjlUploadProtocol'
--
-- * 'pdjlOrderBy'
--
-- * 'pdjlAccessToken'
--
-- * 'pdjlUploadType'
--
-- * 'pdjlFilter'
--
-- * 'pdjlPageToken'
--
-- * 'pdjlType'
--
-- * 'pdjlPageSize'
--
-- * 'pdjlCallback'
projectsDlpJobsList
    :: Text -- ^ 'pdjlParent'
    -> ProjectsDlpJobsList
projectsDlpJobsList pPdjlParent_ =
  ProjectsDlpJobsList'
    { _pdjlParent = pPdjlParent_
    , _pdjlXgafv = Nothing
    , _pdjlUploadProtocol = Nothing
    , _pdjlOrderBy = Nothing
    , _pdjlAccessToken = Nothing
    , _pdjlUploadType = Nothing
    , _pdjlFilter = Nothing
    , _pdjlPageToken = Nothing
    , _pdjlType = Nothing
    , _pdjlPageSize = Nothing
    , _pdjlCallback = Nothing
    }


-- | The parent resource name, for example projects\/my-project-id.
pdjlParent :: Lens' ProjectsDlpJobsList Text
pdjlParent
  = lens _pdjlParent (\ s a -> s{_pdjlParent = a})

-- | V1 error format.
pdjlXgafv :: Lens' ProjectsDlpJobsList (Maybe Xgafv)
pdjlXgafv
  = lens _pdjlXgafv (\ s a -> s{_pdjlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdjlUploadProtocol :: Lens' ProjectsDlpJobsList (Maybe Text)
pdjlUploadProtocol
  = lens _pdjlUploadProtocol
      (\ s a -> s{_pdjlUploadProtocol = a})

-- | Optional comma separated list of fields to order by, followed by \`asc\`
-- or \`desc\` postfix. This list is case-insensitive, default sorting
-- order is ascending, redundant space characters are insignificant.
-- Example: \`name asc, end_time asc, create_time desc\` Supported fields
-- are: - \`create_time\`: corresponds to time the job was created. -
-- \`end_time\`: corresponds to time the job ended. - \`name\`: corresponds
-- to job\'s name. - \`state\`: corresponds to \`state\`
pdjlOrderBy :: Lens' ProjectsDlpJobsList (Maybe Text)
pdjlOrderBy
  = lens _pdjlOrderBy (\ s a -> s{_pdjlOrderBy = a})

-- | OAuth access token.
pdjlAccessToken :: Lens' ProjectsDlpJobsList (Maybe Text)
pdjlAccessToken
  = lens _pdjlAccessToken
      (\ s a -> s{_pdjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdjlUploadType :: Lens' ProjectsDlpJobsList (Maybe Text)
pdjlUploadType
  = lens _pdjlUploadType
      (\ s a -> s{_pdjlUploadType = a})

-- | Optional. Allows filtering. Supported syntax: * Filter expressions are
-- made up of one or more restrictions. * Restrictions can be combined by
-- \`AND\` or \`OR\` logical operators. A sequence of restrictions
-- implicitly uses \`AND\`. * A restriction has the form of \` \`. *
-- Supported fields\/values for inspect jobs: - \`state\` -
-- PENDING|RUNNING|CANCELED|FINISHED|FAILED - \`inspected_storage\` -
-- DATASTORE|CLOUD_STORAGE|BIGQUERY - \`trigger_name\` - The resource name
-- of the trigger that created job. * Supported fields for risk analysis
-- jobs: - \`state\` - RUNNING|CANCELED|FINISHED|FAILED * The operator must
-- be \`=\` or \`!=\`. Examples: * inspected_storage = cloud_storage AND
-- state = done * inspected_storage = cloud_storage OR inspected_storage =
-- bigquery * inspected_storage = cloud_storage AND (state = done OR state
-- = canceled) The length of this field should be no more than 500
-- characters.
pdjlFilter :: Lens' ProjectsDlpJobsList (Maybe Text)
pdjlFilter
  = lens _pdjlFilter (\ s a -> s{_pdjlFilter = a})

-- | The standard list page token.
pdjlPageToken :: Lens' ProjectsDlpJobsList (Maybe Text)
pdjlPageToken
  = lens _pdjlPageToken
      (\ s a -> s{_pdjlPageToken = a})

-- | The type of job. Defaults to \`DlpJobType.INSPECT\`
pdjlType :: Lens' ProjectsDlpJobsList (Maybe Text)
pdjlType = lens _pdjlType (\ s a -> s{_pdjlType = a})

-- | The standard list page size.
pdjlPageSize :: Lens' ProjectsDlpJobsList (Maybe Int32)
pdjlPageSize
  = lens _pdjlPageSize (\ s a -> s{_pdjlPageSize = a})
      . mapping _Coerce

-- | JSONP
pdjlCallback :: Lens' ProjectsDlpJobsList (Maybe Text)
pdjlCallback
  = lens _pdjlCallback (\ s a -> s{_pdjlCallback = a})

instance GoogleRequest ProjectsDlpJobsList where
        type Rs ProjectsDlpJobsList =
             GooglePrivacyDlpV2ListDlpJobsResponse
        type Scopes ProjectsDlpJobsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDlpJobsList'{..}
          = go _pdjlParent _pdjlXgafv _pdjlUploadProtocol
              _pdjlOrderBy
              _pdjlAccessToken
              _pdjlUploadType
              _pdjlFilter
              _pdjlPageToken
              _pdjlType
              _pdjlPageSize
              _pdjlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDlpJobsListResource)
                      mempty

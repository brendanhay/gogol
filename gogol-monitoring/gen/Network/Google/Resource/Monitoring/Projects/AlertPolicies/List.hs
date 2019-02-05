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
-- Module      : Network.Google.Resource.Monitoring.Projects.AlertPolicies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing alerting policies for the project.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.alertPolicies.list@.
module Network.Google.Resource.Monitoring.Projects.AlertPolicies.List
    (
    -- * REST Resource
      ProjectsAlertPoliciesListResource

    -- * Creating a Request
    , projectsAlertPoliciesList
    , ProjectsAlertPoliciesList

    -- * Request Lenses
    , paplXgafv
    , paplUploadProtocol
    , paplOrderBy
    , paplAccessToken
    , paplUploadType
    , paplName
    , paplFilter
    , paplPageToken
    , paplPageSize
    , paplCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.alertPolicies.list@ method which the
-- 'ProjectsAlertPoliciesList' request conforms to.
type ProjectsAlertPoliciesListResource =
     "v3" :>
       Capture "name" Text :>
         "alertPolicies" :>
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
                               Get '[JSON] ListAlertPoliciesResponse

-- | Lists the existing alerting policies for the project.
--
-- /See:/ 'projectsAlertPoliciesList' smart constructor.
data ProjectsAlertPoliciesList = ProjectsAlertPoliciesList'
    { _paplXgafv          :: !(Maybe Xgafv)
    , _paplUploadProtocol :: !(Maybe Text)
    , _paplOrderBy        :: !(Maybe Text)
    , _paplAccessToken    :: !(Maybe Text)
    , _paplUploadType     :: !(Maybe Text)
    , _paplName           :: !Text
    , _paplFilter         :: !(Maybe Text)
    , _paplPageToken      :: !(Maybe Text)
    , _paplPageSize       :: !(Maybe (Textual Int32))
    , _paplCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAlertPoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paplXgafv'
--
-- * 'paplUploadProtocol'
--
-- * 'paplOrderBy'
--
-- * 'paplAccessToken'
--
-- * 'paplUploadType'
--
-- * 'paplName'
--
-- * 'paplFilter'
--
-- * 'paplPageToken'
--
-- * 'paplPageSize'
--
-- * 'paplCallback'
projectsAlertPoliciesList
    :: Text -- ^ 'paplName'
    -> ProjectsAlertPoliciesList
projectsAlertPoliciesList pPaplName_ =
    ProjectsAlertPoliciesList'
    { _paplXgafv = Nothing
    , _paplUploadProtocol = Nothing
    , _paplOrderBy = Nothing
    , _paplAccessToken = Nothing
    , _paplUploadType = Nothing
    , _paplName = pPaplName_
    , _paplFilter = Nothing
    , _paplPageToken = Nothing
    , _paplPageSize = Nothing
    , _paplCallback = Nothing
    }

-- | V1 error format.
paplXgafv :: Lens' ProjectsAlertPoliciesList (Maybe Xgafv)
paplXgafv
  = lens _paplXgafv (\ s a -> s{_paplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paplUploadProtocol :: Lens' ProjectsAlertPoliciesList (Maybe Text)
paplUploadProtocol
  = lens _paplUploadProtocol
      (\ s a -> s{_paplUploadProtocol = a})

-- | A comma-separated list of fields by which to sort the result. Supports
-- the same set of field references as the filter field. Entries can be
-- prefixed with a minus sign to sort by the field in descending order.For
-- more details, see sorting and filtering.
paplOrderBy :: Lens' ProjectsAlertPoliciesList (Maybe Text)
paplOrderBy
  = lens _paplOrderBy (\ s a -> s{_paplOrderBy = a})

-- | OAuth access token.
paplAccessToken :: Lens' ProjectsAlertPoliciesList (Maybe Text)
paplAccessToken
  = lens _paplAccessToken
      (\ s a -> s{_paplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paplUploadType :: Lens' ProjectsAlertPoliciesList (Maybe Text)
paplUploadType
  = lens _paplUploadType
      (\ s a -> s{_paplUploadType = a})

-- | The project whose alert policies are to be listed. The format is
-- projects\/[PROJECT_ID] Note that this field names the parent container
-- in which the alerting policies to be listed are stored. To retrieve a
-- single alerting policy by name, use the GetAlertPolicy operation,
-- instead.
paplName :: Lens' ProjectsAlertPoliciesList Text
paplName = lens _paplName (\ s a -> s{_paplName = a})

-- | If provided, this field specifies the criteria that must be met by alert
-- policies to be included in the response.For more details, see sorting
-- and filtering.
paplFilter :: Lens' ProjectsAlertPoliciesList (Maybe Text)
paplFilter
  = lens _paplFilter (\ s a -> s{_paplFilter = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return more results from the previous method call.
paplPageToken :: Lens' ProjectsAlertPoliciesList (Maybe Text)
paplPageToken
  = lens _paplPageToken
      (\ s a -> s{_paplPageToken = a})

-- | The maximum number of results to return in a single response.
paplPageSize :: Lens' ProjectsAlertPoliciesList (Maybe Int32)
paplPageSize
  = lens _paplPageSize (\ s a -> s{_paplPageSize = a})
      . mapping _Coerce

-- | JSONP
paplCallback :: Lens' ProjectsAlertPoliciesList (Maybe Text)
paplCallback
  = lens _paplCallback (\ s a -> s{_paplCallback = a})

instance GoogleRequest ProjectsAlertPoliciesList
         where
        type Rs ProjectsAlertPoliciesList =
             ListAlertPoliciesResponse
        type Scopes ProjectsAlertPoliciesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsAlertPoliciesList'{..}
          = go _paplName _paplXgafv _paplUploadProtocol
              _paplOrderBy
              _paplAccessToken
              _paplUploadType
              _paplFilter
              _paplPageToken
              _paplPageSize
              _paplCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAlertPoliciesListResource)
                      mempty

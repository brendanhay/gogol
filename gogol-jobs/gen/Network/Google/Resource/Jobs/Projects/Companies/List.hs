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
-- Module      : Network.Google.Resource.Jobs.Projects.Companies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all companies associated with the service account.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.companies.list@.
module Network.Google.Resource.Jobs.Projects.Companies.List
    (
    -- * REST Resource
      ProjectsCompaniesListResource

    -- * Creating a Request
    , projectsCompaniesList
    , ProjectsCompaniesList

    -- * Request Lenses
    , pclParent
    , pclXgafv
    , pclUploadProtocol
    , pclRequireOpenJobs
    , pclAccessToken
    , pclUploadType
    , pclPageToken
    , pclPageSize
    , pclCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.companies.list@ method which the
-- 'ProjectsCompaniesList' request conforms to.
type ProjectsCompaniesListResource =
     "v3p1beta1" :>
       Capture "parent" Text :>
         "companies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "requireOpenJobs" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListCompaniesResponse

-- | Lists all companies associated with the service account.
--
-- /See:/ 'projectsCompaniesList' smart constructor.
data ProjectsCompaniesList =
  ProjectsCompaniesList'
    { _pclParent          :: !Text
    , _pclXgafv           :: !(Maybe Xgafv)
    , _pclUploadProtocol  :: !(Maybe Text)
    , _pclRequireOpenJobs :: !(Maybe Bool)
    , _pclAccessToken     :: !(Maybe Text)
    , _pclUploadType      :: !(Maybe Text)
    , _pclPageToken       :: !(Maybe Text)
    , _pclPageSize        :: !(Maybe (Textual Int32))
    , _pclCallback        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCompaniesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclParent'
--
-- * 'pclXgafv'
--
-- * 'pclUploadProtocol'
--
-- * 'pclRequireOpenJobs'
--
-- * 'pclAccessToken'
--
-- * 'pclUploadType'
--
-- * 'pclPageToken'
--
-- * 'pclPageSize'
--
-- * 'pclCallback'
projectsCompaniesList
    :: Text -- ^ 'pclParent'
    -> ProjectsCompaniesList
projectsCompaniesList pPclParent_ =
  ProjectsCompaniesList'
    { _pclParent = pPclParent_
    , _pclXgafv = Nothing
    , _pclUploadProtocol = Nothing
    , _pclRequireOpenJobs = Nothing
    , _pclAccessToken = Nothing
    , _pclUploadType = Nothing
    , _pclPageToken = Nothing
    , _pclPageSize = Nothing
    , _pclCallback = Nothing
    }


-- | Required. Resource name of the project under which the company is
-- created. The format is \"projects\/{project_id}\", for example,
-- \"projects\/api-test-project\".
pclParent :: Lens' ProjectsCompaniesList Text
pclParent
  = lens _pclParent (\ s a -> s{_pclParent = a})

-- | V1 error format.
pclXgafv :: Lens' ProjectsCompaniesList (Maybe Xgafv)
pclXgafv = lens _pclXgafv (\ s a -> s{_pclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pclUploadProtocol :: Lens' ProjectsCompaniesList (Maybe Text)
pclUploadProtocol
  = lens _pclUploadProtocol
      (\ s a -> s{_pclUploadProtocol = a})

-- | Optional. Set to true if the companies requested must have open jobs.
-- Defaults to false. If true, at most page_size of companies are fetched,
-- among which only those with open jobs are returned.
pclRequireOpenJobs :: Lens' ProjectsCompaniesList (Maybe Bool)
pclRequireOpenJobs
  = lens _pclRequireOpenJobs
      (\ s a -> s{_pclRequireOpenJobs = a})

-- | OAuth access token.
pclAccessToken :: Lens' ProjectsCompaniesList (Maybe Text)
pclAccessToken
  = lens _pclAccessToken
      (\ s a -> s{_pclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pclUploadType :: Lens' ProjectsCompaniesList (Maybe Text)
pclUploadType
  = lens _pclUploadType
      (\ s a -> s{_pclUploadType = a})

-- | Optional. The starting indicator from which to return results.
pclPageToken :: Lens' ProjectsCompaniesList (Maybe Text)
pclPageToken
  = lens _pclPageToken (\ s a -> s{_pclPageToken = a})

-- | Optional. The maximum number of companies to be returned, at most 100.
-- Default is 100 if a non-positive number is provided.
pclPageSize :: Lens' ProjectsCompaniesList (Maybe Int32)
pclPageSize
  = lens _pclPageSize (\ s a -> s{_pclPageSize = a}) .
      mapping _Coerce

-- | JSONP
pclCallback :: Lens' ProjectsCompaniesList (Maybe Text)
pclCallback
  = lens _pclCallback (\ s a -> s{_pclCallback = a})

instance GoogleRequest ProjectsCompaniesList where
        type Rs ProjectsCompaniesList = ListCompaniesResponse
        type Scopes ProjectsCompaniesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsCompaniesList'{..}
          = go _pclParent _pclXgafv _pclUploadProtocol
              _pclRequireOpenJobs
              _pclAccessToken
              _pclUploadType
              _pclPageToken
              _pclPageSize
              _pclCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCompaniesListResource)
                      mempty

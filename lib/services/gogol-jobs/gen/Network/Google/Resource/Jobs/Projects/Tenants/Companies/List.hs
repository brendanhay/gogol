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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Companies.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all companies associated with the project.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.list@.
module Network.Google.Resource.Jobs.Projects.Tenants.Companies.List
    (
    -- * REST Resource
      ProjectsTenantsCompaniesListResource

    -- * Creating a Request
    , projectsTenantsCompaniesList
    , ProjectsTenantsCompaniesList

    -- * Request Lenses
    , ptclParent
    , ptclXgafv
    , ptclUploadProtocol
    , ptclRequireOpenJobs
    , ptclAccessToken
    , ptclUploadType
    , ptclPageToken
    , ptclPageSize
    , ptclCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.companies.list@ method which the
-- 'ProjectsTenantsCompaniesList' request conforms to.
type ProjectsTenantsCompaniesListResource =
     "v4" :>
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

-- | Lists all companies associated with the project.
--
-- /See:/ 'projectsTenantsCompaniesList' smart constructor.
data ProjectsTenantsCompaniesList =
  ProjectsTenantsCompaniesList'
    { _ptclParent :: !Text
    , _ptclXgafv :: !(Maybe Xgafv)
    , _ptclUploadProtocol :: !(Maybe Text)
    , _ptclRequireOpenJobs :: !(Maybe Bool)
    , _ptclAccessToken :: !(Maybe Text)
    , _ptclUploadType :: !(Maybe Text)
    , _ptclPageToken :: !(Maybe Text)
    , _ptclPageSize :: !(Maybe (Textual Int32))
    , _ptclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsCompaniesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptclParent'
--
-- * 'ptclXgafv'
--
-- * 'ptclUploadProtocol'
--
-- * 'ptclRequireOpenJobs'
--
-- * 'ptclAccessToken'
--
-- * 'ptclUploadType'
--
-- * 'ptclPageToken'
--
-- * 'ptclPageSize'
--
-- * 'ptclCallback'
projectsTenantsCompaniesList
    :: Text -- ^ 'ptclParent'
    -> ProjectsTenantsCompaniesList
projectsTenantsCompaniesList pPtclParent_ =
  ProjectsTenantsCompaniesList'
    { _ptclParent = pPtclParent_
    , _ptclXgafv = Nothing
    , _ptclUploadProtocol = Nothing
    , _ptclRequireOpenJobs = Nothing
    , _ptclAccessToken = Nothing
    , _ptclUploadType = Nothing
    , _ptclPageToken = Nothing
    , _ptclPageSize = Nothing
    , _ptclCallback = Nothing
    }


-- | Required. Resource name of the tenant under which the company is
-- created. The format is \"projects\/{project_id}\/tenants\/{tenant_id}\",
-- for example, \"projects\/foo\/tenants\/bar\".
ptclParent :: Lens' ProjectsTenantsCompaniesList Text
ptclParent
  = lens _ptclParent (\ s a -> s{_ptclParent = a})

-- | V1 error format.
ptclXgafv :: Lens' ProjectsTenantsCompaniesList (Maybe Xgafv)
ptclXgafv
  = lens _ptclXgafv (\ s a -> s{_ptclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptclUploadProtocol :: Lens' ProjectsTenantsCompaniesList (Maybe Text)
ptclUploadProtocol
  = lens _ptclUploadProtocol
      (\ s a -> s{_ptclUploadProtocol = a})

-- | Set to true if the companies requested must have open jobs. Defaults to
-- false. If true, at most page_size of companies are fetched, among which
-- only those with open jobs are returned.
ptclRequireOpenJobs :: Lens' ProjectsTenantsCompaniesList (Maybe Bool)
ptclRequireOpenJobs
  = lens _ptclRequireOpenJobs
      (\ s a -> s{_ptclRequireOpenJobs = a})

-- | OAuth access token.
ptclAccessToken :: Lens' ProjectsTenantsCompaniesList (Maybe Text)
ptclAccessToken
  = lens _ptclAccessToken
      (\ s a -> s{_ptclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptclUploadType :: Lens' ProjectsTenantsCompaniesList (Maybe Text)
ptclUploadType
  = lens _ptclUploadType
      (\ s a -> s{_ptclUploadType = a})

-- | The starting indicator from which to return results.
ptclPageToken :: Lens' ProjectsTenantsCompaniesList (Maybe Text)
ptclPageToken
  = lens _ptclPageToken
      (\ s a -> s{_ptclPageToken = a})

-- | The maximum number of companies to be returned, at most 100. Default is
-- 100 if a non-positive number is provided.
ptclPageSize :: Lens' ProjectsTenantsCompaniesList (Maybe Int32)
ptclPageSize
  = lens _ptclPageSize (\ s a -> s{_ptclPageSize = a})
      . mapping _Coerce

-- | JSONP
ptclCallback :: Lens' ProjectsTenantsCompaniesList (Maybe Text)
ptclCallback
  = lens _ptclCallback (\ s a -> s{_ptclCallback = a})

instance GoogleRequest ProjectsTenantsCompaniesList
         where
        type Rs ProjectsTenantsCompaniesList =
             ListCompaniesResponse
        type Scopes ProjectsTenantsCompaniesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsCompaniesList'{..}
          = go _ptclParent _ptclXgafv _ptclUploadProtocol
              _ptclRequireOpenJobs
              _ptclAccessToken
              _ptclUploadType
              _ptclPageToken
              _ptclPageSize
              _ptclCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsCompaniesListResource)
                      mempty

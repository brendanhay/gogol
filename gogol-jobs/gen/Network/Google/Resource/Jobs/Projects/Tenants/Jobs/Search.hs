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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for jobs using the provided SearchJobsRequest. This call
-- constrains the visibility of jobs present in the database, and only
-- returns jobs that the caller has permission to search against.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.search@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Search
    (
    -- * REST Resource
      ProjectsTenantsJobsSearchResource

    -- * Creating a Request
    , projectsTenantsJobsSearch
    , ProjectsTenantsJobsSearch

    -- * Request Lenses
    , ptjsParent
    , ptjsXgafv
    , ptjsUploadProtocol
    , ptjsAccessToken
    , ptjsUploadType
    , ptjsPayload
    , ptjsCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.search@ method which the
-- 'ProjectsTenantsJobsSearch' request conforms to.
type ProjectsTenantsJobsSearchResource =
     "v4" :>
       Capture "parent" Text :>
         "jobs:search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchJobsRequest :>
                         Post '[JSON] SearchJobsResponse

-- | Searches for jobs using the provided SearchJobsRequest. This call
-- constrains the visibility of jobs present in the database, and only
-- returns jobs that the caller has permission to search against.
--
-- /See:/ 'projectsTenantsJobsSearch' smart constructor.
data ProjectsTenantsJobsSearch =
  ProjectsTenantsJobsSearch'
    { _ptjsParent :: !Text
    , _ptjsXgafv :: !(Maybe Xgafv)
    , _ptjsUploadProtocol :: !(Maybe Text)
    , _ptjsAccessToken :: !(Maybe Text)
    , _ptjsUploadType :: !(Maybe Text)
    , _ptjsPayload :: !SearchJobsRequest
    , _ptjsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjsParent'
--
-- * 'ptjsXgafv'
--
-- * 'ptjsUploadProtocol'
--
-- * 'ptjsAccessToken'
--
-- * 'ptjsUploadType'
--
-- * 'ptjsPayload'
--
-- * 'ptjsCallback'
projectsTenantsJobsSearch
    :: Text -- ^ 'ptjsParent'
    -> SearchJobsRequest -- ^ 'ptjsPayload'
    -> ProjectsTenantsJobsSearch
projectsTenantsJobsSearch pPtjsParent_ pPtjsPayload_ =
  ProjectsTenantsJobsSearch'
    { _ptjsParent = pPtjsParent_
    , _ptjsXgafv = Nothing
    , _ptjsUploadProtocol = Nothing
    , _ptjsAccessToken = Nothing
    , _ptjsUploadType = Nothing
    , _ptjsPayload = pPtjsPayload_
    , _ptjsCallback = Nothing
    }


-- | Required. The resource name of the tenant to search within. The format
-- is \"projects\/{project_id}\/tenants\/{tenant_id}\". For example,
-- \"projects\/foo\/tenants\/bar\".
ptjsParent :: Lens' ProjectsTenantsJobsSearch Text
ptjsParent
  = lens _ptjsParent (\ s a -> s{_ptjsParent = a})

-- | V1 error format.
ptjsXgafv :: Lens' ProjectsTenantsJobsSearch (Maybe Xgafv)
ptjsXgafv
  = lens _ptjsXgafv (\ s a -> s{_ptjsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjsUploadProtocol :: Lens' ProjectsTenantsJobsSearch (Maybe Text)
ptjsUploadProtocol
  = lens _ptjsUploadProtocol
      (\ s a -> s{_ptjsUploadProtocol = a})

-- | OAuth access token.
ptjsAccessToken :: Lens' ProjectsTenantsJobsSearch (Maybe Text)
ptjsAccessToken
  = lens _ptjsAccessToken
      (\ s a -> s{_ptjsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjsUploadType :: Lens' ProjectsTenantsJobsSearch (Maybe Text)
ptjsUploadType
  = lens _ptjsUploadType
      (\ s a -> s{_ptjsUploadType = a})

-- | Multipart request metadata.
ptjsPayload :: Lens' ProjectsTenantsJobsSearch SearchJobsRequest
ptjsPayload
  = lens _ptjsPayload (\ s a -> s{_ptjsPayload = a})

-- | JSONP
ptjsCallback :: Lens' ProjectsTenantsJobsSearch (Maybe Text)
ptjsCallback
  = lens _ptjsCallback (\ s a -> s{_ptjsCallback = a})

instance GoogleRequest ProjectsTenantsJobsSearch
         where
        type Rs ProjectsTenantsJobsSearch =
             SearchJobsResponse
        type Scopes ProjectsTenantsJobsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsSearch'{..}
          = go _ptjsParent _ptjsXgafv _ptjsUploadProtocol
              _ptjsAccessToken
              _ptjsUploadType
              _ptjsCallback
              (Just AltJSON)
              _ptjsPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsJobsSearchResource)
                      mempty

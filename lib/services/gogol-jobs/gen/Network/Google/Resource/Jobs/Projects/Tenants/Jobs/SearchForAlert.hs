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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.SearchForAlert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for jobs using the provided SearchJobsRequest. This API call is
-- intended for the use case of targeting passive job seekers (for example,
-- job seekers who have signed up to receive email alerts about potential
-- job opportunities), it has different algorithmic adjustments that are
-- designed to specifically target passive job seekers. This call
-- constrains the visibility of jobs present in the database, and only
-- returns jobs the caller has permission to search against.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.searchForAlert@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.SearchForAlert
    (
    -- * REST Resource
      ProjectsTenantsJobsSearchForAlertResource

    -- * Creating a Request
    , projectsTenantsJobsSearchForAlert
    , ProjectsTenantsJobsSearchForAlert

    -- * Request Lenses
    , ptjsfaParent
    , ptjsfaXgafv
    , ptjsfaUploadProtocol
    , ptjsfaAccessToken
    , ptjsfaUploadType
    , ptjsfaPayload
    , ptjsfaCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.searchForAlert@ method which the
-- 'ProjectsTenantsJobsSearchForAlert' request conforms to.
type ProjectsTenantsJobsSearchForAlertResource =
     "v4" :>
       Capture "parent" Text :>
         "jobs:searchForAlert" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchJobsRequest :>
                         Post '[JSON] SearchJobsResponse

-- | Searches for jobs using the provided SearchJobsRequest. This API call is
-- intended for the use case of targeting passive job seekers (for example,
-- job seekers who have signed up to receive email alerts about potential
-- job opportunities), it has different algorithmic adjustments that are
-- designed to specifically target passive job seekers. This call
-- constrains the visibility of jobs present in the database, and only
-- returns jobs the caller has permission to search against.
--
-- /See:/ 'projectsTenantsJobsSearchForAlert' smart constructor.
data ProjectsTenantsJobsSearchForAlert =
  ProjectsTenantsJobsSearchForAlert'
    { _ptjsfaParent :: !Text
    , _ptjsfaXgafv :: !(Maybe Xgafv)
    , _ptjsfaUploadProtocol :: !(Maybe Text)
    , _ptjsfaAccessToken :: !(Maybe Text)
    , _ptjsfaUploadType :: !(Maybe Text)
    , _ptjsfaPayload :: !SearchJobsRequest
    , _ptjsfaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsSearchForAlert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjsfaParent'
--
-- * 'ptjsfaXgafv'
--
-- * 'ptjsfaUploadProtocol'
--
-- * 'ptjsfaAccessToken'
--
-- * 'ptjsfaUploadType'
--
-- * 'ptjsfaPayload'
--
-- * 'ptjsfaCallback'
projectsTenantsJobsSearchForAlert
    :: Text -- ^ 'ptjsfaParent'
    -> SearchJobsRequest -- ^ 'ptjsfaPayload'
    -> ProjectsTenantsJobsSearchForAlert
projectsTenantsJobsSearchForAlert pPtjsfaParent_ pPtjsfaPayload_ =
  ProjectsTenantsJobsSearchForAlert'
    { _ptjsfaParent = pPtjsfaParent_
    , _ptjsfaXgafv = Nothing
    , _ptjsfaUploadProtocol = Nothing
    , _ptjsfaAccessToken = Nothing
    , _ptjsfaUploadType = Nothing
    , _ptjsfaPayload = pPtjsfaPayload_
    , _ptjsfaCallback = Nothing
    }


-- | Required. The resource name of the tenant to search within. The format
-- is \"projects\/{project_id}\/tenants\/{tenant_id}\". For example,
-- \"projects\/foo\/tenants\/bar\".
ptjsfaParent :: Lens' ProjectsTenantsJobsSearchForAlert Text
ptjsfaParent
  = lens _ptjsfaParent (\ s a -> s{_ptjsfaParent = a})

-- | V1 error format.
ptjsfaXgafv :: Lens' ProjectsTenantsJobsSearchForAlert (Maybe Xgafv)
ptjsfaXgafv
  = lens _ptjsfaXgafv (\ s a -> s{_ptjsfaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjsfaUploadProtocol :: Lens' ProjectsTenantsJobsSearchForAlert (Maybe Text)
ptjsfaUploadProtocol
  = lens _ptjsfaUploadProtocol
      (\ s a -> s{_ptjsfaUploadProtocol = a})

-- | OAuth access token.
ptjsfaAccessToken :: Lens' ProjectsTenantsJobsSearchForAlert (Maybe Text)
ptjsfaAccessToken
  = lens _ptjsfaAccessToken
      (\ s a -> s{_ptjsfaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjsfaUploadType :: Lens' ProjectsTenantsJobsSearchForAlert (Maybe Text)
ptjsfaUploadType
  = lens _ptjsfaUploadType
      (\ s a -> s{_ptjsfaUploadType = a})

-- | Multipart request metadata.
ptjsfaPayload :: Lens' ProjectsTenantsJobsSearchForAlert SearchJobsRequest
ptjsfaPayload
  = lens _ptjsfaPayload
      (\ s a -> s{_ptjsfaPayload = a})

-- | JSONP
ptjsfaCallback :: Lens' ProjectsTenantsJobsSearchForAlert (Maybe Text)
ptjsfaCallback
  = lens _ptjsfaCallback
      (\ s a -> s{_ptjsfaCallback = a})

instance GoogleRequest
           ProjectsTenantsJobsSearchForAlert
         where
        type Rs ProjectsTenantsJobsSearchForAlert =
             SearchJobsResponse
        type Scopes ProjectsTenantsJobsSearchForAlert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsSearchForAlert'{..}
          = go _ptjsfaParent _ptjsfaXgafv _ptjsfaUploadProtocol
              _ptjsfaAccessToken
              _ptjsfaUploadType
              _ptjsfaCallback
              (Just AltJSON)
              _ptjsfaPayload
              jobsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTenantsJobsSearchForAlertResource)
                      mempty

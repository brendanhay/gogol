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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified job, whose status is OPEN or recently EXPIRED
-- within the last 90 days.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.get@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Get
    (
    -- * REST Resource
      ProjectsTenantsJobsGetResource

    -- * Creating a Request
    , projectsTenantsJobsGet
    , ProjectsTenantsJobsGet

    -- * Request Lenses
    , ptjgXgafv
    , ptjgUploadProtocol
    , ptjgAccessToken
    , ptjgUploadType
    , ptjgName
    , ptjgCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.get@ method which the
-- 'ProjectsTenantsJobsGet' request conforms to.
type ProjectsTenantsJobsGetResource =
     "v4" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Retrieves the specified job, whose status is OPEN or recently EXPIRED
-- within the last 90 days.
--
-- /See:/ 'projectsTenantsJobsGet' smart constructor.
data ProjectsTenantsJobsGet =
  ProjectsTenantsJobsGet'
    { _ptjgXgafv :: !(Maybe Xgafv)
    , _ptjgUploadProtocol :: !(Maybe Text)
    , _ptjgAccessToken :: !(Maybe Text)
    , _ptjgUploadType :: !(Maybe Text)
    , _ptjgName :: !Text
    , _ptjgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjgXgafv'
--
-- * 'ptjgUploadProtocol'
--
-- * 'ptjgAccessToken'
--
-- * 'ptjgUploadType'
--
-- * 'ptjgName'
--
-- * 'ptjgCallback'
projectsTenantsJobsGet
    :: Text -- ^ 'ptjgName'
    -> ProjectsTenantsJobsGet
projectsTenantsJobsGet pPtjgName_ =
  ProjectsTenantsJobsGet'
    { _ptjgXgafv = Nothing
    , _ptjgUploadProtocol = Nothing
    , _ptjgAccessToken = Nothing
    , _ptjgUploadType = Nothing
    , _ptjgName = pPtjgName_
    , _ptjgCallback = Nothing
    }


-- | V1 error format.
ptjgXgafv :: Lens' ProjectsTenantsJobsGet (Maybe Xgafv)
ptjgXgafv
  = lens _ptjgXgafv (\ s a -> s{_ptjgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjgUploadProtocol :: Lens' ProjectsTenantsJobsGet (Maybe Text)
ptjgUploadProtocol
  = lens _ptjgUploadProtocol
      (\ s a -> s{_ptjgUploadProtocol = a})

-- | OAuth access token.
ptjgAccessToken :: Lens' ProjectsTenantsJobsGet (Maybe Text)
ptjgAccessToken
  = lens _ptjgAccessToken
      (\ s a -> s{_ptjgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjgUploadType :: Lens' ProjectsTenantsJobsGet (Maybe Text)
ptjgUploadType
  = lens _ptjgUploadType
      (\ s a -> s{_ptjgUploadType = a})

-- | Required. The resource name of the job to retrieve. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/jobs\/{job_id}\". For
-- example, \"projects\/foo\/tenants\/bar\/jobs\/baz\".
ptjgName :: Lens' ProjectsTenantsJobsGet Text
ptjgName = lens _ptjgName (\ s a -> s{_ptjgName = a})

-- | JSONP
ptjgCallback :: Lens' ProjectsTenantsJobsGet (Maybe Text)
ptjgCallback
  = lens _ptjgCallback (\ s a -> s{_ptjgCallback = a})

instance GoogleRequest ProjectsTenantsJobsGet where
        type Rs ProjectsTenantsJobsGet = Job
        type Scopes ProjectsTenantsJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsGet'{..}
          = go _ptjgName _ptjgXgafv _ptjgUploadProtocol
              _ptjgAccessToken
              _ptjgUploadType
              _ptjgCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsJobsGetResource)
                      mempty

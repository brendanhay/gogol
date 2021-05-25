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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Companies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves specified company.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.get@.
module Network.Google.Resource.Jobs.Projects.Tenants.Companies.Get
    (
    -- * REST Resource
      ProjectsTenantsCompaniesGetResource

    -- * Creating a Request
    , projectsTenantsCompaniesGet
    , ProjectsTenantsCompaniesGet

    -- * Request Lenses
    , ptcgXgafv
    , ptcgUploadProtocol
    , ptcgAccessToken
    , ptcgUploadType
    , ptcgName
    , ptcgCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.companies.get@ method which the
-- 'ProjectsTenantsCompaniesGet' request conforms to.
type ProjectsTenantsCompaniesGetResource =
     "v4" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Company

-- | Retrieves specified company.
--
-- /See:/ 'projectsTenantsCompaniesGet' smart constructor.
data ProjectsTenantsCompaniesGet =
  ProjectsTenantsCompaniesGet'
    { _ptcgXgafv :: !(Maybe Xgafv)
    , _ptcgUploadProtocol :: !(Maybe Text)
    , _ptcgAccessToken :: !(Maybe Text)
    , _ptcgUploadType :: !(Maybe Text)
    , _ptcgName :: !Text
    , _ptcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsCompaniesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcgXgafv'
--
-- * 'ptcgUploadProtocol'
--
-- * 'ptcgAccessToken'
--
-- * 'ptcgUploadType'
--
-- * 'ptcgName'
--
-- * 'ptcgCallback'
projectsTenantsCompaniesGet
    :: Text -- ^ 'ptcgName'
    -> ProjectsTenantsCompaniesGet
projectsTenantsCompaniesGet pPtcgName_ =
  ProjectsTenantsCompaniesGet'
    { _ptcgXgafv = Nothing
    , _ptcgUploadProtocol = Nothing
    , _ptcgAccessToken = Nothing
    , _ptcgUploadType = Nothing
    , _ptcgName = pPtcgName_
    , _ptcgCallback = Nothing
    }


-- | V1 error format.
ptcgXgafv :: Lens' ProjectsTenantsCompaniesGet (Maybe Xgafv)
ptcgXgafv
  = lens _ptcgXgafv (\ s a -> s{_ptcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcgUploadProtocol :: Lens' ProjectsTenantsCompaniesGet (Maybe Text)
ptcgUploadProtocol
  = lens _ptcgUploadProtocol
      (\ s a -> s{_ptcgUploadProtocol = a})

-- | OAuth access token.
ptcgAccessToken :: Lens' ProjectsTenantsCompaniesGet (Maybe Text)
ptcgAccessToken
  = lens _ptcgAccessToken
      (\ s a -> s{_ptcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcgUploadType :: Lens' ProjectsTenantsCompaniesGet (Maybe Text)
ptcgUploadType
  = lens _ptcgUploadType
      (\ s a -> s{_ptcgUploadType = a})

-- | Required. The resource name of the company to be retrieved. The format
-- is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/companies\/{company_id}\",
-- for example,
-- \"projects\/api-test-project\/tenants\/foo\/companies\/bar\".
ptcgName :: Lens' ProjectsTenantsCompaniesGet Text
ptcgName = lens _ptcgName (\ s a -> s{_ptcgName = a})

-- | JSONP
ptcgCallback :: Lens' ProjectsTenantsCompaniesGet (Maybe Text)
ptcgCallback
  = lens _ptcgCallback (\ s a -> s{_ptcgCallback = a})

instance GoogleRequest ProjectsTenantsCompaniesGet
         where
        type Rs ProjectsTenantsCompaniesGet = Company
        type Scopes ProjectsTenantsCompaniesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsCompaniesGet'{..}
          = go _ptcgName _ptcgXgafv _ptcgUploadProtocol
              _ptcgAccessToken
              _ptcgUploadType
              _ptcgCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsCompaniesGetResource)
                      mempty

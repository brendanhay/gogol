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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Companies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes specified company. Prerequisite: The company has no jobs
-- associated with it.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.delete@.
module Network.Google.Resource.Jobs.Projects.Tenants.Companies.Delete
    (
    -- * REST Resource
      ProjectsTenantsCompaniesDeleteResource

    -- * Creating a Request
    , projectsTenantsCompaniesDelete
    , ProjectsTenantsCompaniesDelete

    -- * Request Lenses
    , ptcdXgafv
    , ptcdUploadProtocol
    , ptcdAccessToken
    , ptcdUploadType
    , ptcdName
    , ptcdCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.companies.delete@ method which the
-- 'ProjectsTenantsCompaniesDelete' request conforms to.
type ProjectsTenantsCompaniesDeleteResource =
     "v4" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes specified company. Prerequisite: The company has no jobs
-- associated with it.
--
-- /See:/ 'projectsTenantsCompaniesDelete' smart constructor.
data ProjectsTenantsCompaniesDelete =
  ProjectsTenantsCompaniesDelete'
    { _ptcdXgafv :: !(Maybe Xgafv)
    , _ptcdUploadProtocol :: !(Maybe Text)
    , _ptcdAccessToken :: !(Maybe Text)
    , _ptcdUploadType :: !(Maybe Text)
    , _ptcdName :: !Text
    , _ptcdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsCompaniesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcdXgafv'
--
-- * 'ptcdUploadProtocol'
--
-- * 'ptcdAccessToken'
--
-- * 'ptcdUploadType'
--
-- * 'ptcdName'
--
-- * 'ptcdCallback'
projectsTenantsCompaniesDelete
    :: Text -- ^ 'ptcdName'
    -> ProjectsTenantsCompaniesDelete
projectsTenantsCompaniesDelete pPtcdName_ =
  ProjectsTenantsCompaniesDelete'
    { _ptcdXgafv = Nothing
    , _ptcdUploadProtocol = Nothing
    , _ptcdAccessToken = Nothing
    , _ptcdUploadType = Nothing
    , _ptcdName = pPtcdName_
    , _ptcdCallback = Nothing
    }


-- | V1 error format.
ptcdXgafv :: Lens' ProjectsTenantsCompaniesDelete (Maybe Xgafv)
ptcdXgafv
  = lens _ptcdXgafv (\ s a -> s{_ptcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcdUploadProtocol :: Lens' ProjectsTenantsCompaniesDelete (Maybe Text)
ptcdUploadProtocol
  = lens _ptcdUploadProtocol
      (\ s a -> s{_ptcdUploadProtocol = a})

-- | OAuth access token.
ptcdAccessToken :: Lens' ProjectsTenantsCompaniesDelete (Maybe Text)
ptcdAccessToken
  = lens _ptcdAccessToken
      (\ s a -> s{_ptcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcdUploadType :: Lens' ProjectsTenantsCompaniesDelete (Maybe Text)
ptcdUploadType
  = lens _ptcdUploadType
      (\ s a -> s{_ptcdUploadType = a})

-- | Required. The resource name of the company to be deleted. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/companies\/{company_id}\",
-- for example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
ptcdName :: Lens' ProjectsTenantsCompaniesDelete Text
ptcdName = lens _ptcdName (\ s a -> s{_ptcdName = a})

-- | JSONP
ptcdCallback :: Lens' ProjectsTenantsCompaniesDelete (Maybe Text)
ptcdCallback
  = lens _ptcdCallback (\ s a -> s{_ptcdCallback = a})

instance GoogleRequest ProjectsTenantsCompaniesDelete
         where
        type Rs ProjectsTenantsCompaniesDelete = Empty
        type Scopes ProjectsTenantsCompaniesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsCompaniesDelete'{..}
          = go _ptcdName _ptcdXgafv _ptcdUploadProtocol
              _ptcdAccessToken
              _ptcdUploadType
              _ptcdCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTenantsCompaniesDeleteResource)
                      mempty

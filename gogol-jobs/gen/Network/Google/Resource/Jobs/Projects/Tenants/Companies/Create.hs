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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Companies.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new company entity.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.create@.
module Network.Google.Resource.Jobs.Projects.Tenants.Companies.Create
    (
    -- * REST Resource
      ProjectsTenantsCompaniesCreateResource

    -- * Creating a Request
    , projectsTenantsCompaniesCreate
    , ProjectsTenantsCompaniesCreate

    -- * Request Lenses
    , ptccParent
    , ptccXgafv
    , ptccUploadProtocol
    , ptccAccessToken
    , ptccUploadType
    , ptccPayload
    , ptccCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.companies.create@ method which the
-- 'ProjectsTenantsCompaniesCreate' request conforms to.
type ProjectsTenantsCompaniesCreateResource =
     "v4" :>
       Capture "parent" Text :>
         "companies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Company :> Post '[JSON] Company

-- | Creates a new company entity.
--
-- /See:/ 'projectsTenantsCompaniesCreate' smart constructor.
data ProjectsTenantsCompaniesCreate =
  ProjectsTenantsCompaniesCreate'
    { _ptccParent :: !Text
    , _ptccXgafv :: !(Maybe Xgafv)
    , _ptccUploadProtocol :: !(Maybe Text)
    , _ptccAccessToken :: !(Maybe Text)
    , _ptccUploadType :: !(Maybe Text)
    , _ptccPayload :: !Company
    , _ptccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsCompaniesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptccParent'
--
-- * 'ptccXgafv'
--
-- * 'ptccUploadProtocol'
--
-- * 'ptccAccessToken'
--
-- * 'ptccUploadType'
--
-- * 'ptccPayload'
--
-- * 'ptccCallback'
projectsTenantsCompaniesCreate
    :: Text -- ^ 'ptccParent'
    -> Company -- ^ 'ptccPayload'
    -> ProjectsTenantsCompaniesCreate
projectsTenantsCompaniesCreate pPtccParent_ pPtccPayload_ =
  ProjectsTenantsCompaniesCreate'
    { _ptccParent = pPtccParent_
    , _ptccXgafv = Nothing
    , _ptccUploadProtocol = Nothing
    , _ptccAccessToken = Nothing
    , _ptccUploadType = Nothing
    , _ptccPayload = pPtccPayload_
    , _ptccCallback = Nothing
    }


-- | Required. Resource name of the tenant under which the company is
-- created. The format is \"projects\/{project_id}\/tenants\/{tenant_id}\",
-- for example, \"projects\/foo\/tenants\/bar\".
ptccParent :: Lens' ProjectsTenantsCompaniesCreate Text
ptccParent
  = lens _ptccParent (\ s a -> s{_ptccParent = a})

-- | V1 error format.
ptccXgafv :: Lens' ProjectsTenantsCompaniesCreate (Maybe Xgafv)
ptccXgafv
  = lens _ptccXgafv (\ s a -> s{_ptccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptccUploadProtocol :: Lens' ProjectsTenantsCompaniesCreate (Maybe Text)
ptccUploadProtocol
  = lens _ptccUploadProtocol
      (\ s a -> s{_ptccUploadProtocol = a})

-- | OAuth access token.
ptccAccessToken :: Lens' ProjectsTenantsCompaniesCreate (Maybe Text)
ptccAccessToken
  = lens _ptccAccessToken
      (\ s a -> s{_ptccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptccUploadType :: Lens' ProjectsTenantsCompaniesCreate (Maybe Text)
ptccUploadType
  = lens _ptccUploadType
      (\ s a -> s{_ptccUploadType = a})

-- | Multipart request metadata.
ptccPayload :: Lens' ProjectsTenantsCompaniesCreate Company
ptccPayload
  = lens _ptccPayload (\ s a -> s{_ptccPayload = a})

-- | JSONP
ptccCallback :: Lens' ProjectsTenantsCompaniesCreate (Maybe Text)
ptccCallback
  = lens _ptccCallback (\ s a -> s{_ptccCallback = a})

instance GoogleRequest ProjectsTenantsCompaniesCreate
         where
        type Rs ProjectsTenantsCompaniesCreate = Company
        type Scopes ProjectsTenantsCompaniesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsCompaniesCreate'{..}
          = go _ptccParent _ptccXgafv _ptccUploadProtocol
              _ptccAccessToken
              _ptccUploadType
              _ptccCallback
              (Just AltJSON)
              _ptccPayload
              jobsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTenantsCompaniesCreateResource)
                      mempty

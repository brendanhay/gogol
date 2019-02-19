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
-- Module      : Network.Google.Resource.Jobs.Projects.Companies.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new company entity.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.companies.create@.
module Network.Google.Resource.Jobs.Projects.Companies.Create
    (
    -- * REST Resource
      ProjectsCompaniesCreateResource

    -- * Creating a Request
    , projectsCompaniesCreate
    , ProjectsCompaniesCreate

    -- * Request Lenses
    , pccParent
    , pccXgafv
    , pccUploadProtocol
    , pccAccessToken
    , pccUploadType
    , pccPayload
    , pccCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.companies.create@ method which the
-- 'ProjectsCompaniesCreate' request conforms to.
type ProjectsCompaniesCreateResource =
     "v3p1beta1" :>
       Capture "parent" Text :>
         "companies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateCompanyRequest :>
                         Post '[JSON] Company

-- | Creates a new company entity.
--
-- /See:/ 'projectsCompaniesCreate' smart constructor.
data ProjectsCompaniesCreate =
  ProjectsCompaniesCreate'
    { _pccParent         :: !Text
    , _pccXgafv          :: !(Maybe Xgafv)
    , _pccUploadProtocol :: !(Maybe Text)
    , _pccAccessToken    :: !(Maybe Text)
    , _pccUploadType     :: !(Maybe Text)
    , _pccPayload        :: !CreateCompanyRequest
    , _pccCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCompaniesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccParent'
--
-- * 'pccXgafv'
--
-- * 'pccUploadProtocol'
--
-- * 'pccAccessToken'
--
-- * 'pccUploadType'
--
-- * 'pccPayload'
--
-- * 'pccCallback'
projectsCompaniesCreate
    :: Text -- ^ 'pccParent'
    -> CreateCompanyRequest -- ^ 'pccPayload'
    -> ProjectsCompaniesCreate
projectsCompaniesCreate pPccParent_ pPccPayload_ =
  ProjectsCompaniesCreate'
    { _pccParent = pPccParent_
    , _pccXgafv = Nothing
    , _pccUploadProtocol = Nothing
    , _pccAccessToken = Nothing
    , _pccUploadType = Nothing
    , _pccPayload = pPccPayload_
    , _pccCallback = Nothing
    }


-- | Required. Resource name of the project under which the company is
-- created. The format is \"projects\/{project_id}\", for example,
-- \"projects\/api-test-project\".
pccParent :: Lens' ProjectsCompaniesCreate Text
pccParent
  = lens _pccParent (\ s a -> s{_pccParent = a})

-- | V1 error format.
pccXgafv :: Lens' ProjectsCompaniesCreate (Maybe Xgafv)
pccXgafv = lens _pccXgafv (\ s a -> s{_pccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pccUploadProtocol :: Lens' ProjectsCompaniesCreate (Maybe Text)
pccUploadProtocol
  = lens _pccUploadProtocol
      (\ s a -> s{_pccUploadProtocol = a})

-- | OAuth access token.
pccAccessToken :: Lens' ProjectsCompaniesCreate (Maybe Text)
pccAccessToken
  = lens _pccAccessToken
      (\ s a -> s{_pccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pccUploadType :: Lens' ProjectsCompaniesCreate (Maybe Text)
pccUploadType
  = lens _pccUploadType
      (\ s a -> s{_pccUploadType = a})

-- | Multipart request metadata.
pccPayload :: Lens' ProjectsCompaniesCreate CreateCompanyRequest
pccPayload
  = lens _pccPayload (\ s a -> s{_pccPayload = a})

-- | JSONP
pccCallback :: Lens' ProjectsCompaniesCreate (Maybe Text)
pccCallback
  = lens _pccCallback (\ s a -> s{_pccCallback = a})

instance GoogleRequest ProjectsCompaniesCreate where
        type Rs ProjectsCompaniesCreate = Company
        type Scopes ProjectsCompaniesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsCompaniesCreate'{..}
          = go _pccParent _pccXgafv _pccUploadProtocol
              _pccAccessToken
              _pccUploadType
              _pccCallback
              (Just AltJSON)
              _pccPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCompaniesCreateResource)
                      mempty

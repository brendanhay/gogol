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
-- Module      : Network.Google.Resource.Jobs.Projects.Companies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves specified company.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.companies.get@.
module Network.Google.Resource.Jobs.Projects.Companies.Get
    (
    -- * REST Resource
      ProjectsCompaniesGetResource

    -- * Creating a Request
    , projectsCompaniesGet
    , ProjectsCompaniesGet

    -- * Request Lenses
    , pcgXgafv
    , pcgUploadProtocol
    , pcgAccessToken
    , pcgUploadType
    , pcgName
    , pcgCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.companies.get@ method which the
-- 'ProjectsCompaniesGet' request conforms to.
type ProjectsCompaniesGetResource =
     "v3p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Company

-- | Retrieves specified company.
--
-- /See:/ 'projectsCompaniesGet' smart constructor.
data ProjectsCompaniesGet =
  ProjectsCompaniesGet'
    { _pcgXgafv          :: !(Maybe Xgafv)
    , _pcgUploadProtocol :: !(Maybe Text)
    , _pcgAccessToken    :: !(Maybe Text)
    , _pcgUploadType     :: !(Maybe Text)
    , _pcgName           :: !Text
    , _pcgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCompaniesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgXgafv'
--
-- * 'pcgUploadProtocol'
--
-- * 'pcgAccessToken'
--
-- * 'pcgUploadType'
--
-- * 'pcgName'
--
-- * 'pcgCallback'
projectsCompaniesGet
    :: Text -- ^ 'pcgName'
    -> ProjectsCompaniesGet
projectsCompaniesGet pPcgName_ =
  ProjectsCompaniesGet'
    { _pcgXgafv = Nothing
    , _pcgUploadProtocol = Nothing
    , _pcgAccessToken = Nothing
    , _pcgUploadType = Nothing
    , _pcgName = pPcgName_
    , _pcgCallback = Nothing
    }


-- | V1 error format.
pcgXgafv :: Lens' ProjectsCompaniesGet (Maybe Xgafv)
pcgXgafv = lens _pcgXgafv (\ s a -> s{_pcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcgUploadProtocol :: Lens' ProjectsCompaniesGet (Maybe Text)
pcgUploadProtocol
  = lens _pcgUploadProtocol
      (\ s a -> s{_pcgUploadProtocol = a})

-- | OAuth access token.
pcgAccessToken :: Lens' ProjectsCompaniesGet (Maybe Text)
pcgAccessToken
  = lens _pcgAccessToken
      (\ s a -> s{_pcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcgUploadType :: Lens' ProjectsCompaniesGet (Maybe Text)
pcgUploadType
  = lens _pcgUploadType
      (\ s a -> s{_pcgUploadType = a})

-- | Required. The resource name of the company to be retrieved. The format
-- is \"projects\/{project_id}\/companies\/{company_id}\", for example,
-- \"projects\/api-test-project\/companies\/foo\".
pcgName :: Lens' ProjectsCompaniesGet Text
pcgName = lens _pcgName (\ s a -> s{_pcgName = a})

-- | JSONP
pcgCallback :: Lens' ProjectsCompaniesGet (Maybe Text)
pcgCallback
  = lens _pcgCallback (\ s a -> s{_pcgCallback = a})

instance GoogleRequest ProjectsCompaniesGet where
        type Rs ProjectsCompaniesGet = Company
        type Scopes ProjectsCompaniesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsCompaniesGet'{..}
          = go _pcgName _pcgXgafv _pcgUploadProtocol
              _pcgAccessToken
              _pcgUploadType
              _pcgCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCompaniesGetResource)
                      mempty

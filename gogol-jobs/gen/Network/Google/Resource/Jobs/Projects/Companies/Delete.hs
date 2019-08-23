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
-- Module      : Network.Google.Resource.Jobs.Projects.Companies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes specified company. Prerequisite: The company has no jobs
-- associated with it.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.companies.delete@.
module Network.Google.Resource.Jobs.Projects.Companies.Delete
    (
    -- * REST Resource
      ProjectsCompaniesDeleteResource

    -- * Creating a Request
    , projectsCompaniesDelete
    , ProjectsCompaniesDelete

    -- * Request Lenses
    , pcdXgafv
    , pcdUploadProtocol
    , pcdAccessToken
    , pcdUploadType
    , pcdName
    , pcdCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.companies.delete@ method which the
-- 'ProjectsCompaniesDelete' request conforms to.
type ProjectsCompaniesDeleteResource =
     "v3p1beta1" :>
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
-- /See:/ 'projectsCompaniesDelete' smart constructor.
data ProjectsCompaniesDelete =
  ProjectsCompaniesDelete'
    { _pcdXgafv          :: !(Maybe Xgafv)
    , _pcdUploadProtocol :: !(Maybe Text)
    , _pcdAccessToken    :: !(Maybe Text)
    , _pcdUploadType     :: !(Maybe Text)
    , _pcdName           :: !Text
    , _pcdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCompaniesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdXgafv'
--
-- * 'pcdUploadProtocol'
--
-- * 'pcdAccessToken'
--
-- * 'pcdUploadType'
--
-- * 'pcdName'
--
-- * 'pcdCallback'
projectsCompaniesDelete
    :: Text -- ^ 'pcdName'
    -> ProjectsCompaniesDelete
projectsCompaniesDelete pPcdName_ =
  ProjectsCompaniesDelete'
    { _pcdXgafv = Nothing
    , _pcdUploadProtocol = Nothing
    , _pcdAccessToken = Nothing
    , _pcdUploadType = Nothing
    , _pcdName = pPcdName_
    , _pcdCallback = Nothing
    }


-- | V1 error format.
pcdXgafv :: Lens' ProjectsCompaniesDelete (Maybe Xgafv)
pcdXgafv = lens _pcdXgafv (\ s a -> s{_pcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcdUploadProtocol :: Lens' ProjectsCompaniesDelete (Maybe Text)
pcdUploadProtocol
  = lens _pcdUploadProtocol
      (\ s a -> s{_pcdUploadProtocol = a})

-- | OAuth access token.
pcdAccessToken :: Lens' ProjectsCompaniesDelete (Maybe Text)
pcdAccessToken
  = lens _pcdAccessToken
      (\ s a -> s{_pcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcdUploadType :: Lens' ProjectsCompaniesDelete (Maybe Text)
pcdUploadType
  = lens _pcdUploadType
      (\ s a -> s{_pcdUploadType = a})

-- | Required. The resource name of the company to be deleted. The format is
-- \"projects\/{project_id}\/companies\/{company_id}\", for example,
-- \"projects\/api-test-project\/companies\/foo\".
pcdName :: Lens' ProjectsCompaniesDelete Text
pcdName = lens _pcdName (\ s a -> s{_pcdName = a})

-- | JSONP
pcdCallback :: Lens' ProjectsCompaniesDelete (Maybe Text)
pcdCallback
  = lens _pcdCallback (\ s a -> s{_pcdCallback = a})

instance GoogleRequest ProjectsCompaniesDelete where
        type Rs ProjectsCompaniesDelete = Empty
        type Scopes ProjectsCompaniesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsCompaniesDelete'{..}
          = go _pcdName _pcdXgafv _pcdUploadProtocol
              _pcdAccessToken
              _pcdUploadType
              _pcdCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCompaniesDeleteResource)
                      mempty

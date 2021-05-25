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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves specified tenant.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.get@.
module Network.Google.Resource.Jobs.Projects.Tenants.Get
    (
    -- * REST Resource
      ProjectsTenantsGetResource

    -- * Creating a Request
    , projectsTenantsGet
    , ProjectsTenantsGet

    -- * Request Lenses
    , ptgXgafv
    , ptgUploadProtocol
    , ptgAccessToken
    , ptgUploadType
    , ptgName
    , ptgCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.get@ method which the
-- 'ProjectsTenantsGet' request conforms to.
type ProjectsTenantsGetResource =
     "v4" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Tenant

-- | Retrieves specified tenant.
--
-- /See:/ 'projectsTenantsGet' smart constructor.
data ProjectsTenantsGet =
  ProjectsTenantsGet'
    { _ptgXgafv :: !(Maybe Xgafv)
    , _ptgUploadProtocol :: !(Maybe Text)
    , _ptgAccessToken :: !(Maybe Text)
    , _ptgUploadType :: !(Maybe Text)
    , _ptgName :: !Text
    , _ptgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgXgafv'
--
-- * 'ptgUploadProtocol'
--
-- * 'ptgAccessToken'
--
-- * 'ptgUploadType'
--
-- * 'ptgName'
--
-- * 'ptgCallback'
projectsTenantsGet
    :: Text -- ^ 'ptgName'
    -> ProjectsTenantsGet
projectsTenantsGet pPtgName_ =
  ProjectsTenantsGet'
    { _ptgXgafv = Nothing
    , _ptgUploadProtocol = Nothing
    , _ptgAccessToken = Nothing
    , _ptgUploadType = Nothing
    , _ptgName = pPtgName_
    , _ptgCallback = Nothing
    }


-- | V1 error format.
ptgXgafv :: Lens' ProjectsTenantsGet (Maybe Xgafv)
ptgXgafv = lens _ptgXgafv (\ s a -> s{_ptgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgUploadProtocol :: Lens' ProjectsTenantsGet (Maybe Text)
ptgUploadProtocol
  = lens _ptgUploadProtocol
      (\ s a -> s{_ptgUploadProtocol = a})

-- | OAuth access token.
ptgAccessToken :: Lens' ProjectsTenantsGet (Maybe Text)
ptgAccessToken
  = lens _ptgAccessToken
      (\ s a -> s{_ptgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgUploadType :: Lens' ProjectsTenantsGet (Maybe Text)
ptgUploadType
  = lens _ptgUploadType
      (\ s a -> s{_ptgUploadType = a})

-- | Required. The resource name of the tenant to be retrieved. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\", for example,
-- \"projects\/foo\/tenants\/bar\".
ptgName :: Lens' ProjectsTenantsGet Text
ptgName = lens _ptgName (\ s a -> s{_ptgName = a})

-- | JSONP
ptgCallback :: Lens' ProjectsTenantsGet (Maybe Text)
ptgCallback
  = lens _ptgCallback (\ s a -> s{_ptgCallback = a})

instance GoogleRequest ProjectsTenantsGet where
        type Rs ProjectsTenantsGet = Tenant
        type Scopes ProjectsTenantsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsGet'{..}
          = go _ptgName _ptgXgafv _ptgUploadProtocol
              _ptgAccessToken
              _ptgUploadType
              _ptgCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsGetResource)
                      mempty

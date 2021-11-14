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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes specified tenant.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.delete@.
module Network.Google.Resource.Jobs.Projects.Tenants.Delete
    (
    -- * REST Resource
      ProjectsTenantsDeleteResource

    -- * Creating a Request
    , projectsTenantsDelete
    , ProjectsTenantsDelete

    -- * Request Lenses
    , ptdXgafv
    , ptdUploadProtocol
    , ptdAccessToken
    , ptdUploadType
    , ptdName
    , ptdCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.delete@ method which the
-- 'ProjectsTenantsDelete' request conforms to.
type ProjectsTenantsDeleteResource =
     "v4" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes specified tenant.
--
-- /See:/ 'projectsTenantsDelete' smart constructor.
data ProjectsTenantsDelete =
  ProjectsTenantsDelete'
    { _ptdXgafv :: !(Maybe Xgafv)
    , _ptdUploadProtocol :: !(Maybe Text)
    , _ptdAccessToken :: !(Maybe Text)
    , _ptdUploadType :: !(Maybe Text)
    , _ptdName :: !Text
    , _ptdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptdXgafv'
--
-- * 'ptdUploadProtocol'
--
-- * 'ptdAccessToken'
--
-- * 'ptdUploadType'
--
-- * 'ptdName'
--
-- * 'ptdCallback'
projectsTenantsDelete
    :: Text -- ^ 'ptdName'
    -> ProjectsTenantsDelete
projectsTenantsDelete pPtdName_ =
  ProjectsTenantsDelete'
    { _ptdXgafv = Nothing
    , _ptdUploadProtocol = Nothing
    , _ptdAccessToken = Nothing
    , _ptdUploadType = Nothing
    , _ptdName = pPtdName_
    , _ptdCallback = Nothing
    }


-- | V1 error format.
ptdXgafv :: Lens' ProjectsTenantsDelete (Maybe Xgafv)
ptdXgafv = lens _ptdXgafv (\ s a -> s{_ptdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptdUploadProtocol :: Lens' ProjectsTenantsDelete (Maybe Text)
ptdUploadProtocol
  = lens _ptdUploadProtocol
      (\ s a -> s{_ptdUploadProtocol = a})

-- | OAuth access token.
ptdAccessToken :: Lens' ProjectsTenantsDelete (Maybe Text)
ptdAccessToken
  = lens _ptdAccessToken
      (\ s a -> s{_ptdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptdUploadType :: Lens' ProjectsTenantsDelete (Maybe Text)
ptdUploadType
  = lens _ptdUploadType
      (\ s a -> s{_ptdUploadType = a})

-- | Required. The resource name of the tenant to be deleted. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\", for example,
-- \"projects\/foo\/tenants\/bar\".
ptdName :: Lens' ProjectsTenantsDelete Text
ptdName = lens _ptdName (\ s a -> s{_ptdName = a})

-- | JSONP
ptdCallback :: Lens' ProjectsTenantsDelete (Maybe Text)
ptdCallback
  = lens _ptdCallback (\ s a -> s{_ptdCallback = a})

instance GoogleRequest ProjectsTenantsDelete where
        type Rs ProjectsTenantsDelete = Empty
        type Scopes ProjectsTenantsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsDelete'{..}
          = go _ptdName _ptdXgafv _ptdUploadProtocol
              _ptdAccessToken
              _ptdUploadType
              _ptdCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsDeleteResource)
                      mempty

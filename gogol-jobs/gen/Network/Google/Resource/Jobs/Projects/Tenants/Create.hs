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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new tenant entity.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.create@.
module Network.Google.Resource.Jobs.Projects.Tenants.Create
    (
    -- * REST Resource
      ProjectsTenantsCreateResource

    -- * Creating a Request
    , projectsTenantsCreate
    , ProjectsTenantsCreate

    -- * Request Lenses
    , ptcParent
    , ptcXgafv
    , ptcUploadProtocol
    , ptcAccessToken
    , ptcUploadType
    , ptcPayload
    , ptcCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.create@ method which the
-- 'ProjectsTenantsCreate' request conforms to.
type ProjectsTenantsCreateResource =
     "v4" :>
       Capture "parent" Text :>
         "tenants" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Tenant :> Post '[JSON] Tenant

-- | Creates a new tenant entity.
--
-- /See:/ 'projectsTenantsCreate' smart constructor.
data ProjectsTenantsCreate =
  ProjectsTenantsCreate'
    { _ptcParent :: !Text
    , _ptcXgafv :: !(Maybe Xgafv)
    , _ptcUploadProtocol :: !(Maybe Text)
    , _ptcAccessToken :: !(Maybe Text)
    , _ptcUploadType :: !(Maybe Text)
    , _ptcPayload :: !Tenant
    , _ptcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcParent'
--
-- * 'ptcXgafv'
--
-- * 'ptcUploadProtocol'
--
-- * 'ptcAccessToken'
--
-- * 'ptcUploadType'
--
-- * 'ptcPayload'
--
-- * 'ptcCallback'
projectsTenantsCreate
    :: Text -- ^ 'ptcParent'
    -> Tenant -- ^ 'ptcPayload'
    -> ProjectsTenantsCreate
projectsTenantsCreate pPtcParent_ pPtcPayload_ =
  ProjectsTenantsCreate'
    { _ptcParent = pPtcParent_
    , _ptcXgafv = Nothing
    , _ptcUploadProtocol = Nothing
    , _ptcAccessToken = Nothing
    , _ptcUploadType = Nothing
    , _ptcPayload = pPtcPayload_
    , _ptcCallback = Nothing
    }


-- | Required. Resource name of the project under which the tenant is
-- created. The format is \"projects\/{project_id}\", for example,
-- \"projects\/foo\".
ptcParent :: Lens' ProjectsTenantsCreate Text
ptcParent
  = lens _ptcParent (\ s a -> s{_ptcParent = a})

-- | V1 error format.
ptcXgafv :: Lens' ProjectsTenantsCreate (Maybe Xgafv)
ptcXgafv = lens _ptcXgafv (\ s a -> s{_ptcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcUploadProtocol :: Lens' ProjectsTenantsCreate (Maybe Text)
ptcUploadProtocol
  = lens _ptcUploadProtocol
      (\ s a -> s{_ptcUploadProtocol = a})

-- | OAuth access token.
ptcAccessToken :: Lens' ProjectsTenantsCreate (Maybe Text)
ptcAccessToken
  = lens _ptcAccessToken
      (\ s a -> s{_ptcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcUploadType :: Lens' ProjectsTenantsCreate (Maybe Text)
ptcUploadType
  = lens _ptcUploadType
      (\ s a -> s{_ptcUploadType = a})

-- | Multipart request metadata.
ptcPayload :: Lens' ProjectsTenantsCreate Tenant
ptcPayload
  = lens _ptcPayload (\ s a -> s{_ptcPayload = a})

-- | JSONP
ptcCallback :: Lens' ProjectsTenantsCreate (Maybe Text)
ptcCallback
  = lens _ptcCallback (\ s a -> s{_ptcCallback = a})

instance GoogleRequest ProjectsTenantsCreate where
        type Rs ProjectsTenantsCreate = Tenant
        type Scopes ProjectsTenantsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsCreate'{..}
          = go _ptcParent _ptcXgafv _ptcUploadProtocol
              _ptcAccessToken
              _ptcUploadType
              _ptcCallback
              (Just AltJSON)
              _ptcPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsCreateResource)
                      mempty

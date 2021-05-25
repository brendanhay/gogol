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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates specified job. Typically, updated contents become visible in
-- search results within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.patch@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Patch
    (
    -- * REST Resource
      ProjectsTenantsJobsPatchResource

    -- * Creating a Request
    , projectsTenantsJobsPatch
    , ProjectsTenantsJobsPatch

    -- * Request Lenses
    , ptjpXgafv
    , ptjpUploadProtocol
    , ptjpUpdateMask
    , ptjpAccessToken
    , ptjpUploadType
    , ptjpPayload
    , ptjpName
    , ptjpCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.patch@ method which the
-- 'ProjectsTenantsJobsPatch' request conforms to.
type ProjectsTenantsJobsPatchResource =
     "v4" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Job :> Patch '[JSON] Job

-- | Updates specified job. Typically, updated contents become visible in
-- search results within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ 'projectsTenantsJobsPatch' smart constructor.
data ProjectsTenantsJobsPatch =
  ProjectsTenantsJobsPatch'
    { _ptjpXgafv :: !(Maybe Xgafv)
    , _ptjpUploadProtocol :: !(Maybe Text)
    , _ptjpUpdateMask :: !(Maybe GFieldMask)
    , _ptjpAccessToken :: !(Maybe Text)
    , _ptjpUploadType :: !(Maybe Text)
    , _ptjpPayload :: !Job
    , _ptjpName :: !Text
    , _ptjpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjpXgafv'
--
-- * 'ptjpUploadProtocol'
--
-- * 'ptjpUpdateMask'
--
-- * 'ptjpAccessToken'
--
-- * 'ptjpUploadType'
--
-- * 'ptjpPayload'
--
-- * 'ptjpName'
--
-- * 'ptjpCallback'
projectsTenantsJobsPatch
    :: Job -- ^ 'ptjpPayload'
    -> Text -- ^ 'ptjpName'
    -> ProjectsTenantsJobsPatch
projectsTenantsJobsPatch pPtjpPayload_ pPtjpName_ =
  ProjectsTenantsJobsPatch'
    { _ptjpXgafv = Nothing
    , _ptjpUploadProtocol = Nothing
    , _ptjpUpdateMask = Nothing
    , _ptjpAccessToken = Nothing
    , _ptjpUploadType = Nothing
    , _ptjpPayload = pPtjpPayload_
    , _ptjpName = pPtjpName_
    , _ptjpCallback = Nothing
    }


-- | V1 error format.
ptjpXgafv :: Lens' ProjectsTenantsJobsPatch (Maybe Xgafv)
ptjpXgafv
  = lens _ptjpXgafv (\ s a -> s{_ptjpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjpUploadProtocol :: Lens' ProjectsTenantsJobsPatch (Maybe Text)
ptjpUploadProtocol
  = lens _ptjpUploadProtocol
      (\ s a -> s{_ptjpUploadProtocol = a})

-- | Strongly recommended for the best service experience. If update_mask is
-- provided, only the specified fields in job are updated. Otherwise all
-- the fields are updated. A field mask to restrict the fields that are
-- updated. Only top level fields of Job are supported.
ptjpUpdateMask :: Lens' ProjectsTenantsJobsPatch (Maybe GFieldMask)
ptjpUpdateMask
  = lens _ptjpUpdateMask
      (\ s a -> s{_ptjpUpdateMask = a})

-- | OAuth access token.
ptjpAccessToken :: Lens' ProjectsTenantsJobsPatch (Maybe Text)
ptjpAccessToken
  = lens _ptjpAccessToken
      (\ s a -> s{_ptjpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjpUploadType :: Lens' ProjectsTenantsJobsPatch (Maybe Text)
ptjpUploadType
  = lens _ptjpUploadType
      (\ s a -> s{_ptjpUploadType = a})

-- | Multipart request metadata.
ptjpPayload :: Lens' ProjectsTenantsJobsPatch Job
ptjpPayload
  = lens _ptjpPayload (\ s a -> s{_ptjpPayload = a})

-- | Required during job update. The resource name for the job. This is
-- generated by the service when a job is created. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/jobs\/{job_id}\". For
-- example, \"projects\/foo\/tenants\/bar\/jobs\/baz\". Use of this field
-- in job queries and API calls is preferred over the use of requisition_id
-- since this value is unique.
ptjpName :: Lens' ProjectsTenantsJobsPatch Text
ptjpName = lens _ptjpName (\ s a -> s{_ptjpName = a})

-- | JSONP
ptjpCallback :: Lens' ProjectsTenantsJobsPatch (Maybe Text)
ptjpCallback
  = lens _ptjpCallback (\ s a -> s{_ptjpCallback = a})

instance GoogleRequest ProjectsTenantsJobsPatch where
        type Rs ProjectsTenantsJobsPatch = Job
        type Scopes ProjectsTenantsJobsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsPatch'{..}
          = go _ptjpName _ptjpXgafv _ptjpUploadProtocol
              _ptjpUpdateMask
              _ptjpAccessToken
              _ptjpUploadType
              _ptjpCallback
              (Just AltJSON)
              _ptjpPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsJobsPatchResource)
                      mempty

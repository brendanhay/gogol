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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.getIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsJobsGetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsJobsGetIAMPolicy
    , ProjectsRegionsJobsGetIAMPolicy

    -- * Request Lenses
    , prjgipXgafv
    , prjgipUploadProtocol
    , prjgipAccessToken
    , prjgipUploadType
    , prjgipPayload
    , prjgipResource
    , prjgipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.getIamPolicy@ method which the
-- 'ProjectsRegionsJobsGetIAMPolicy' request conforms to.
type ProjectsRegionsJobsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsRegionsJobsGetIAMPolicy' smart constructor.
data ProjectsRegionsJobsGetIAMPolicy =
  ProjectsRegionsJobsGetIAMPolicy'
    { _prjgipXgafv :: !(Maybe Xgafv)
    , _prjgipUploadProtocol :: !(Maybe Text)
    , _prjgipAccessToken :: !(Maybe Text)
    , _prjgipUploadType :: !(Maybe Text)
    , _prjgipPayload :: !GetIAMPolicyRequest
    , _prjgipResource :: !Text
    , _prjgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsJobsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjgipXgafv'
--
-- * 'prjgipUploadProtocol'
--
-- * 'prjgipAccessToken'
--
-- * 'prjgipUploadType'
--
-- * 'prjgipPayload'
--
-- * 'prjgipResource'
--
-- * 'prjgipCallback'
projectsRegionsJobsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'prjgipPayload'
    -> Text -- ^ 'prjgipResource'
    -> ProjectsRegionsJobsGetIAMPolicy
projectsRegionsJobsGetIAMPolicy pPrjgipPayload_ pPrjgipResource_ =
  ProjectsRegionsJobsGetIAMPolicy'
    { _prjgipXgafv = Nothing
    , _prjgipUploadProtocol = Nothing
    , _prjgipAccessToken = Nothing
    , _prjgipUploadType = Nothing
    , _prjgipPayload = pPrjgipPayload_
    , _prjgipResource = pPrjgipResource_
    , _prjgipCallback = Nothing
    }


-- | V1 error format.
prjgipXgafv :: Lens' ProjectsRegionsJobsGetIAMPolicy (Maybe Xgafv)
prjgipXgafv
  = lens _prjgipXgafv (\ s a -> s{_prjgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjgipUploadProtocol :: Lens' ProjectsRegionsJobsGetIAMPolicy (Maybe Text)
prjgipUploadProtocol
  = lens _prjgipUploadProtocol
      (\ s a -> s{_prjgipUploadProtocol = a})

-- | OAuth access token.
prjgipAccessToken :: Lens' ProjectsRegionsJobsGetIAMPolicy (Maybe Text)
prjgipAccessToken
  = lens _prjgipAccessToken
      (\ s a -> s{_prjgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjgipUploadType :: Lens' ProjectsRegionsJobsGetIAMPolicy (Maybe Text)
prjgipUploadType
  = lens _prjgipUploadType
      (\ s a -> s{_prjgipUploadType = a})

-- | Multipart request metadata.
prjgipPayload :: Lens' ProjectsRegionsJobsGetIAMPolicy GetIAMPolicyRequest
prjgipPayload
  = lens _prjgipPayload
      (\ s a -> s{_prjgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
prjgipResource :: Lens' ProjectsRegionsJobsGetIAMPolicy Text
prjgipResource
  = lens _prjgipResource
      (\ s a -> s{_prjgipResource = a})

-- | JSONP
prjgipCallback :: Lens' ProjectsRegionsJobsGetIAMPolicy (Maybe Text)
prjgipCallback
  = lens _prjgipCallback
      (\ s a -> s{_prjgipCallback = a})

instance GoogleRequest
           ProjectsRegionsJobsGetIAMPolicy
         where
        type Rs ProjectsRegionsJobsGetIAMPolicy = Policy
        type Scopes ProjectsRegionsJobsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsJobsGetIAMPolicy'{..}
          = go _prjgipResource _prjgipXgafv
              _prjgipUploadProtocol
              _prjgipAccessToken
              _prjgipUploadType
              _prjgipCallback
              (Just AltJSON)
              _prjgipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsJobsGetIAMPolicyResource)
                      mempty

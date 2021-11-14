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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
-- PERMISSION_DENIED errors.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.setIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsJobsSetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsJobsSetIAMPolicy
    , ProjectsRegionsJobsSetIAMPolicy

    -- * Request Lenses
    , prjsipXgafv
    , prjsipUploadProtocol
    , prjsipAccessToken
    , prjsipUploadType
    , prjsipPayload
    , prjsipResource
    , prjsipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.setIamPolicy@ method which the
-- 'ProjectsRegionsJobsSetIAMPolicy' request conforms to.
type ProjectsRegionsJobsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
-- PERMISSION_DENIED errors.
--
-- /See:/ 'projectsRegionsJobsSetIAMPolicy' smart constructor.
data ProjectsRegionsJobsSetIAMPolicy =
  ProjectsRegionsJobsSetIAMPolicy'
    { _prjsipXgafv :: !(Maybe Xgafv)
    , _prjsipUploadProtocol :: !(Maybe Text)
    , _prjsipAccessToken :: !(Maybe Text)
    , _prjsipUploadType :: !(Maybe Text)
    , _prjsipPayload :: !SetIAMPolicyRequest
    , _prjsipResource :: !Text
    , _prjsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsJobsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjsipXgafv'
--
-- * 'prjsipUploadProtocol'
--
-- * 'prjsipAccessToken'
--
-- * 'prjsipUploadType'
--
-- * 'prjsipPayload'
--
-- * 'prjsipResource'
--
-- * 'prjsipCallback'
projectsRegionsJobsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'prjsipPayload'
    -> Text -- ^ 'prjsipResource'
    -> ProjectsRegionsJobsSetIAMPolicy
projectsRegionsJobsSetIAMPolicy pPrjsipPayload_ pPrjsipResource_ =
  ProjectsRegionsJobsSetIAMPolicy'
    { _prjsipXgafv = Nothing
    , _prjsipUploadProtocol = Nothing
    , _prjsipAccessToken = Nothing
    , _prjsipUploadType = Nothing
    , _prjsipPayload = pPrjsipPayload_
    , _prjsipResource = pPrjsipResource_
    , _prjsipCallback = Nothing
    }


-- | V1 error format.
prjsipXgafv :: Lens' ProjectsRegionsJobsSetIAMPolicy (Maybe Xgafv)
prjsipXgafv
  = lens _prjsipXgafv (\ s a -> s{_prjsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjsipUploadProtocol :: Lens' ProjectsRegionsJobsSetIAMPolicy (Maybe Text)
prjsipUploadProtocol
  = lens _prjsipUploadProtocol
      (\ s a -> s{_prjsipUploadProtocol = a})

-- | OAuth access token.
prjsipAccessToken :: Lens' ProjectsRegionsJobsSetIAMPolicy (Maybe Text)
prjsipAccessToken
  = lens _prjsipAccessToken
      (\ s a -> s{_prjsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjsipUploadType :: Lens' ProjectsRegionsJobsSetIAMPolicy (Maybe Text)
prjsipUploadType
  = lens _prjsipUploadType
      (\ s a -> s{_prjsipUploadType = a})

-- | Multipart request metadata.
prjsipPayload :: Lens' ProjectsRegionsJobsSetIAMPolicy SetIAMPolicyRequest
prjsipPayload
  = lens _prjsipPayload
      (\ s a -> s{_prjsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
prjsipResource :: Lens' ProjectsRegionsJobsSetIAMPolicy Text
prjsipResource
  = lens _prjsipResource
      (\ s a -> s{_prjsipResource = a})

-- | JSONP
prjsipCallback :: Lens' ProjectsRegionsJobsSetIAMPolicy (Maybe Text)
prjsipCallback
  = lens _prjsipCallback
      (\ s a -> s{_prjsipCallback = a})

instance GoogleRequest
           ProjectsRegionsJobsSetIAMPolicy
         where
        type Rs ProjectsRegionsJobsSetIAMPolicy = Policy
        type Scopes ProjectsRegionsJobsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsJobsSetIAMPolicy'{..}
          = go _prjsipResource _prjsipXgafv
              _prjsipUploadProtocol
              _prjsipAccessToken
              _prjsipUploadType
              _prjsipCallback
              (Just AltJSON)
              _prjsipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsJobsSetIAMPolicyResource)
                      mempty

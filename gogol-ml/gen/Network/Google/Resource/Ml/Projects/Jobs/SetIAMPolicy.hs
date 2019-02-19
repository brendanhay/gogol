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
-- Module      : Network.Google.Resource.Ml.Projects.Jobs.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.jobs.setIamPolicy@.
module Network.Google.Resource.Ml.Projects.Jobs.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsJobsSetIAMPolicyResource

    -- * Creating a Request
    , projectsJobsSetIAMPolicy
    , ProjectsJobsSetIAMPolicy

    -- * Request Lenses
    , pjsipXgafv
    , pjsipUploadProtocol
    , pjsipAccessToken
    , pjsipUploadType
    , pjsipPayload
    , pjsipResource
    , pjsipCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.jobs.setIamPolicy@ method which the
-- 'ProjectsJobsSetIAMPolicy' request conforms to.
type ProjectsJobsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleIAMV1__SetIAMPolicyRequest :>
                       Post '[JSON] GoogleIAMV1__Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsJobsSetIAMPolicy' smart constructor.
data ProjectsJobsSetIAMPolicy =
  ProjectsJobsSetIAMPolicy'
    { _pjsipXgafv          :: !(Maybe Xgafv)
    , _pjsipUploadProtocol :: !(Maybe Text)
    , _pjsipAccessToken    :: !(Maybe Text)
    , _pjsipUploadType     :: !(Maybe Text)
    , _pjsipPayload        :: !GoogleIAMV1__SetIAMPolicyRequest
    , _pjsipResource       :: !Text
    , _pjsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsJobsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjsipXgafv'
--
-- * 'pjsipUploadProtocol'
--
-- * 'pjsipAccessToken'
--
-- * 'pjsipUploadType'
--
-- * 'pjsipPayload'
--
-- * 'pjsipResource'
--
-- * 'pjsipCallback'
projectsJobsSetIAMPolicy
    :: GoogleIAMV1__SetIAMPolicyRequest -- ^ 'pjsipPayload'
    -> Text -- ^ 'pjsipResource'
    -> ProjectsJobsSetIAMPolicy
projectsJobsSetIAMPolicy pPjsipPayload_ pPjsipResource_ =
  ProjectsJobsSetIAMPolicy'
    { _pjsipXgafv = Nothing
    , _pjsipUploadProtocol = Nothing
    , _pjsipAccessToken = Nothing
    , _pjsipUploadType = Nothing
    , _pjsipPayload = pPjsipPayload_
    , _pjsipResource = pPjsipResource_
    , _pjsipCallback = Nothing
    }

-- | V1 error format.
pjsipXgafv :: Lens' ProjectsJobsSetIAMPolicy (Maybe Xgafv)
pjsipXgafv
  = lens _pjsipXgafv (\ s a -> s{_pjsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjsipUploadProtocol :: Lens' ProjectsJobsSetIAMPolicy (Maybe Text)
pjsipUploadProtocol
  = lens _pjsipUploadProtocol
      (\ s a -> s{_pjsipUploadProtocol = a})

-- | OAuth access token.
pjsipAccessToken :: Lens' ProjectsJobsSetIAMPolicy (Maybe Text)
pjsipAccessToken
  = lens _pjsipAccessToken
      (\ s a -> s{_pjsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjsipUploadType :: Lens' ProjectsJobsSetIAMPolicy (Maybe Text)
pjsipUploadType
  = lens _pjsipUploadType
      (\ s a -> s{_pjsipUploadType = a})

-- | Multipart request metadata.
pjsipPayload :: Lens' ProjectsJobsSetIAMPolicy GoogleIAMV1__SetIAMPolicyRequest
pjsipPayload
  = lens _pjsipPayload (\ s a -> s{_pjsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pjsipResource :: Lens' ProjectsJobsSetIAMPolicy Text
pjsipResource
  = lens _pjsipResource
      (\ s a -> s{_pjsipResource = a})

-- | JSONP
pjsipCallback :: Lens' ProjectsJobsSetIAMPolicy (Maybe Text)
pjsipCallback
  = lens _pjsipCallback
      (\ s a -> s{_pjsipCallback = a})

instance GoogleRequest ProjectsJobsSetIAMPolicy where
        type Rs ProjectsJobsSetIAMPolicy =
             GoogleIAMV1__Policy
        type Scopes ProjectsJobsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobsSetIAMPolicy'{..}
          = go _pjsipResource _pjsipXgafv _pjsipUploadProtocol
              _pjsipAccessToken
              _pjsipUploadType
              _pjsipCallback
              (Just AltJSON)
              _pjsipPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsSetIAMPolicyResource)
                      mempty

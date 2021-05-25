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
-- Module      : Network.Google.Resource.Ml.Projects.Models.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.setIamPolicy@.
module Network.Google.Resource.Ml.Projects.Models.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsModelsSetIAMPolicyResource

    -- * Creating a Request
    , projectsModelsSetIAMPolicy
    , ProjectsModelsSetIAMPolicy

    -- * Request Lenses
    , pmsipXgafv
    , pmsipUploadProtocol
    , pmsipAccessToken
    , pmsipUploadType
    , pmsipPayload
    , pmsipResource
    , pmsipCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.models.setIamPolicy@ method which the
-- 'ProjectsModelsSetIAMPolicy' request conforms to.
type ProjectsModelsSetIAMPolicyResource =
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
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ 'projectsModelsSetIAMPolicy' smart constructor.
data ProjectsModelsSetIAMPolicy =
  ProjectsModelsSetIAMPolicy'
    { _pmsipXgafv :: !(Maybe Xgafv)
    , _pmsipUploadProtocol :: !(Maybe Text)
    , _pmsipAccessToken :: !(Maybe Text)
    , _pmsipUploadType :: !(Maybe Text)
    , _pmsipPayload :: !GoogleIAMV1__SetIAMPolicyRequest
    , _pmsipResource :: !Text
    , _pmsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsModelsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmsipXgafv'
--
-- * 'pmsipUploadProtocol'
--
-- * 'pmsipAccessToken'
--
-- * 'pmsipUploadType'
--
-- * 'pmsipPayload'
--
-- * 'pmsipResource'
--
-- * 'pmsipCallback'
projectsModelsSetIAMPolicy
    :: GoogleIAMV1__SetIAMPolicyRequest -- ^ 'pmsipPayload'
    -> Text -- ^ 'pmsipResource'
    -> ProjectsModelsSetIAMPolicy
projectsModelsSetIAMPolicy pPmsipPayload_ pPmsipResource_ =
  ProjectsModelsSetIAMPolicy'
    { _pmsipXgafv = Nothing
    , _pmsipUploadProtocol = Nothing
    , _pmsipAccessToken = Nothing
    , _pmsipUploadType = Nothing
    , _pmsipPayload = pPmsipPayload_
    , _pmsipResource = pPmsipResource_
    , _pmsipCallback = Nothing
    }


-- | V1 error format.
pmsipXgafv :: Lens' ProjectsModelsSetIAMPolicy (Maybe Xgafv)
pmsipXgafv
  = lens _pmsipXgafv (\ s a -> s{_pmsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmsipUploadProtocol :: Lens' ProjectsModelsSetIAMPolicy (Maybe Text)
pmsipUploadProtocol
  = lens _pmsipUploadProtocol
      (\ s a -> s{_pmsipUploadProtocol = a})

-- | OAuth access token.
pmsipAccessToken :: Lens' ProjectsModelsSetIAMPolicy (Maybe Text)
pmsipAccessToken
  = lens _pmsipAccessToken
      (\ s a -> s{_pmsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmsipUploadType :: Lens' ProjectsModelsSetIAMPolicy (Maybe Text)
pmsipUploadType
  = lens _pmsipUploadType
      (\ s a -> s{_pmsipUploadType = a})

-- | Multipart request metadata.
pmsipPayload :: Lens' ProjectsModelsSetIAMPolicy GoogleIAMV1__SetIAMPolicyRequest
pmsipPayload
  = lens _pmsipPayload (\ s a -> s{_pmsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pmsipResource :: Lens' ProjectsModelsSetIAMPolicy Text
pmsipResource
  = lens _pmsipResource
      (\ s a -> s{_pmsipResource = a})

-- | JSONP
pmsipCallback :: Lens' ProjectsModelsSetIAMPolicy (Maybe Text)
pmsipCallback
  = lens _pmsipCallback
      (\ s a -> s{_pmsipCallback = a})

instance GoogleRequest ProjectsModelsSetIAMPolicy
         where
        type Rs ProjectsModelsSetIAMPolicy =
             GoogleIAMV1__Policy
        type Scopes ProjectsModelsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsSetIAMPolicy'{..}
          = go _pmsipResource _pmsipXgafv _pmsipUploadProtocol
              _pmsipAccessToken
              _pmsipUploadType
              _pmsipCallback
              (Just AltJSON)
              _pmsipPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsSetIAMPolicyResource)
                      mempty

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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.getIamPolicy@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsAttestorsGetIAMPolicyResource

    -- * Creating a Request
    , projectsAttestorsGetIAMPolicy
    , ProjectsAttestorsGetIAMPolicy

    -- * Request Lenses
    , pagipOptionsRequestedPolicyVersion
    , pagipXgafv
    , pagipUploadProtocol
    , pagipAccessToken
    , pagipUploadType
    , pagipResource
    , pagipCallback
    ) where

import Network.Google.BinaryAuthorization.Types
import Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.getIamPolicy@ method which the
-- 'ProjectsAttestorsGetIAMPolicy' request conforms to.
type ProjectsAttestorsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "options.requestedPolicyVersion"
           (Textual Int32)
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] IAMPolicy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsAttestorsGetIAMPolicy' smart constructor.
data ProjectsAttestorsGetIAMPolicy =
  ProjectsAttestorsGetIAMPolicy'
    { _pagipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _pagipXgafv :: !(Maybe Xgafv)
    , _pagipUploadProtocol :: !(Maybe Text)
    , _pagipAccessToken :: !(Maybe Text)
    , _pagipUploadType :: !(Maybe Text)
    , _pagipResource :: !Text
    , _pagipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAttestorsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagipOptionsRequestedPolicyVersion'
--
-- * 'pagipXgafv'
--
-- * 'pagipUploadProtocol'
--
-- * 'pagipAccessToken'
--
-- * 'pagipUploadType'
--
-- * 'pagipResource'
--
-- * 'pagipCallback'
projectsAttestorsGetIAMPolicy
    :: Text -- ^ 'pagipResource'
    -> ProjectsAttestorsGetIAMPolicy
projectsAttestorsGetIAMPolicy pPagipResource_ =
  ProjectsAttestorsGetIAMPolicy'
    { _pagipOptionsRequestedPolicyVersion = Nothing
    , _pagipXgafv = Nothing
    , _pagipUploadProtocol = Nothing
    , _pagipAccessToken = Nothing
    , _pagipUploadType = Nothing
    , _pagipResource = pPagipResource_
    , _pagipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pagipOptionsRequestedPolicyVersion :: Lens' ProjectsAttestorsGetIAMPolicy (Maybe Int32)
pagipOptionsRequestedPolicyVersion
  = lens _pagipOptionsRequestedPolicyVersion
      (\ s a -> s{_pagipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
pagipXgafv :: Lens' ProjectsAttestorsGetIAMPolicy (Maybe Xgafv)
pagipXgafv
  = lens _pagipXgafv (\ s a -> s{_pagipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pagipUploadProtocol :: Lens' ProjectsAttestorsGetIAMPolicy (Maybe Text)
pagipUploadProtocol
  = lens _pagipUploadProtocol
      (\ s a -> s{_pagipUploadProtocol = a})

-- | OAuth access token.
pagipAccessToken :: Lens' ProjectsAttestorsGetIAMPolicy (Maybe Text)
pagipAccessToken
  = lens _pagipAccessToken
      (\ s a -> s{_pagipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pagipUploadType :: Lens' ProjectsAttestorsGetIAMPolicy (Maybe Text)
pagipUploadType
  = lens _pagipUploadType
      (\ s a -> s{_pagipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pagipResource :: Lens' ProjectsAttestorsGetIAMPolicy Text
pagipResource
  = lens _pagipResource
      (\ s a -> s{_pagipResource = a})

-- | JSONP
pagipCallback :: Lens' ProjectsAttestorsGetIAMPolicy (Maybe Text)
pagipCallback
  = lens _pagipCallback
      (\ s a -> s{_pagipCallback = a})

instance GoogleRequest ProjectsAttestorsGetIAMPolicy
         where
        type Rs ProjectsAttestorsGetIAMPolicy = IAMPolicy
        type Scopes ProjectsAttestorsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsAttestorsGetIAMPolicy'{..}
          = go _pagipResource
              _pagipOptionsRequestedPolicyVersion
              _pagipXgafv
              _pagipUploadProtocol
              _pagipAccessToken
              _pagipUploadType
              _pagipCallback
              (Just AltJSON)
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAttestorsGetIAMPolicyResource)
                      mempty

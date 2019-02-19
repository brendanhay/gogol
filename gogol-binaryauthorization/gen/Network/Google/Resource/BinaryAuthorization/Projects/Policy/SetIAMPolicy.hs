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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Policy.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.policy.setIamPolicy@.
module Network.Google.Resource.BinaryAuthorization.Projects.Policy.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsPolicySetIAMPolicyResource

    -- * Creating a Request
    , projectsPolicySetIAMPolicy
    , ProjectsPolicySetIAMPolicy

    -- * Request Lenses
    , ppsipXgafv
    , ppsipUploadProtocol
    , ppsipAccessToken
    , ppsipUploadType
    , ppsipPayload
    , ppsipResource
    , ppsipCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.policy.setIamPolicy@ method which the
-- 'ProjectsPolicySetIAMPolicy' request conforms to.
type ProjectsPolicySetIAMPolicyResource =
     "v1beta1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] IAMPolicy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsPolicySetIAMPolicy' smart constructor.
data ProjectsPolicySetIAMPolicy =
  ProjectsPolicySetIAMPolicy'
    { _ppsipXgafv          :: !(Maybe Xgafv)
    , _ppsipUploadProtocol :: !(Maybe Text)
    , _ppsipAccessToken    :: !(Maybe Text)
    , _ppsipUploadType     :: !(Maybe Text)
    , _ppsipPayload        :: !SetIAMPolicyRequest
    , _ppsipResource       :: !Text
    , _ppsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsPolicySetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppsipXgafv'
--
-- * 'ppsipUploadProtocol'
--
-- * 'ppsipAccessToken'
--
-- * 'ppsipUploadType'
--
-- * 'ppsipPayload'
--
-- * 'ppsipResource'
--
-- * 'ppsipCallback'
projectsPolicySetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'ppsipPayload'
    -> Text -- ^ 'ppsipResource'
    -> ProjectsPolicySetIAMPolicy
projectsPolicySetIAMPolicy pPpsipPayload_ pPpsipResource_ =
  ProjectsPolicySetIAMPolicy'
    { _ppsipXgafv = Nothing
    , _ppsipUploadProtocol = Nothing
    , _ppsipAccessToken = Nothing
    , _ppsipUploadType = Nothing
    , _ppsipPayload = pPpsipPayload_
    , _ppsipResource = pPpsipResource_
    , _ppsipCallback = Nothing
    }


-- | V1 error format.
ppsipXgafv :: Lens' ProjectsPolicySetIAMPolicy (Maybe Xgafv)
ppsipXgafv
  = lens _ppsipXgafv (\ s a -> s{_ppsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppsipUploadProtocol :: Lens' ProjectsPolicySetIAMPolicy (Maybe Text)
ppsipUploadProtocol
  = lens _ppsipUploadProtocol
      (\ s a -> s{_ppsipUploadProtocol = a})

-- | OAuth access token.
ppsipAccessToken :: Lens' ProjectsPolicySetIAMPolicy (Maybe Text)
ppsipAccessToken
  = lens _ppsipAccessToken
      (\ s a -> s{_ppsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppsipUploadType :: Lens' ProjectsPolicySetIAMPolicy (Maybe Text)
ppsipUploadType
  = lens _ppsipUploadType
      (\ s a -> s{_ppsipUploadType = a})

-- | Multipart request metadata.
ppsipPayload :: Lens' ProjectsPolicySetIAMPolicy SetIAMPolicyRequest
ppsipPayload
  = lens _ppsipPayload (\ s a -> s{_ppsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
ppsipResource :: Lens' ProjectsPolicySetIAMPolicy Text
ppsipResource
  = lens _ppsipResource
      (\ s a -> s{_ppsipResource = a})

-- | JSONP
ppsipCallback :: Lens' ProjectsPolicySetIAMPolicy (Maybe Text)
ppsipCallback
  = lens _ppsipCallback
      (\ s a -> s{_ppsipCallback = a})

instance GoogleRequest ProjectsPolicySetIAMPolicy
         where
        type Rs ProjectsPolicySetIAMPolicy = IAMPolicy
        type Scopes ProjectsPolicySetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsPolicySetIAMPolicy'{..}
          = go _ppsipResource _ppsipXgafv _ppsipUploadProtocol
              _ppsipAccessToken
              _ppsipUploadType
              _ppsipCallback
              (Just AltJSON)
              _ppsipPayload
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsPolicySetIAMPolicyResource)
                      mempty

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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Policy.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.policy.getIamPolicy@.
module Network.Google.Resource.BinaryAuthorization.Projects.Policy.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsPolicyGetIAMPolicyResource

    -- * Creating a Request
    , projectsPolicyGetIAMPolicy
    , ProjectsPolicyGetIAMPolicy

    -- * Request Lenses
    , ppgipXgafv
    , ppgipUploadProtocol
    , ppgipAccessToken
    , ppgipUploadType
    , ppgipResource
    , ppgipCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.policy.getIamPolicy@ method which the
-- 'ProjectsPolicyGetIAMPolicy' request conforms to.
type ProjectsPolicyGetIAMPolicyResource =
     "v1beta1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] IAMPolicy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsPolicyGetIAMPolicy' smart constructor.
data ProjectsPolicyGetIAMPolicy = ProjectsPolicyGetIAMPolicy'
    { _ppgipXgafv          :: !(Maybe Xgafv)
    , _ppgipUploadProtocol :: !(Maybe Text)
    , _ppgipAccessToken    :: !(Maybe Text)
    , _ppgipUploadType     :: !(Maybe Text)
    , _ppgipResource       :: !Text
    , _ppgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsPolicyGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppgipXgafv'
--
-- * 'ppgipUploadProtocol'
--
-- * 'ppgipAccessToken'
--
-- * 'ppgipUploadType'
--
-- * 'ppgipResource'
--
-- * 'ppgipCallback'
projectsPolicyGetIAMPolicy
    :: Text -- ^ 'ppgipResource'
    -> ProjectsPolicyGetIAMPolicy
projectsPolicyGetIAMPolicy pPpgipResource_ =
    ProjectsPolicyGetIAMPolicy'
    { _ppgipXgafv = Nothing
    , _ppgipUploadProtocol = Nothing
    , _ppgipAccessToken = Nothing
    , _ppgipUploadType = Nothing
    , _ppgipResource = pPpgipResource_
    , _ppgipCallback = Nothing
    }

-- | V1 error format.
ppgipXgafv :: Lens' ProjectsPolicyGetIAMPolicy (Maybe Xgafv)
ppgipXgafv
  = lens _ppgipXgafv (\ s a -> s{_ppgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppgipUploadProtocol :: Lens' ProjectsPolicyGetIAMPolicy (Maybe Text)
ppgipUploadProtocol
  = lens _ppgipUploadProtocol
      (\ s a -> s{_ppgipUploadProtocol = a})

-- | OAuth access token.
ppgipAccessToken :: Lens' ProjectsPolicyGetIAMPolicy (Maybe Text)
ppgipAccessToken
  = lens _ppgipAccessToken
      (\ s a -> s{_ppgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppgipUploadType :: Lens' ProjectsPolicyGetIAMPolicy (Maybe Text)
ppgipUploadType
  = lens _ppgipUploadType
      (\ s a -> s{_ppgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
ppgipResource :: Lens' ProjectsPolicyGetIAMPolicy Text
ppgipResource
  = lens _ppgipResource
      (\ s a -> s{_ppgipResource = a})

-- | JSONP
ppgipCallback :: Lens' ProjectsPolicyGetIAMPolicy (Maybe Text)
ppgipCallback
  = lens _ppgipCallback
      (\ s a -> s{_ppgipCallback = a})

instance GoogleRequest ProjectsPolicyGetIAMPolicy
         where
        type Rs ProjectsPolicyGetIAMPolicy = IAMPolicy
        type Scopes ProjectsPolicyGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsPolicyGetIAMPolicy'{..}
          = go _ppgipResource _ppgipXgafv _ppgipUploadProtocol
              _ppgipAccessToken
              _ppgipUploadType
              _ppgipCallback
              (Just AltJSON)
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsPolicyGetIAMPolicyResource)
                      mempty

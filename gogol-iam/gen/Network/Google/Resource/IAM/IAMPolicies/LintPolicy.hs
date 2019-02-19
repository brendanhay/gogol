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
-- Module      : Network.Google.Resource.IAM.IAMPolicies.LintPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lints a Cloud IAM policy object or its sub fields. Currently supports
-- google.iam.v1.Policy, google.iam.v1.Binding and
-- google.iam.v1.Binding.condition. Each lint operation consists of
-- multiple lint validation units. Validation units have the following
-- properties: - Each unit inspects the input object in regard to a
-- particular linting aspect and issues a google.iam.admin.v1.LintResult
-- disclosing the result. - Domain of discourse of each unit can be either
-- google.iam.v1.Policy, google.iam.v1.Binding, or
-- google.iam.v1.Binding.condition depending on the purpose of the
-- validation. - A unit may require additional data (like the list of all
-- possible enumerable values of a particular attribute used in the policy
-- instance) which shall be provided by the caller. Refer to the comments
-- of google.iam.admin.v1.LintPolicyRequest.context for more details. The
-- set of applicable validation units is determined by the Cloud IAM server
-- and is not configurable. Regardless of any lint issues or their
-- severities, successful calls to \`lintPolicy\` return an HTTP 200 OK
-- status code.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.iamPolicies.lintPolicy@.
module Network.Google.Resource.IAM.IAMPolicies.LintPolicy
    (
    -- * REST Resource
      IAMPoliciesLintPolicyResource

    -- * Creating a Request
    , iamPoliciesLintPolicy
    , IAMPoliciesLintPolicy

    -- * Request Lenses
    , iplpXgafv
    , iplpUploadProtocol
    , iplpAccessToken
    , iplpUploadType
    , iplpPayload
    , iplpCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.iamPolicies.lintPolicy@ method which the
-- 'IAMPoliciesLintPolicy' request conforms to.
type IAMPoliciesLintPolicyResource =
     "v1" :>
       "iamPolicies:lintPolicy" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] LintPolicyRequest :>
                       Post '[JSON] LintPolicyResponse

-- | Lints a Cloud IAM policy object or its sub fields. Currently supports
-- google.iam.v1.Policy, google.iam.v1.Binding and
-- google.iam.v1.Binding.condition. Each lint operation consists of
-- multiple lint validation units. Validation units have the following
-- properties: - Each unit inspects the input object in regard to a
-- particular linting aspect and issues a google.iam.admin.v1.LintResult
-- disclosing the result. - Domain of discourse of each unit can be either
-- google.iam.v1.Policy, google.iam.v1.Binding, or
-- google.iam.v1.Binding.condition depending on the purpose of the
-- validation. - A unit may require additional data (like the list of all
-- possible enumerable values of a particular attribute used in the policy
-- instance) which shall be provided by the caller. Refer to the comments
-- of google.iam.admin.v1.LintPolicyRequest.context for more details. The
-- set of applicable validation units is determined by the Cloud IAM server
-- and is not configurable. Regardless of any lint issues or their
-- severities, successful calls to \`lintPolicy\` return an HTTP 200 OK
-- status code.
--
-- /See:/ 'iamPoliciesLintPolicy' smart constructor.
data IAMPoliciesLintPolicy =
  IAMPoliciesLintPolicy'
    { _iplpXgafv          :: !(Maybe Xgafv)
    , _iplpUploadProtocol :: !(Maybe Text)
    , _iplpAccessToken    :: !(Maybe Text)
    , _iplpUploadType     :: !(Maybe Text)
    , _iplpPayload        :: !LintPolicyRequest
    , _iplpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IAMPoliciesLintPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iplpXgafv'
--
-- * 'iplpUploadProtocol'
--
-- * 'iplpAccessToken'
--
-- * 'iplpUploadType'
--
-- * 'iplpPayload'
--
-- * 'iplpCallback'
iamPoliciesLintPolicy
    :: LintPolicyRequest -- ^ 'iplpPayload'
    -> IAMPoliciesLintPolicy
iamPoliciesLintPolicy pIplpPayload_ =
  IAMPoliciesLintPolicy'
    { _iplpXgafv = Nothing
    , _iplpUploadProtocol = Nothing
    , _iplpAccessToken = Nothing
    , _iplpUploadType = Nothing
    , _iplpPayload = pIplpPayload_
    , _iplpCallback = Nothing
    }


-- | V1 error format.
iplpXgafv :: Lens' IAMPoliciesLintPolicy (Maybe Xgafv)
iplpXgafv
  = lens _iplpXgafv (\ s a -> s{_iplpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iplpUploadProtocol :: Lens' IAMPoliciesLintPolicy (Maybe Text)
iplpUploadProtocol
  = lens _iplpUploadProtocol
      (\ s a -> s{_iplpUploadProtocol = a})

-- | OAuth access token.
iplpAccessToken :: Lens' IAMPoliciesLintPolicy (Maybe Text)
iplpAccessToken
  = lens _iplpAccessToken
      (\ s a -> s{_iplpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iplpUploadType :: Lens' IAMPoliciesLintPolicy (Maybe Text)
iplpUploadType
  = lens _iplpUploadType
      (\ s a -> s{_iplpUploadType = a})

-- | Multipart request metadata.
iplpPayload :: Lens' IAMPoliciesLintPolicy LintPolicyRequest
iplpPayload
  = lens _iplpPayload (\ s a -> s{_iplpPayload = a})

-- | JSONP
iplpCallback :: Lens' IAMPoliciesLintPolicy (Maybe Text)
iplpCallback
  = lens _iplpCallback (\ s a -> s{_iplpCallback = a})

instance GoogleRequest IAMPoliciesLintPolicy where
        type Rs IAMPoliciesLintPolicy = LintPolicyResponse
        type Scopes IAMPoliciesLintPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient IAMPoliciesLintPolicy'{..}
          = go _iplpXgafv _iplpUploadProtocol _iplpAccessToken
              _iplpUploadType
              _iplpCallback
              (Just AltJSON)
              _iplpPayload
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy IAMPoliciesLintPolicyResource)
                      mempty

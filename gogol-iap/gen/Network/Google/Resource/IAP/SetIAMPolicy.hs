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
-- Module      : Network.Google.Resource.IAP.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy for an Identity-Aware Proxy protected
-- resource. Replaces any existing policy. More information about managing
-- access via IAP can be found at:
-- https:\/\/cloud.google.com\/iap\/docs\/managing-access#managing_access_via_the_api
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.setIamPolicy@.
module Network.Google.Resource.IAP.SetIAMPolicy
    (
    -- * REST Resource
      SetIAMPolicyResource

    -- * Creating a Request
    , setIAMPolicy
    , SetIAMPolicy

    -- * Request Lenses
    , sipXgafv
    , sipUploadProtocol
    , sipAccessToken
    , sipUploadType
    , sipPayload
    , sipResource
    , sipCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.setIamPolicy@ method which the
-- 'SetIAMPolicy' request conforms to.
type SetIAMPolicyResource =
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

-- | Sets the access control policy for an Identity-Aware Proxy protected
-- resource. Replaces any existing policy. More information about managing
-- access via IAP can be found at:
-- https:\/\/cloud.google.com\/iap\/docs\/managing-access#managing_access_via_the_api
--
-- /See:/ 'setIAMPolicy' smart constructor.
data SetIAMPolicy =
  SetIAMPolicy'
    { _sipXgafv :: !(Maybe Xgafv)
    , _sipUploadProtocol :: !(Maybe Text)
    , _sipAccessToken :: !(Maybe Text)
    , _sipUploadType :: !(Maybe Text)
    , _sipPayload :: !SetIAMPolicyRequest
    , _sipResource :: !Text
    , _sipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sipXgafv'
--
-- * 'sipUploadProtocol'
--
-- * 'sipAccessToken'
--
-- * 'sipUploadType'
--
-- * 'sipPayload'
--
-- * 'sipResource'
--
-- * 'sipCallback'
setIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'sipPayload'
    -> Text -- ^ 'sipResource'
    -> SetIAMPolicy
setIAMPolicy pSipPayload_ pSipResource_ =
  SetIAMPolicy'
    { _sipXgafv = Nothing
    , _sipUploadProtocol = Nothing
    , _sipAccessToken = Nothing
    , _sipUploadType = Nothing
    , _sipPayload = pSipPayload_
    , _sipResource = pSipResource_
    , _sipCallback = Nothing
    }


-- | V1 error format.
sipXgafv :: Lens' SetIAMPolicy (Maybe Xgafv)
sipXgafv = lens _sipXgafv (\ s a -> s{_sipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sipUploadProtocol :: Lens' SetIAMPolicy (Maybe Text)
sipUploadProtocol
  = lens _sipUploadProtocol
      (\ s a -> s{_sipUploadProtocol = a})

-- | OAuth access token.
sipAccessToken :: Lens' SetIAMPolicy (Maybe Text)
sipAccessToken
  = lens _sipAccessToken
      (\ s a -> s{_sipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sipUploadType :: Lens' SetIAMPolicy (Maybe Text)
sipUploadType
  = lens _sipUploadType
      (\ s a -> s{_sipUploadType = a})

-- | Multipart request metadata.
sipPayload :: Lens' SetIAMPolicy SetIAMPolicyRequest
sipPayload
  = lens _sipPayload (\ s a -> s{_sipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
sipResource :: Lens' SetIAMPolicy Text
sipResource
  = lens _sipResource (\ s a -> s{_sipResource = a})

-- | JSONP
sipCallback :: Lens' SetIAMPolicy (Maybe Text)
sipCallback
  = lens _sipCallback (\ s a -> s{_sipCallback = a})

instance GoogleRequest SetIAMPolicy where
        type Rs SetIAMPolicy = Policy
        type Scopes SetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient SetIAMPolicy'{..}
          = go _sipResource _sipXgafv _sipUploadProtocol
              _sipAccessToken
              _sipUploadType
              _sipCallback
              (Just AltJSON)
              _sipPayload
              iAPService
          where go
                  = buildClient (Proxy :: Proxy SetIAMPolicyResource)
                      mempty

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
-- Module      : Network.Google.Resource.ServiceBroker.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker Service Broker API Reference> for @servicebroker.getIamPolicy@.
module Network.Google.Resource.ServiceBroker.GetIAMPolicy
    (
    -- * REST Resource
      GetIAMPolicyResource

    -- * Creating a Request
    , getIAMPolicy
    , GetIAMPolicy

    -- * Request Lenses
    , gipXgafv
    , gipUploadProtocol
    , gipAccessToken
    , gipUploadType
    , gipResource
    , gipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceBroker.Types

-- | A resource alias for @servicebroker.getIamPolicy@ method which the
-- 'GetIAMPolicy' request conforms to.
type GetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleIAMV1__Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'getIAMPolicy' smart constructor.
data GetIAMPolicy = GetIAMPolicy'
    { _gipXgafv          :: !(Maybe Xgafv)
    , _gipUploadProtocol :: !(Maybe Text)
    , _gipAccessToken    :: !(Maybe Text)
    , _gipUploadType     :: !(Maybe Text)
    , _gipResource       :: !Text
    , _gipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gipXgafv'
--
-- * 'gipUploadProtocol'
--
-- * 'gipAccessToken'
--
-- * 'gipUploadType'
--
-- * 'gipResource'
--
-- * 'gipCallback'
getIAMPolicy
    :: Text -- ^ 'gipResource'
    -> GetIAMPolicy
getIAMPolicy pGipResource_ =
    GetIAMPolicy'
    { _gipXgafv = Nothing
    , _gipUploadProtocol = Nothing
    , _gipAccessToken = Nothing
    , _gipUploadType = Nothing
    , _gipResource = pGipResource_
    , _gipCallback = Nothing
    }

-- | V1 error format.
gipXgafv :: Lens' GetIAMPolicy (Maybe Xgafv)
gipXgafv = lens _gipXgafv (\ s a -> s{_gipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gipUploadProtocol :: Lens' GetIAMPolicy (Maybe Text)
gipUploadProtocol
  = lens _gipUploadProtocol
      (\ s a -> s{_gipUploadProtocol = a})

-- | OAuth access token.
gipAccessToken :: Lens' GetIAMPolicy (Maybe Text)
gipAccessToken
  = lens _gipAccessToken
      (\ s a -> s{_gipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gipUploadType :: Lens' GetIAMPolicy (Maybe Text)
gipUploadType
  = lens _gipUploadType
      (\ s a -> s{_gipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
gipResource :: Lens' GetIAMPolicy Text
gipResource
  = lens _gipResource (\ s a -> s{_gipResource = a})

-- | JSONP
gipCallback :: Lens' GetIAMPolicy (Maybe Text)
gipCallback
  = lens _gipCallback (\ s a -> s{_gipCallback = a})

instance GoogleRequest GetIAMPolicy where
        type Rs GetIAMPolicy = GoogleIAMV1__Policy
        type Scopes GetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient GetIAMPolicy'{..}
          = go _gipResource _gipXgafv _gipUploadProtocol
              _gipAccessToken
              _gipUploadType
              _gipCallback
              (Just AltJSON)
              serviceBrokerService
          where go
                  = buildClient (Proxy :: Proxy GetIAMPolicyResource)
                      mempty

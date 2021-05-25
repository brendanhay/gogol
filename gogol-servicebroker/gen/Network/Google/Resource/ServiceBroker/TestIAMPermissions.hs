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
-- Module      : Network.Google.Resource.ServiceBroker.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker Service Broker API Reference> for @servicebroker.testIamPermissions@.
module Network.Google.Resource.ServiceBroker.TestIAMPermissions
    (
    -- * REST Resource
      TestIAMPermissionsResource

    -- * Creating a Request
    , testIAMPermissions
    , TestIAMPermissions

    -- * Request Lenses
    , tipXgafv
    , tipUploadProtocol
    , tipAccessToken
    , tipUploadType
    , tipPayload
    , tipResource
    , tipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceBroker.Types

-- | A resource alias for @servicebroker.testIamPermissions@ method which the
-- 'TestIAMPermissions' request conforms to.
type TestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleIAMV1__TestIAMPermissionsRequest
                       :>
                       Post '[JSON] GoogleIAMV1__TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'testIAMPermissions' smart constructor.
data TestIAMPermissions =
  TestIAMPermissions'
    { _tipXgafv :: !(Maybe Xgafv)
    , _tipUploadProtocol :: !(Maybe Text)
    , _tipAccessToken :: !(Maybe Text)
    , _tipUploadType :: !(Maybe Text)
    , _tipPayload :: !GoogleIAMV1__TestIAMPermissionsRequest
    , _tipResource :: !Text
    , _tipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tipXgafv'
--
-- * 'tipUploadProtocol'
--
-- * 'tipAccessToken'
--
-- * 'tipUploadType'
--
-- * 'tipPayload'
--
-- * 'tipResource'
--
-- * 'tipCallback'
testIAMPermissions
    :: GoogleIAMV1__TestIAMPermissionsRequest -- ^ 'tipPayload'
    -> Text -- ^ 'tipResource'
    -> TestIAMPermissions
testIAMPermissions pTipPayload_ pTipResource_ =
  TestIAMPermissions'
    { _tipXgafv = Nothing
    , _tipUploadProtocol = Nothing
    , _tipAccessToken = Nothing
    , _tipUploadType = Nothing
    , _tipPayload = pTipPayload_
    , _tipResource = pTipResource_
    , _tipCallback = Nothing
    }


-- | V1 error format.
tipXgafv :: Lens' TestIAMPermissions (Maybe Xgafv)
tipXgafv = lens _tipXgafv (\ s a -> s{_tipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tipUploadProtocol :: Lens' TestIAMPermissions (Maybe Text)
tipUploadProtocol
  = lens _tipUploadProtocol
      (\ s a -> s{_tipUploadProtocol = a})

-- | OAuth access token.
tipAccessToken :: Lens' TestIAMPermissions (Maybe Text)
tipAccessToken
  = lens _tipAccessToken
      (\ s a -> s{_tipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tipUploadType :: Lens' TestIAMPermissions (Maybe Text)
tipUploadType
  = lens _tipUploadType
      (\ s a -> s{_tipUploadType = a})

-- | Multipart request metadata.
tipPayload :: Lens' TestIAMPermissions GoogleIAMV1__TestIAMPermissionsRequest
tipPayload
  = lens _tipPayload (\ s a -> s{_tipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
tipResource :: Lens' TestIAMPermissions Text
tipResource
  = lens _tipResource (\ s a -> s{_tipResource = a})

-- | JSONP
tipCallback :: Lens' TestIAMPermissions (Maybe Text)
tipCallback
  = lens _tipCallback (\ s a -> s{_tipCallback = a})

instance GoogleRequest TestIAMPermissions where
        type Rs TestIAMPermissions =
             GoogleIAMV1__TestIAMPermissionsResponse
        type Scopes TestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TestIAMPermissions'{..}
          = go _tipResource _tipXgafv _tipUploadProtocol
              _tipAccessToken
              _tipUploadType
              _tipCallback
              (Just AltJSON)
              _tipPayload
              serviceBrokerService
          where go
                  = buildClient
                      (Proxy :: Proxy TestIAMPermissionsResource)
                      mempty

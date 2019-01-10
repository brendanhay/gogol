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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Policy.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.policy.testIamPermissions@.
module Network.Google.Resource.BinaryAuthorization.Projects.Policy.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsPolicyTestIAMPermissionsResource

    -- * Creating a Request
    , projectsPolicyTestIAMPermissions
    , ProjectsPolicyTestIAMPermissions

    -- * Request Lenses
    , pptipXgafv
    , pptipUploadProtocol
    , pptipAccessToken
    , pptipUploadType
    , pptipPayload
    , pptipResource
    , pptipCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.policy.testIamPermissions@ method which the
-- 'ProjectsPolicyTestIAMPermissions' request conforms to.
type ProjectsPolicyTestIAMPermissionsResource =
     "v1beta1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsPolicyTestIAMPermissions' smart constructor.
data ProjectsPolicyTestIAMPermissions = ProjectsPolicyTestIAMPermissions'
    { _pptipXgafv          :: !(Maybe Xgafv)
    , _pptipUploadProtocol :: !(Maybe Text)
    , _pptipAccessToken    :: !(Maybe Text)
    , _pptipUploadType     :: !(Maybe Text)
    , _pptipPayload        :: !TestIAMPermissionsRequest
    , _pptipResource       :: !Text
    , _pptipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsPolicyTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pptipXgafv'
--
-- * 'pptipUploadProtocol'
--
-- * 'pptipAccessToken'
--
-- * 'pptipUploadType'
--
-- * 'pptipPayload'
--
-- * 'pptipResource'
--
-- * 'pptipCallback'
projectsPolicyTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pptipPayload'
    -> Text -- ^ 'pptipResource'
    -> ProjectsPolicyTestIAMPermissions
projectsPolicyTestIAMPermissions pPptipPayload_ pPptipResource_ =
    ProjectsPolicyTestIAMPermissions'
    { _pptipXgafv = Nothing
    , _pptipUploadProtocol = Nothing
    , _pptipAccessToken = Nothing
    , _pptipUploadType = Nothing
    , _pptipPayload = pPptipPayload_
    , _pptipResource = pPptipResource_
    , _pptipCallback = Nothing
    }

-- | V1 error format.
pptipXgafv :: Lens' ProjectsPolicyTestIAMPermissions (Maybe Xgafv)
pptipXgafv
  = lens _pptipXgafv (\ s a -> s{_pptipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pptipUploadProtocol :: Lens' ProjectsPolicyTestIAMPermissions (Maybe Text)
pptipUploadProtocol
  = lens _pptipUploadProtocol
      (\ s a -> s{_pptipUploadProtocol = a})

-- | OAuth access token.
pptipAccessToken :: Lens' ProjectsPolicyTestIAMPermissions (Maybe Text)
pptipAccessToken
  = lens _pptipAccessToken
      (\ s a -> s{_pptipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pptipUploadType :: Lens' ProjectsPolicyTestIAMPermissions (Maybe Text)
pptipUploadType
  = lens _pptipUploadType
      (\ s a -> s{_pptipUploadType = a})

-- | Multipart request metadata.
pptipPayload :: Lens' ProjectsPolicyTestIAMPermissions TestIAMPermissionsRequest
pptipPayload
  = lens _pptipPayload (\ s a -> s{_pptipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pptipResource :: Lens' ProjectsPolicyTestIAMPermissions Text
pptipResource
  = lens _pptipResource
      (\ s a -> s{_pptipResource = a})

-- | JSONP
pptipCallback :: Lens' ProjectsPolicyTestIAMPermissions (Maybe Text)
pptipCallback
  = lens _pptipCallback
      (\ s a -> s{_pptipCallback = a})

instance GoogleRequest
         ProjectsPolicyTestIAMPermissions where
        type Rs ProjectsPolicyTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsPolicyTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsPolicyTestIAMPermissions'{..}
          = go _pptipResource _pptipXgafv _pptipUploadProtocol
              _pptipAccessToken
              _pptipUploadType
              _pptipCallback
              (Just AltJSON)
              _pptipPayload
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsPolicyTestIAMPermissionsResource)
                      mempty

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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.testIamPermissions@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsAttestorsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsAttestorsTestIAMPermissions
    , ProjectsAttestorsTestIAMPermissions

    -- * Request Lenses
    , patipXgafv
    , patipUploadProtocol
    , patipAccessToken
    , patipUploadType
    , patipPayload
    , patipResource
    , patipCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.testIamPermissions@ method which the
-- 'ProjectsAttestorsTestIAMPermissions' request conforms to.
type ProjectsAttestorsTestIAMPermissionsResource =
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
-- /See:/ 'projectsAttestorsTestIAMPermissions' smart constructor.
data ProjectsAttestorsTestIAMPermissions =
  ProjectsAttestorsTestIAMPermissions'
    { _patipXgafv          :: !(Maybe Xgafv)
    , _patipUploadProtocol :: !(Maybe Text)
    , _patipAccessToken    :: !(Maybe Text)
    , _patipUploadType     :: !(Maybe Text)
    , _patipPayload        :: !TestIAMPermissionsRequest
    , _patipResource       :: !Text
    , _patipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAttestorsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'patipXgafv'
--
-- * 'patipUploadProtocol'
--
-- * 'patipAccessToken'
--
-- * 'patipUploadType'
--
-- * 'patipPayload'
--
-- * 'patipResource'
--
-- * 'patipCallback'
projectsAttestorsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'patipPayload'
    -> Text -- ^ 'patipResource'
    -> ProjectsAttestorsTestIAMPermissions
projectsAttestorsTestIAMPermissions pPatipPayload_ pPatipResource_ =
  ProjectsAttestorsTestIAMPermissions'
    { _patipXgafv = Nothing
    , _patipUploadProtocol = Nothing
    , _patipAccessToken = Nothing
    , _patipUploadType = Nothing
    , _patipPayload = pPatipPayload_
    , _patipResource = pPatipResource_
    , _patipCallback = Nothing
    }


-- | V1 error format.
patipXgafv :: Lens' ProjectsAttestorsTestIAMPermissions (Maybe Xgafv)
patipXgafv
  = lens _patipXgafv (\ s a -> s{_patipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
patipUploadProtocol :: Lens' ProjectsAttestorsTestIAMPermissions (Maybe Text)
patipUploadProtocol
  = lens _patipUploadProtocol
      (\ s a -> s{_patipUploadProtocol = a})

-- | OAuth access token.
patipAccessToken :: Lens' ProjectsAttestorsTestIAMPermissions (Maybe Text)
patipAccessToken
  = lens _patipAccessToken
      (\ s a -> s{_patipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
patipUploadType :: Lens' ProjectsAttestorsTestIAMPermissions (Maybe Text)
patipUploadType
  = lens _patipUploadType
      (\ s a -> s{_patipUploadType = a})

-- | Multipart request metadata.
patipPayload :: Lens' ProjectsAttestorsTestIAMPermissions TestIAMPermissionsRequest
patipPayload
  = lens _patipPayload (\ s a -> s{_patipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
patipResource :: Lens' ProjectsAttestorsTestIAMPermissions Text
patipResource
  = lens _patipResource
      (\ s a -> s{_patipResource = a})

-- | JSONP
patipCallback :: Lens' ProjectsAttestorsTestIAMPermissions (Maybe Text)
patipCallback
  = lens _patipCallback
      (\ s a -> s{_patipCallback = a})

instance GoogleRequest
           ProjectsAttestorsTestIAMPermissions
         where
        type Rs ProjectsAttestorsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsAttestorsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsAttestorsTestIAMPermissions'{..}
          = go _patipResource _patipXgafv _patipUploadProtocol
              _patipAccessToken
              _patipUploadType
              _patipCallback
              (Just AltJSON)
              _patipPayload
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAttestorsTestIAMPermissionsResource)
                      mempty

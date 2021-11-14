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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.setIamPolicy@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsKeyRingsSetIAMPolicy
    , ProjectsLocationsKeyRingsSetIAMPolicy

    -- * Request Lenses
    , plkrsipXgafv
    , plkrsipUploadProtocol
    , plkrsipAccessToken
    , plkrsipUploadType
    , plkrsipPayload
    , plkrsipResource
    , plkrsipCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.setIamPolicy@ method which the
-- 'ProjectsLocationsKeyRingsSetIAMPolicy' request conforms to.
type ProjectsLocationsKeyRingsSetIAMPolicyResource =
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

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ 'projectsLocationsKeyRingsSetIAMPolicy' smart constructor.
data ProjectsLocationsKeyRingsSetIAMPolicy =
  ProjectsLocationsKeyRingsSetIAMPolicy'
    { _plkrsipXgafv :: !(Maybe Xgafv)
    , _plkrsipUploadProtocol :: !(Maybe Text)
    , _plkrsipAccessToken :: !(Maybe Text)
    , _plkrsipUploadType :: !(Maybe Text)
    , _plkrsipPayload :: !SetIAMPolicyRequest
    , _plkrsipResource :: !Text
    , _plkrsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrsipXgafv'
--
-- * 'plkrsipUploadProtocol'
--
-- * 'plkrsipAccessToken'
--
-- * 'plkrsipUploadType'
--
-- * 'plkrsipPayload'
--
-- * 'plkrsipResource'
--
-- * 'plkrsipCallback'
projectsLocationsKeyRingsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plkrsipPayload'
    -> Text -- ^ 'plkrsipResource'
    -> ProjectsLocationsKeyRingsSetIAMPolicy
projectsLocationsKeyRingsSetIAMPolicy pPlkrsipPayload_ pPlkrsipResource_ =
  ProjectsLocationsKeyRingsSetIAMPolicy'
    { _plkrsipXgafv = Nothing
    , _plkrsipUploadProtocol = Nothing
    , _plkrsipAccessToken = Nothing
    , _plkrsipUploadType = Nothing
    , _plkrsipPayload = pPlkrsipPayload_
    , _plkrsipResource = pPlkrsipResource_
    , _plkrsipCallback = Nothing
    }


-- | V1 error format.
plkrsipXgafv :: Lens' ProjectsLocationsKeyRingsSetIAMPolicy (Maybe Xgafv)
plkrsipXgafv
  = lens _plkrsipXgafv (\ s a -> s{_plkrsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrsipUploadProtocol :: Lens' ProjectsLocationsKeyRingsSetIAMPolicy (Maybe Text)
plkrsipUploadProtocol
  = lens _plkrsipUploadProtocol
      (\ s a -> s{_plkrsipUploadProtocol = a})

-- | OAuth access token.
plkrsipAccessToken :: Lens' ProjectsLocationsKeyRingsSetIAMPolicy (Maybe Text)
plkrsipAccessToken
  = lens _plkrsipAccessToken
      (\ s a -> s{_plkrsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrsipUploadType :: Lens' ProjectsLocationsKeyRingsSetIAMPolicy (Maybe Text)
plkrsipUploadType
  = lens _plkrsipUploadType
      (\ s a -> s{_plkrsipUploadType = a})

-- | Multipart request metadata.
plkrsipPayload :: Lens' ProjectsLocationsKeyRingsSetIAMPolicy SetIAMPolicyRequest
plkrsipPayload
  = lens _plkrsipPayload
      (\ s a -> s{_plkrsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plkrsipResource :: Lens' ProjectsLocationsKeyRingsSetIAMPolicy Text
plkrsipResource
  = lens _plkrsipResource
      (\ s a -> s{_plkrsipResource = a})

-- | JSONP
plkrsipCallback :: Lens' ProjectsLocationsKeyRingsSetIAMPolicy (Maybe Text)
plkrsipCallback
  = lens _plkrsipCallback
      (\ s a -> s{_plkrsipCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsSetIAMPolicy
         where
        type Rs ProjectsLocationsKeyRingsSetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsKeyRingsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsSetIAMPolicy'{..}
          = go _plkrsipResource _plkrsipXgafv
              _plkrsipUploadProtocol
              _plkrsipAccessToken
              _plkrsipUploadType
              _plkrsipCallback
              (Just AltJSON)
              _plkrsipPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsKeyRingsSetIAMPolicyResource)
                      mempty

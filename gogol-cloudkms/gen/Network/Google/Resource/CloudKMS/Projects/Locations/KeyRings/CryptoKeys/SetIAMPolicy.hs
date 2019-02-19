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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.setIamPolicy@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysSetIAMPolicy
    , ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy

    -- * Request Lenses
    , plkrcksipXgafv
    , plkrcksipUploadProtocol
    , plkrcksipAccessToken
    , plkrcksipUploadType
    , plkrcksipPayload
    , plkrcksipResource
    , plkrcksipCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.setIamPolicy@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicyResource
     =
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
-- existing policy.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysSetIAMPolicy' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy =
  ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy'
    { _plkrcksipXgafv          :: !(Maybe Xgafv)
    , _plkrcksipUploadProtocol :: !(Maybe Text)
    , _plkrcksipAccessToken    :: !(Maybe Text)
    , _plkrcksipUploadType     :: !(Maybe Text)
    , _plkrcksipPayload        :: !SetIAMPolicyRequest
    , _plkrcksipResource       :: !Text
    , _plkrcksipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrcksipXgafv'
--
-- * 'plkrcksipUploadProtocol'
--
-- * 'plkrcksipAccessToken'
--
-- * 'plkrcksipUploadType'
--
-- * 'plkrcksipPayload'
--
-- * 'plkrcksipResource'
--
-- * 'plkrcksipCallback'
projectsLocationsKeyRingsCryptoKeysSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plkrcksipPayload'
    -> Text -- ^ 'plkrcksipResource'
    -> ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy
projectsLocationsKeyRingsCryptoKeysSetIAMPolicy pPlkrcksipPayload_ pPlkrcksipResource_ =
  ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy'
    { _plkrcksipXgafv = Nothing
    , _plkrcksipUploadProtocol = Nothing
    , _plkrcksipAccessToken = Nothing
    , _plkrcksipUploadType = Nothing
    , _plkrcksipPayload = pPlkrcksipPayload_
    , _plkrcksipResource = pPlkrcksipResource_
    , _plkrcksipCallback = Nothing
    }


-- | V1 error format.
plkrcksipXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy (Maybe Xgafv)
plkrcksipXgafv
  = lens _plkrcksipXgafv
      (\ s a -> s{_plkrcksipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrcksipUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy (Maybe Text)
plkrcksipUploadProtocol
  = lens _plkrcksipUploadProtocol
      (\ s a -> s{_plkrcksipUploadProtocol = a})

-- | OAuth access token.
plkrcksipAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy (Maybe Text)
plkrcksipAccessToken
  = lens _plkrcksipAccessToken
      (\ s a -> s{_plkrcksipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrcksipUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy (Maybe Text)
plkrcksipUploadType
  = lens _plkrcksipUploadType
      (\ s a -> s{_plkrcksipUploadType = a})

-- | Multipart request metadata.
plkrcksipPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy SetIAMPolicyRequest
plkrcksipPayload
  = lens _plkrcksipPayload
      (\ s a -> s{_plkrcksipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plkrcksipResource :: Lens' ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy Text
plkrcksipResource
  = lens _plkrcksipResource
      (\ s a -> s{_plkrcksipResource = a})

-- | JSONP
plkrcksipCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy (Maybe Text)
plkrcksipCallback
  = lens _plkrcksipCallback
      (\ s a -> s{_plkrcksipCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicy'{..}
          = go _plkrcksipResource _plkrcksipXgafv
              _plkrcksipUploadProtocol
              _plkrcksipAccessToken
              _plkrcksipUploadType
              _plkrcksipCallback
              (Just AltJSON)
              _plkrcksipPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicyResource)
                      mempty

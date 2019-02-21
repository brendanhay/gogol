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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.getIamPolicy@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysGetIAMPolicy
    , ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy

    -- * Request Lenses
    , plkrckgipXgafv
    , plkrckgipUploadProtocol
    , plkrckgipAccessToken
    , plkrckgipUploadType
    , plkrckgipResource
    , plkrckgipCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.getIamPolicy@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysGetIAMPolicy' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy =
  ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy'
    { _plkrckgipXgafv          :: !(Maybe Xgafv)
    , _plkrckgipUploadProtocol :: !(Maybe Text)
    , _plkrckgipAccessToken    :: !(Maybe Text)
    , _plkrckgipUploadType     :: !(Maybe Text)
    , _plkrckgipResource       :: !Text
    , _plkrckgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckgipXgafv'
--
-- * 'plkrckgipUploadProtocol'
--
-- * 'plkrckgipAccessToken'
--
-- * 'plkrckgipUploadType'
--
-- * 'plkrckgipResource'
--
-- * 'plkrckgipCallback'
projectsLocationsKeyRingsCryptoKeysGetIAMPolicy
    :: Text -- ^ 'plkrckgipResource'
    -> ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy
projectsLocationsKeyRingsCryptoKeysGetIAMPolicy pPlkrckgipResource_ =
  ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy'
    { _plkrckgipXgafv = Nothing
    , _plkrckgipUploadProtocol = Nothing
    , _plkrckgipAccessToken = Nothing
    , _plkrckgipUploadType = Nothing
    , _plkrckgipResource = pPlkrckgipResource_
    , _plkrckgipCallback = Nothing
    }


-- | V1 error format.
plkrckgipXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy (Maybe Xgafv)
plkrckgipXgafv
  = lens _plkrckgipXgafv
      (\ s a -> s{_plkrckgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckgipUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy (Maybe Text)
plkrckgipUploadProtocol
  = lens _plkrckgipUploadProtocol
      (\ s a -> s{_plkrckgipUploadProtocol = a})

-- | OAuth access token.
plkrckgipAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy (Maybe Text)
plkrckgipAccessToken
  = lens _plkrckgipAccessToken
      (\ s a -> s{_plkrckgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckgipUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy (Maybe Text)
plkrckgipUploadType
  = lens _plkrckgipUploadType
      (\ s a -> s{_plkrckgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plkrckgipResource :: Lens' ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy Text
plkrckgipResource
  = lens _plkrckgipResource
      (\ s a -> s{_plkrckgipResource = a})

-- | JSONP
plkrckgipCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy (Maybe Text)
plkrckgipCallback
  = lens _plkrckgipCallback
      (\ s a -> s{_plkrckgipCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicy'{..}
          = go _plkrckgipResource _plkrckgipXgafv
              _plkrckgipUploadProtocol
              _plkrckgipAccessToken
              _plkrckgipUploadType
              _plkrckgipCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicyResource)
                      mempty

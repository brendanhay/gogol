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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.getIamPolicy@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsKeyRingsGetIAMPolicy
    , ProjectsLocationsKeyRingsGetIAMPolicy

    -- * Request Lenses
    , plkrgipXgafv
    , plkrgipUploadProtocol
    , plkrgipAccessToken
    , plkrgipUploadType
    , plkrgipResource
    , plkrgipCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.getIamPolicy@ method which the
-- 'ProjectsLocationsKeyRingsGetIAMPolicy' request conforms to.
type ProjectsLocationsKeyRingsGetIAMPolicyResource =
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
-- /See:/ 'projectsLocationsKeyRingsGetIAMPolicy' smart constructor.
data ProjectsLocationsKeyRingsGetIAMPolicy =
  ProjectsLocationsKeyRingsGetIAMPolicy'
    { _plkrgipXgafv          :: !(Maybe Xgafv)
    , _plkrgipUploadProtocol :: !(Maybe Text)
    , _plkrgipAccessToken    :: !(Maybe Text)
    , _plkrgipUploadType     :: !(Maybe Text)
    , _plkrgipResource       :: !Text
    , _plkrgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrgipXgafv'
--
-- * 'plkrgipUploadProtocol'
--
-- * 'plkrgipAccessToken'
--
-- * 'plkrgipUploadType'
--
-- * 'plkrgipResource'
--
-- * 'plkrgipCallback'
projectsLocationsKeyRingsGetIAMPolicy
    :: Text -- ^ 'plkrgipResource'
    -> ProjectsLocationsKeyRingsGetIAMPolicy
projectsLocationsKeyRingsGetIAMPolicy pPlkrgipResource_ =
  ProjectsLocationsKeyRingsGetIAMPolicy'
    { _plkrgipXgafv = Nothing
    , _plkrgipUploadProtocol = Nothing
    , _plkrgipAccessToken = Nothing
    , _plkrgipUploadType = Nothing
    , _plkrgipResource = pPlkrgipResource_
    , _plkrgipCallback = Nothing
    }

-- | V1 error format.
plkrgipXgafv :: Lens' ProjectsLocationsKeyRingsGetIAMPolicy (Maybe Xgafv)
plkrgipXgafv
  = lens _plkrgipXgafv (\ s a -> s{_plkrgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrgipUploadProtocol :: Lens' ProjectsLocationsKeyRingsGetIAMPolicy (Maybe Text)
plkrgipUploadProtocol
  = lens _plkrgipUploadProtocol
      (\ s a -> s{_plkrgipUploadProtocol = a})

-- | OAuth access token.
plkrgipAccessToken :: Lens' ProjectsLocationsKeyRingsGetIAMPolicy (Maybe Text)
plkrgipAccessToken
  = lens _plkrgipAccessToken
      (\ s a -> s{_plkrgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrgipUploadType :: Lens' ProjectsLocationsKeyRingsGetIAMPolicy (Maybe Text)
plkrgipUploadType
  = lens _plkrgipUploadType
      (\ s a -> s{_plkrgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plkrgipResource :: Lens' ProjectsLocationsKeyRingsGetIAMPolicy Text
plkrgipResource
  = lens _plkrgipResource
      (\ s a -> s{_plkrgipResource = a})

-- | JSONP
plkrgipCallback :: Lens' ProjectsLocationsKeyRingsGetIAMPolicy (Maybe Text)
plkrgipCallback
  = lens _plkrgipCallback
      (\ s a -> s{_plkrgipCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsGetIAMPolicy
         where
        type Rs ProjectsLocationsKeyRingsGetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsKeyRingsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsGetIAMPolicy'{..}
          = go _plkrgipResource _plkrgipXgafv
              _plkrgipUploadProtocol
              _plkrgipAccessToken
              _plkrgipUploadType
              _plkrgipCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsKeyRingsGetIAMPolicyResource)
                      mempty

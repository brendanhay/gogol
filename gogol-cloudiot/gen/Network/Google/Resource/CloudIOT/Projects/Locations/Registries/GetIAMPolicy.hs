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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.getIamPolicy@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsRegistriesGetIAMPolicy
    , ProjectsLocationsRegistriesGetIAMPolicy

    -- * Request Lenses
    , plrgipXgafv
    , plrgipUploadProtocol
    , plrgipAccessToken
    , plrgipUploadType
    , plrgipPayload
    , plrgipResource
    , plrgipCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.getIamPolicy@ method which the
-- 'ProjectsLocationsRegistriesGetIAMPolicy' request conforms to.
type ProjectsLocationsRegistriesGetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsLocationsRegistriesGetIAMPolicy' smart constructor.
data ProjectsLocationsRegistriesGetIAMPolicy =
  ProjectsLocationsRegistriesGetIAMPolicy'
    { _plrgipXgafv          :: !(Maybe Xgafv)
    , _plrgipUploadProtocol :: !(Maybe Text)
    , _plrgipAccessToken    :: !(Maybe Text)
    , _plrgipUploadType     :: !(Maybe Text)
    , _plrgipPayload        :: !GetIAMPolicyRequest
    , _plrgipResource       :: !Text
    , _plrgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgipXgafv'
--
-- * 'plrgipUploadProtocol'
--
-- * 'plrgipAccessToken'
--
-- * 'plrgipUploadType'
--
-- * 'plrgipPayload'
--
-- * 'plrgipResource'
--
-- * 'plrgipCallback'
projectsLocationsRegistriesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'plrgipPayload'
    -> Text -- ^ 'plrgipResource'
    -> ProjectsLocationsRegistriesGetIAMPolicy
projectsLocationsRegistriesGetIAMPolicy pPlrgipPayload_ pPlrgipResource_ =
  ProjectsLocationsRegistriesGetIAMPolicy'
    { _plrgipXgafv = Nothing
    , _plrgipUploadProtocol = Nothing
    , _plrgipAccessToken = Nothing
    , _plrgipUploadType = Nothing
    , _plrgipPayload = pPlrgipPayload_
    , _plrgipResource = pPlrgipResource_
    , _plrgipCallback = Nothing
    }

-- | V1 error format.
plrgipXgafv :: Lens' ProjectsLocationsRegistriesGetIAMPolicy (Maybe Xgafv)
plrgipXgafv
  = lens _plrgipXgafv (\ s a -> s{_plrgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgipUploadProtocol :: Lens' ProjectsLocationsRegistriesGetIAMPolicy (Maybe Text)
plrgipUploadProtocol
  = lens _plrgipUploadProtocol
      (\ s a -> s{_plrgipUploadProtocol = a})

-- | OAuth access token.
plrgipAccessToken :: Lens' ProjectsLocationsRegistriesGetIAMPolicy (Maybe Text)
plrgipAccessToken
  = lens _plrgipAccessToken
      (\ s a -> s{_plrgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgipUploadType :: Lens' ProjectsLocationsRegistriesGetIAMPolicy (Maybe Text)
plrgipUploadType
  = lens _plrgipUploadType
      (\ s a -> s{_plrgipUploadType = a})

-- | Multipart request metadata.
plrgipPayload :: Lens' ProjectsLocationsRegistriesGetIAMPolicy GetIAMPolicyRequest
plrgipPayload
  = lens _plrgipPayload
      (\ s a -> s{_plrgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plrgipResource :: Lens' ProjectsLocationsRegistriesGetIAMPolicy Text
plrgipResource
  = lens _plrgipResource
      (\ s a -> s{_plrgipResource = a})

-- | JSONP
plrgipCallback :: Lens' ProjectsLocationsRegistriesGetIAMPolicy (Maybe Text)
plrgipCallback
  = lens _plrgipCallback
      (\ s a -> s{_plrgipCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGetIAMPolicy
         where
        type Rs ProjectsLocationsRegistriesGetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsRegistriesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGetIAMPolicy'{..}
          = go _plrgipResource _plrgipXgafv
              _plrgipUploadProtocol
              _plrgipAccessToken
              _plrgipUploadType
              _plrgipCallback
              (Just AltJSON)
              _plrgipPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGetIAMPolicyResource)
                      mempty

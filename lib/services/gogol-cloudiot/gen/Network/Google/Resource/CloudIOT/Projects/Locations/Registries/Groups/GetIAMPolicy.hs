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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.getIamPolicy@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsGetIAMPolicy
    , ProjectsLocationsRegistriesGroupsGetIAMPolicy

    -- * Request Lenses
    , plrggipXgafv
    , plrggipUploadProtocol
    , plrggipAccessToken
    , plrggipUploadType
    , plrggipPayload
    , plrggipResource
    , plrggipCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.getIamPolicy@ method which the
-- 'ProjectsLocationsRegistriesGroupsGetIAMPolicy' request conforms to.
type ProjectsLocationsRegistriesGroupsGetIAMPolicyResource
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
-- /See:/ 'projectsLocationsRegistriesGroupsGetIAMPolicy' smart constructor.
data ProjectsLocationsRegistriesGroupsGetIAMPolicy =
  ProjectsLocationsRegistriesGroupsGetIAMPolicy'
    { _plrggipXgafv :: !(Maybe Xgafv)
    , _plrggipUploadProtocol :: !(Maybe Text)
    , _plrggipAccessToken :: !(Maybe Text)
    , _plrggipUploadType :: !(Maybe Text)
    , _plrggipPayload :: !GetIAMPolicyRequest
    , _plrggipResource :: !Text
    , _plrggipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrggipXgafv'
--
-- * 'plrggipUploadProtocol'
--
-- * 'plrggipAccessToken'
--
-- * 'plrggipUploadType'
--
-- * 'plrggipPayload'
--
-- * 'plrggipResource'
--
-- * 'plrggipCallback'
projectsLocationsRegistriesGroupsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'plrggipPayload'
    -> Text -- ^ 'plrggipResource'
    -> ProjectsLocationsRegistriesGroupsGetIAMPolicy
projectsLocationsRegistriesGroupsGetIAMPolicy pPlrggipPayload_ pPlrggipResource_ =
  ProjectsLocationsRegistriesGroupsGetIAMPolicy'
    { _plrggipXgafv = Nothing
    , _plrggipUploadProtocol = Nothing
    , _plrggipAccessToken = Nothing
    , _plrggipUploadType = Nothing
    , _plrggipPayload = pPlrggipPayload_
    , _plrggipResource = pPlrggipResource_
    , _plrggipCallback = Nothing
    }


-- | V1 error format.
plrggipXgafv :: Lens' ProjectsLocationsRegistriesGroupsGetIAMPolicy (Maybe Xgafv)
plrggipXgafv
  = lens _plrggipXgafv (\ s a -> s{_plrggipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrggipUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsGetIAMPolicy (Maybe Text)
plrggipUploadProtocol
  = lens _plrggipUploadProtocol
      (\ s a -> s{_plrggipUploadProtocol = a})

-- | OAuth access token.
plrggipAccessToken :: Lens' ProjectsLocationsRegistriesGroupsGetIAMPolicy (Maybe Text)
plrggipAccessToken
  = lens _plrggipAccessToken
      (\ s a -> s{_plrggipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrggipUploadType :: Lens' ProjectsLocationsRegistriesGroupsGetIAMPolicy (Maybe Text)
plrggipUploadType
  = lens _plrggipUploadType
      (\ s a -> s{_plrggipUploadType = a})

-- | Multipart request metadata.
plrggipPayload :: Lens' ProjectsLocationsRegistriesGroupsGetIAMPolicy GetIAMPolicyRequest
plrggipPayload
  = lens _plrggipPayload
      (\ s a -> s{_plrggipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plrggipResource :: Lens' ProjectsLocationsRegistriesGroupsGetIAMPolicy Text
plrggipResource
  = lens _plrggipResource
      (\ s a -> s{_plrggipResource = a})

-- | JSONP
plrggipCallback :: Lens' ProjectsLocationsRegistriesGroupsGetIAMPolicy (Maybe Text)
plrggipCallback
  = lens _plrggipCallback
      (\ s a -> s{_plrggipCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsGetIAMPolicy
         where
        type Rs ProjectsLocationsRegistriesGroupsGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsRegistriesGroupsGetIAMPolicy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsGetIAMPolicy'{..}
          = go _plrggipResource _plrggipXgafv
              _plrggipUploadProtocol
              _plrggipAccessToken
              _plrggipUploadType
              _plrggipCallback
              (Just AltJSON)
              _plrggipPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsGetIAMPolicyResource)
                      mempty

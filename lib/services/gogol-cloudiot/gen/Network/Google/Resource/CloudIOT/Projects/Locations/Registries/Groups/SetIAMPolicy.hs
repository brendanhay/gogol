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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.setIamPolicy@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsSetIAMPolicy
    , ProjectsLocationsRegistriesGroupsSetIAMPolicy

    -- * Request Lenses
    , plrgsipXgafv
    , plrgsipUploadProtocol
    , plrgsipAccessToken
    , plrgsipUploadType
    , plrgsipPayload
    , plrgsipResource
    , plrgsipCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.setIamPolicy@ method which the
-- 'ProjectsLocationsRegistriesGroupsSetIAMPolicy' request conforms to.
type ProjectsLocationsRegistriesGroupsSetIAMPolicyResource
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
-- /See:/ 'projectsLocationsRegistriesGroupsSetIAMPolicy' smart constructor.
data ProjectsLocationsRegistriesGroupsSetIAMPolicy =
  ProjectsLocationsRegistriesGroupsSetIAMPolicy'
    { _plrgsipXgafv :: !(Maybe Xgafv)
    , _plrgsipUploadProtocol :: !(Maybe Text)
    , _plrgsipAccessToken :: !(Maybe Text)
    , _plrgsipUploadType :: !(Maybe Text)
    , _plrgsipPayload :: !SetIAMPolicyRequest
    , _plrgsipResource :: !Text
    , _plrgsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgsipXgafv'
--
-- * 'plrgsipUploadProtocol'
--
-- * 'plrgsipAccessToken'
--
-- * 'plrgsipUploadType'
--
-- * 'plrgsipPayload'
--
-- * 'plrgsipResource'
--
-- * 'plrgsipCallback'
projectsLocationsRegistriesGroupsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plrgsipPayload'
    -> Text -- ^ 'plrgsipResource'
    -> ProjectsLocationsRegistriesGroupsSetIAMPolicy
projectsLocationsRegistriesGroupsSetIAMPolicy pPlrgsipPayload_ pPlrgsipResource_ =
  ProjectsLocationsRegistriesGroupsSetIAMPolicy'
    { _plrgsipXgafv = Nothing
    , _plrgsipUploadProtocol = Nothing
    , _plrgsipAccessToken = Nothing
    , _plrgsipUploadType = Nothing
    , _plrgsipPayload = pPlrgsipPayload_
    , _plrgsipResource = pPlrgsipResource_
    , _plrgsipCallback = Nothing
    }


-- | V1 error format.
plrgsipXgafv :: Lens' ProjectsLocationsRegistriesGroupsSetIAMPolicy (Maybe Xgafv)
plrgsipXgafv
  = lens _plrgsipXgafv (\ s a -> s{_plrgsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgsipUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsSetIAMPolicy (Maybe Text)
plrgsipUploadProtocol
  = lens _plrgsipUploadProtocol
      (\ s a -> s{_plrgsipUploadProtocol = a})

-- | OAuth access token.
plrgsipAccessToken :: Lens' ProjectsLocationsRegistriesGroupsSetIAMPolicy (Maybe Text)
plrgsipAccessToken
  = lens _plrgsipAccessToken
      (\ s a -> s{_plrgsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgsipUploadType :: Lens' ProjectsLocationsRegistriesGroupsSetIAMPolicy (Maybe Text)
plrgsipUploadType
  = lens _plrgsipUploadType
      (\ s a -> s{_plrgsipUploadType = a})

-- | Multipart request metadata.
plrgsipPayload :: Lens' ProjectsLocationsRegistriesGroupsSetIAMPolicy SetIAMPolicyRequest
plrgsipPayload
  = lens _plrgsipPayload
      (\ s a -> s{_plrgsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plrgsipResource :: Lens' ProjectsLocationsRegistriesGroupsSetIAMPolicy Text
plrgsipResource
  = lens _plrgsipResource
      (\ s a -> s{_plrgsipResource = a})

-- | JSONP
plrgsipCallback :: Lens' ProjectsLocationsRegistriesGroupsSetIAMPolicy (Maybe Text)
plrgsipCallback
  = lens _plrgsipCallback
      (\ s a -> s{_plrgsipCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsSetIAMPolicy
         where
        type Rs ProjectsLocationsRegistriesGroupsSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsRegistriesGroupsSetIAMPolicy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsSetIAMPolicy'{..}
          = go _plrgsipResource _plrgsipXgafv
              _plrgsipUploadProtocol
              _plrgsipAccessToken
              _plrgsipUploadType
              _plrgsipCallback
              (Just AltJSON)
              _plrgsipPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsSetIAMPolicyResource)
                      mempty

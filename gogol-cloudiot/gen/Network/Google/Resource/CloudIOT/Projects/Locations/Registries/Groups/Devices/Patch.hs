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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.devices.patch@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.Patch
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsDevicesPatchResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsDevicesPatch
    , ProjectsLocationsRegistriesGroupsDevicesPatch

    -- * Request Lenses
    , plrgdpXgafv
    , plrgdpUploadProtocol
    , plrgdpUpdateMask
    , plrgdpAccessToken
    , plrgdpUploadType
    , plrgdpPayload
    , plrgdpName
    , plrgdpCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.devices.patch@ method which the
-- 'ProjectsLocationsRegistriesGroupsDevicesPatch' request conforms to.
type ProjectsLocationsRegistriesGroupsDevicesPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Device :> Patch '[JSON] Device

-- | Updates a device.
--
-- /See:/ 'projectsLocationsRegistriesGroupsDevicesPatch' smart constructor.
data ProjectsLocationsRegistriesGroupsDevicesPatch = ProjectsLocationsRegistriesGroupsDevicesPatch'
    { _plrgdpXgafv          :: !(Maybe Xgafv)
    , _plrgdpUploadProtocol :: !(Maybe Text)
    , _plrgdpUpdateMask     :: !(Maybe GFieldMask)
    , _plrgdpAccessToken    :: !(Maybe Text)
    , _plrgdpUploadType     :: !(Maybe Text)
    , _plrgdpPayload        :: !Device
    , _plrgdpName           :: !Text
    , _plrgdpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesGroupsDevicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgdpXgafv'
--
-- * 'plrgdpUploadProtocol'
--
-- * 'plrgdpUpdateMask'
--
-- * 'plrgdpAccessToken'
--
-- * 'plrgdpUploadType'
--
-- * 'plrgdpPayload'
--
-- * 'plrgdpName'
--
-- * 'plrgdpCallback'
projectsLocationsRegistriesGroupsDevicesPatch
    :: Device -- ^ 'plrgdpPayload'
    -> Text -- ^ 'plrgdpName'
    -> ProjectsLocationsRegistriesGroupsDevicesPatch
projectsLocationsRegistriesGroupsDevicesPatch pPlrgdpPayload_ pPlrgdpName_ =
    ProjectsLocationsRegistriesGroupsDevicesPatch'
    { _plrgdpXgafv = Nothing
    , _plrgdpUploadProtocol = Nothing
    , _plrgdpUpdateMask = Nothing
    , _plrgdpAccessToken = Nothing
    , _plrgdpUploadType = Nothing
    , _plrgdpPayload = pPlrgdpPayload_
    , _plrgdpName = pPlrgdpName_
    , _plrgdpCallback = Nothing
    }

-- | V1 error format.
plrgdpXgafv :: Lens' ProjectsLocationsRegistriesGroupsDevicesPatch (Maybe Xgafv)
plrgdpXgafv
  = lens _plrgdpXgafv (\ s a -> s{_plrgdpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgdpUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsDevicesPatch (Maybe Text)
plrgdpUploadProtocol
  = lens _plrgdpUploadProtocol
      (\ s a -> s{_plrgdpUploadProtocol = a})

-- | Only updates the \`device\` fields indicated by this mask. The field
-- mask must not be empty, and it must not contain fields that are
-- immutable or only set by the server. Mutable top-level fields:
-- \`credentials\`, \`blocked\`, and \`metadata\`
plrgdpUpdateMask :: Lens' ProjectsLocationsRegistriesGroupsDevicesPatch (Maybe GFieldMask)
plrgdpUpdateMask
  = lens _plrgdpUpdateMask
      (\ s a -> s{_plrgdpUpdateMask = a})

-- | OAuth access token.
plrgdpAccessToken :: Lens' ProjectsLocationsRegistriesGroupsDevicesPatch (Maybe Text)
plrgdpAccessToken
  = lens _plrgdpAccessToken
      (\ s a -> s{_plrgdpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgdpUploadType :: Lens' ProjectsLocationsRegistriesGroupsDevicesPatch (Maybe Text)
plrgdpUploadType
  = lens _plrgdpUploadType
      (\ s a -> s{_plrgdpUploadType = a})

-- | Multipart request metadata.
plrgdpPayload :: Lens' ProjectsLocationsRegistriesGroupsDevicesPatch Device
plrgdpPayload
  = lens _plrgdpPayload
      (\ s a -> s{_plrgdpPayload = a})

-- | The resource path name. For example,
-- \`projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/dev0\`
-- or
-- \`projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
-- When \`name\` is populated as a response from the service, it always
-- ends in the device numeric ID.
plrgdpName :: Lens' ProjectsLocationsRegistriesGroupsDevicesPatch Text
plrgdpName
  = lens _plrgdpName (\ s a -> s{_plrgdpName = a})

-- | JSONP
plrgdpCallback :: Lens' ProjectsLocationsRegistriesGroupsDevicesPatch (Maybe Text)
plrgdpCallback
  = lens _plrgdpCallback
      (\ s a -> s{_plrgdpCallback = a})

instance GoogleRequest
         ProjectsLocationsRegistriesGroupsDevicesPatch where
        type Rs ProjectsLocationsRegistriesGroupsDevicesPatch
             = Device
        type Scopes
               ProjectsLocationsRegistriesGroupsDevicesPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsDevicesPatch'{..}
          = go _plrgdpName _plrgdpXgafv _plrgdpUploadProtocol
              _plrgdpUpdateMask
              _plrgdpAccessToken
              _plrgdpUploadType
              _plrgdpCallback
              (Just AltJSON)
              _plrgdpPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsDevicesPatchResource)
                      mempty

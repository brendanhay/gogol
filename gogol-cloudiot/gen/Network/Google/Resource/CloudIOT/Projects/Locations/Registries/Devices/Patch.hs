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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.patch@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Patch
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesPatchResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesPatch
    , ProjectsLocationsRegistriesDevicesPatch

    -- * Request Lenses
    , plrdpXgafv
    , plrdpUploadProtocol
    , plrdpUpdateMask
    , plrdpAccessToken
    , plrdpUploadType
    , plrdpPayload
    , plrdpName
    , plrdpCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.patch@ method which the
-- 'ProjectsLocationsRegistriesDevicesPatch' request conforms to.
type ProjectsLocationsRegistriesDevicesPatchResource
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
-- /See:/ 'projectsLocationsRegistriesDevicesPatch' smart constructor.
data ProjectsLocationsRegistriesDevicesPatch =
  ProjectsLocationsRegistriesDevicesPatch'
    { _plrdpXgafv          :: !(Maybe Xgafv)
    , _plrdpUploadProtocol :: !(Maybe Text)
    , _plrdpUpdateMask     :: !(Maybe GFieldMask)
    , _plrdpAccessToken    :: !(Maybe Text)
    , _plrdpUploadType     :: !(Maybe Text)
    , _plrdpPayload        :: !Device
    , _plrdpName           :: !Text
    , _plrdpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDevicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdpXgafv'
--
-- * 'plrdpUploadProtocol'
--
-- * 'plrdpUpdateMask'
--
-- * 'plrdpAccessToken'
--
-- * 'plrdpUploadType'
--
-- * 'plrdpPayload'
--
-- * 'plrdpName'
--
-- * 'plrdpCallback'
projectsLocationsRegistriesDevicesPatch
    :: Device -- ^ 'plrdpPayload'
    -> Text -- ^ 'plrdpName'
    -> ProjectsLocationsRegistriesDevicesPatch
projectsLocationsRegistriesDevicesPatch pPlrdpPayload_ pPlrdpName_ =
  ProjectsLocationsRegistriesDevicesPatch'
    { _plrdpXgafv = Nothing
    , _plrdpUploadProtocol = Nothing
    , _plrdpUpdateMask = Nothing
    , _plrdpAccessToken = Nothing
    , _plrdpUploadType = Nothing
    , _plrdpPayload = pPlrdpPayload_
    , _plrdpName = pPlrdpName_
    , _plrdpCallback = Nothing
    }

-- | V1 error format.
plrdpXgafv :: Lens' ProjectsLocationsRegistriesDevicesPatch (Maybe Xgafv)
plrdpXgafv
  = lens _plrdpXgafv (\ s a -> s{_plrdpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdpUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesPatch (Maybe Text)
plrdpUploadProtocol
  = lens _plrdpUploadProtocol
      (\ s a -> s{_plrdpUploadProtocol = a})

-- | Only updates the \`device\` fields indicated by this mask. The field
-- mask must not be empty, and it must not contain fields that are
-- immutable or only set by the server. Mutable top-level fields:
-- \`credentials\`, \`blocked\`, and \`metadata\`
plrdpUpdateMask :: Lens' ProjectsLocationsRegistriesDevicesPatch (Maybe GFieldMask)
plrdpUpdateMask
  = lens _plrdpUpdateMask
      (\ s a -> s{_plrdpUpdateMask = a})

-- | OAuth access token.
plrdpAccessToken :: Lens' ProjectsLocationsRegistriesDevicesPatch (Maybe Text)
plrdpAccessToken
  = lens _plrdpAccessToken
      (\ s a -> s{_plrdpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdpUploadType :: Lens' ProjectsLocationsRegistriesDevicesPatch (Maybe Text)
plrdpUploadType
  = lens _plrdpUploadType
      (\ s a -> s{_plrdpUploadType = a})

-- | Multipart request metadata.
plrdpPayload :: Lens' ProjectsLocationsRegistriesDevicesPatch Device
plrdpPayload
  = lens _plrdpPayload (\ s a -> s{_plrdpPayload = a})

-- | The resource path name. For example,
-- \`projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/dev0\`
-- or
-- \`projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
-- When \`name\` is populated as a response from the service, it always
-- ends in the device numeric ID.
plrdpName :: Lens' ProjectsLocationsRegistriesDevicesPatch Text
plrdpName
  = lens _plrdpName (\ s a -> s{_plrdpName = a})

-- | JSONP
plrdpCallback :: Lens' ProjectsLocationsRegistriesDevicesPatch (Maybe Text)
plrdpCallback
  = lens _plrdpCallback
      (\ s a -> s{_plrdpCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesDevicesPatch
         where
        type Rs ProjectsLocationsRegistriesDevicesPatch =
             Device
        type Scopes ProjectsLocationsRegistriesDevicesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesPatch'{..}
          = go _plrdpName _plrdpXgafv _plrdpUploadProtocol
              _plrdpUpdateMask
              _plrdpAccessToken
              _plrdpUploadType
              _plrdpCallback
              (Just AltJSON)
              _plrdpPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesDevicesPatchResource)
                      mempty

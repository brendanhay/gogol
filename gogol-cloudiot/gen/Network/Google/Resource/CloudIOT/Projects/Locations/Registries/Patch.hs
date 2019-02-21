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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device registry configuration.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.patch@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Patch
    (
    -- * REST Resource
      ProjectsLocationsRegistriesPatchResource

    -- * Creating a Request
    , projectsLocationsRegistriesPatch
    , ProjectsLocationsRegistriesPatch

    -- * Request Lenses
    , plrpXgafv
    , plrpUploadProtocol
    , plrpUpdateMask
    , plrpAccessToken
    , plrpUploadType
    , plrpPayload
    , plrpName
    , plrpCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.patch@ method which the
-- 'ProjectsLocationsRegistriesPatch' request conforms to.
type ProjectsLocationsRegistriesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DeviceRegistry :>
                         Patch '[JSON] DeviceRegistry

-- | Updates a device registry configuration.
--
-- /See:/ 'projectsLocationsRegistriesPatch' smart constructor.
data ProjectsLocationsRegistriesPatch =
  ProjectsLocationsRegistriesPatch'
    { _plrpXgafv          :: !(Maybe Xgafv)
    , _plrpUploadProtocol :: !(Maybe Text)
    , _plrpUpdateMask     :: !(Maybe GFieldMask)
    , _plrpAccessToken    :: !(Maybe Text)
    , _plrpUploadType     :: !(Maybe Text)
    , _plrpPayload        :: !DeviceRegistry
    , _plrpName           :: !Text
    , _plrpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrpXgafv'
--
-- * 'plrpUploadProtocol'
--
-- * 'plrpUpdateMask'
--
-- * 'plrpAccessToken'
--
-- * 'plrpUploadType'
--
-- * 'plrpPayload'
--
-- * 'plrpName'
--
-- * 'plrpCallback'
projectsLocationsRegistriesPatch
    :: DeviceRegistry -- ^ 'plrpPayload'
    -> Text -- ^ 'plrpName'
    -> ProjectsLocationsRegistriesPatch
projectsLocationsRegistriesPatch pPlrpPayload_ pPlrpName_ =
  ProjectsLocationsRegistriesPatch'
    { _plrpXgafv = Nothing
    , _plrpUploadProtocol = Nothing
    , _plrpUpdateMask = Nothing
    , _plrpAccessToken = Nothing
    , _plrpUploadType = Nothing
    , _plrpPayload = pPlrpPayload_
    , _plrpName = pPlrpName_
    , _plrpCallback = Nothing
    }


-- | V1 error format.
plrpXgafv :: Lens' ProjectsLocationsRegistriesPatch (Maybe Xgafv)
plrpXgafv
  = lens _plrpXgafv (\ s a -> s{_plrpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrpUploadProtocol :: Lens' ProjectsLocationsRegistriesPatch (Maybe Text)
plrpUploadProtocol
  = lens _plrpUploadProtocol
      (\ s a -> s{_plrpUploadProtocol = a})

-- | Only updates the \`device_registry\` fields indicated by this mask. The
-- field mask must not be empty, and it must not contain fields that are
-- immutable or only set by the server. Mutable top-level fields:
-- \`event_notification_config\`, \`http_config\`, \`mqtt_config\`, and
-- \`state_notification_config\`.
plrpUpdateMask :: Lens' ProjectsLocationsRegistriesPatch (Maybe GFieldMask)
plrpUpdateMask
  = lens _plrpUpdateMask
      (\ s a -> s{_plrpUpdateMask = a})

-- | OAuth access token.
plrpAccessToken :: Lens' ProjectsLocationsRegistriesPatch (Maybe Text)
plrpAccessToken
  = lens _plrpAccessToken
      (\ s a -> s{_plrpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrpUploadType :: Lens' ProjectsLocationsRegistriesPatch (Maybe Text)
plrpUploadType
  = lens _plrpUploadType
      (\ s a -> s{_plrpUploadType = a})

-- | Multipart request metadata.
plrpPayload :: Lens' ProjectsLocationsRegistriesPatch DeviceRegistry
plrpPayload
  = lens _plrpPayload (\ s a -> s{_plrpPayload = a})

-- | The resource path name. For example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
plrpName :: Lens' ProjectsLocationsRegistriesPatch Text
plrpName = lens _plrpName (\ s a -> s{_plrpName = a})

-- | JSONP
plrpCallback :: Lens' ProjectsLocationsRegistriesPatch (Maybe Text)
plrpCallback
  = lens _plrpCallback (\ s a -> s{_plrpCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesPatch
         where
        type Rs ProjectsLocationsRegistriesPatch =
             DeviceRegistry
        type Scopes ProjectsLocationsRegistriesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient ProjectsLocationsRegistriesPatch'{..}
          = go _plrpName _plrpXgafv _plrpUploadProtocol
              _plrpUpdateMask
              _plrpAccessToken
              _plrpUploadType
              _plrpCallback
              (Just AltJSON)
              _plrpPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRegistriesPatchResource)
                      mempty

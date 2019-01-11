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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a device registry configuration.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.delete@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Delete
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDeleteResource

    -- * Creating a Request
    , projectsLocationsRegistriesDelete
    , ProjectsLocationsRegistriesDelete

    -- * Request Lenses
    , plrdXgafv
    , plrdUploadProtocol
    , plrdAccessToken
    , plrdUploadType
    , plrdName
    , plrdCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.delete@ method which the
-- 'ProjectsLocationsRegistriesDelete' request conforms to.
type ProjectsLocationsRegistriesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a device registry configuration.
--
-- /See:/ 'projectsLocationsRegistriesDelete' smart constructor.
data ProjectsLocationsRegistriesDelete = ProjectsLocationsRegistriesDelete'
    { _plrdXgafv          :: !(Maybe Xgafv)
    , _plrdUploadProtocol :: !(Maybe Text)
    , _plrdAccessToken    :: !(Maybe Text)
    , _plrdUploadType     :: !(Maybe Text)
    , _plrdName           :: !Text
    , _plrdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdXgafv'
--
-- * 'plrdUploadProtocol'
--
-- * 'plrdAccessToken'
--
-- * 'plrdUploadType'
--
-- * 'plrdName'
--
-- * 'plrdCallback'
projectsLocationsRegistriesDelete
    :: Text -- ^ 'plrdName'
    -> ProjectsLocationsRegistriesDelete
projectsLocationsRegistriesDelete pPlrdName_ =
    ProjectsLocationsRegistriesDelete'
    { _plrdXgafv = Nothing
    , _plrdUploadProtocol = Nothing
    , _plrdAccessToken = Nothing
    , _plrdUploadType = Nothing
    , _plrdName = pPlrdName_
    , _plrdCallback = Nothing
    }

-- | V1 error format.
plrdXgafv :: Lens' ProjectsLocationsRegistriesDelete (Maybe Xgafv)
plrdXgafv
  = lens _plrdXgafv (\ s a -> s{_plrdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdUploadProtocol :: Lens' ProjectsLocationsRegistriesDelete (Maybe Text)
plrdUploadProtocol
  = lens _plrdUploadProtocol
      (\ s a -> s{_plrdUploadProtocol = a})

-- | OAuth access token.
plrdAccessToken :: Lens' ProjectsLocationsRegistriesDelete (Maybe Text)
plrdAccessToken
  = lens _plrdAccessToken
      (\ s a -> s{_plrdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdUploadType :: Lens' ProjectsLocationsRegistriesDelete (Maybe Text)
plrdUploadType
  = lens _plrdUploadType
      (\ s a -> s{_plrdUploadType = a})

-- | The name of the device registry. For example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
plrdName :: Lens' ProjectsLocationsRegistriesDelete Text
plrdName = lens _plrdName (\ s a -> s{_plrdName = a})

-- | JSONP
plrdCallback :: Lens' ProjectsLocationsRegistriesDelete (Maybe Text)
plrdCallback
  = lens _plrdCallback (\ s a -> s{_plrdCallback = a})

instance GoogleRequest
         ProjectsLocationsRegistriesDelete where
        type Rs ProjectsLocationsRegistriesDelete = Empty
        type Scopes ProjectsLocationsRegistriesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient ProjectsLocationsRegistriesDelete'{..}
          = go _plrdName _plrdXgafv _plrdUploadProtocol
              _plrdAccessToken
              _plrdUploadType
              _plrdCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRegistriesDeleteResource)
                      mempty

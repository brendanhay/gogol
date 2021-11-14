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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new User data mapping in the parent consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresUserDataMAppingsCreate
    , ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate

    -- * Request Lenses
    , pldscsudmacParent
    , pldscsudmacXgafv
    , pldscsudmacUploadProtocol
    , pldscsudmacAccessToken
    , pldscsudmacUploadType
    , pldscsudmacPayload
    , pldscsudmacCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.create@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate' request conforms to.
type ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "userDataMappings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UserDataMApping :>
                         Post '[JSON] UserDataMApping

-- | Creates a new User data mapping in the parent consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresUserDataMAppingsCreate' smart constructor.
data ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate'
    { _pldscsudmacParent :: !Text
    , _pldscsudmacXgafv :: !(Maybe Xgafv)
    , _pldscsudmacUploadProtocol :: !(Maybe Text)
    , _pldscsudmacAccessToken :: !(Maybe Text)
    , _pldscsudmacUploadType :: !(Maybe Text)
    , _pldscsudmacPayload :: !UserDataMApping
    , _pldscsudmacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsudmacParent'
--
-- * 'pldscsudmacXgafv'
--
-- * 'pldscsudmacUploadProtocol'
--
-- * 'pldscsudmacAccessToken'
--
-- * 'pldscsudmacUploadType'
--
-- * 'pldscsudmacPayload'
--
-- * 'pldscsudmacCallback'
projectsLocationsDataSetsConsentStoresUserDataMAppingsCreate
    :: Text -- ^ 'pldscsudmacParent'
    -> UserDataMApping -- ^ 'pldscsudmacPayload'
    -> ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate
projectsLocationsDataSetsConsentStoresUserDataMAppingsCreate pPldscsudmacParent_ pPldscsudmacPayload_ =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate'
    { _pldscsudmacParent = pPldscsudmacParent_
    , _pldscsudmacXgafv = Nothing
    , _pldscsudmacUploadProtocol = Nothing
    , _pldscsudmacAccessToken = Nothing
    , _pldscsudmacUploadType = Nothing
    , _pldscsudmacPayload = pPldscsudmacPayload_
    , _pldscsudmacCallback = Nothing
    }


-- | Required. Name of the consent store.
pldscsudmacParent :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate Text
pldscsudmacParent
  = lens _pldscsudmacParent
      (\ s a -> s{_pldscsudmacParent = a})

-- | V1 error format.
pldscsudmacXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate (Maybe Xgafv)
pldscsudmacXgafv
  = lens _pldscsudmacXgafv
      (\ s a -> s{_pldscsudmacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsudmacUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate (Maybe Text)
pldscsudmacUploadProtocol
  = lens _pldscsudmacUploadProtocol
      (\ s a -> s{_pldscsudmacUploadProtocol = a})

-- | OAuth access token.
pldscsudmacAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate (Maybe Text)
pldscsudmacAccessToken
  = lens _pldscsudmacAccessToken
      (\ s a -> s{_pldscsudmacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsudmacUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate (Maybe Text)
pldscsudmacUploadType
  = lens _pldscsudmacUploadType
      (\ s a -> s{_pldscsudmacUploadType = a})

-- | Multipart request metadata.
pldscsudmacPayload :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate UserDataMApping
pldscsudmacPayload
  = lens _pldscsudmacPayload
      (\ s a -> s{_pldscsudmacPayload = a})

-- | JSONP
pldscsudmacCallback :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate (Maybe Text)
pldscsudmacCallback
  = lens _pldscsudmacCallback
      (\ s a -> s{_pldscsudmacCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate
             = UserDataMApping
        type Scopes
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreate'{..}
          = go _pldscsudmacParent _pldscsudmacXgafv
              _pldscsudmacUploadProtocol
              _pldscsudmacAccessToken
              _pldscsudmacUploadType
              _pldscsudmacCallback
              (Just AltJSON)
              _pldscsudmacPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsCreateResource)
                      mempty

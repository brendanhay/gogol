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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified User data mapping.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresUserDataMAppingsGet
    , ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet

    -- * Request Lenses
    , pldscsudmagXgafv
    , pldscsudmagUploadProtocol
    , pldscsudmagAccessToken
    , pldscsudmagUploadType
    , pldscsudmagName
    , pldscsudmagCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.get@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet' request conforms to.
type ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] UserDataMApping

-- | Gets the specified User data mapping.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresUserDataMAppingsGet' smart constructor.
data ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet'
    { _pldscsudmagXgafv :: !(Maybe Xgafv)
    , _pldscsudmagUploadProtocol :: !(Maybe Text)
    , _pldscsudmagAccessToken :: !(Maybe Text)
    , _pldscsudmagUploadType :: !(Maybe Text)
    , _pldscsudmagName :: !Text
    , _pldscsudmagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsudmagXgafv'
--
-- * 'pldscsudmagUploadProtocol'
--
-- * 'pldscsudmagAccessToken'
--
-- * 'pldscsudmagUploadType'
--
-- * 'pldscsudmagName'
--
-- * 'pldscsudmagCallback'
projectsLocationsDataSetsConsentStoresUserDataMAppingsGet
    :: Text -- ^ 'pldscsudmagName'
    -> ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet
projectsLocationsDataSetsConsentStoresUserDataMAppingsGet pPldscsudmagName_ =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet'
    { _pldscsudmagXgafv = Nothing
    , _pldscsudmagUploadProtocol = Nothing
    , _pldscsudmagAccessToken = Nothing
    , _pldscsudmagUploadType = Nothing
    , _pldscsudmagName = pPldscsudmagName_
    , _pldscsudmagCallback = Nothing
    }


-- | V1 error format.
pldscsudmagXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet (Maybe Xgafv)
pldscsudmagXgafv
  = lens _pldscsudmagXgafv
      (\ s a -> s{_pldscsudmagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsudmagUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet (Maybe Text)
pldscsudmagUploadProtocol
  = lens _pldscsudmagUploadProtocol
      (\ s a -> s{_pldscsudmagUploadProtocol = a})

-- | OAuth access token.
pldscsudmagAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet (Maybe Text)
pldscsudmagAccessToken
  = lens _pldscsudmagAccessToken
      (\ s a -> s{_pldscsudmagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsudmagUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet (Maybe Text)
pldscsudmagUploadType
  = lens _pldscsudmagUploadType
      (\ s a -> s{_pldscsudmagUploadType = a})

-- | Required. The resource name of the User data mapping to retrieve.
pldscsudmagName :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet Text
pldscsudmagName
  = lens _pldscsudmagName
      (\ s a -> s{_pldscsudmagName = a})

-- | JSONP
pldscsudmagCallback :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet (Maybe Text)
pldscsudmagCallback
  = lens _pldscsudmagCallback
      (\ s a -> s{_pldscsudmagCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet
             = UserDataMApping
        type Scopes
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGet'{..}
          = go _pldscsudmagName _pldscsudmagXgafv
              _pldscsudmagUploadProtocol
              _pldscsudmagAccessToken
              _pldscsudmagUploadType
              _pldscsudmagCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsGetResource)
                      mempty

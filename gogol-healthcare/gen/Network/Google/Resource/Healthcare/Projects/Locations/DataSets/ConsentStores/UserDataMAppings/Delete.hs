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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified User data mapping.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresUserDataMAppingsDelete
    , ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete

    -- * Request Lenses
    , pldscsudmadXgafv
    , pldscsudmadUploadProtocol
    , pldscsudmadAccessToken
    , pldscsudmadUploadType
    , pldscsudmadName
    , pldscsudmadCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.delete@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete' request conforms to.
type ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified User data mapping.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresUserDataMAppingsDelete' smart constructor.
data ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete'
    { _pldscsudmadXgafv :: !(Maybe Xgafv)
    , _pldscsudmadUploadProtocol :: !(Maybe Text)
    , _pldscsudmadAccessToken :: !(Maybe Text)
    , _pldscsudmadUploadType :: !(Maybe Text)
    , _pldscsudmadName :: !Text
    , _pldscsudmadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsudmadXgafv'
--
-- * 'pldscsudmadUploadProtocol'
--
-- * 'pldscsudmadAccessToken'
--
-- * 'pldscsudmadUploadType'
--
-- * 'pldscsudmadName'
--
-- * 'pldscsudmadCallback'
projectsLocationsDataSetsConsentStoresUserDataMAppingsDelete
    :: Text -- ^ 'pldscsudmadName'
    -> ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete
projectsLocationsDataSetsConsentStoresUserDataMAppingsDelete pPldscsudmadName_ =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete'
    { _pldscsudmadXgafv = Nothing
    , _pldscsudmadUploadProtocol = Nothing
    , _pldscsudmadAccessToken = Nothing
    , _pldscsudmadUploadType = Nothing
    , _pldscsudmadName = pPldscsudmadName_
    , _pldscsudmadCallback = Nothing
    }


-- | V1 error format.
pldscsudmadXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete (Maybe Xgafv)
pldscsudmadXgafv
  = lens _pldscsudmadXgafv
      (\ s a -> s{_pldscsudmadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsudmadUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete (Maybe Text)
pldscsudmadUploadProtocol
  = lens _pldscsudmadUploadProtocol
      (\ s a -> s{_pldscsudmadUploadProtocol = a})

-- | OAuth access token.
pldscsudmadAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete (Maybe Text)
pldscsudmadAccessToken
  = lens _pldscsudmadAccessToken
      (\ s a -> s{_pldscsudmadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsudmadUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete (Maybe Text)
pldscsudmadUploadType
  = lens _pldscsudmadUploadType
      (\ s a -> s{_pldscsudmadUploadType = a})

-- | Required. The resource name of the User data mapping to delete.
pldscsudmadName :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete Text
pldscsudmadName
  = lens _pldscsudmadName
      (\ s a -> s{_pldscsudmadName = a})

-- | JSONP
pldscsudmadCallback :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete (Maybe Text)
pldscsudmadCallback
  = lens _pldscsudmadCallback
      (\ s a -> s{_pldscsudmadCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDelete'{..}
          = go _pldscsudmadName _pldscsudmadXgafv
              _pldscsudmadUploadProtocol
              _pldscsudmadAccessToken
              _pldscsudmadUploadType
              _pldscsudmadCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsDeleteResource)
                      mempty

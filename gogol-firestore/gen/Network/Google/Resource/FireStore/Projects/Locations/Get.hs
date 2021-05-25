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
-- Module      : Network.Google.Resource.FireStore.Projects.Locations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.locations.get@.
module Network.Google.Resource.FireStore.Projects.Locations.Get
    (
    -- * REST Resource
      ProjectsLocationsGetResource

    -- * Creating a Request
    , projectsLocationsGet
    , ProjectsLocationsGet

    -- * Request Lenses
    , plgXgafv
    , plgUploadProtocol
    , plgAccessToken
    , plgUploadType
    , plgName
    , plgCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.locations.get@ method which the
-- 'ProjectsLocationsGet' request conforms to.
type ProjectsLocationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Location

-- | Gets information about a location.
--
-- /See:/ 'projectsLocationsGet' smart constructor.
data ProjectsLocationsGet =
  ProjectsLocationsGet'
    { _plgXgafv :: !(Maybe Xgafv)
    , _plgUploadProtocol :: !(Maybe Text)
    , _plgAccessToken :: !(Maybe Text)
    , _plgUploadType :: !(Maybe Text)
    , _plgName :: !Text
    , _plgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plgXgafv'
--
-- * 'plgUploadProtocol'
--
-- * 'plgAccessToken'
--
-- * 'plgUploadType'
--
-- * 'plgName'
--
-- * 'plgCallback'
projectsLocationsGet
    :: Text -- ^ 'plgName'
    -> ProjectsLocationsGet
projectsLocationsGet pPlgName_ =
  ProjectsLocationsGet'
    { _plgXgafv = Nothing
    , _plgUploadProtocol = Nothing
    , _plgAccessToken = Nothing
    , _plgUploadType = Nothing
    , _plgName = pPlgName_
    , _plgCallback = Nothing
    }


-- | V1 error format.
plgXgafv :: Lens' ProjectsLocationsGet (Maybe Xgafv)
plgXgafv = lens _plgXgafv (\ s a -> s{_plgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plgUploadProtocol :: Lens' ProjectsLocationsGet (Maybe Text)
plgUploadProtocol
  = lens _plgUploadProtocol
      (\ s a -> s{_plgUploadProtocol = a})

-- | OAuth access token.
plgAccessToken :: Lens' ProjectsLocationsGet (Maybe Text)
plgAccessToken
  = lens _plgAccessToken
      (\ s a -> s{_plgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plgUploadType :: Lens' ProjectsLocationsGet (Maybe Text)
plgUploadType
  = lens _plgUploadType
      (\ s a -> s{_plgUploadType = a})

-- | Resource name for the location.
plgName :: Lens' ProjectsLocationsGet Text
plgName = lens _plgName (\ s a -> s{_plgName = a})

-- | JSONP
plgCallback :: Lens' ProjectsLocationsGet (Maybe Text)
plgCallback
  = lens _plgCallback (\ s a -> s{_plgCallback = a})

instance GoogleRequest ProjectsLocationsGet where
        type Rs ProjectsLocationsGet = Location
        type Scopes ProjectsLocationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsLocationsGet'{..}
          = go _plgName _plgXgafv _plgUploadProtocol
              _plgAccessToken
              _plgUploadType
              _plgCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsGetResource)
                      mempty

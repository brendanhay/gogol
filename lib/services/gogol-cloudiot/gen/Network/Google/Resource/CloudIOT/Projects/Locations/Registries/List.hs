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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists device registries.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.list@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.List
    (
    -- * REST Resource
      ProjectsLocationsRegistriesListResource

    -- * Creating a Request
    , projectsLocationsRegistriesList
    , ProjectsLocationsRegistriesList

    -- * Request Lenses
    , plrlParent
    , plrlXgafv
    , plrlUploadProtocol
    , plrlAccessToken
    , plrlUploadType
    , plrlPageToken
    , plrlPageSize
    , plrlCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.list@ method which the
-- 'ProjectsLocationsRegistriesList' request conforms to.
type ProjectsLocationsRegistriesListResource =
     "v1" :>
       Capture "parent" Text :>
         "registries" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListDeviceRegistriesResponse

-- | Lists device registries.
--
-- /See:/ 'projectsLocationsRegistriesList' smart constructor.
data ProjectsLocationsRegistriesList =
  ProjectsLocationsRegistriesList'
    { _plrlParent :: !Text
    , _plrlXgafv :: !(Maybe Xgafv)
    , _plrlUploadProtocol :: !(Maybe Text)
    , _plrlAccessToken :: !(Maybe Text)
    , _plrlUploadType :: !(Maybe Text)
    , _plrlPageToken :: !(Maybe Text)
    , _plrlPageSize :: !(Maybe (Textual Int32))
    , _plrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrlParent'
--
-- * 'plrlXgafv'
--
-- * 'plrlUploadProtocol'
--
-- * 'plrlAccessToken'
--
-- * 'plrlUploadType'
--
-- * 'plrlPageToken'
--
-- * 'plrlPageSize'
--
-- * 'plrlCallback'
projectsLocationsRegistriesList
    :: Text -- ^ 'plrlParent'
    -> ProjectsLocationsRegistriesList
projectsLocationsRegistriesList pPlrlParent_ =
  ProjectsLocationsRegistriesList'
    { _plrlParent = pPlrlParent_
    , _plrlXgafv = Nothing
    , _plrlUploadProtocol = Nothing
    , _plrlAccessToken = Nothing
    , _plrlUploadType = Nothing
    , _plrlPageToken = Nothing
    , _plrlPageSize = Nothing
    , _plrlCallback = Nothing
    }


-- | Required. The project and cloud region path. For example,
-- \`projects\/example-project\/locations\/us-central1\`.
plrlParent :: Lens' ProjectsLocationsRegistriesList Text
plrlParent
  = lens _plrlParent (\ s a -> s{_plrlParent = a})

-- | V1 error format.
plrlXgafv :: Lens' ProjectsLocationsRegistriesList (Maybe Xgafv)
plrlXgafv
  = lens _plrlXgafv (\ s a -> s{_plrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrlUploadProtocol :: Lens' ProjectsLocationsRegistriesList (Maybe Text)
plrlUploadProtocol
  = lens _plrlUploadProtocol
      (\ s a -> s{_plrlUploadProtocol = a})

-- | OAuth access token.
plrlAccessToken :: Lens' ProjectsLocationsRegistriesList (Maybe Text)
plrlAccessToken
  = lens _plrlAccessToken
      (\ s a -> s{_plrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrlUploadType :: Lens' ProjectsLocationsRegistriesList (Maybe Text)
plrlUploadType
  = lens _plrlUploadType
      (\ s a -> s{_plrlUploadType = a})

-- | The value returned by the last \`ListDeviceRegistriesResponse\`;
-- indicates that this is a continuation of a prior
-- \`ListDeviceRegistries\` call and the system should return the next page
-- of data.
plrlPageToken :: Lens' ProjectsLocationsRegistriesList (Maybe Text)
plrlPageToken
  = lens _plrlPageToken
      (\ s a -> s{_plrlPageToken = a})

-- | The maximum number of registries to return in the response. If this
-- value is zero, the service will select a default size. A call may return
-- fewer objects than requested. A non-empty \`next_page_token\` in the
-- response indicates that more data is available.
plrlPageSize :: Lens' ProjectsLocationsRegistriesList (Maybe Int32)
plrlPageSize
  = lens _plrlPageSize (\ s a -> s{_plrlPageSize = a})
      . mapping _Coerce

-- | JSONP
plrlCallback :: Lens' ProjectsLocationsRegistriesList (Maybe Text)
plrlCallback
  = lens _plrlCallback (\ s a -> s{_plrlCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesList
         where
        type Rs ProjectsLocationsRegistriesList =
             ListDeviceRegistriesResponse
        type Scopes ProjectsLocationsRegistriesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient ProjectsLocationsRegistriesList'{..}
          = go _plrlParent _plrlXgafv _plrlUploadProtocol
              _plrlAccessToken
              _plrlUploadType
              _plrlPageToken
              _plrlPageSize
              _plrlCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRegistriesListResource)
                      mempty

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
-- Module      : Network.Google.Resource.Composer.Projects.Locations.Environments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List environments.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.list@.
module Network.Google.Resource.Composer.Projects.Locations.Environments.List
    (
    -- * REST Resource
      ProjectsLocationsEnvironmentsListResource

    -- * Creating a Request
    , projectsLocationsEnvironmentsList
    , ProjectsLocationsEnvironmentsList

    -- * Request Lenses
    , plelParent
    , plelXgafv
    , plelUploadProtocol
    , plelAccessToken
    , plelUploadType
    , plelPageToken
    , plelPageSize
    , plelCallback
    ) where

import           Network.Google.Composer.Types
import           Network.Google.Prelude

-- | A resource alias for @composer.projects.locations.environments.list@ method which the
-- 'ProjectsLocationsEnvironmentsList' request conforms to.
type ProjectsLocationsEnvironmentsListResource =
     "v1" :>
       Capture "parent" Text :>
         "environments" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListEnvironmentsResponse

-- | List environments.
--
-- /See:/ 'projectsLocationsEnvironmentsList' smart constructor.
data ProjectsLocationsEnvironmentsList =
  ProjectsLocationsEnvironmentsList'
    { _plelParent         :: !Text
    , _plelXgafv          :: !(Maybe Xgafv)
    , _plelUploadProtocol :: !(Maybe Text)
    , _plelAccessToken    :: !(Maybe Text)
    , _plelUploadType     :: !(Maybe Text)
    , _plelPageToken      :: !(Maybe Text)
    , _plelPageSize       :: !(Maybe (Textual Int32))
    , _plelCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsEnvironmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plelParent'
--
-- * 'plelXgafv'
--
-- * 'plelUploadProtocol'
--
-- * 'plelAccessToken'
--
-- * 'plelUploadType'
--
-- * 'plelPageToken'
--
-- * 'plelPageSize'
--
-- * 'plelCallback'
projectsLocationsEnvironmentsList
    :: Text -- ^ 'plelParent'
    -> ProjectsLocationsEnvironmentsList
projectsLocationsEnvironmentsList pPlelParent_ =
  ProjectsLocationsEnvironmentsList'
    { _plelParent = pPlelParent_
    , _plelXgafv = Nothing
    , _plelUploadProtocol = Nothing
    , _plelAccessToken = Nothing
    , _plelUploadType = Nothing
    , _plelPageToken = Nothing
    , _plelPageSize = Nothing
    , _plelCallback = Nothing
    }


-- | List environments in the given project and location, in the form:
-- \"projects\/{projectId}\/locations\/{locationId}\"
plelParent :: Lens' ProjectsLocationsEnvironmentsList Text
plelParent
  = lens _plelParent (\ s a -> s{_plelParent = a})

-- | V1 error format.
plelXgafv :: Lens' ProjectsLocationsEnvironmentsList (Maybe Xgafv)
plelXgafv
  = lens _plelXgafv (\ s a -> s{_plelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plelUploadProtocol :: Lens' ProjectsLocationsEnvironmentsList (Maybe Text)
plelUploadProtocol
  = lens _plelUploadProtocol
      (\ s a -> s{_plelUploadProtocol = a})

-- | OAuth access token.
plelAccessToken :: Lens' ProjectsLocationsEnvironmentsList (Maybe Text)
plelAccessToken
  = lens _plelAccessToken
      (\ s a -> s{_plelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plelUploadType :: Lens' ProjectsLocationsEnvironmentsList (Maybe Text)
plelUploadType
  = lens _plelUploadType
      (\ s a -> s{_plelUploadType = a})

-- | The next_page_token value returned from a previous List request, if any.
plelPageToken :: Lens' ProjectsLocationsEnvironmentsList (Maybe Text)
plelPageToken
  = lens _plelPageToken
      (\ s a -> s{_plelPageToken = a})

-- | The maximum number of environments to return.
plelPageSize :: Lens' ProjectsLocationsEnvironmentsList (Maybe Int32)
plelPageSize
  = lens _plelPageSize (\ s a -> s{_plelPageSize = a})
      . mapping _Coerce

-- | JSONP
plelCallback :: Lens' ProjectsLocationsEnvironmentsList (Maybe Text)
plelCallback
  = lens _plelCallback (\ s a -> s{_plelCallback = a})

instance GoogleRequest
           ProjectsLocationsEnvironmentsList
         where
        type Rs ProjectsLocationsEnvironmentsList =
             ListEnvironmentsResponse
        type Scopes ProjectsLocationsEnvironmentsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsEnvironmentsList'{..}
          = go _plelParent _plelXgafv _plelUploadProtocol
              _plelAccessToken
              _plelUploadType
              _plelPageToken
              _plelPageSize
              _plelCallback
              (Just AltJSON)
              composerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsEnvironmentsListResource)
                      mempty

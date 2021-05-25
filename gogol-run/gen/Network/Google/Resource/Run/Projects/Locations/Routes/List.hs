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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Routes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List routes.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.routes.list@.
module Network.Google.Resource.Run.Projects.Locations.Routes.List
    (
    -- * REST Resource
      ProjectsLocationsRoutesListResource

    -- * Creating a Request
    , projectsLocationsRoutesList
    , ProjectsLocationsRoutesList

    -- * Request Lenses
    , plrlParent
    , plrlXgafv
    , plrlFieldSelector
    , plrlUploadProtocol
    , plrlAccessToken
    , plrlResourceVersion
    , plrlLabelSelector
    , plrlUploadType
    , plrlLimit
    , plrlIncludeUninitialized
    , plrlContinue
    , plrlWatch
    , plrlCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.routes.list@ method which the
-- 'ProjectsLocationsRoutesList' request conforms to.
type ProjectsLocationsRoutesListResource =
     "v1" :>
       Capture "parent" Text :>
         "routes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "fieldSelector" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "resourceVersion" Text :>
                     QueryParam "labelSelector" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "limit" (Textual Int32) :>
                           QueryParam "includeUninitialized" Bool :>
                             QueryParam "continue" Text :>
                               QueryParam "watch" Bool :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListRoutesResponse

-- | List routes.
--
-- /See:/ 'projectsLocationsRoutesList' smart constructor.
data ProjectsLocationsRoutesList =
  ProjectsLocationsRoutesList'
    { _plrlParent :: !Text
    , _plrlXgafv :: !(Maybe Xgafv)
    , _plrlFieldSelector :: !(Maybe Text)
    , _plrlUploadProtocol :: !(Maybe Text)
    , _plrlAccessToken :: !(Maybe Text)
    , _plrlResourceVersion :: !(Maybe Text)
    , _plrlLabelSelector :: !(Maybe Text)
    , _plrlUploadType :: !(Maybe Text)
    , _plrlLimit :: !(Maybe (Textual Int32))
    , _plrlIncludeUninitialized :: !(Maybe Bool)
    , _plrlContinue :: !(Maybe Text)
    , _plrlWatch :: !(Maybe Bool)
    , _plrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRoutesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrlParent'
--
-- * 'plrlXgafv'
--
-- * 'plrlFieldSelector'
--
-- * 'plrlUploadProtocol'
--
-- * 'plrlAccessToken'
--
-- * 'plrlResourceVersion'
--
-- * 'plrlLabelSelector'
--
-- * 'plrlUploadType'
--
-- * 'plrlLimit'
--
-- * 'plrlIncludeUninitialized'
--
-- * 'plrlContinue'
--
-- * 'plrlWatch'
--
-- * 'plrlCallback'
projectsLocationsRoutesList
    :: Text -- ^ 'plrlParent'
    -> ProjectsLocationsRoutesList
projectsLocationsRoutesList pPlrlParent_ =
  ProjectsLocationsRoutesList'
    { _plrlParent = pPlrlParent_
    , _plrlXgafv = Nothing
    , _plrlFieldSelector = Nothing
    , _plrlUploadProtocol = Nothing
    , _plrlAccessToken = Nothing
    , _plrlResourceVersion = Nothing
    , _plrlLabelSelector = Nothing
    , _plrlUploadType = Nothing
    , _plrlLimit = Nothing
    , _plrlIncludeUninitialized = Nothing
    , _plrlContinue = Nothing
    , _plrlWatch = Nothing
    , _plrlCallback = Nothing
    }


-- | The namespace from which the routes should be listed. For Cloud Run
-- (fully managed), replace {namespace_id} with the project ID or number.
plrlParent :: Lens' ProjectsLocationsRoutesList Text
plrlParent
  = lens _plrlParent (\ s a -> s{_plrlParent = a})

-- | V1 error format.
plrlXgafv :: Lens' ProjectsLocationsRoutesList (Maybe Xgafv)
plrlXgafv
  = lens _plrlXgafv (\ s a -> s{_plrlXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
plrlFieldSelector :: Lens' ProjectsLocationsRoutesList (Maybe Text)
plrlFieldSelector
  = lens _plrlFieldSelector
      (\ s a -> s{_plrlFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrlUploadProtocol :: Lens' ProjectsLocationsRoutesList (Maybe Text)
plrlUploadProtocol
  = lens _plrlUploadProtocol
      (\ s a -> s{_plrlUploadProtocol = a})

-- | OAuth access token.
plrlAccessToken :: Lens' ProjectsLocationsRoutesList (Maybe Text)
plrlAccessToken
  = lens _plrlAccessToken
      (\ s a -> s{_plrlAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
plrlResourceVersion :: Lens' ProjectsLocationsRoutesList (Maybe Text)
plrlResourceVersion
  = lens _plrlResourceVersion
      (\ s a -> s{_plrlResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
plrlLabelSelector :: Lens' ProjectsLocationsRoutesList (Maybe Text)
plrlLabelSelector
  = lens _plrlLabelSelector
      (\ s a -> s{_plrlLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrlUploadType :: Lens' ProjectsLocationsRoutesList (Maybe Text)
plrlUploadType
  = lens _plrlUploadType
      (\ s a -> s{_plrlUploadType = a})

-- | Optional. The maximum number of records that should be returned.
plrlLimit :: Lens' ProjectsLocationsRoutesList (Maybe Int32)
plrlLimit
  = lens _plrlLimit (\ s a -> s{_plrlLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
plrlIncludeUninitialized :: Lens' ProjectsLocationsRoutesList (Maybe Bool)
plrlIncludeUninitialized
  = lens _plrlIncludeUninitialized
      (\ s a -> s{_plrlIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
plrlContinue :: Lens' ProjectsLocationsRoutesList (Maybe Text)
plrlContinue
  = lens _plrlContinue (\ s a -> s{_plrlContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
plrlWatch :: Lens' ProjectsLocationsRoutesList (Maybe Bool)
plrlWatch
  = lens _plrlWatch (\ s a -> s{_plrlWatch = a})

-- | JSONP
plrlCallback :: Lens' ProjectsLocationsRoutesList (Maybe Text)
plrlCallback
  = lens _plrlCallback (\ s a -> s{_plrlCallback = a})

instance GoogleRequest ProjectsLocationsRoutesList
         where
        type Rs ProjectsLocationsRoutesList =
             ListRoutesResponse
        type Scopes ProjectsLocationsRoutesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsRoutesList'{..}
          = go _plrlParent _plrlXgafv _plrlFieldSelector
              _plrlUploadProtocol
              _plrlAccessToken
              _plrlResourceVersion
              _plrlLabelSelector
              _plrlUploadType
              _plrlLimit
              _plrlIncludeUninitialized
              _plrlContinue
              _plrlWatch
              _plrlCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsRoutesListResource)
                      mempty

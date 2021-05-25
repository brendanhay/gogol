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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Services.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List services.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.list@.
module Network.Google.Resource.Run.Projects.Locations.Services.List
    (
    -- * REST Resource
      ProjectsLocationsServicesListResource

    -- * Creating a Request
    , projectsLocationsServicesList
    , ProjectsLocationsServicesList

    -- * Request Lenses
    , plslParent
    , plslXgafv
    , plslFieldSelector
    , plslUploadProtocol
    , plslAccessToken
    , plslResourceVersion
    , plslLabelSelector
    , plslUploadType
    , plslLimit
    , plslIncludeUninitialized
    , plslContinue
    , plslWatch
    , plslCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.list@ method which the
-- 'ProjectsLocationsServicesList' request conforms to.
type ProjectsLocationsServicesListResource =
     "v1" :>
       Capture "parent" Text :>
         "services" :>
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
                                     Get '[JSON] ListServicesResponse

-- | List services.
--
-- /See:/ 'projectsLocationsServicesList' smart constructor.
data ProjectsLocationsServicesList =
  ProjectsLocationsServicesList'
    { _plslParent :: !Text
    , _plslXgafv :: !(Maybe Xgafv)
    , _plslFieldSelector :: !(Maybe Text)
    , _plslUploadProtocol :: !(Maybe Text)
    , _plslAccessToken :: !(Maybe Text)
    , _plslResourceVersion :: !(Maybe Text)
    , _plslLabelSelector :: !(Maybe Text)
    , _plslUploadType :: !(Maybe Text)
    , _plslLimit :: !(Maybe (Textual Int32))
    , _plslIncludeUninitialized :: !(Maybe Bool)
    , _plslContinue :: !(Maybe Text)
    , _plslWatch :: !(Maybe Bool)
    , _plslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plslParent'
--
-- * 'plslXgafv'
--
-- * 'plslFieldSelector'
--
-- * 'plslUploadProtocol'
--
-- * 'plslAccessToken'
--
-- * 'plslResourceVersion'
--
-- * 'plslLabelSelector'
--
-- * 'plslUploadType'
--
-- * 'plslLimit'
--
-- * 'plslIncludeUninitialized'
--
-- * 'plslContinue'
--
-- * 'plslWatch'
--
-- * 'plslCallback'
projectsLocationsServicesList
    :: Text -- ^ 'plslParent'
    -> ProjectsLocationsServicesList
projectsLocationsServicesList pPlslParent_ =
  ProjectsLocationsServicesList'
    { _plslParent = pPlslParent_
    , _plslXgafv = Nothing
    , _plslFieldSelector = Nothing
    , _plslUploadProtocol = Nothing
    , _plslAccessToken = Nothing
    , _plslResourceVersion = Nothing
    , _plslLabelSelector = Nothing
    , _plslUploadType = Nothing
    , _plslLimit = Nothing
    , _plslIncludeUninitialized = Nothing
    , _plslContinue = Nothing
    , _plslWatch = Nothing
    , _plslCallback = Nothing
    }


-- | The namespace from which the services should be listed. For Cloud Run
-- (fully managed), replace {namespace_id} with the project ID or number.
plslParent :: Lens' ProjectsLocationsServicesList Text
plslParent
  = lens _plslParent (\ s a -> s{_plslParent = a})

-- | V1 error format.
plslXgafv :: Lens' ProjectsLocationsServicesList (Maybe Xgafv)
plslXgafv
  = lens _plslXgafv (\ s a -> s{_plslXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
plslFieldSelector :: Lens' ProjectsLocationsServicesList (Maybe Text)
plslFieldSelector
  = lens _plslFieldSelector
      (\ s a -> s{_plslFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plslUploadProtocol :: Lens' ProjectsLocationsServicesList (Maybe Text)
plslUploadProtocol
  = lens _plslUploadProtocol
      (\ s a -> s{_plslUploadProtocol = a})

-- | OAuth access token.
plslAccessToken :: Lens' ProjectsLocationsServicesList (Maybe Text)
plslAccessToken
  = lens _plslAccessToken
      (\ s a -> s{_plslAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
plslResourceVersion :: Lens' ProjectsLocationsServicesList (Maybe Text)
plslResourceVersion
  = lens _plslResourceVersion
      (\ s a -> s{_plslResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
plslLabelSelector :: Lens' ProjectsLocationsServicesList (Maybe Text)
plslLabelSelector
  = lens _plslLabelSelector
      (\ s a -> s{_plslLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plslUploadType :: Lens' ProjectsLocationsServicesList (Maybe Text)
plslUploadType
  = lens _plslUploadType
      (\ s a -> s{_plslUploadType = a})

-- | Optional. The maximum number of records that should be returned.
plslLimit :: Lens' ProjectsLocationsServicesList (Maybe Int32)
plslLimit
  = lens _plslLimit (\ s a -> s{_plslLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
plslIncludeUninitialized :: Lens' ProjectsLocationsServicesList (Maybe Bool)
plslIncludeUninitialized
  = lens _plslIncludeUninitialized
      (\ s a -> s{_plslIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
plslContinue :: Lens' ProjectsLocationsServicesList (Maybe Text)
plslContinue
  = lens _plslContinue (\ s a -> s{_plslContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
plslWatch :: Lens' ProjectsLocationsServicesList (Maybe Bool)
plslWatch
  = lens _plslWatch (\ s a -> s{_plslWatch = a})

-- | JSONP
plslCallback :: Lens' ProjectsLocationsServicesList (Maybe Text)
plslCallback
  = lens _plslCallback (\ s a -> s{_plslCallback = a})

instance GoogleRequest ProjectsLocationsServicesList
         where
        type Rs ProjectsLocationsServicesList =
             ListServicesResponse
        type Scopes ProjectsLocationsServicesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsServicesList'{..}
          = go _plslParent _plslXgafv _plslFieldSelector
              _plslUploadProtocol
              _plslAccessToken
              _plslResourceVersion
              _plslLabelSelector
              _plslUploadType
              _plslLimit
              _plslIncludeUninitialized
              _plslContinue
              _plslWatch
              _plslCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsServicesListResource)
                      mempty

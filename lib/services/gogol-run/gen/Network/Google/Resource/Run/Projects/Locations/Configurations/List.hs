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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Configurations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List configurations.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.configurations.list@.
module Network.Google.Resource.Run.Projects.Locations.Configurations.List
    (
    -- * REST Resource
      ProjectsLocationsConfigurationsListResource

    -- * Creating a Request
    , projectsLocationsConfigurationsList
    , ProjectsLocationsConfigurationsList

    -- * Request Lenses
    , plclParent
    , plclXgafv
    , plclFieldSelector
    , plclUploadProtocol
    , plclAccessToken
    , plclResourceVersion
    , plclLabelSelector
    , plclUploadType
    , plclLimit
    , plclIncludeUninitialized
    , plclContinue
    , plclWatch
    , plclCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.configurations.list@ method which the
-- 'ProjectsLocationsConfigurationsList' request conforms to.
type ProjectsLocationsConfigurationsListResource =
     "v1" :>
       Capture "parent" Text :>
         "configurations" :>
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
                                     Get '[JSON] ListConfigurationsResponse

-- | List configurations.
--
-- /See:/ 'projectsLocationsConfigurationsList' smart constructor.
data ProjectsLocationsConfigurationsList =
  ProjectsLocationsConfigurationsList'
    { _plclParent :: !Text
    , _plclXgafv :: !(Maybe Xgafv)
    , _plclFieldSelector :: !(Maybe Text)
    , _plclUploadProtocol :: !(Maybe Text)
    , _plclAccessToken :: !(Maybe Text)
    , _plclResourceVersion :: !(Maybe Text)
    , _plclLabelSelector :: !(Maybe Text)
    , _plclUploadType :: !(Maybe Text)
    , _plclLimit :: !(Maybe (Textual Int32))
    , _plclIncludeUninitialized :: !(Maybe Bool)
    , _plclContinue :: !(Maybe Text)
    , _plclWatch :: !(Maybe Bool)
    , _plclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsConfigurationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plclParent'
--
-- * 'plclXgafv'
--
-- * 'plclFieldSelector'
--
-- * 'plclUploadProtocol'
--
-- * 'plclAccessToken'
--
-- * 'plclResourceVersion'
--
-- * 'plclLabelSelector'
--
-- * 'plclUploadType'
--
-- * 'plclLimit'
--
-- * 'plclIncludeUninitialized'
--
-- * 'plclContinue'
--
-- * 'plclWatch'
--
-- * 'plclCallback'
projectsLocationsConfigurationsList
    :: Text -- ^ 'plclParent'
    -> ProjectsLocationsConfigurationsList
projectsLocationsConfigurationsList pPlclParent_ =
  ProjectsLocationsConfigurationsList'
    { _plclParent = pPlclParent_
    , _plclXgafv = Nothing
    , _plclFieldSelector = Nothing
    , _plclUploadProtocol = Nothing
    , _plclAccessToken = Nothing
    , _plclResourceVersion = Nothing
    , _plclLabelSelector = Nothing
    , _plclUploadType = Nothing
    , _plclLimit = Nothing
    , _plclIncludeUninitialized = Nothing
    , _plclContinue = Nothing
    , _plclWatch = Nothing
    , _plclCallback = Nothing
    }


-- | The namespace from which the configurations should be listed. For Cloud
-- Run (fully managed), replace {namespace_id} with the project ID or
-- number.
plclParent :: Lens' ProjectsLocationsConfigurationsList Text
plclParent
  = lens _plclParent (\ s a -> s{_plclParent = a})

-- | V1 error format.
plclXgafv :: Lens' ProjectsLocationsConfigurationsList (Maybe Xgafv)
plclXgafv
  = lens _plclXgafv (\ s a -> s{_plclXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
plclFieldSelector :: Lens' ProjectsLocationsConfigurationsList (Maybe Text)
plclFieldSelector
  = lens _plclFieldSelector
      (\ s a -> s{_plclFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plclUploadProtocol :: Lens' ProjectsLocationsConfigurationsList (Maybe Text)
plclUploadProtocol
  = lens _plclUploadProtocol
      (\ s a -> s{_plclUploadProtocol = a})

-- | OAuth access token.
plclAccessToken :: Lens' ProjectsLocationsConfigurationsList (Maybe Text)
plclAccessToken
  = lens _plclAccessToken
      (\ s a -> s{_plclAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
plclResourceVersion :: Lens' ProjectsLocationsConfigurationsList (Maybe Text)
plclResourceVersion
  = lens _plclResourceVersion
      (\ s a -> s{_plclResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
plclLabelSelector :: Lens' ProjectsLocationsConfigurationsList (Maybe Text)
plclLabelSelector
  = lens _plclLabelSelector
      (\ s a -> s{_plclLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plclUploadType :: Lens' ProjectsLocationsConfigurationsList (Maybe Text)
plclUploadType
  = lens _plclUploadType
      (\ s a -> s{_plclUploadType = a})

-- | Optional. The maximum number of records that should be returned.
plclLimit :: Lens' ProjectsLocationsConfigurationsList (Maybe Int32)
plclLimit
  = lens _plclLimit (\ s a -> s{_plclLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
plclIncludeUninitialized :: Lens' ProjectsLocationsConfigurationsList (Maybe Bool)
plclIncludeUninitialized
  = lens _plclIncludeUninitialized
      (\ s a -> s{_plclIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
plclContinue :: Lens' ProjectsLocationsConfigurationsList (Maybe Text)
plclContinue
  = lens _plclContinue (\ s a -> s{_plclContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
plclWatch :: Lens' ProjectsLocationsConfigurationsList (Maybe Bool)
plclWatch
  = lens _plclWatch (\ s a -> s{_plclWatch = a})

-- | JSONP
plclCallback :: Lens' ProjectsLocationsConfigurationsList (Maybe Text)
plclCallback
  = lens _plclCallback (\ s a -> s{_plclCallback = a})

instance GoogleRequest
           ProjectsLocationsConfigurationsList
         where
        type Rs ProjectsLocationsConfigurationsList =
             ListConfigurationsResponse
        type Scopes ProjectsLocationsConfigurationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsConfigurationsList'{..}
          = go _plclParent _plclXgafv _plclFieldSelector
              _plclUploadProtocol
              _plclAccessToken
              _plclResourceVersion
              _plclLabelSelector
              _plclUploadType
              _plclLimit
              _plclIncludeUninitialized
              _plclContinue
              _plclWatch
              _plclCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsConfigurationsListResource)
                      mempty

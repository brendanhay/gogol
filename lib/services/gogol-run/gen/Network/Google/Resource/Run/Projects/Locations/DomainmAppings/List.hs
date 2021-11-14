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
-- Module      : Network.Google.Resource.Run.Projects.Locations.DomainmAppings.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List domain mappings.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.domainmappings.list@.
module Network.Google.Resource.Run.Projects.Locations.DomainmAppings.List
    (
    -- * REST Resource
      ProjectsLocationsDomainmAppingsListResource

    -- * Creating a Request
    , projectsLocationsDomainmAppingsList
    , ProjectsLocationsDomainmAppingsList

    -- * Request Lenses
    , pldalParent
    , pldalXgafv
    , pldalFieldSelector
    , pldalUploadProtocol
    , pldalAccessToken
    , pldalResourceVersion
    , pldalLabelSelector
    , pldalUploadType
    , pldalLimit
    , pldalIncludeUninitialized
    , pldalContinue
    , pldalWatch
    , pldalCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.domainmappings.list@ method which the
-- 'ProjectsLocationsDomainmAppingsList' request conforms to.
type ProjectsLocationsDomainmAppingsListResource =
     "v1" :>
       Capture "parent" Text :>
         "domainmappings" :>
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
                                     Get '[JSON] ListDomainMAppingsResponse

-- | List domain mappings.
--
-- /See:/ 'projectsLocationsDomainmAppingsList' smart constructor.
data ProjectsLocationsDomainmAppingsList =
  ProjectsLocationsDomainmAppingsList'
    { _pldalParent :: !Text
    , _pldalXgafv :: !(Maybe Xgafv)
    , _pldalFieldSelector :: !(Maybe Text)
    , _pldalUploadProtocol :: !(Maybe Text)
    , _pldalAccessToken :: !(Maybe Text)
    , _pldalResourceVersion :: !(Maybe Text)
    , _pldalLabelSelector :: !(Maybe Text)
    , _pldalUploadType :: !(Maybe Text)
    , _pldalLimit :: !(Maybe (Textual Int32))
    , _pldalIncludeUninitialized :: !(Maybe Bool)
    , _pldalContinue :: !(Maybe Text)
    , _pldalWatch :: !(Maybe Bool)
    , _pldalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDomainmAppingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldalParent'
--
-- * 'pldalXgafv'
--
-- * 'pldalFieldSelector'
--
-- * 'pldalUploadProtocol'
--
-- * 'pldalAccessToken'
--
-- * 'pldalResourceVersion'
--
-- * 'pldalLabelSelector'
--
-- * 'pldalUploadType'
--
-- * 'pldalLimit'
--
-- * 'pldalIncludeUninitialized'
--
-- * 'pldalContinue'
--
-- * 'pldalWatch'
--
-- * 'pldalCallback'
projectsLocationsDomainmAppingsList
    :: Text -- ^ 'pldalParent'
    -> ProjectsLocationsDomainmAppingsList
projectsLocationsDomainmAppingsList pPldalParent_ =
  ProjectsLocationsDomainmAppingsList'
    { _pldalParent = pPldalParent_
    , _pldalXgafv = Nothing
    , _pldalFieldSelector = Nothing
    , _pldalUploadProtocol = Nothing
    , _pldalAccessToken = Nothing
    , _pldalResourceVersion = Nothing
    , _pldalLabelSelector = Nothing
    , _pldalUploadType = Nothing
    , _pldalLimit = Nothing
    , _pldalIncludeUninitialized = Nothing
    , _pldalContinue = Nothing
    , _pldalWatch = Nothing
    , _pldalCallback = Nothing
    }


-- | The namespace from which the domain mappings should be listed. For Cloud
-- Run (fully managed), replace {namespace_id} with the project ID or
-- number.
pldalParent :: Lens' ProjectsLocationsDomainmAppingsList Text
pldalParent
  = lens _pldalParent (\ s a -> s{_pldalParent = a})

-- | V1 error format.
pldalXgafv :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Xgafv)
pldalXgafv
  = lens _pldalXgafv (\ s a -> s{_pldalXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
pldalFieldSelector :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Text)
pldalFieldSelector
  = lens _pldalFieldSelector
      (\ s a -> s{_pldalFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldalUploadProtocol :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Text)
pldalUploadProtocol
  = lens _pldalUploadProtocol
      (\ s a -> s{_pldalUploadProtocol = a})

-- | OAuth access token.
pldalAccessToken :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Text)
pldalAccessToken
  = lens _pldalAccessToken
      (\ s a -> s{_pldalAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
pldalResourceVersion :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Text)
pldalResourceVersion
  = lens _pldalResourceVersion
      (\ s a -> s{_pldalResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
pldalLabelSelector :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Text)
pldalLabelSelector
  = lens _pldalLabelSelector
      (\ s a -> s{_pldalLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldalUploadType :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Text)
pldalUploadType
  = lens _pldalUploadType
      (\ s a -> s{_pldalUploadType = a})

-- | Optional. The maximum number of records that should be returned.
pldalLimit :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Int32)
pldalLimit
  = lens _pldalLimit (\ s a -> s{_pldalLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
pldalIncludeUninitialized :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Bool)
pldalIncludeUninitialized
  = lens _pldalIncludeUninitialized
      (\ s a -> s{_pldalIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
pldalContinue :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Text)
pldalContinue
  = lens _pldalContinue
      (\ s a -> s{_pldalContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
pldalWatch :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Bool)
pldalWatch
  = lens _pldalWatch (\ s a -> s{_pldalWatch = a})

-- | JSONP
pldalCallback :: Lens' ProjectsLocationsDomainmAppingsList (Maybe Text)
pldalCallback
  = lens _pldalCallback
      (\ s a -> s{_pldalCallback = a})

instance GoogleRequest
           ProjectsLocationsDomainmAppingsList
         where
        type Rs ProjectsLocationsDomainmAppingsList =
             ListDomainMAppingsResponse
        type Scopes ProjectsLocationsDomainmAppingsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDomainmAppingsList'{..}
          = go _pldalParent _pldalXgafv _pldalFieldSelector
              _pldalUploadProtocol
              _pldalAccessToken
              _pldalResourceVersion
              _pldalLabelSelector
              _pldalUploadType
              _pldalLimit
              _pldalIncludeUninitialized
              _pldalContinue
              _pldalWatch
              _pldalCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDomainmAppingsListResource)
                      mempty

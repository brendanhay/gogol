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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Operations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.operations.list@.
module Network.Google.Resource.Container.Projects.Locations.Operations.List
    (
    -- * REST Resource
      ProjectsLocationsOperationsListResource

    -- * Creating a Request
    , projectsLocationsOperationsList
    , ProjectsLocationsOperationsList

    -- * Request Lenses
    , plolParent
    , plolXgafv
    , plolUploadProtocol
    , plolAccessToken
    , plolUploadType
    , plolZone
    , plolProjectId
    , plolCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.operations.list@ method which the
-- 'ProjectsLocationsOperationsList' request conforms to.
type ProjectsLocationsOperationsListResource =
     "v1" :>
       Capture "parent" Text :>
         "operations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "zone" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListOperationsResponse

-- | Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ 'projectsLocationsOperationsList' smart constructor.
data ProjectsLocationsOperationsList =
  ProjectsLocationsOperationsList'
    { _plolParent :: !Text
    , _plolXgafv :: !(Maybe Xgafv)
    , _plolUploadProtocol :: !(Maybe Text)
    , _plolAccessToken :: !(Maybe Text)
    , _plolUploadType :: !(Maybe Text)
    , _plolZone :: !(Maybe Text)
    , _plolProjectId :: !(Maybe Text)
    , _plolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plolParent'
--
-- * 'plolXgafv'
--
-- * 'plolUploadProtocol'
--
-- * 'plolAccessToken'
--
-- * 'plolUploadType'
--
-- * 'plolZone'
--
-- * 'plolProjectId'
--
-- * 'plolCallback'
projectsLocationsOperationsList
    :: Text -- ^ 'plolParent'
    -> ProjectsLocationsOperationsList
projectsLocationsOperationsList pPlolParent_ =
  ProjectsLocationsOperationsList'
    { _plolParent = pPlolParent_
    , _plolXgafv = Nothing
    , _plolUploadProtocol = Nothing
    , _plolAccessToken = Nothing
    , _plolUploadType = Nothing
    , _plolZone = Nothing
    , _plolProjectId = Nothing
    , _plolCallback = Nothing
    }


-- | The parent (project and location) where the operations will be listed.
-- Specified in the format \`projects\/*\/locations\/*\`. Location \"-\"
-- matches all zones and all regions.
plolParent :: Lens' ProjectsLocationsOperationsList Text
plolParent
  = lens _plolParent (\ s a -> s{_plolParent = a})

-- | V1 error format.
plolXgafv :: Lens' ProjectsLocationsOperationsList (Maybe Xgafv)
plolXgafv
  = lens _plolXgafv (\ s a -> s{_plolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plolUploadProtocol :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolUploadProtocol
  = lens _plolUploadProtocol
      (\ s a -> s{_plolUploadProtocol = a})

-- | OAuth access token.
plolAccessToken :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolAccessToken
  = lens _plolAccessToken
      (\ s a -> s{_plolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plolUploadType :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolUploadType
  = lens _plolUploadType
      (\ s a -> s{_plolUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) to
-- return operations for, or \`-\` for all zones. This field has been
-- deprecated and replaced by the parent field.
plolZone :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolZone = lens _plolZone (\ s a -> s{_plolZone = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the parent field.
plolProjectId :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolProjectId
  = lens _plolProjectId
      (\ s a -> s{_plolProjectId = a})

-- | JSONP
plolCallback :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolCallback
  = lens _plolCallback (\ s a -> s{_plolCallback = a})

instance GoogleRequest
           ProjectsLocationsOperationsList
         where
        type Rs ProjectsLocationsOperationsList =
             ListOperationsResponse
        type Scopes ProjectsLocationsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsOperationsList'{..}
          = go _plolParent _plolXgafv _plolUploadProtocol
              _plolAccessToken
              _plolUploadType
              _plolZone
              _plolProjectId
              _plolCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsOperationsListResource)
                      mempty

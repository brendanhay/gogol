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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.operations.list@.
module Network.Google.Resource.Container.Projects.Zones.Operations.List
    (
    -- * REST Resource
      ProjectsZonesOperationsListResource

    -- * Creating a Request
    , projectsZonesOperationsList
    , ProjectsZonesOperationsList

    -- * Request Lenses
    , pzolParent
    , pzolXgafv
    , pzolUploadProtocol
    , pzolAccessToken
    , pzolUploadType
    , pzolZone
    , pzolProjectId
    , pzolCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.zones.operations.list@ method which the
-- 'ProjectsZonesOperationsList' request conforms to.
type ProjectsZonesOperationsListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "operations" :>
                 QueryParam "parent" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListOperationsResponse

-- | Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ 'projectsZonesOperationsList' smart constructor.
data ProjectsZonesOperationsList =
  ProjectsZonesOperationsList'
    { _pzolParent         :: !(Maybe Text)
    , _pzolXgafv          :: !(Maybe Xgafv)
    , _pzolUploadProtocol :: !(Maybe Text)
    , _pzolAccessToken    :: !(Maybe Text)
    , _pzolUploadType     :: !(Maybe Text)
    , _pzolZone           :: !Text
    , _pzolProjectId      :: !Text
    , _pzolCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsZonesOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzolParent'
--
-- * 'pzolXgafv'
--
-- * 'pzolUploadProtocol'
--
-- * 'pzolAccessToken'
--
-- * 'pzolUploadType'
--
-- * 'pzolZone'
--
-- * 'pzolProjectId'
--
-- * 'pzolCallback'
projectsZonesOperationsList
    :: Text -- ^ 'pzolZone'
    -> Text -- ^ 'pzolProjectId'
    -> ProjectsZonesOperationsList
projectsZonesOperationsList pPzolZone_ pPzolProjectId_ =
  ProjectsZonesOperationsList'
    { _pzolParent = Nothing
    , _pzolXgafv = Nothing
    , _pzolUploadProtocol = Nothing
    , _pzolAccessToken = Nothing
    , _pzolUploadType = Nothing
    , _pzolZone = pPzolZone_
    , _pzolProjectId = pPzolProjectId_
    , _pzolCallback = Nothing
    }

-- | The parent (project and location) where the operations will be listed.
-- Specified in the format \'projects\/*\/locations\/*\'. Location \"-\"
-- matches all zones and all regions.
pzolParent :: Lens' ProjectsZonesOperationsList (Maybe Text)
pzolParent
  = lens _pzolParent (\ s a -> s{_pzolParent = a})

-- | V1 error format.
pzolXgafv :: Lens' ProjectsZonesOperationsList (Maybe Xgafv)
pzolXgafv
  = lens _pzolXgafv (\ s a -> s{_pzolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzolUploadProtocol :: Lens' ProjectsZonesOperationsList (Maybe Text)
pzolUploadProtocol
  = lens _pzolUploadProtocol
      (\ s a -> s{_pzolUploadProtocol = a})

-- | OAuth access token.
pzolAccessToken :: Lens' ProjectsZonesOperationsList (Maybe Text)
pzolAccessToken
  = lens _pzolAccessToken
      (\ s a -> s{_pzolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzolUploadType :: Lens' ProjectsZonesOperationsList (Maybe Text)
pzolUploadType
  = lens _pzolUploadType
      (\ s a -> s{_pzolUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) to return operations for, or
-- \`-\` for all zones. This field has been deprecated and replaced by the
-- parent field.
pzolZone :: Lens' ProjectsZonesOperationsList Text
pzolZone = lens _pzolZone (\ s a -> s{_pzolZone = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the parent field.
pzolProjectId :: Lens' ProjectsZonesOperationsList Text
pzolProjectId
  = lens _pzolProjectId
      (\ s a -> s{_pzolProjectId = a})

-- | JSONP
pzolCallback :: Lens' ProjectsZonesOperationsList (Maybe Text)
pzolCallback
  = lens _pzolCallback (\ s a -> s{_pzolCallback = a})

instance GoogleRequest ProjectsZonesOperationsList
         where
        type Rs ProjectsZonesOperationsList =
             ListOperationsResponse
        type Scopes ProjectsZonesOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsZonesOperationsList'{..}
          = go _pzolProjectId _pzolZone _pzolParent _pzolXgafv
              _pzolUploadProtocol
              _pzolAccessToken
              _pzolUploadType
              _pzolCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesOperationsListResource)
                      mempty

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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference> for @ContainerProjectsZonesOperationsList@.
module Network.Google.Resource.Container.Projects.Zones.Operations.List
    (
    -- * REST Resource
      ProjectsZonesOperationsListResource

    -- * Creating a Request
    , projectsZonesOperationsList'
    , ProjectsZonesOperationsList'

    -- * Request Lenses
    , pzolXgafv
    , pzolUploadProtocol
    , pzolPp
    , pzolAccessToken
    , pzolUploadType
    , pzolZone
    , pzolBearerToken
    , pzolProjectId
    , pzolCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesOperationsList@ method which the
-- 'ProjectsZonesOperationsList'' request conforms to.
type ProjectsZonesOperationsListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "zones" :>
             Capture "zone" Text :>
               "operations" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListOperationsResponse

-- | Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ 'projectsZonesOperationsList'' smart constructor.
data ProjectsZonesOperationsList' = ProjectsZonesOperationsList'
    { _pzolXgafv          :: !(Maybe Text)
    , _pzolUploadProtocol :: !(Maybe Text)
    , _pzolPp             :: !Bool
    , _pzolAccessToken    :: !(Maybe Text)
    , _pzolUploadType     :: !(Maybe Text)
    , _pzolZone           :: !Text
    , _pzolBearerToken    :: !(Maybe Text)
    , _pzolProjectId      :: !Text
    , _pzolCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzolXgafv'
--
-- * 'pzolUploadProtocol'
--
-- * 'pzolPp'
--
-- * 'pzolAccessToken'
--
-- * 'pzolUploadType'
--
-- * 'pzolZone'
--
-- * 'pzolBearerToken'
--
-- * 'pzolProjectId'
--
-- * 'pzolCallback'
projectsZonesOperationsList'
    :: Text -- ^ 'zone'
    -> Text -- ^ 'projectId'
    -> ProjectsZonesOperationsList'
projectsZonesOperationsList' pPzolZone_ pPzolProjectId_ =
    ProjectsZonesOperationsList'
    { _pzolXgafv = Nothing
    , _pzolUploadProtocol = Nothing
    , _pzolPp = True
    , _pzolAccessToken = Nothing
    , _pzolUploadType = Nothing
    , _pzolZone = pPzolZone_
    , _pzolBearerToken = Nothing
    , _pzolProjectId = pPzolProjectId_
    , _pzolCallback = Nothing
    }

-- | V1 error format.
pzolXgafv :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolXgafv
  = lens _pzolXgafv (\ s a -> s{_pzolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pzolUploadProtocol :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolUploadProtocol
  = lens _pzolUploadProtocol
      (\ s a -> s{_pzolUploadProtocol = a})

-- | Pretty-print response.
pzolPp :: Lens' ProjectsZonesOperationsList' Bool
pzolPp = lens _pzolPp (\ s a -> s{_pzolPp = a})

-- | OAuth access token.
pzolAccessToken :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolAccessToken
  = lens _pzolAccessToken
      (\ s a -> s{_pzolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pzolUploadType :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolUploadType
  = lens _pzolUploadType
      (\ s a -> s{_pzolUploadType = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) to return operations for, or
-- \"-\" for all zones.
pzolZone :: Lens' ProjectsZonesOperationsList' Text
pzolZone = lens _pzolZone (\ s a -> s{_pzolZone = a})

-- | OAuth bearer token.
pzolBearerToken :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolBearerToken
  = lens _pzolBearerToken
      (\ s a -> s{_pzolBearerToken = a})

-- | The Google Developers Console [project ID or project
-- number](https:\/\/developers.google.com\/console\/help\/new\/#projectnumber).
pzolProjectId :: Lens' ProjectsZonesOperationsList' Text
pzolProjectId
  = lens _pzolProjectId
      (\ s a -> s{_pzolProjectId = a})

-- | JSONP
pzolCallback :: Lens' ProjectsZonesOperationsList' (Maybe Text)
pzolCallback
  = lens _pzolCallback (\ s a -> s{_pzolCallback = a})

instance GoogleRequest ProjectsZonesOperationsList'
         where
        type Rs ProjectsZonesOperationsList' =
             ListOperationsResponse
        requestClient ProjectsZonesOperationsList'{..}
          = go _pzolProjectId _pzolZone _pzolXgafv
              _pzolUploadProtocol
              (Just _pzolPp)
              _pzolAccessToken
              _pzolUploadType
              _pzolBearerToken
              _pzolCallback
              (Just AltJSON)
              container
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsZonesOperationsListResource)
                      mempty

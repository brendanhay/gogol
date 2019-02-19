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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Clusters.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a single screenshot cluster by its ID
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.clusters.get@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Clusters.Get
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsClustersGetResource

    -- * Creating a Request
    , projectsHistoriesExecutionsClustersGet
    , ProjectsHistoriesExecutionsClustersGet

    -- * Request Lenses
    , phecgExecutionId
    , phecgClusterId
    , phecgHistoryId
    , phecgProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.clusters.get@ method which the
-- 'ProjectsHistoriesExecutionsClustersGet' request conforms to.
type ProjectsHistoriesExecutionsClustersGetResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     "clusters" :>
                       Capture "clusterId" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ScreenshotCluster

-- | Retrieves a single screenshot cluster by its ID
--
-- /See:/ 'projectsHistoriesExecutionsClustersGet' smart constructor.
data ProjectsHistoriesExecutionsClustersGet =
  ProjectsHistoriesExecutionsClustersGet'
    { _phecgExecutionId :: !Text
    , _phecgClusterId   :: !Text
    , _phecgHistoryId   :: !Text
    , _phecgProjectId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsClustersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phecgExecutionId'
--
-- * 'phecgClusterId'
--
-- * 'phecgHistoryId'
--
-- * 'phecgProjectId'
projectsHistoriesExecutionsClustersGet
    :: Text -- ^ 'phecgExecutionId'
    -> Text -- ^ 'phecgClusterId'
    -> Text -- ^ 'phecgHistoryId'
    -> Text -- ^ 'phecgProjectId'
    -> ProjectsHistoriesExecutionsClustersGet
projectsHistoriesExecutionsClustersGet pPhecgExecutionId_ pPhecgClusterId_ pPhecgHistoryId_ pPhecgProjectId_ =
  ProjectsHistoriesExecutionsClustersGet'
    { _phecgExecutionId = pPhecgExecutionId_
    , _phecgClusterId = pPhecgClusterId_
    , _phecgHistoryId = pPhecgHistoryId_
    , _phecgProjectId = pPhecgProjectId_
    }


-- | An Execution id. Required.
phecgExecutionId :: Lens' ProjectsHistoriesExecutionsClustersGet Text
phecgExecutionId
  = lens _phecgExecutionId
      (\ s a -> s{_phecgExecutionId = a})

-- | A Cluster id Required.
phecgClusterId :: Lens' ProjectsHistoriesExecutionsClustersGet Text
phecgClusterId
  = lens _phecgClusterId
      (\ s a -> s{_phecgClusterId = a})

-- | A History id. Required.
phecgHistoryId :: Lens' ProjectsHistoriesExecutionsClustersGet Text
phecgHistoryId
  = lens _phecgHistoryId
      (\ s a -> s{_phecgHistoryId = a})

-- | A Project id. Required.
phecgProjectId :: Lens' ProjectsHistoriesExecutionsClustersGet Text
phecgProjectId
  = lens _phecgProjectId
      (\ s a -> s{_phecgProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsClustersGet
         where
        type Rs ProjectsHistoriesExecutionsClustersGet =
             ScreenshotCluster
        type Scopes ProjectsHistoriesExecutionsClustersGet =
             '[]
        requestClient
          ProjectsHistoriesExecutionsClustersGet'{..}
          = go _phecgProjectId _phecgHistoryId
              _phecgExecutionId
              _phecgClusterId
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsClustersGetResource)
                      mempty

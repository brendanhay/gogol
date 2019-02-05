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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Clusters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Screenshot Clusters Returns the list of screenshot clusters
-- corresponding to an execution. Screenshot clusters are created after the
-- execution is finished. Clusters are created from a set of screenshots.
-- Between any two screenshots, a matching score is calculated based off
-- their metadata that determines how similar they are. Screenshots are
-- placed in the cluster that has screens which have the highest matching
-- scores.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.clusters.list@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Clusters.List
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsClustersListResource

    -- * Creating a Request
    , projectsHistoriesExecutionsClustersList
    , ProjectsHistoriesExecutionsClustersList

    -- * Request Lenses
    , pheclExecutionId
    , pheclHistoryId
    , pheclProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.clusters.list@ method which the
-- 'ProjectsHistoriesExecutionsClustersList' request conforms to.
type ProjectsHistoriesExecutionsClustersListResource
     =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     "clusters" :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListScreenshotClustersResponse

-- | Lists Screenshot Clusters Returns the list of screenshot clusters
-- corresponding to an execution. Screenshot clusters are created after the
-- execution is finished. Clusters are created from a set of screenshots.
-- Between any two screenshots, a matching score is calculated based off
-- their metadata that determines how similar they are. Screenshots are
-- placed in the cluster that has screens which have the highest matching
-- scores.
--
-- /See:/ 'projectsHistoriesExecutionsClustersList' smart constructor.
data ProjectsHistoriesExecutionsClustersList = ProjectsHistoriesExecutionsClustersList'
    { _pheclExecutionId :: !Text
    , _pheclHistoryId   :: !Text
    , _pheclProjectId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsClustersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pheclExecutionId'
--
-- * 'pheclHistoryId'
--
-- * 'pheclProjectId'
projectsHistoriesExecutionsClustersList
    :: Text -- ^ 'pheclExecutionId'
    -> Text -- ^ 'pheclHistoryId'
    -> Text -- ^ 'pheclProjectId'
    -> ProjectsHistoriesExecutionsClustersList
projectsHistoriesExecutionsClustersList pPheclExecutionId_ pPheclHistoryId_ pPheclProjectId_ =
    ProjectsHistoriesExecutionsClustersList'
    { _pheclExecutionId = pPheclExecutionId_
    , _pheclHistoryId = pPheclHistoryId_
    , _pheclProjectId = pPheclProjectId_
    }

-- | An Execution id. Required.
pheclExecutionId :: Lens' ProjectsHistoriesExecutionsClustersList Text
pheclExecutionId
  = lens _pheclExecutionId
      (\ s a -> s{_pheclExecutionId = a})

-- | A History id. Required.
pheclHistoryId :: Lens' ProjectsHistoriesExecutionsClustersList Text
pheclHistoryId
  = lens _pheclHistoryId
      (\ s a -> s{_pheclHistoryId = a})

-- | A Project id. Required.
pheclProjectId :: Lens' ProjectsHistoriesExecutionsClustersList Text
pheclProjectId
  = lens _pheclProjectId
      (\ s a -> s{_pheclProjectId = a})

instance GoogleRequest
         ProjectsHistoriesExecutionsClustersList where
        type Rs ProjectsHistoriesExecutionsClustersList =
             ListScreenshotClustersResponse
        type Scopes ProjectsHistoriesExecutionsClustersList =
             '[]
        requestClient
          ProjectsHistoriesExecutionsClustersList'{..}
          = go _pheclProjectId _pheclHistoryId
              _pheclExecutionId
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsClustersListResource)
                      mempty

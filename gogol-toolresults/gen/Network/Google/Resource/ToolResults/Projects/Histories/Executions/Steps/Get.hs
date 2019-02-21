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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Step. May return any of the following canonical error codes: -
-- PERMISSION_DENIED - if the user is not authorized to read project -
-- INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Step
-- does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.get@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Get
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsGetResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsGet
    , ProjectsHistoriesExecutionsStepsGet

    -- * Request Lenses
    , phesgExecutionId
    , phesgStepId
    , phesgHistoryId
    , phesgProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.get@ method which the
-- 'ProjectsHistoriesExecutionsStepsGet' request conforms to.
type ProjectsHistoriesExecutionsStepsGetResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     "steps" :>
                       Capture "stepId" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Step

-- | Gets a Step. May return any of the following canonical error codes: -
-- PERMISSION_DENIED - if the user is not authorized to read project -
-- INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Step
-- does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsGet' smart constructor.
data ProjectsHistoriesExecutionsStepsGet =
  ProjectsHistoriesExecutionsStepsGet'
    { _phesgExecutionId :: !Text
    , _phesgStepId      :: !Text
    , _phesgHistoryId   :: !Text
    , _phesgProjectId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phesgExecutionId'
--
-- * 'phesgStepId'
--
-- * 'phesgHistoryId'
--
-- * 'phesgProjectId'
projectsHistoriesExecutionsStepsGet
    :: Text -- ^ 'phesgExecutionId'
    -> Text -- ^ 'phesgStepId'
    -> Text -- ^ 'phesgHistoryId'
    -> Text -- ^ 'phesgProjectId'
    -> ProjectsHistoriesExecutionsStepsGet
projectsHistoriesExecutionsStepsGet pPhesgExecutionId_ pPhesgStepId_ pPhesgHistoryId_ pPhesgProjectId_ =
  ProjectsHistoriesExecutionsStepsGet'
    { _phesgExecutionId = pPhesgExecutionId_
    , _phesgStepId = pPhesgStepId_
    , _phesgHistoryId = pPhesgHistoryId_
    , _phesgProjectId = pPhesgProjectId_
    }


-- | A Execution id. Required.
phesgExecutionId :: Lens' ProjectsHistoriesExecutionsStepsGet Text
phesgExecutionId
  = lens _phesgExecutionId
      (\ s a -> s{_phesgExecutionId = a})

-- | A Step id. Required.
phesgStepId :: Lens' ProjectsHistoriesExecutionsStepsGet Text
phesgStepId
  = lens _phesgStepId (\ s a -> s{_phesgStepId = a})

-- | A History id. Required.
phesgHistoryId :: Lens' ProjectsHistoriesExecutionsStepsGet Text
phesgHistoryId
  = lens _phesgHistoryId
      (\ s a -> s{_phesgHistoryId = a})

-- | A Project id. Required.
phesgProjectId :: Lens' ProjectsHistoriesExecutionsStepsGet Text
phesgProjectId
  = lens _phesgProjectId
      (\ s a -> s{_phesgProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsGet
         where
        type Rs ProjectsHistoriesExecutionsStepsGet = Step
        type Scopes ProjectsHistoriesExecutionsStepsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsGet'{..}
          = go _phesgProjectId _phesgHistoryId
              _phesgExecutionId
              _phesgStepId
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsStepsGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing Step with the supplied partial entity. May return
-- any of the following canonical error codes: - PERMISSION_DENIED - if the
-- user is not authorized to write project - INVALID_ARGUMENT - if the
-- request is malformed - FAILED_PRECONDITION - if the requested state
-- transition is illegal (e.g try to upload a duplicate xml file), if the
-- updated step is too large (more than 10Mib) - NOT_FOUND - if the
-- containing Execution does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.patch@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Patch
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsPatchResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsPatch
    , ProjectsHistoriesExecutionsStepsPatch

    -- * Request Lenses
    , phespRequestId
    , phespExecutionId
    , phespStepId
    , phespPayload
    , phespHistoryId
    , phespProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.patch@ method which the
-- 'ProjectsHistoriesExecutionsStepsPatch' request conforms to.
type ProjectsHistoriesExecutionsStepsPatchResource =
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
                         QueryParam "requestId" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Step :> Patch '[JSON] Step

-- | Updates an existing Step with the supplied partial entity. May return
-- any of the following canonical error codes: - PERMISSION_DENIED - if the
-- user is not authorized to write project - INVALID_ARGUMENT - if the
-- request is malformed - FAILED_PRECONDITION - if the requested state
-- transition is illegal (e.g try to upload a duplicate xml file), if the
-- updated step is too large (more than 10Mib) - NOT_FOUND - if the
-- containing Execution does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsPatch' smart constructor.
data ProjectsHistoriesExecutionsStepsPatch =
  ProjectsHistoriesExecutionsStepsPatch'
    { _phespRequestId   :: !(Maybe Text)
    , _phespExecutionId :: !Text
    , _phespStepId      :: !Text
    , _phespPayload     :: !Step
    , _phespHistoryId   :: !Text
    , _phespProjectId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phespRequestId'
--
-- * 'phespExecutionId'
--
-- * 'phespStepId'
--
-- * 'phespPayload'
--
-- * 'phespHistoryId'
--
-- * 'phespProjectId'
projectsHistoriesExecutionsStepsPatch
    :: Text -- ^ 'phespExecutionId'
    -> Text -- ^ 'phespStepId'
    -> Step -- ^ 'phespPayload'
    -> Text -- ^ 'phespHistoryId'
    -> Text -- ^ 'phespProjectId'
    -> ProjectsHistoriesExecutionsStepsPatch
projectsHistoriesExecutionsStepsPatch pPhespExecutionId_ pPhespStepId_ pPhespPayload_ pPhespHistoryId_ pPhespProjectId_ =
  ProjectsHistoriesExecutionsStepsPatch'
    { _phespRequestId = Nothing
    , _phespExecutionId = pPhespExecutionId_
    , _phespStepId = pPhespStepId_
    , _phespPayload = pPhespPayload_
    , _phespHistoryId = pPhespHistoryId_
    , _phespProjectId = pPhespProjectId_
    }


-- | A unique request ID for server to detect duplicated requests. For
-- example, a UUID. Optional, but strongly recommended.
phespRequestId :: Lens' ProjectsHistoriesExecutionsStepsPatch (Maybe Text)
phespRequestId
  = lens _phespRequestId
      (\ s a -> s{_phespRequestId = a})

-- | A Execution id. Required.
phespExecutionId :: Lens' ProjectsHistoriesExecutionsStepsPatch Text
phespExecutionId
  = lens _phespExecutionId
      (\ s a -> s{_phespExecutionId = a})

-- | A Step id. Required.
phespStepId :: Lens' ProjectsHistoriesExecutionsStepsPatch Text
phespStepId
  = lens _phespStepId (\ s a -> s{_phespStepId = a})

-- | Multipart request metadata.
phespPayload :: Lens' ProjectsHistoriesExecutionsStepsPatch Step
phespPayload
  = lens _phespPayload (\ s a -> s{_phespPayload = a})

-- | A History id. Required.
phespHistoryId :: Lens' ProjectsHistoriesExecutionsStepsPatch Text
phespHistoryId
  = lens _phespHistoryId
      (\ s a -> s{_phespHistoryId = a})

-- | A Project id. Required.
phespProjectId :: Lens' ProjectsHistoriesExecutionsStepsPatch Text
phespProjectId
  = lens _phespProjectId
      (\ s a -> s{_phespProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsPatch
         where
        type Rs ProjectsHistoriesExecutionsStepsPatch = Step
        type Scopes ProjectsHistoriesExecutionsStepsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsPatch'{..}
          = go _phespProjectId _phespHistoryId
              _phespExecutionId
              _phespStepId
              _phespRequestId
              (Just AltJSON)
              _phespPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsStepsPatchResource)
                      mempty

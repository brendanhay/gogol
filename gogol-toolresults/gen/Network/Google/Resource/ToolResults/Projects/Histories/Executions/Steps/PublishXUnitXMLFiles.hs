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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PublishXUnitXMLFiles
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publish xml files to an existing Step. May return any of the following
-- canonical error codes: - PERMISSION_DENIED - if the user is not
-- authorized to write project - INVALID_ARGUMENT - if the request is
-- malformed - FAILED_PRECONDITION - if the requested state transition is
-- illegal, e.g try to upload a duplicate xml file or a file too large. -
-- NOT_FOUND - if the containing Execution does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.publishXunitXmlFiles@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PublishXUnitXMLFiles
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsPublishXUnitXMLFilesResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsPublishXUnitXMLFiles
    , ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles

    -- * Request Lenses
    , phespxuxfExecutionId
    , phespxuxfStepId
    , phespxuxfPayload
    , phespxuxfHistoryId
    , phespxuxfProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.publishXunitXmlFiles@ method which the
-- 'ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles' request conforms to.
type ProjectsHistoriesExecutionsStepsPublishXUnitXMLFilesResource
     =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     "steps" :>
                       CaptureMode "stepId" "publishXunitXmlFiles" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PublishXUnitXMLFilesRequest :>
                             Post '[JSON] Step

-- | Publish xml files to an existing Step. May return any of the following
-- canonical error codes: - PERMISSION_DENIED - if the user is not
-- authorized to write project - INVALID_ARGUMENT - if the request is
-- malformed - FAILED_PRECONDITION - if the requested state transition is
-- illegal, e.g try to upload a duplicate xml file or a file too large. -
-- NOT_FOUND - if the containing Execution does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsPublishXUnitXMLFiles' smart constructor.
data ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles =
  ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles'
    { _phespxuxfExecutionId :: !Text
    , _phespxuxfStepId      :: !Text
    , _phespxuxfPayload     :: !PublishXUnitXMLFilesRequest
    , _phespxuxfHistoryId   :: !Text
    , _phespxuxfProjectId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phespxuxfExecutionId'
--
-- * 'phespxuxfStepId'
--
-- * 'phespxuxfPayload'
--
-- * 'phespxuxfHistoryId'
--
-- * 'phespxuxfProjectId'
projectsHistoriesExecutionsStepsPublishXUnitXMLFiles
    :: Text -- ^ 'phespxuxfExecutionId'
    -> Text -- ^ 'phespxuxfStepId'
    -> PublishXUnitXMLFilesRequest -- ^ 'phespxuxfPayload'
    -> Text -- ^ 'phespxuxfHistoryId'
    -> Text -- ^ 'phespxuxfProjectId'
    -> ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles
projectsHistoriesExecutionsStepsPublishXUnitXMLFiles pPhespxuxfExecutionId_ pPhespxuxfStepId_ pPhespxuxfPayload_ pPhespxuxfHistoryId_ pPhespxuxfProjectId_ =
  ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles'
    { _phespxuxfExecutionId = pPhespxuxfExecutionId_
    , _phespxuxfStepId = pPhespxuxfStepId_
    , _phespxuxfPayload = pPhespxuxfPayload_
    , _phespxuxfHistoryId = pPhespxuxfHistoryId_
    , _phespxuxfProjectId = pPhespxuxfProjectId_
    }

-- | A Execution id. Required.
phespxuxfExecutionId :: Lens' ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles Text
phespxuxfExecutionId
  = lens _phespxuxfExecutionId
      (\ s a -> s{_phespxuxfExecutionId = a})

-- | A Step id. Note: This step must include a TestExecutionStep. Required.
phespxuxfStepId :: Lens' ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles Text
phespxuxfStepId
  = lens _phespxuxfStepId
      (\ s a -> s{_phespxuxfStepId = a})

-- | Multipart request metadata.
phespxuxfPayload :: Lens' ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles PublishXUnitXMLFilesRequest
phespxuxfPayload
  = lens _phespxuxfPayload
      (\ s a -> s{_phespxuxfPayload = a})

-- | A History id. Required.
phespxuxfHistoryId :: Lens' ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles Text
phespxuxfHistoryId
  = lens _phespxuxfHistoryId
      (\ s a -> s{_phespxuxfHistoryId = a})

-- | A Project id. Required.
phespxuxfProjectId :: Lens' ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles Text
phespxuxfProjectId
  = lens _phespxuxfProjectId
      (\ s a -> s{_phespxuxfProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles
         where
        type Rs
               ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles
             = Step
        type Scopes
               ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsPublishXUnitXMLFiles'{..}
          = go _phespxuxfProjectId _phespxuxfHistoryId
              _phespxuxfExecutionId
              _phespxuxfStepId
              (Just AltJSON)
              _phespxuxfPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsPublishXUnitXMLFilesResource)
                      mempty

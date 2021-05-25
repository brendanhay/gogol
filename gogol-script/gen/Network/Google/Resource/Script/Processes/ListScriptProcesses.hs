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
-- Module      : Network.Google.Resource.Script.Processes.ListScriptProcesses
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List information about a script\'s executed processes, such as process
-- type and current status.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.processes.listScriptProcesses@.
module Network.Google.Resource.Script.Processes.ListScriptProcesses
    (
    -- * REST Resource
      ProcessesListScriptProcessesResource

    -- * Creating a Request
    , processesListScriptProcesses
    , ProcessesListScriptProcesses

    -- * Request Lenses
    , plspXgafv
    , plspScriptProcessFilterFunctionName
    , plspUploadProtocol
    , plspScriptProcessFilterUserAccessLevels
    , plspScriptProcessFilterStatuses
    , plspScriptProcessFilterEndTime
    , plspAccessToken
    , plspUploadType
    , plspScriptProcessFilterDeploymentId
    , plspScriptProcessFilterStartTime
    , plspScriptId
    , plspPageToken
    , plspPageSize
    , plspScriptProcessFilterTypes
    , plspCallback
    ) where

import Network.Google.Prelude
import Network.Google.Script.Types

-- | A resource alias for @script.processes.listScriptProcesses@ method which the
-- 'ProcessesListScriptProcesses' request conforms to.
type ProcessesListScriptProcessesResource =
     "v1" :>
       "processes:listScriptProcesses" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "scriptProcessFilter.functionName" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParams "scriptProcessFilter.userAccessLevels"
                 ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
                 :>
                 QueryParams "scriptProcessFilter.statuses"
                   ProcessesListScriptProcessesScriptProcessFilterStatuses
                   :>
                   QueryParam "scriptProcessFilter.endTime" DateTime' :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "scriptProcessFilter.deploymentId" Text :>
                           QueryParam "scriptProcessFilter.startTime" DateTime'
                             :>
                             QueryParam "scriptId" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParams "scriptProcessFilter.types"
                                     ProcessesListScriptProcessesScriptProcessFilterTypes
                                     :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListScriptProcessesResponse

-- | List information about a script\'s executed processes, such as process
-- type and current status.
--
-- /See:/ 'processesListScriptProcesses' smart constructor.
data ProcessesListScriptProcesses =
  ProcessesListScriptProcesses'
    { _plspXgafv :: !(Maybe Xgafv)
    , _plspScriptProcessFilterFunctionName :: !(Maybe Text)
    , _plspUploadProtocol :: !(Maybe Text)
    , _plspScriptProcessFilterUserAccessLevels :: !(Maybe [ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels])
    , _plspScriptProcessFilterStatuses :: !(Maybe [ProcessesListScriptProcessesScriptProcessFilterStatuses])
    , _plspScriptProcessFilterEndTime :: !(Maybe DateTime')
    , _plspAccessToken :: !(Maybe Text)
    , _plspUploadType :: !(Maybe Text)
    , _plspScriptProcessFilterDeploymentId :: !(Maybe Text)
    , _plspScriptProcessFilterStartTime :: !(Maybe DateTime')
    , _plspScriptId :: !(Maybe Text)
    , _plspPageToken :: !(Maybe Text)
    , _plspPageSize :: !(Maybe (Textual Int32))
    , _plspScriptProcessFilterTypes :: !(Maybe [ProcessesListScriptProcessesScriptProcessFilterTypes])
    , _plspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProcessesListScriptProcesses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plspXgafv'
--
-- * 'plspScriptProcessFilterFunctionName'
--
-- * 'plspUploadProtocol'
--
-- * 'plspScriptProcessFilterUserAccessLevels'
--
-- * 'plspScriptProcessFilterStatuses'
--
-- * 'plspScriptProcessFilterEndTime'
--
-- * 'plspAccessToken'
--
-- * 'plspUploadType'
--
-- * 'plspScriptProcessFilterDeploymentId'
--
-- * 'plspScriptProcessFilterStartTime'
--
-- * 'plspScriptId'
--
-- * 'plspPageToken'
--
-- * 'plspPageSize'
--
-- * 'plspScriptProcessFilterTypes'
--
-- * 'plspCallback'
processesListScriptProcesses
    :: ProcessesListScriptProcesses
processesListScriptProcesses =
  ProcessesListScriptProcesses'
    { _plspXgafv = Nothing
    , _plspScriptProcessFilterFunctionName = Nothing
    , _plspUploadProtocol = Nothing
    , _plspScriptProcessFilterUserAccessLevels = Nothing
    , _plspScriptProcessFilterStatuses = Nothing
    , _plspScriptProcessFilterEndTime = Nothing
    , _plspAccessToken = Nothing
    , _plspUploadType = Nothing
    , _plspScriptProcessFilterDeploymentId = Nothing
    , _plspScriptProcessFilterStartTime = Nothing
    , _plspScriptId = Nothing
    , _plspPageToken = Nothing
    , _plspPageSize = Nothing
    , _plspScriptProcessFilterTypes = Nothing
    , _plspCallback = Nothing
    }


-- | V1 error format.
plspXgafv :: Lens' ProcessesListScriptProcesses (Maybe Xgafv)
plspXgafv
  = lens _plspXgafv (\ s a -> s{_plspXgafv = a})

-- | Optional field used to limit returned processes to those originating
-- from a script function with the given function name.
plspScriptProcessFilterFunctionName :: Lens' ProcessesListScriptProcesses (Maybe Text)
plspScriptProcessFilterFunctionName
  = lens _plspScriptProcessFilterFunctionName
      (\ s a ->
         s{_plspScriptProcessFilterFunctionName = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plspUploadProtocol :: Lens' ProcessesListScriptProcesses (Maybe Text)
plspUploadProtocol
  = lens _plspUploadProtocol
      (\ s a -> s{_plspUploadProtocol = a})

-- | Optional field used to limit returned processes to those having one of
-- the specified user access levels.
plspScriptProcessFilterUserAccessLevels :: Lens' ProcessesListScriptProcesses [ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels]
plspScriptProcessFilterUserAccessLevels
  = lens _plspScriptProcessFilterUserAccessLevels
      (\ s a ->
         s{_plspScriptProcessFilterUserAccessLevels = a})
      . _Default
      . _Coerce

-- | Optional field used to limit returned processes to those having one of
-- the specified process statuses.
plspScriptProcessFilterStatuses :: Lens' ProcessesListScriptProcesses [ProcessesListScriptProcessesScriptProcessFilterStatuses]
plspScriptProcessFilterStatuses
  = lens _plspScriptProcessFilterStatuses
      (\ s a -> s{_plspScriptProcessFilterStatuses = a})
      . _Default
      . _Coerce

-- | Optional field used to limit returned processes to those that completed
-- on or before the given timestamp.
plspScriptProcessFilterEndTime :: Lens' ProcessesListScriptProcesses (Maybe UTCTime)
plspScriptProcessFilterEndTime
  = lens _plspScriptProcessFilterEndTime
      (\ s a -> s{_plspScriptProcessFilterEndTime = a})
      . mapping _DateTime

-- | OAuth access token.
plspAccessToken :: Lens' ProcessesListScriptProcesses (Maybe Text)
plspAccessToken
  = lens _plspAccessToken
      (\ s a -> s{_plspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plspUploadType :: Lens' ProcessesListScriptProcesses (Maybe Text)
plspUploadType
  = lens _plspUploadType
      (\ s a -> s{_plspUploadType = a})

-- | Optional field used to limit returned processes to those originating
-- from projects with a specific deployment ID.
plspScriptProcessFilterDeploymentId :: Lens' ProcessesListScriptProcesses (Maybe Text)
plspScriptProcessFilterDeploymentId
  = lens _plspScriptProcessFilterDeploymentId
      (\ s a ->
         s{_plspScriptProcessFilterDeploymentId = a})

-- | Optional field used to limit returned processes to those that were
-- started on or after the given timestamp.
plspScriptProcessFilterStartTime :: Lens' ProcessesListScriptProcesses (Maybe UTCTime)
plspScriptProcessFilterStartTime
  = lens _plspScriptProcessFilterStartTime
      (\ s a -> s{_plspScriptProcessFilterStartTime = a})
      . mapping _DateTime

-- | The script ID of the project whose processes are listed.
plspScriptId :: Lens' ProcessesListScriptProcesses (Maybe Text)
plspScriptId
  = lens _plspScriptId (\ s a -> s{_plspScriptId = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \`nextPageToken\` from a previous
-- response.
plspPageToken :: Lens' ProcessesListScriptProcesses (Maybe Text)
plspPageToken
  = lens _plspPageToken
      (\ s a -> s{_plspPageToken = a})

-- | The maximum number of returned processes per page of results. Defaults
-- to 50.
plspPageSize :: Lens' ProcessesListScriptProcesses (Maybe Int32)
plspPageSize
  = lens _plspPageSize (\ s a -> s{_plspPageSize = a})
      . mapping _Coerce

-- | Optional field used to limit returned processes to those having one of
-- the specified process types.
plspScriptProcessFilterTypes :: Lens' ProcessesListScriptProcesses [ProcessesListScriptProcessesScriptProcessFilterTypes]
plspScriptProcessFilterTypes
  = lens _plspScriptProcessFilterTypes
      (\ s a -> s{_plspScriptProcessFilterTypes = a})
      . _Default
      . _Coerce

-- | JSONP
plspCallback :: Lens' ProcessesListScriptProcesses (Maybe Text)
plspCallback
  = lens _plspCallback (\ s a -> s{_plspCallback = a})

instance GoogleRequest ProcessesListScriptProcesses
         where
        type Rs ProcessesListScriptProcesses =
             ListScriptProcessesResponse
        type Scopes ProcessesListScriptProcesses =
             '["https://www.googleapis.com/auth/script.processes"]
        requestClient ProcessesListScriptProcesses'{..}
          = go _plspXgafv _plspScriptProcessFilterFunctionName
              _plspUploadProtocol
              (_plspScriptProcessFilterUserAccessLevels ^.
                 _Default)
              (_plspScriptProcessFilterStatuses ^. _Default)
              _plspScriptProcessFilterEndTime
              _plspAccessToken
              _plspUploadType
              _plspScriptProcessFilterDeploymentId
              _plspScriptProcessFilterStartTime
              _plspScriptId
              _plspPageToken
              _plspPageSize
              (_plspScriptProcessFilterTypes ^. _Default)
              _plspCallback
              (Just AltJSON)
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProcessesListScriptProcessesResource)
                      mempty

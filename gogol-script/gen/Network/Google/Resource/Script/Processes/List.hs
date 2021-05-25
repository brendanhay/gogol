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
-- Module      : Network.Google.Resource.Script.Processes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List information about processes made by or on behalf of a user, such as
-- process type and current status.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.processes.list@.
module Network.Google.Resource.Script.Processes.List
    (
    -- * REST Resource
      ProcessesListResource

    -- * Creating a Request
    , processesList
    , ProcessesList

    -- * Request Lenses
    , plUserProcessFilterUserAccessLevels
    , plXgafv
    , plUploadProtocol
    , plAccessToken
    , plUploadType
    , plUserProcessFilterFunctionName
    , plUserProcessFilterTypes
    , plUserProcessFilterDeploymentId
    , plPageToken
    , plPageSize
    , plUserProcessFilterProjectName
    , plUserProcessFilterStatuses
    , plUserProcessFilterScriptId
    , plUserProcessFilterEndTime
    , plUserProcessFilterStartTime
    , plCallback
    ) where

import Network.Google.Prelude
import Network.Google.Script.Types

-- | A resource alias for @script.processes.list@ method which the
-- 'ProcessesList' request conforms to.
type ProcessesListResource =
     "v1" :>
       "processes" :>
         QueryParams "userProcessFilter.userAccessLevels"
           ProcessesListUserProcessFilterUserAccessLevels
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "userProcessFilter.functionName" Text :>
                     QueryParams "userProcessFilter.types"
                       ProcessesListUserProcessFilterTypes
                       :>
                       QueryParam "userProcessFilter.deploymentId" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "userProcessFilter.projectName" Text :>
                               QueryParams "userProcessFilter.statuses"
                                 ProcessesListUserProcessFilterStatuses
                                 :>
                                 QueryParam "userProcessFilter.scriptId" Text :>
                                   QueryParam "userProcessFilter.endTime"
                                     DateTime'
                                     :>
                                     QueryParam "userProcessFilter.startTime"
                                       DateTime'
                                       :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ListUserProcessesResponse

-- | List information about processes made by or on behalf of a user, such as
-- process type and current status.
--
-- /See:/ 'processesList' smart constructor.
data ProcessesList =
  ProcessesList'
    { _plUserProcessFilterUserAccessLevels :: !(Maybe [ProcessesListUserProcessFilterUserAccessLevels])
    , _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plAccessToken :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plUserProcessFilterFunctionName :: !(Maybe Text)
    , _plUserProcessFilterTypes :: !(Maybe [ProcessesListUserProcessFilterTypes])
    , _plUserProcessFilterDeploymentId :: !(Maybe Text)
    , _plPageToken :: !(Maybe Text)
    , _plPageSize :: !(Maybe (Textual Int32))
    , _plUserProcessFilterProjectName :: !(Maybe Text)
    , _plUserProcessFilterStatuses :: !(Maybe [ProcessesListUserProcessFilterStatuses])
    , _plUserProcessFilterScriptId :: !(Maybe Text)
    , _plUserProcessFilterEndTime :: !(Maybe DateTime')
    , _plUserProcessFilterStartTime :: !(Maybe DateTime')
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProcessesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plUserProcessFilterUserAccessLevels'
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plAccessToken'
--
-- * 'plUploadType'
--
-- * 'plUserProcessFilterFunctionName'
--
-- * 'plUserProcessFilterTypes'
--
-- * 'plUserProcessFilterDeploymentId'
--
-- * 'plPageToken'
--
-- * 'plPageSize'
--
-- * 'plUserProcessFilterProjectName'
--
-- * 'plUserProcessFilterStatuses'
--
-- * 'plUserProcessFilterScriptId'
--
-- * 'plUserProcessFilterEndTime'
--
-- * 'plUserProcessFilterStartTime'
--
-- * 'plCallback'
processesList
    :: ProcessesList
processesList =
  ProcessesList'
    { _plUserProcessFilterUserAccessLevels = Nothing
    , _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plAccessToken = Nothing
    , _plUploadType = Nothing
    , _plUserProcessFilterFunctionName = Nothing
    , _plUserProcessFilterTypes = Nothing
    , _plUserProcessFilterDeploymentId = Nothing
    , _plPageToken = Nothing
    , _plPageSize = Nothing
    , _plUserProcessFilterProjectName = Nothing
    , _plUserProcessFilterStatuses = Nothing
    , _plUserProcessFilterScriptId = Nothing
    , _plUserProcessFilterEndTime = Nothing
    , _plUserProcessFilterStartTime = Nothing
    , _plCallback = Nothing
    }


-- | Optional field used to limit returned processes to those having one of
-- the specified user access levels.
plUserProcessFilterUserAccessLevels :: Lens' ProcessesList [ProcessesListUserProcessFilterUserAccessLevels]
plUserProcessFilterUserAccessLevels
  = lens _plUserProcessFilterUserAccessLevels
      (\ s a ->
         s{_plUserProcessFilterUserAccessLevels = a})
      . _Default
      . _Coerce

-- | V1 error format.
plXgafv :: Lens' ProcessesList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' ProcessesList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | OAuth access token.
plAccessToken :: Lens' ProcessesList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' ProcessesList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

-- | Optional field used to limit returned processes to those originating
-- from a script function with the given function name.
plUserProcessFilterFunctionName :: Lens' ProcessesList (Maybe Text)
plUserProcessFilterFunctionName
  = lens _plUserProcessFilterFunctionName
      (\ s a -> s{_plUserProcessFilterFunctionName = a})

-- | Optional field used to limit returned processes to those having one of
-- the specified process types.
plUserProcessFilterTypes :: Lens' ProcessesList [ProcessesListUserProcessFilterTypes]
plUserProcessFilterTypes
  = lens _plUserProcessFilterTypes
      (\ s a -> s{_plUserProcessFilterTypes = a})
      . _Default
      . _Coerce

-- | Optional field used to limit returned processes to those originating
-- from projects with a specific deployment ID.
plUserProcessFilterDeploymentId :: Lens' ProcessesList (Maybe Text)
plUserProcessFilterDeploymentId
  = lens _plUserProcessFilterDeploymentId
      (\ s a -> s{_plUserProcessFilterDeploymentId = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \`nextPageToken\` from a previous
-- response.
plPageToken :: Lens' ProcessesList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | The maximum number of returned processes per page of results. Defaults
-- to 50.
plPageSize :: Lens' ProcessesList (Maybe Int32)
plPageSize
  = lens _plPageSize (\ s a -> s{_plPageSize = a}) .
      mapping _Coerce

-- | Optional field used to limit returned processes to those originating
-- from projects with project names containing a specific string.
plUserProcessFilterProjectName :: Lens' ProcessesList (Maybe Text)
plUserProcessFilterProjectName
  = lens _plUserProcessFilterProjectName
      (\ s a -> s{_plUserProcessFilterProjectName = a})

-- | Optional field used to limit returned processes to those having one of
-- the specified process statuses.
plUserProcessFilterStatuses :: Lens' ProcessesList [ProcessesListUserProcessFilterStatuses]
plUserProcessFilterStatuses
  = lens _plUserProcessFilterStatuses
      (\ s a -> s{_plUserProcessFilterStatuses = a})
      . _Default
      . _Coerce

-- | Optional field used to limit returned processes to those originating
-- from projects with a specific script ID.
plUserProcessFilterScriptId :: Lens' ProcessesList (Maybe Text)
plUserProcessFilterScriptId
  = lens _plUserProcessFilterScriptId
      (\ s a -> s{_plUserProcessFilterScriptId = a})

-- | Optional field used to limit returned processes to those that completed
-- on or before the given timestamp.
plUserProcessFilterEndTime :: Lens' ProcessesList (Maybe UTCTime)
plUserProcessFilterEndTime
  = lens _plUserProcessFilterEndTime
      (\ s a -> s{_plUserProcessFilterEndTime = a})
      . mapping _DateTime

-- | Optional field used to limit returned processes to those that were
-- started on or after the given timestamp.
plUserProcessFilterStartTime :: Lens' ProcessesList (Maybe UTCTime)
plUserProcessFilterStartTime
  = lens _plUserProcessFilterStartTime
      (\ s a -> s{_plUserProcessFilterStartTime = a})
      . mapping _DateTime

-- | JSONP
plCallback :: Lens' ProcessesList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest ProcessesList where
        type Rs ProcessesList = ListUserProcessesResponse
        type Scopes ProcessesList =
             '["https://www.googleapis.com/auth/script.processes"]
        requestClient ProcessesList'{..}
          = go
              (_plUserProcessFilterUserAccessLevels ^. _Default)
              _plXgafv
              _plUploadProtocol
              _plAccessToken
              _plUploadType
              _plUserProcessFilterFunctionName
              (_plUserProcessFilterTypes ^. _Default)
              _plUserProcessFilterDeploymentId
              _plPageToken
              _plPageSize
              _plUserProcessFilterProjectName
              (_plUserProcessFilterStatuses ^. _Default)
              _plUserProcessFilterScriptId
              _plUserProcessFilterEndTime
              _plUserProcessFilterStartTime
              _plCallback
              (Just AltJSON)
              scriptService
          where go
                  = buildClient (Proxy :: Proxy ProcessesListResource)
                      mempty

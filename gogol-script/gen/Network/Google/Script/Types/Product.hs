{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Script.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Script.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Script.Types.Sum

-- | A set of functions. No duplicates are permitted.
--
-- /See:/ 'googleAppsScriptTypeFunctionSet' smart constructor.
newtype GoogleAppsScriptTypeFunctionSet =
  GoogleAppsScriptTypeFunctionSet'
    { _gastfsValues :: Maybe [GoogleAppsScriptTypeFunction]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeFunctionSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gastfsValues'
googleAppsScriptTypeFunctionSet
    :: GoogleAppsScriptTypeFunctionSet
googleAppsScriptTypeFunctionSet =
  GoogleAppsScriptTypeFunctionSet' {_gastfsValues = Nothing}


-- | A list of functions composing the set.
gastfsValues :: Lens' GoogleAppsScriptTypeFunctionSet [GoogleAppsScriptTypeFunction]
gastfsValues
  = lens _gastfsValues (\ s a -> s{_gastfsValues = a})
      . _Default
      . _Coerce

instance FromJSON GoogleAppsScriptTypeFunctionSet
         where
        parseJSON
          = withObject "GoogleAppsScriptTypeFunctionSet"
              (\ o ->
                 GoogleAppsScriptTypeFunctionSet' <$>
                   (o .:? "values" .!= mempty))

instance ToJSON GoogleAppsScriptTypeFunctionSet where
        toJSON GoogleAppsScriptTypeFunctionSet'{..}
          = object
              (catMaybes [("values" .=) <$> _gastfsValues])

-- | API executable entry point configuration.
--
-- /See:/ 'googleAppsScriptTypeExecutionAPIConfig' smart constructor.
newtype GoogleAppsScriptTypeExecutionAPIConfig =
  GoogleAppsScriptTypeExecutionAPIConfig'
    { _gasteacAccess :: Maybe GoogleAppsScriptTypeExecutionAPIConfigAccess
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeExecutionAPIConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasteacAccess'
googleAppsScriptTypeExecutionAPIConfig
    :: GoogleAppsScriptTypeExecutionAPIConfig
googleAppsScriptTypeExecutionAPIConfig =
  GoogleAppsScriptTypeExecutionAPIConfig' {_gasteacAccess = Nothing}


-- | Who has permission to run the API executable.
gasteacAccess :: Lens' GoogleAppsScriptTypeExecutionAPIConfig (Maybe GoogleAppsScriptTypeExecutionAPIConfigAccess)
gasteacAccess
  = lens _gasteacAccess
      (\ s a -> s{_gasteacAccess = a})

instance FromJSON
           GoogleAppsScriptTypeExecutionAPIConfig
         where
        parseJSON
          = withObject "GoogleAppsScriptTypeExecutionAPIConfig"
              (\ o ->
                 GoogleAppsScriptTypeExecutionAPIConfig' <$>
                   (o .:? "access"))

instance ToJSON
           GoogleAppsScriptTypeExecutionAPIConfig
         where
        toJSON GoogleAppsScriptTypeExecutionAPIConfig'{..}
          = object
              (catMaybes [("access" .=) <$> _gasteacAccess])

-- | If a \`run\` call succeeds but the script function (or Apps Script
-- itself) throws an exception, the response body\'s error field contains
-- this \`Status\` object.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | An array that contains a single ExecutionError object that provides
-- information about the nature of the error.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code. For this API, this value either:
--
-- -   10, indicating a \`SCRIPT_TIMEOUT\` error,
-- -   3, indicating an \`INVALID_ARGUMENT\` error, or
-- -   1, indicating a \`CANCELLED\` execution.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which is in English. Any user-facing
-- error message is localized and sent in the details field, or localized
-- by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Resource containing usage stats for a given script, based on the
-- supplied filter and mask present in the request.
--
-- /See:/ 'metrics' smart constructor.
data Metrics =
  Metrics'
    { _mActiveUsers      :: !(Maybe [MetricsValue])
    , _mFailedExecutions :: !(Maybe [MetricsValue])
    , _mTotalExecutions  :: !(Maybe [MetricsValue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mActiveUsers'
--
-- * 'mFailedExecutions'
--
-- * 'mTotalExecutions'
metrics
    :: Metrics
metrics =
  Metrics'
    { _mActiveUsers = Nothing
    , _mFailedExecutions = Nothing
    , _mTotalExecutions = Nothing
    }


-- | Number of active users.
mActiveUsers :: Lens' Metrics [MetricsValue]
mActiveUsers
  = lens _mActiveUsers (\ s a -> s{_mActiveUsers = a})
      . _Default
      . _Coerce

-- | Number of failed executions.
mFailedExecutions :: Lens' Metrics [MetricsValue]
mFailedExecutions
  = lens _mFailedExecutions
      (\ s a -> s{_mFailedExecutions = a})
      . _Default
      . _Coerce

-- | Number of total executions.
mTotalExecutions :: Lens' Metrics [MetricsValue]
mTotalExecutions
  = lens _mTotalExecutions
      (\ s a -> s{_mTotalExecutions = a})
      . _Default
      . _Coerce

instance FromJSON Metrics where
        parseJSON
          = withObject "Metrics"
              (\ o ->
                 Metrics' <$>
                   (o .:? "activeUsers" .!= mempty) <*>
                     (o .:? "failedExecutions" .!= mempty)
                     <*> (o .:? "totalExecutions" .!= mempty))

instance ToJSON Metrics where
        toJSON Metrics'{..}
          = object
              (catMaybes
                 [("activeUsers" .=) <$> _mActiveUsers,
                  ("failedExecutions" .=) <$> _mFailedExecutions,
                  ("totalExecutions" .=) <$> _mTotalExecutions])

-- | Representation of a single script process execution that was started
-- from the script editor, a trigger, an application, or using the Apps
-- Script API. This is distinct from the \`Operation\` resource, which only
-- represents executions started via the Apps Script API.
--
-- /See:/ 'googleAppsScriptTypeProcess' smart constructor.
data GoogleAppsScriptTypeProcess =
  GoogleAppsScriptTypeProcess'
    { _gastpProcessStatus   :: !(Maybe GoogleAppsScriptTypeProcessProcessStatus)
    , _gastpStartTime       :: !(Maybe DateTime')
    , _gastpProjectName     :: !(Maybe Text)
    , _gastpFunctionName    :: !(Maybe Text)
    , _gastpUserAccessLevel :: !(Maybe GoogleAppsScriptTypeProcessUserAccessLevel)
    , _gastpProcessType     :: !(Maybe GoogleAppsScriptTypeProcessProcessType)
    , _gastpExecutingUser   :: !(Maybe Text)
    , _gastpDuration        :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeProcess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gastpProcessStatus'
--
-- * 'gastpStartTime'
--
-- * 'gastpProjectName'
--
-- * 'gastpFunctionName'
--
-- * 'gastpUserAccessLevel'
--
-- * 'gastpProcessType'
--
-- * 'gastpExecutingUser'
--
-- * 'gastpDuration'
googleAppsScriptTypeProcess
    :: GoogleAppsScriptTypeProcess
googleAppsScriptTypeProcess =
  GoogleAppsScriptTypeProcess'
    { _gastpProcessStatus = Nothing
    , _gastpStartTime = Nothing
    , _gastpProjectName = Nothing
    , _gastpFunctionName = Nothing
    , _gastpUserAccessLevel = Nothing
    , _gastpProcessType = Nothing
    , _gastpExecutingUser = Nothing
    , _gastpDuration = Nothing
    }


-- | The executions status.
gastpProcessStatus :: Lens' GoogleAppsScriptTypeProcess (Maybe GoogleAppsScriptTypeProcessProcessStatus)
gastpProcessStatus
  = lens _gastpProcessStatus
      (\ s a -> s{_gastpProcessStatus = a})

-- | Time the execution started.
gastpStartTime :: Lens' GoogleAppsScriptTypeProcess (Maybe UTCTime)
gastpStartTime
  = lens _gastpStartTime
      (\ s a -> s{_gastpStartTime = a})
      . mapping _DateTime

-- | Name of the script being executed.
gastpProjectName :: Lens' GoogleAppsScriptTypeProcess (Maybe Text)
gastpProjectName
  = lens _gastpProjectName
      (\ s a -> s{_gastpProjectName = a})

-- | Name of the function the started the execution.
gastpFunctionName :: Lens' GoogleAppsScriptTypeProcess (Maybe Text)
gastpFunctionName
  = lens _gastpFunctionName
      (\ s a -> s{_gastpFunctionName = a})

-- | The executing users access level to the script.
gastpUserAccessLevel :: Lens' GoogleAppsScriptTypeProcess (Maybe GoogleAppsScriptTypeProcessUserAccessLevel)
gastpUserAccessLevel
  = lens _gastpUserAccessLevel
      (\ s a -> s{_gastpUserAccessLevel = a})

-- | The executions type.
gastpProcessType :: Lens' GoogleAppsScriptTypeProcess (Maybe GoogleAppsScriptTypeProcessProcessType)
gastpProcessType
  = lens _gastpProcessType
      (\ s a -> s{_gastpProcessType = a})

-- | User-facing name for the user executing the script.
gastpExecutingUser :: Lens' GoogleAppsScriptTypeProcess (Maybe Text)
gastpExecutingUser
  = lens _gastpExecutingUser
      (\ s a -> s{_gastpExecutingUser = a})

-- | Duration the execution spent executing.
gastpDuration :: Lens' GoogleAppsScriptTypeProcess (Maybe Scientific)
gastpDuration
  = lens _gastpDuration
      (\ s a -> s{_gastpDuration = a})
      . mapping _GDuration

instance FromJSON GoogleAppsScriptTypeProcess where
        parseJSON
          = withObject "GoogleAppsScriptTypeProcess"
              (\ o ->
                 GoogleAppsScriptTypeProcess' <$>
                   (o .:? "processStatus") <*> (o .:? "startTime") <*>
                     (o .:? "projectName")
                     <*> (o .:? "functionName")
                     <*> (o .:? "userAccessLevel")
                     <*> (o .:? "processType")
                     <*> (o .:? "executingUser")
                     <*> (o .:? "duration"))

instance ToJSON GoogleAppsScriptTypeProcess where
        toJSON GoogleAppsScriptTypeProcess'{..}
          = object
              (catMaybes
                 [("processStatus" .=) <$> _gastpProcessStatus,
                  ("startTime" .=) <$> _gastpStartTime,
                  ("projectName" .=) <$> _gastpProjectName,
                  ("functionName" .=) <$> _gastpFunctionName,
                  ("userAccessLevel" .=) <$> _gastpUserAccessLevel,
                  ("processType" .=) <$> _gastpProcessType,
                  ("executingUser" .=) <$> _gastpExecutingUser,
                  ("duration" .=) <$> _gastpDuration])

-- | The script project resource.
--
-- /See:/ 'project' smart constructor.
data Project =
  Project'
    { _pCreator        :: !(Maybe GoogleAppsScriptTypeUser)
    , _pLastModifyUser :: !(Maybe GoogleAppsScriptTypeUser)
    , _pUpdateTime     :: !(Maybe DateTime')
    , _pScriptId       :: !(Maybe Text)
    , _pTitle          :: !(Maybe Text)
    , _pParentId       :: !(Maybe Text)
    , _pCreateTime     :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCreator'
--
-- * 'pLastModifyUser'
--
-- * 'pUpdateTime'
--
-- * 'pScriptId'
--
-- * 'pTitle'
--
-- * 'pParentId'
--
-- * 'pCreateTime'
project
    :: Project
project =
  Project'
    { _pCreator = Nothing
    , _pLastModifyUser = Nothing
    , _pUpdateTime = Nothing
    , _pScriptId = Nothing
    , _pTitle = Nothing
    , _pParentId = Nothing
    , _pCreateTime = Nothing
    }


-- | User who originally created the script.
pCreator :: Lens' Project (Maybe GoogleAppsScriptTypeUser)
pCreator = lens _pCreator (\ s a -> s{_pCreator = a})

-- | User who last modified the script.
pLastModifyUser :: Lens' Project (Maybe GoogleAppsScriptTypeUser)
pLastModifyUser
  = lens _pLastModifyUser
      (\ s a -> s{_pLastModifyUser = a})

-- | When the script was last updated.
pUpdateTime :: Lens' Project (Maybe UTCTime)
pUpdateTime
  = lens _pUpdateTime (\ s a -> s{_pUpdateTime = a}) .
      mapping _DateTime

-- | The script project\'s Drive ID.
pScriptId :: Lens' Project (Maybe Text)
pScriptId
  = lens _pScriptId (\ s a -> s{_pScriptId = a})

-- | The title for the project.
pTitle :: Lens' Project (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

-- | The parent\'s Drive ID that the script will be attached to. This is
-- usually the ID of a Google Document or Google Sheet. This filed is
-- optional, and if not set, a stand-alone script will be created.
pParentId :: Lens' Project (Maybe Text)
pParentId
  = lens _pParentId (\ s a -> s{_pParentId = a})

-- | When the script was created.
pCreateTime :: Lens' Project (Maybe UTCTime)
pCreateTime
  = lens _pCreateTime (\ s a -> s{_pCreateTime = a}) .
      mapping _DateTime

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ o ->
                 Project' <$>
                   (o .:? "creator") <*> (o .:? "lastModifyUser") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "scriptId")
                     <*> (o .:? "title")
                     <*> (o .:? "parentId")
                     <*> (o .:? "createTime"))

instance ToJSON Project where
        toJSON Project'{..}
          = object
              (catMaybes
                 [("creator" .=) <$> _pCreator,
                  ("lastModifyUser" .=) <$> _pLastModifyUser,
                  ("updateTime" .=) <$> _pUpdateTime,
                  ("scriptId" .=) <$> _pScriptId,
                  ("title" .=) <$> _pTitle,
                  ("parentId" .=) <$> _pParentId,
                  ("createTime" .=) <$> _pCreateTime])

-- | A representation of an execution of an Apps Script function started with
-- run. The execution response does not arrive until the function finishes
-- executing. The maximum execution runtime is listed in the [Apps Script
-- quotas
-- guide](\/apps-script\/guides\/services\/quotas#current_limitations).
--
-- After execution has started, it can have one of four outcomes:
--
-- -   If the script function returns successfully, the response field
--     contains an ExecutionResponse object with the function\'s return
--     value in the object\'s \`result\` field.
-- -   If the script function (or Apps Script itself) throws an exception,
--     the error field contains a Status object. The \`Status\` object\'s
--     \`details\` field contains an array with a single ExecutionError
--     object that provides information about the nature of the error.
-- -   If the execution has not yet completed, the done field is \`false\`
--     and the neither the \`response\` nor \`error\` fields are present.
-- -   If the \`run\` call itself fails (for example, because of a
--     malformed request or an authorization error), the method returns an
--     HTTP response code in the 4XX range with a different format for the
--     response body. Client libraries automatically convert a 4XX response
--     into an exception class.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
operation
    :: Operation
operation =
  Operation' {_oDone = Nothing, _oError = Nothing, _oResponse = Nothing}


-- | This field indicates whether the script execution has completed. A
-- completed execution has a populated \`response\` field containing the
-- ExecutionResponse from function that was executed.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | If a \`run\` call succeeds but the script function (or Apps Script
-- itself) throws an exception, this field contains a Status object. The
-- \`Status\` object\'s \`details\` field contains an array with a single
-- ExecutionError object that provides information about the nature of the
-- error.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | If the script function returns successfully, this field contains an
-- ExecutionResponse object with the function\'s return value.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse])

-- | Response with the list of Process resources.
--
-- /See:/ 'listUserProcessesResponse' smart constructor.
data ListUserProcessesResponse =
  ListUserProcessesResponse'
    { _luprNextPageToken :: !(Maybe Text)
    , _luprProcesses     :: !(Maybe [GoogleAppsScriptTypeProcess])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListUserProcessesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luprNextPageToken'
--
-- * 'luprProcesses'
listUserProcessesResponse
    :: ListUserProcessesResponse
listUserProcessesResponse =
  ListUserProcessesResponse'
    {_luprNextPageToken = Nothing, _luprProcesses = Nothing}


-- | Token for the next page of results. If empty, there are no more pages
-- remaining.
luprNextPageToken :: Lens' ListUserProcessesResponse (Maybe Text)
luprNextPageToken
  = lens _luprNextPageToken
      (\ s a -> s{_luprNextPageToken = a})

-- | List of processes matching request parameters.
luprProcesses :: Lens' ListUserProcessesResponse [GoogleAppsScriptTypeProcess]
luprProcesses
  = lens _luprProcesses
      (\ s a -> s{_luprProcesses = a})
      . _Default
      . _Coerce

instance FromJSON ListUserProcessesResponse where
        parseJSON
          = withObject "ListUserProcessesResponse"
              (\ o ->
                 ListUserProcessesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "processes" .!= mempty))

instance ToJSON ListUserProcessesResponse where
        toJSON ListUserProcessesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _luprNextPageToken,
                  ("processes" .=) <$> _luprProcesses])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | A simple user profile resource.
--
-- /See:/ 'googleAppsScriptTypeUser' smart constructor.
data GoogleAppsScriptTypeUser =
  GoogleAppsScriptTypeUser'
    { _gastuEmail    :: !(Maybe Text)
    , _gastuPhotoURL :: !(Maybe Text)
    , _gastuDomain   :: !(Maybe Text)
    , _gastuName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gastuEmail'
--
-- * 'gastuPhotoURL'
--
-- * 'gastuDomain'
--
-- * 'gastuName'
googleAppsScriptTypeUser
    :: GoogleAppsScriptTypeUser
googleAppsScriptTypeUser =
  GoogleAppsScriptTypeUser'
    { _gastuEmail = Nothing
    , _gastuPhotoURL = Nothing
    , _gastuDomain = Nothing
    , _gastuName = Nothing
    }


-- | The user\'s identifying email address.
gastuEmail :: Lens' GoogleAppsScriptTypeUser (Maybe Text)
gastuEmail
  = lens _gastuEmail (\ s a -> s{_gastuEmail = a})

-- | The user\'s photo.
gastuPhotoURL :: Lens' GoogleAppsScriptTypeUser (Maybe Text)
gastuPhotoURL
  = lens _gastuPhotoURL
      (\ s a -> s{_gastuPhotoURL = a})

-- | The user\'s domain.
gastuDomain :: Lens' GoogleAppsScriptTypeUser (Maybe Text)
gastuDomain
  = lens _gastuDomain (\ s a -> s{_gastuDomain = a})

-- | The user\'s display name.
gastuName :: Lens' GoogleAppsScriptTypeUser (Maybe Text)
gastuName
  = lens _gastuName (\ s a -> s{_gastuName = a})

instance FromJSON GoogleAppsScriptTypeUser where
        parseJSON
          = withObject "GoogleAppsScriptTypeUser"
              (\ o ->
                 GoogleAppsScriptTypeUser' <$>
                   (o .:? "email") <*> (o .:? "photoUrl") <*>
                     (o .:? "domain")
                     <*> (o .:? "name"))

instance ToJSON GoogleAppsScriptTypeUser where
        toJSON GoogleAppsScriptTypeUser'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gastuEmail,
                  ("photoUrl" .=) <$> _gastuPhotoURL,
                  ("domain" .=) <$> _gastuDomain,
                  ("name" .=) <$> _gastuName])

-- | A configuration that defines how a deployment is accessed externally.
--
-- /See:/ 'entryPoint' smart constructor.
data EntryPoint =
  EntryPoint'
    { _epExecutionAPI   :: !(Maybe GoogleAppsScriptTypeExecutionAPIEntryPoint)
    , _epAddOn          :: !(Maybe GoogleAppsScriptTypeAddOnEntryPoint)
    , _epEntryPointType :: !(Maybe EntryPointEntryPointType)
    , _epWebApp         :: !(Maybe GoogleAppsScriptTypeWebAppEntryPoint)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntryPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epExecutionAPI'
--
-- * 'epAddOn'
--
-- * 'epEntryPointType'
--
-- * 'epWebApp'
entryPoint
    :: EntryPoint
entryPoint =
  EntryPoint'
    { _epExecutionAPI = Nothing
    , _epAddOn = Nothing
    , _epEntryPointType = Nothing
    , _epWebApp = Nothing
    }


-- | An entry point specification for Apps Script API execution calls.
epExecutionAPI :: Lens' EntryPoint (Maybe GoogleAppsScriptTypeExecutionAPIEntryPoint)
epExecutionAPI
  = lens _epExecutionAPI
      (\ s a -> s{_epExecutionAPI = a})

-- | Add-on properties.
epAddOn :: Lens' EntryPoint (Maybe GoogleAppsScriptTypeAddOnEntryPoint)
epAddOn = lens _epAddOn (\ s a -> s{_epAddOn = a})

-- | The type of the entry point.
epEntryPointType :: Lens' EntryPoint (Maybe EntryPointEntryPointType)
epEntryPointType
  = lens _epEntryPointType
      (\ s a -> s{_epEntryPointType = a})

-- | An entry point specification for web apps.
epWebApp :: Lens' EntryPoint (Maybe GoogleAppsScriptTypeWebAppEntryPoint)
epWebApp = lens _epWebApp (\ s a -> s{_epWebApp = a})

instance FromJSON EntryPoint where
        parseJSON
          = withObject "EntryPoint"
              (\ o ->
                 EntryPoint' <$>
                   (o .:? "executionApi") <*> (o .:? "addOn") <*>
                     (o .:? "entryPointType")
                     <*> (o .:? "webApp"))

instance ToJSON EntryPoint where
        toJSON EntryPoint'{..}
          = object
              (catMaybes
                 [("executionApi" .=) <$> _epExecutionAPI,
                  ("addOn" .=) <$> _epAddOn,
                  ("entryPointType" .=) <$> _epEntryPointType,
                  ("webApp" .=) <$> _epWebApp])

-- | Response with the list of the versions for the specified script project.
--
-- /See:/ 'listVersionsResponse' smart constructor.
data ListVersionsResponse =
  ListVersionsResponse'
    { _lvrNextPageToken :: !(Maybe Text)
    , _lvrVersions      :: !(Maybe [Version])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrNextPageToken'
--
-- * 'lvrVersions'
listVersionsResponse
    :: ListVersionsResponse
listVersionsResponse =
  ListVersionsResponse' {_lvrNextPageToken = Nothing, _lvrVersions = Nothing}


-- | The token use to fetch the next page of records. if not exist in the
-- response, that means no more versions to list.
lvrNextPageToken :: Lens' ListVersionsResponse (Maybe Text)
lvrNextPageToken
  = lens _lvrNextPageToken
      (\ s a -> s{_lvrNextPageToken = a})

-- | The list of versions.
lvrVersions :: Lens' ListVersionsResponse [Version]
lvrVersions
  = lens _lvrVersions (\ s a -> s{_lvrVersions = a}) .
      _Default
      . _Coerce

instance FromJSON ListVersionsResponse where
        parseJSON
          = withObject "ListVersionsResponse"
              (\ o ->
                 ListVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "versions" .!= mempty))

instance ToJSON ListVersionsResponse where
        toJSON ListVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lvrNextPageToken,
                  ("versions" .=) <$> _lvrVersions])

-- | A request to run the function in a script. The script is identified by
-- the specified \`script_id\`. Executing a function on a script returns
-- results based on the implementation of the script.
--
-- /See:/ 'executionRequest' smart constructor.
data ExecutionRequest =
  ExecutionRequest'
    { _erFunction     :: !(Maybe Text)
    , _erSessionState :: !(Maybe Text)
    , _erDevMode      :: !(Maybe Bool)
    , _erParameters   :: !(Maybe [JSONValue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecutionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erFunction'
--
-- * 'erSessionState'
--
-- * 'erDevMode'
--
-- * 'erParameters'
executionRequest
    :: ExecutionRequest
executionRequest =
  ExecutionRequest'
    { _erFunction = Nothing
    , _erSessionState = Nothing
    , _erDevMode = Nothing
    , _erParameters = Nothing
    }


-- | The name of the function to execute in the given script. The name does
-- not include parentheses or parameters. It can reference a function in an
-- included library such as \`Library.libFunction1\`.
erFunction :: Lens' ExecutionRequest (Maybe Text)
erFunction
  = lens _erFunction (\ s a -> s{_erFunction = a})

-- | __Deprecated__. For use with Android add-ons only. An ID that represents
-- the user\'s current session in the Android app for Google Docs or
-- Sheets, included as extra data in the
-- [Intent](https:\/\/developer.android.com\/guide\/components\/intents-filters.html)
-- that launches the add-on. When an Android add-on is run with a session
-- state, it gains the privileges of a
-- [bound](https:\/\/developers.google.com\/apps-script\/guides\/bound)
-- script—that is, it can access information like the user\'s current
-- cursor position (in Docs) or selected cell (in Sheets). To retrieve the
-- state, call
-- \`Intent.getStringExtra(\"com.google.android.apps.docs.addons.SessionState\")\`.
-- Optional.
erSessionState :: Lens' ExecutionRequest (Maybe Text)
erSessionState
  = lens _erSessionState
      (\ s a -> s{_erSessionState = a})

-- | If \`true\` and the user is an owner of the script, the script runs at
-- the most recently saved version rather than the version deployed for use
-- with the Apps Script API. Optional; default is \`false\`.
erDevMode :: Lens' ExecutionRequest (Maybe Bool)
erDevMode
  = lens _erDevMode (\ s a -> s{_erDevMode = a})

-- | The parameters to be passed to the function being executed. The object
-- type for each parameter should match the expected type in Apps Script.
-- Parameters cannot be Apps Script-specific object types (such as a
-- \`Document\` or a \`Calendar\`); they can only be primitive types such
-- as \`string\`, \`number\`, \`array\`, \`object\`, or \`boolean\`.
-- Optional.
erParameters :: Lens' ExecutionRequest [JSONValue]
erParameters
  = lens _erParameters (\ s a -> s{_erParameters = a})
      . _Default
      . _Coerce

instance FromJSON ExecutionRequest where
        parseJSON
          = withObject "ExecutionRequest"
              (\ o ->
                 ExecutionRequest' <$>
                   (o .:? "function") <*> (o .:? "sessionState") <*>
                     (o .:? "devMode")
                     <*> (o .:? "parameters" .!= mempty))

instance ToJSON ExecutionRequest where
        toJSON ExecutionRequest'{..}
          = object
              (catMaybes
                 [("function" .=) <$> _erFunction,
                  ("sessionState" .=) <$> _erSessionState,
                  ("devMode" .=) <$> _erDevMode,
                  ("parameters" .=) <$> _erParameters])

-- | Response with the list of Process resources.
--
-- /See:/ 'listScriptProcessesResponse' smart constructor.
data ListScriptProcessesResponse =
  ListScriptProcessesResponse'
    { _lsprNextPageToken :: !(Maybe Text)
    , _lsprProcesses     :: !(Maybe [GoogleAppsScriptTypeProcess])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListScriptProcessesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsprNextPageToken'
--
-- * 'lsprProcesses'
listScriptProcessesResponse
    :: ListScriptProcessesResponse
listScriptProcessesResponse =
  ListScriptProcessesResponse'
    {_lsprNextPageToken = Nothing, _lsprProcesses = Nothing}


-- | Token for the next page of results. If empty, there are no more pages
-- remaining.
lsprNextPageToken :: Lens' ListScriptProcessesResponse (Maybe Text)
lsprNextPageToken
  = lens _lsprNextPageToken
      (\ s a -> s{_lsprNextPageToken = a})

-- | List of processes matching request parameters.
lsprProcesses :: Lens' ListScriptProcessesResponse [GoogleAppsScriptTypeProcess]
lsprProcesses
  = lens _lsprProcesses
      (\ s a -> s{_lsprProcesses = a})
      . _Default
      . _Coerce

instance FromJSON ListScriptProcessesResponse where
        parseJSON
          = withObject "ListScriptProcessesResponse"
              (\ o ->
                 ListScriptProcessesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "processes" .!= mempty))

instance ToJSON ListScriptProcessesResponse where
        toJSON ListScriptProcessesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsprNextPageToken,
                  ("processes" .=) <$> _lsprProcesses])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | A stack trace through the script that shows where the execution failed.
--
-- /See:/ 'scriptStackTraceElement' smart constructor.
data ScriptStackTraceElement =
  ScriptStackTraceElement'
    { _ssteFunction   :: !(Maybe Text)
    , _ssteLineNumber :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScriptStackTraceElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssteFunction'
--
-- * 'ssteLineNumber'
scriptStackTraceElement
    :: ScriptStackTraceElement
scriptStackTraceElement =
  ScriptStackTraceElement' {_ssteFunction = Nothing, _ssteLineNumber = Nothing}


-- | The name of the function that failed.
ssteFunction :: Lens' ScriptStackTraceElement (Maybe Text)
ssteFunction
  = lens _ssteFunction (\ s a -> s{_ssteFunction = a})

-- | The line number where the script failed.
ssteLineNumber :: Lens' ScriptStackTraceElement (Maybe Int32)
ssteLineNumber
  = lens _ssteLineNumber
      (\ s a -> s{_ssteLineNumber = a})
      . mapping _Coerce

instance FromJSON ScriptStackTraceElement where
        parseJSON
          = withObject "ScriptStackTraceElement"
              (\ o ->
                 ScriptStackTraceElement' <$>
                   (o .:? "function") <*> (o .:? "lineNumber"))

instance ToJSON ScriptStackTraceElement where
        toJSON ScriptStackTraceElement'{..}
          = object
              (catMaybes
                 [("function" .=) <$> _ssteFunction,
                  ("lineNumber" .=) <$> _ssteLineNumber])

-- | The Content resource.
--
-- /See:/ 'content' smart constructor.
data Content =
  Content'
    { _cScriptId :: !(Maybe Text)
    , _cFiles    :: !(Maybe [File])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Content' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cScriptId'
--
-- * 'cFiles'
content
    :: Content
content = Content' {_cScriptId = Nothing, _cFiles = Nothing}


-- | The script project\'s Drive ID.
cScriptId :: Lens' Content (Maybe Text)
cScriptId
  = lens _cScriptId (\ s a -> s{_cScriptId = a})

-- | The list of script project files. One of the files is a script manifest;
-- it must be named \"appsscript\", must have type of JSON, and include the
-- manifest configurations for the project.
cFiles :: Lens' Content [File]
cFiles
  = lens _cFiles (\ s a -> s{_cFiles = a}) . _Default .
      _Coerce

instance FromJSON Content where
        parseJSON
          = withObject "Content"
              (\ o ->
                 Content' <$>
                   (o .:? "scriptId") <*> (o .:? "files" .!= mempty))

instance ToJSON Content where
        toJSON Content'{..}
          = object
              (catMaybes
                 [("scriptId" .=) <$> _cScriptId,
                  ("files" .=) <$> _cFiles])

-- | Metrics value that holds number of executions counted.
--
-- /See:/ 'metricsValue' smart constructor.
data MetricsValue =
  MetricsValue'
    { _mvStartTime :: !(Maybe DateTime')
    , _mvValue     :: !(Maybe (Textual Word64))
    , _mvEndTime   :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricsValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvStartTime'
--
-- * 'mvValue'
--
-- * 'mvEndTime'
metricsValue
    :: MetricsValue
metricsValue =
  MetricsValue'
    {_mvStartTime = Nothing, _mvValue = Nothing, _mvEndTime = Nothing}


-- | Required field indicating the start time of the interval.
mvStartTime :: Lens' MetricsValue (Maybe UTCTime)
mvStartTime
  = lens _mvStartTime (\ s a -> s{_mvStartTime = a}) .
      mapping _DateTime

-- | Indicates the number of executions counted.
mvValue :: Lens' MetricsValue (Maybe Word64)
mvValue
  = lens _mvValue (\ s a -> s{_mvValue = a}) .
      mapping _Coerce

-- | Required field indicating the end time of the interval.
mvEndTime :: Lens' MetricsValue (Maybe UTCTime)
mvEndTime
  = lens _mvEndTime (\ s a -> s{_mvEndTime = a}) .
      mapping _DateTime

instance FromJSON MetricsValue where
        parseJSON
          = withObject "MetricsValue"
              (\ o ->
                 MetricsValue' <$>
                   (o .:? "startTime") <*> (o .:? "value") <*>
                     (o .:? "endTime"))

instance ToJSON MetricsValue where
        toJSON MetricsValue'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _mvStartTime,
                  ("value" .=) <$> _mvValue,
                  ("endTime" .=) <$> _mvEndTime])

-- | An add-on entry point.
--
-- /See:/ 'googleAppsScriptTypeAddOnEntryPoint' smart constructor.
data GoogleAppsScriptTypeAddOnEntryPoint =
  GoogleAppsScriptTypeAddOnEntryPoint'
    { _gastaoepPostInstallTipURL :: !(Maybe Text)
    , _gastaoepAddOnType         :: !(Maybe GoogleAppsScriptTypeAddOnEntryPointAddOnType)
    , _gastaoepReportIssueURL    :: !(Maybe Text)
    , _gastaoepHelpURL           :: !(Maybe Text)
    , _gastaoepTitle             :: !(Maybe Text)
    , _gastaoepDescription       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeAddOnEntryPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gastaoepPostInstallTipURL'
--
-- * 'gastaoepAddOnType'
--
-- * 'gastaoepReportIssueURL'
--
-- * 'gastaoepHelpURL'
--
-- * 'gastaoepTitle'
--
-- * 'gastaoepDescription'
googleAppsScriptTypeAddOnEntryPoint
    :: GoogleAppsScriptTypeAddOnEntryPoint
googleAppsScriptTypeAddOnEntryPoint =
  GoogleAppsScriptTypeAddOnEntryPoint'
    { _gastaoepPostInstallTipURL = Nothing
    , _gastaoepAddOnType = Nothing
    , _gastaoepReportIssueURL = Nothing
    , _gastaoepHelpURL = Nothing
    , _gastaoepTitle = Nothing
    , _gastaoepDescription = Nothing
    }


-- | The add-on\'s required post install tip URL.
gastaoepPostInstallTipURL :: Lens' GoogleAppsScriptTypeAddOnEntryPoint (Maybe Text)
gastaoepPostInstallTipURL
  = lens _gastaoepPostInstallTipURL
      (\ s a -> s{_gastaoepPostInstallTipURL = a})

-- | The add-on\'s required list of supported container types.
gastaoepAddOnType :: Lens' GoogleAppsScriptTypeAddOnEntryPoint (Maybe GoogleAppsScriptTypeAddOnEntryPointAddOnType)
gastaoepAddOnType
  = lens _gastaoepAddOnType
      (\ s a -> s{_gastaoepAddOnType = a})

-- | The add-on\'s optional report issue URL.
gastaoepReportIssueURL :: Lens' GoogleAppsScriptTypeAddOnEntryPoint (Maybe Text)
gastaoepReportIssueURL
  = lens _gastaoepReportIssueURL
      (\ s a -> s{_gastaoepReportIssueURL = a})

-- | The add-on\'s optional help URL.
gastaoepHelpURL :: Lens' GoogleAppsScriptTypeAddOnEntryPoint (Maybe Text)
gastaoepHelpURL
  = lens _gastaoepHelpURL
      (\ s a -> s{_gastaoepHelpURL = a})

-- | The add-on\'s required title.
gastaoepTitle :: Lens' GoogleAppsScriptTypeAddOnEntryPoint (Maybe Text)
gastaoepTitle
  = lens _gastaoepTitle
      (\ s a -> s{_gastaoepTitle = a})

-- | The add-on\'s optional description.
gastaoepDescription :: Lens' GoogleAppsScriptTypeAddOnEntryPoint (Maybe Text)
gastaoepDescription
  = lens _gastaoepDescription
      (\ s a -> s{_gastaoepDescription = a})

instance FromJSON GoogleAppsScriptTypeAddOnEntryPoint
         where
        parseJSON
          = withObject "GoogleAppsScriptTypeAddOnEntryPoint"
              (\ o ->
                 GoogleAppsScriptTypeAddOnEntryPoint' <$>
                   (o .:? "postInstallTipUrl") <*> (o .:? "addOnType")
                     <*> (o .:? "reportIssueUrl")
                     <*> (o .:? "helpUrl")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON GoogleAppsScriptTypeAddOnEntryPoint
         where
        toJSON GoogleAppsScriptTypeAddOnEntryPoint'{..}
          = object
              (catMaybes
                 [("postInstallTipUrl" .=) <$>
                    _gastaoepPostInstallTipURL,
                  ("addOnType" .=) <$> _gastaoepAddOnType,
                  ("reportIssueUrl" .=) <$> _gastaoepReportIssueURL,
                  ("helpUrl" .=) <$> _gastaoepHelpURL,
                  ("title" .=) <$> _gastaoepTitle,
                  ("description" .=) <$> _gastaoepDescription])

-- | Web app entry point configuration.
--
-- /See:/ 'googleAppsScriptTypeWebAppConfig' smart constructor.
data GoogleAppsScriptTypeWebAppConfig =
  GoogleAppsScriptTypeWebAppConfig'
    { _gastwacAccess    :: !(Maybe GoogleAppsScriptTypeWebAppConfigAccess)
    , _gastwacExecuteAs :: !(Maybe GoogleAppsScriptTypeWebAppConfigExecuteAs)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeWebAppConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gastwacAccess'
--
-- * 'gastwacExecuteAs'
googleAppsScriptTypeWebAppConfig
    :: GoogleAppsScriptTypeWebAppConfig
googleAppsScriptTypeWebAppConfig =
  GoogleAppsScriptTypeWebAppConfig'
    {_gastwacAccess = Nothing, _gastwacExecuteAs = Nothing}


-- | Who has permission to run the web app.
gastwacAccess :: Lens' GoogleAppsScriptTypeWebAppConfig (Maybe GoogleAppsScriptTypeWebAppConfigAccess)
gastwacAccess
  = lens _gastwacAccess
      (\ s a -> s{_gastwacAccess = a})

-- | Who to execute the web app as.
gastwacExecuteAs :: Lens' GoogleAppsScriptTypeWebAppConfig (Maybe GoogleAppsScriptTypeWebAppConfigExecuteAs)
gastwacExecuteAs
  = lens _gastwacExecuteAs
      (\ s a -> s{_gastwacExecuteAs = a})

instance FromJSON GoogleAppsScriptTypeWebAppConfig
         where
        parseJSON
          = withObject "GoogleAppsScriptTypeWebAppConfig"
              (\ o ->
                 GoogleAppsScriptTypeWebAppConfig' <$>
                   (o .:? "access") <*> (o .:? "executeAs"))

instance ToJSON GoogleAppsScriptTypeWebAppConfig
         where
        toJSON GoogleAppsScriptTypeWebAppConfig'{..}
          = object
              (catMaybes
                 [("access" .=) <$> _gastwacAccess,
                  ("executeAs" .=) <$> _gastwacExecuteAs])

-- | A resource representing a script project version. A version is a
-- \"snapshot\" of a script project and is similar to a read-only branched
-- release. When creating deployments, the version to use must be
-- specified.
--
-- /See:/ 'version' smart constructor.
data Version =
  Version'
    { _vVersionNumber :: !(Maybe (Textual Int32))
    , _vScriptId      :: !(Maybe Text)
    , _vDescription   :: !(Maybe Text)
    , _vCreateTime    :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vVersionNumber'
--
-- * 'vScriptId'
--
-- * 'vDescription'
--
-- * 'vCreateTime'
version
    :: Version
version =
  Version'
    { _vVersionNumber = Nothing
    , _vScriptId = Nothing
    , _vDescription = Nothing
    , _vCreateTime = Nothing
    }


-- | The incremental ID that is created by Apps Script when a version is
-- created. This is system assigned number and is immutable once created.
vVersionNumber :: Lens' Version (Maybe Int32)
vVersionNumber
  = lens _vVersionNumber
      (\ s a -> s{_vVersionNumber = a})
      . mapping _Coerce

-- | The script project\'s Drive ID.
vScriptId :: Lens' Version (Maybe Text)
vScriptId
  = lens _vScriptId (\ s a -> s{_vScriptId = a})

-- | The description for this version.
vDescription :: Lens' Version (Maybe Text)
vDescription
  = lens _vDescription (\ s a -> s{_vDescription = a})

-- | When the version was created.
vCreateTime :: Lens' Version (Maybe UTCTime)
vCreateTime
  = lens _vCreateTime (\ s a -> s{_vCreateTime = a}) .
      mapping _DateTime

instance FromJSON Version where
        parseJSON
          = withObject "Version"
              (\ o ->
                 Version' <$>
                   (o .:? "versionNumber") <*> (o .:? "scriptId") <*>
                     (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON Version where
        toJSON Version'{..}
          = object
              (catMaybes
                 [("versionNumber" .=) <$> _vVersionNumber,
                  ("scriptId" .=) <$> _vScriptId,
                  ("description" .=) <$> _vDescription,
                  ("createTime" .=) <$> _vCreateTime])

-- | An object that provides information about the nature of an error
-- resulting from an attempted execution of a script function using the
-- Apps Script API. If a run call succeeds but the script function (or Apps
-- Script itself) throws an exception, the response body\'s error field
-- contains a Status object. The \`Status\` object\'s \`details\` field
-- contains an array with a single one of these \`ExecutionError\` objects.
--
-- /See:/ 'executionError' smart constructor.
data ExecutionError =
  ExecutionError'
    { _eeScriptStackTraceElements :: !(Maybe [ScriptStackTraceElement])
    , _eeErrorType                :: !(Maybe Text)
    , _eeErrorMessage             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecutionError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeScriptStackTraceElements'
--
-- * 'eeErrorType'
--
-- * 'eeErrorMessage'
executionError
    :: ExecutionError
executionError =
  ExecutionError'
    { _eeScriptStackTraceElements = Nothing
    , _eeErrorType = Nothing
    , _eeErrorMessage = Nothing
    }


-- | An array of objects that provide a stack trace through the script to
-- show where the execution failed, with the deepest call first.
eeScriptStackTraceElements :: Lens' ExecutionError [ScriptStackTraceElement]
eeScriptStackTraceElements
  = lens _eeScriptStackTraceElements
      (\ s a -> s{_eeScriptStackTraceElements = a})
      . _Default
      . _Coerce

-- | The error type, for example \`TypeError\` or \`ReferenceError\`. If the
-- error type is unavailable, this field is not included.
eeErrorType :: Lens' ExecutionError (Maybe Text)
eeErrorType
  = lens _eeErrorType (\ s a -> s{_eeErrorType = a})

-- | The error message thrown by Apps Script, usually localized into the
-- user\'s language.
eeErrorMessage :: Lens' ExecutionError (Maybe Text)
eeErrorMessage
  = lens _eeErrorMessage
      (\ s a -> s{_eeErrorMessage = a})

instance FromJSON ExecutionError where
        parseJSON
          = withObject "ExecutionError"
              (\ o ->
                 ExecutionError' <$>
                   (o .:? "scriptStackTraceElements" .!= mempty) <*>
                     (o .:? "errorType")
                     <*> (o .:? "errorMessage"))

instance ToJSON ExecutionError where
        toJSON ExecutionError'{..}
          = object
              (catMaybes
                 [("scriptStackTraceElements" .=) <$>
                    _eeScriptStackTraceElements,
                  ("errorType" .=) <$> _eeErrorType,
                  ("errorMessage" .=) <$> _eeErrorMessage])

-- | A web application entry point.
--
-- /See:/ 'googleAppsScriptTypeWebAppEntryPoint' smart constructor.
data GoogleAppsScriptTypeWebAppEntryPoint =
  GoogleAppsScriptTypeWebAppEntryPoint'
    { _gastwaepEntryPointConfig :: !(Maybe GoogleAppsScriptTypeWebAppConfig)
    , _gastwaepURL              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeWebAppEntryPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gastwaepEntryPointConfig'
--
-- * 'gastwaepURL'
googleAppsScriptTypeWebAppEntryPoint
    :: GoogleAppsScriptTypeWebAppEntryPoint
googleAppsScriptTypeWebAppEntryPoint =
  GoogleAppsScriptTypeWebAppEntryPoint'
    {_gastwaepEntryPointConfig = Nothing, _gastwaepURL = Nothing}


-- | The entry point\'s configuration.
gastwaepEntryPointConfig :: Lens' GoogleAppsScriptTypeWebAppEntryPoint (Maybe GoogleAppsScriptTypeWebAppConfig)
gastwaepEntryPointConfig
  = lens _gastwaepEntryPointConfig
      (\ s a -> s{_gastwaepEntryPointConfig = a})

-- | The URL for the web application.
gastwaepURL :: Lens' GoogleAppsScriptTypeWebAppEntryPoint (Maybe Text)
gastwaepURL
  = lens _gastwaepURL (\ s a -> s{_gastwaepURL = a})

instance FromJSON
           GoogleAppsScriptTypeWebAppEntryPoint
         where
        parseJSON
          = withObject "GoogleAppsScriptTypeWebAppEntryPoint"
              (\ o ->
                 GoogleAppsScriptTypeWebAppEntryPoint' <$>
                   (o .:? "entryPointConfig") <*> (o .:? "url"))

instance ToJSON GoogleAppsScriptTypeWebAppEntryPoint
         where
        toJSON GoogleAppsScriptTypeWebAppEntryPoint'{..}
          = object
              (catMaybes
                 [("entryPointConfig" .=) <$>
                    _gastwaepEntryPointConfig,
                  ("url" .=) <$> _gastwaepURL])

-- | Request to create a script project.
--
-- /See:/ 'createProjectRequest' smart constructor.
data CreateProjectRequest =
  CreateProjectRequest'
    { _cprTitle    :: !(Maybe Text)
    , _cprParentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateProjectRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprTitle'
--
-- * 'cprParentId'
createProjectRequest
    :: CreateProjectRequest
createProjectRequest =
  CreateProjectRequest' {_cprTitle = Nothing, _cprParentId = Nothing}


-- | The title for the project.
cprTitle :: Lens' CreateProjectRequest (Maybe Text)
cprTitle = lens _cprTitle (\ s a -> s{_cprTitle = a})

-- | The Drive ID of a parent file that the created script project is bound
-- to. This is usually the ID of a Google Doc, Google Sheet, Google Form,
-- or Google Slides file. If not set, a standalone script project is
-- created.
cprParentId :: Lens' CreateProjectRequest (Maybe Text)
cprParentId
  = lens _cprParentId (\ s a -> s{_cprParentId = a})

instance FromJSON CreateProjectRequest where
        parseJSON
          = withObject "CreateProjectRequest"
              (\ o ->
                 CreateProjectRequest' <$>
                   (o .:? "title") <*> (o .:? "parentId"))

instance ToJSON CreateProjectRequest where
        toJSON CreateProjectRequest'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _cprTitle,
                  ("parentId" .=) <$> _cprParentId])

-- | Metadata the defines how a deployment is configured.
--
-- /See:/ 'deploymentConfig' smart constructor.
data DeploymentConfig =
  DeploymentConfig'
    { _dcVersionNumber    :: !(Maybe (Textual Int32))
    , _dcScriptId         :: !(Maybe Text)
    , _dcManifestFileName :: !(Maybe Text)
    , _dcDescription      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcVersionNumber'
--
-- * 'dcScriptId'
--
-- * 'dcManifestFileName'
--
-- * 'dcDescription'
deploymentConfig
    :: DeploymentConfig
deploymentConfig =
  DeploymentConfig'
    { _dcVersionNumber = Nothing
    , _dcScriptId = Nothing
    , _dcManifestFileName = Nothing
    , _dcDescription = Nothing
    }


-- | The version number on which this deployment is based.
dcVersionNumber :: Lens' DeploymentConfig (Maybe Int32)
dcVersionNumber
  = lens _dcVersionNumber
      (\ s a -> s{_dcVersionNumber = a})
      . mapping _Coerce

-- | The script project\'s Drive ID.
dcScriptId :: Lens' DeploymentConfig (Maybe Text)
dcScriptId
  = lens _dcScriptId (\ s a -> s{_dcScriptId = a})

-- | The manifest file name for this deployment.
dcManifestFileName :: Lens' DeploymentConfig (Maybe Text)
dcManifestFileName
  = lens _dcManifestFileName
      (\ s a -> s{_dcManifestFileName = a})

-- | The description for this deployment.
dcDescription :: Lens' DeploymentConfig (Maybe Text)
dcDescription
  = lens _dcDescription
      (\ s a -> s{_dcDescription = a})

instance FromJSON DeploymentConfig where
        parseJSON
          = withObject "DeploymentConfig"
              (\ o ->
                 DeploymentConfig' <$>
                   (o .:? "versionNumber") <*> (o .:? "scriptId") <*>
                     (o .:? "manifestFileName")
                     <*> (o .:? "description"))

instance ToJSON DeploymentConfig where
        toJSON DeploymentConfig'{..}
          = object
              (catMaybes
                 [("versionNumber" .=) <$> _dcVersionNumber,
                  ("scriptId" .=) <$> _dcScriptId,
                  ("manifestFileName" .=) <$> _dcManifestFileName,
                  ("description" .=) <$> _dcDescription])

-- | Response with the list of deployments for the specified Apps Script
-- project.
--
-- /See:/ 'listDeploymentsResponse' smart constructor.
data ListDeploymentsResponse =
  ListDeploymentsResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDeployments   :: !(Maybe [Deployment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDeploymentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrNextPageToken'
--
-- * 'ldrDeployments'
listDeploymentsResponse
    :: ListDeploymentsResponse
listDeploymentsResponse =
  ListDeploymentsResponse'
    {_ldrNextPageToken = Nothing, _ldrDeployments = Nothing}


-- | The token that can be used in the next call to get the next page of
-- results.
ldrNextPageToken :: Lens' ListDeploymentsResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | The list of deployments.
ldrDeployments :: Lens' ListDeploymentsResponse [Deployment]
ldrDeployments
  = lens _ldrDeployments
      (\ s a -> s{_ldrDeployments = a})
      . _Default
      . _Coerce

instance FromJSON ListDeploymentsResponse where
        parseJSON
          = withObject "ListDeploymentsResponse"
              (\ o ->
                 ListDeploymentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "deployments" .!= mempty))

instance ToJSON ListDeploymentsResponse where
        toJSON ListDeploymentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("deployments" .=) <$> _ldrDeployments])

-- | Represents a function in a script project.
--
-- /See:/ 'googleAppsScriptTypeFunction' smart constructor.
newtype GoogleAppsScriptTypeFunction =
  GoogleAppsScriptTypeFunction'
    { _gastfName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeFunction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gastfName'
googleAppsScriptTypeFunction
    :: GoogleAppsScriptTypeFunction
googleAppsScriptTypeFunction =
  GoogleAppsScriptTypeFunction' {_gastfName = Nothing}


-- | The function name in the script project.
gastfName :: Lens' GoogleAppsScriptTypeFunction (Maybe Text)
gastfName
  = lens _gastfName (\ s a -> s{_gastfName = a})

instance FromJSON GoogleAppsScriptTypeFunction where
        parseJSON
          = withObject "GoogleAppsScriptTypeFunction"
              (\ o ->
                 GoogleAppsScriptTypeFunction' <$> (o .:? "name"))

instance ToJSON GoogleAppsScriptTypeFunction where
        toJSON GoogleAppsScriptTypeFunction'{..}
          = object (catMaybes [("name" .=) <$> _gastfName])

-- | An individual file within a script project. A file is a third-party
-- source code created by one or more developers. It can be a server-side
-- JS code, HTML, or a configuration file. Each script project can contain
-- multiple files.
--
-- /See:/ 'file' smart constructor.
data File =
  File'
    { _fFunctionSet    :: !(Maybe GoogleAppsScriptTypeFunctionSet)
    , _fLastModifyUser :: !(Maybe GoogleAppsScriptTypeUser)
    , _fUpdateTime     :: !(Maybe DateTime')
    , _fName           :: !(Maybe Text)
    , _fSource         :: !(Maybe Text)
    , _fType           :: !(Maybe FileType)
    , _fCreateTime     :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fFunctionSet'
--
-- * 'fLastModifyUser'
--
-- * 'fUpdateTime'
--
-- * 'fName'
--
-- * 'fSource'
--
-- * 'fType'
--
-- * 'fCreateTime'
file
    :: File
file =
  File'
    { _fFunctionSet = Nothing
    , _fLastModifyUser = Nothing
    , _fUpdateTime = Nothing
    , _fName = Nothing
    , _fSource = Nothing
    , _fType = Nothing
    , _fCreateTime = Nothing
    }


-- | The defined set of functions in the script file, if any.
fFunctionSet :: Lens' File (Maybe GoogleAppsScriptTypeFunctionSet)
fFunctionSet
  = lens _fFunctionSet (\ s a -> s{_fFunctionSet = a})

-- | The user who modified the file most recently. This read-only field is
-- only visible to users who have WRITER permission for the script project.
fLastModifyUser :: Lens' File (Maybe GoogleAppsScriptTypeUser)
fLastModifyUser
  = lens _fLastModifyUser
      (\ s a -> s{_fLastModifyUser = a})

-- | Last modified date timestamp. This read-only field is only visible to
-- users who have WRITER permission for the script project.
fUpdateTime :: Lens' File (Maybe UTCTime)
fUpdateTime
  = lens _fUpdateTime (\ s a -> s{_fUpdateTime = a}) .
      mapping _DateTime

-- | The name of the file. The file extension is not part of the file name,
-- which can be identified from the type field.
fName :: Lens' File (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The file content.
fSource :: Lens' File (Maybe Text)
fSource = lens _fSource (\ s a -> s{_fSource = a})

-- | The type of the file.
fType :: Lens' File (Maybe FileType)
fType = lens _fType (\ s a -> s{_fType = a})

-- | Creation date timestamp. This read-only field is only visible to users
-- who have WRITER permission for the script project.
fCreateTime :: Lens' File (Maybe UTCTime)
fCreateTime
  = lens _fCreateTime (\ s a -> s{_fCreateTime = a}) .
      mapping _DateTime

instance FromJSON File where
        parseJSON
          = withObject "File"
              (\ o ->
                 File' <$>
                   (o .:? "functionSet") <*> (o .:? "lastModifyUser")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "source")
                     <*> (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON File where
        toJSON File'{..}
          = object
              (catMaybes
                 [("functionSet" .=) <$> _fFunctionSet,
                  ("lastModifyUser" .=) <$> _fLastModifyUser,
                  ("updateTime" .=) <$> _fUpdateTime,
                  ("name" .=) <$> _fName, ("source" .=) <$> _fSource,
                  ("type" .=) <$> _fType,
                  ("createTime" .=) <$> _fCreateTime])

-- | An API executable entry point.
--
-- /See:/ 'googleAppsScriptTypeExecutionAPIEntryPoint' smart constructor.
newtype GoogleAppsScriptTypeExecutionAPIEntryPoint =
  GoogleAppsScriptTypeExecutionAPIEntryPoint'
    { _gasteaepEntryPointConfig :: Maybe GoogleAppsScriptTypeExecutionAPIConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsScriptTypeExecutionAPIEntryPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasteaepEntryPointConfig'
googleAppsScriptTypeExecutionAPIEntryPoint
    :: GoogleAppsScriptTypeExecutionAPIEntryPoint
googleAppsScriptTypeExecutionAPIEntryPoint =
  GoogleAppsScriptTypeExecutionAPIEntryPoint'
    {_gasteaepEntryPointConfig = Nothing}


-- | The entry point\'s configuration.
gasteaepEntryPointConfig :: Lens' GoogleAppsScriptTypeExecutionAPIEntryPoint (Maybe GoogleAppsScriptTypeExecutionAPIConfig)
gasteaepEntryPointConfig
  = lens _gasteaepEntryPointConfig
      (\ s a -> s{_gasteaepEntryPointConfig = a})

instance FromJSON
           GoogleAppsScriptTypeExecutionAPIEntryPoint
         where
        parseJSON
          = withObject
              "GoogleAppsScriptTypeExecutionAPIEntryPoint"
              (\ o ->
                 GoogleAppsScriptTypeExecutionAPIEntryPoint' <$>
                   (o .:? "entryPointConfig"))

instance ToJSON
           GoogleAppsScriptTypeExecutionAPIEntryPoint
         where
        toJSON
          GoogleAppsScriptTypeExecutionAPIEntryPoint'{..}
          = object
              (catMaybes
                 [("entryPointConfig" .=) <$>
                    _gasteaepEntryPointConfig])

-- | If the script function returns successfully, this field contains an
-- ExecutionResponse object with the function\'s return value.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | An object that provides the return value of a function executed using
-- the Apps Script API. If the script function returns successfully, the
-- response body\'s response field contains this \`ExecutionResponse\`
-- object.
--
-- /See:/ 'executionResponse' smart constructor.
newtype ExecutionResponse =
  ExecutionResponse'
    { _erResult :: Maybe JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erResult'
executionResponse
    :: ExecutionResponse
executionResponse = ExecutionResponse' {_erResult = Nothing}


-- | The return value of the script function. The type matches the object
-- type returned in Apps Script. Functions called using the Apps Script API
-- cannot return Apps Script-specific objects (such as a \`Document\` or a
-- \`Calendar\`); they can only return primitive types such as a
-- \`string\`, \`number\`, \`array\`, \`object\`, or \`boolean\`.
erResult :: Lens' ExecutionResponse (Maybe JSONValue)
erResult = lens _erResult (\ s a -> s{_erResult = a})

instance FromJSON ExecutionResponse where
        parseJSON
          = withObject "ExecutionResponse"
              (\ o -> ExecutionResponse' <$> (o .:? "result"))

instance ToJSON ExecutionResponse where
        toJSON ExecutionResponse'{..}
          = object (catMaybes [("result" .=) <$> _erResult])

-- | Representation of a single script deployment.
--
-- /See:/ 'deployment' smart constructor.
data Deployment =
  Deployment'
    { _dDeploymentId     :: !(Maybe Text)
    , _dUpdateTime       :: !(Maybe DateTime')
    , _dEntryPoints      :: !(Maybe [EntryPoint])
    , _dDeploymentConfig :: !(Maybe DeploymentConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDeploymentId'
--
-- * 'dUpdateTime'
--
-- * 'dEntryPoints'
--
-- * 'dDeploymentConfig'
deployment
    :: Deployment
deployment =
  Deployment'
    { _dDeploymentId = Nothing
    , _dUpdateTime = Nothing
    , _dEntryPoints = Nothing
    , _dDeploymentConfig = Nothing
    }


-- | The deployment ID for this deployment.
dDeploymentId :: Lens' Deployment (Maybe Text)
dDeploymentId
  = lens _dDeploymentId
      (\ s a -> s{_dDeploymentId = a})

-- | Last modified date time stamp.
dUpdateTime :: Lens' Deployment (Maybe UTCTime)
dUpdateTime
  = lens _dUpdateTime (\ s a -> s{_dUpdateTime = a}) .
      mapping _DateTime

-- | The deployment\'s entry points.
dEntryPoints :: Lens' Deployment [EntryPoint]
dEntryPoints
  = lens _dEntryPoints (\ s a -> s{_dEntryPoints = a})
      . _Default
      . _Coerce

-- | The deployment configuration.
dDeploymentConfig :: Lens' Deployment (Maybe DeploymentConfig)
dDeploymentConfig
  = lens _dDeploymentConfig
      (\ s a -> s{_dDeploymentConfig = a})

instance FromJSON Deployment where
        parseJSON
          = withObject "Deployment"
              (\ o ->
                 Deployment' <$>
                   (o .:? "deploymentId") <*> (o .:? "updateTime") <*>
                     (o .:? "entryPoints" .!= mempty)
                     <*> (o .:? "deploymentConfig"))

instance ToJSON Deployment where
        toJSON Deployment'{..}
          = object
              (catMaybes
                 [("deploymentId" .=) <$> _dDeploymentId,
                  ("updateTime" .=) <$> _dUpdateTime,
                  ("entryPoints" .=) <$> _dEntryPoints,
                  ("deploymentConfig" .=) <$> _dDeploymentConfig])

-- | Request with deployment information to update an existing deployment.
--
-- /See:/ 'updateDeploymentRequest' smart constructor.
newtype UpdateDeploymentRequest =
  UpdateDeploymentRequest'
    { _udrDeploymentConfig :: Maybe DeploymentConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDeploymentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrDeploymentConfig'
updateDeploymentRequest
    :: UpdateDeploymentRequest
updateDeploymentRequest =
  UpdateDeploymentRequest' {_udrDeploymentConfig = Nothing}


-- | The deployment configuration.
udrDeploymentConfig :: Lens' UpdateDeploymentRequest (Maybe DeploymentConfig)
udrDeploymentConfig
  = lens _udrDeploymentConfig
      (\ s a -> s{_udrDeploymentConfig = a})

instance FromJSON UpdateDeploymentRequest where
        parseJSON
          = withObject "UpdateDeploymentRequest"
              (\ o ->
                 UpdateDeploymentRequest' <$>
                   (o .:? "deploymentConfig"))

instance ToJSON UpdateDeploymentRequest where
        toJSON UpdateDeploymentRequest'{..}
          = object
              (catMaybes
                 [("deploymentConfig" .=) <$> _udrDeploymentConfig])

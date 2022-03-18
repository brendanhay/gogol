{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Script.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Script.Internal.Product
  ( -- * Content
    Content (..),
    newContent,

    -- * CreateProjectRequest
    CreateProjectRequest (..),
    newCreateProjectRequest,

    -- * Deployment
    Deployment (..),
    newDeployment,

    -- * DeploymentConfig
    DeploymentConfig (..),
    newDeploymentConfig,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EntryPoint
    EntryPoint (..),
    newEntryPoint,

    -- * ExecuteStreamResponse
    ExecuteStreamResponse (..),
    newExecuteStreamResponse,

    -- * ExecutionError
    ExecutionError (..),
    newExecutionError,

    -- * ExecutionRequest
    ExecutionRequest (..),
    newExecutionRequest,

    -- * ExecutionResponse
    ExecutionResponse (..),
    newExecutionResponse,

    -- * File
    File (..),
    newFile,

    -- * GoogleAppsScriptTypeAddOnEntryPoint
    GoogleAppsScriptTypeAddOnEntryPoint (..),
    newGoogleAppsScriptTypeAddOnEntryPoint,

    -- * GoogleAppsScriptTypeExecutionApiConfig
    GoogleAppsScriptTypeExecutionApiConfig (..),
    newGoogleAppsScriptTypeExecutionApiConfig,

    -- * GoogleAppsScriptTypeExecutionApiEntryPoint
    GoogleAppsScriptTypeExecutionApiEntryPoint (..),
    newGoogleAppsScriptTypeExecutionApiEntryPoint,

    -- * GoogleAppsScriptTypeFunction
    GoogleAppsScriptTypeFunction (..),
    newGoogleAppsScriptTypeFunction,

    -- * GoogleAppsScriptTypeFunctionSet
    GoogleAppsScriptTypeFunctionSet (..),
    newGoogleAppsScriptTypeFunctionSet,

    -- * GoogleAppsScriptTypeProcess
    GoogleAppsScriptTypeProcess (..),
    newGoogleAppsScriptTypeProcess,

    -- * GoogleAppsScriptTypeUser
    GoogleAppsScriptTypeUser (..),
    newGoogleAppsScriptTypeUser,

    -- * GoogleAppsScriptTypeWebAppConfig
    GoogleAppsScriptTypeWebAppConfig (..),
    newGoogleAppsScriptTypeWebAppConfig,

    -- * GoogleAppsScriptTypeWebAppEntryPoint
    GoogleAppsScriptTypeWebAppEntryPoint (..),
    newGoogleAppsScriptTypeWebAppEntryPoint,

    -- * ListDeploymentsResponse
    ListDeploymentsResponse (..),
    newListDeploymentsResponse,

    -- * ListScriptProcessesResponse
    ListScriptProcessesResponse (..),
    newListScriptProcessesResponse,

    -- * ListUserProcessesResponse
    ListUserProcessesResponse (..),
    newListUserProcessesResponse,

    -- * ListValue
    ListValue (..),
    newListValue,

    -- * ListVersionsResponse
    ListVersionsResponse (..),
    newListVersionsResponse,

    -- * Metrics
    Metrics (..),
    newMetrics,

    -- * MetricsValue
    MetricsValue (..),
    newMetricsValue,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * Project
    Project (..),
    newProject,

    -- * ScriptExecutionResult
    ScriptExecutionResult (..),
    newScriptExecutionResult,

    -- * ScriptStackTraceElement
    ScriptStackTraceElement (..),
    newScriptStackTraceElement,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Struct
    Struct (..),
    newStruct,

    -- * Struct_Fields
    Struct_Fields (..),
    newStruct_Fields,

    -- * UpdateDeploymentRequest
    UpdateDeploymentRequest (..),
    newUpdateDeploymentRequest,

    -- * Value
    Value (..),
    newValue,

    -- * Value_ProtoValue
    Value_ProtoValue (..),
    newValue_ProtoValue,

    -- * Version
    Version (..),
    newVersion,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Script.Internal.Sum

-- | The Content resource.
--
-- /See:/ 'newContent' smart constructor.
data Content = Content
  { -- | The list of script project files. One of the files is a script manifest; it must be named \"appsscript\", must have type of JSON, and include the manifest configurations for the project.
    files :: (Core.Maybe [File]),
    -- | The script project\'s Drive ID.
    scriptId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Content' with the minimum fields required to make a request.
newContent ::
  Content
newContent = Content {files = Core.Nothing, scriptId = Core.Nothing}

instance Core.FromJSON Content where
  parseJSON =
    Core.withObject
      "Content"
      ( \o ->
          Content
            Core.<$> (o Core..:? "files" Core..!= Core.mempty)
            Core.<*> (o Core..:? "scriptId")
      )

instance Core.ToJSON Content where
  toJSON Content {..} =
    Core.object
      ( Core.catMaybes
          [ ("files" Core..=) Core.<$> files,
            ("scriptId" Core..=) Core.<$> scriptId
          ]
      )

-- | Request to create a script project. Request to create a script project.
--
-- /See:/ 'newCreateProjectRequest' smart constructor.
data CreateProjectRequest = CreateProjectRequest
  { -- | The Drive ID of a parent file that the created script project is bound to. This is usually the ID of a Google Doc, Google Sheet, Google Form, or Google Slides file. If not set, a standalone script project is created.
    parentId :: (Core.Maybe Core.Text),
    -- | The title for the project.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateProjectRequest' with the minimum fields required to make a request.
newCreateProjectRequest ::
  CreateProjectRequest
newCreateProjectRequest =
  CreateProjectRequest {parentId = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON CreateProjectRequest where
  parseJSON =
    Core.withObject
      "CreateProjectRequest"
      ( \o ->
          CreateProjectRequest
            Core.<$> (o Core..:? "parentId")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON CreateProjectRequest where
  toJSON CreateProjectRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("parentId" Core..=) Core.<$> parentId,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Representation of a single script deployment.
--
-- /See:/ 'newDeployment' smart constructor.
data Deployment = Deployment
  { -- | The deployment configuration.
    deploymentConfig :: (Core.Maybe DeploymentConfig),
    -- | The deployment ID for this deployment.
    deploymentId :: (Core.Maybe Core.Text),
    -- | The deployment\'s entry points.
    entryPoints :: (Core.Maybe [EntryPoint]),
    -- | Last modified date time stamp.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
newDeployment ::
  Deployment
newDeployment =
  Deployment
    { deploymentConfig = Core.Nothing,
      deploymentId = Core.Nothing,
      entryPoints = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Deployment where
  parseJSON =
    Core.withObject
      "Deployment"
      ( \o ->
          Deployment
            Core.<$> (o Core..:? "deploymentConfig")
            Core.<*> (o Core..:? "deploymentId")
            Core.<*> (o Core..:? "entryPoints" Core..!= Core.mempty)
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Deployment where
  toJSON Deployment {..} =
    Core.object
      ( Core.catMaybes
          [ ("deploymentConfig" Core..=)
              Core.<$> deploymentConfig,
            ("deploymentId" Core..=) Core.<$> deploymentId,
            ("entryPoints" Core..=) Core.<$> entryPoints,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Metadata the defines how a deployment is configured.
--
-- /See:/ 'newDeploymentConfig' smart constructor.
data DeploymentConfig = DeploymentConfig
  { -- | The description for this deployment.
    description :: (Core.Maybe Core.Text),
    -- | The manifest file name for this deployment.
    manifestFileName :: (Core.Maybe Core.Text),
    -- | The script project\'s Drive ID.
    scriptId :: (Core.Maybe Core.Text),
    -- | The version number on which this deployment is based.
    versionNumber :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentConfig' with the minimum fields required to make a request.
newDeploymentConfig ::
  DeploymentConfig
newDeploymentConfig =
  DeploymentConfig
    { description = Core.Nothing,
      manifestFileName = Core.Nothing,
      scriptId = Core.Nothing,
      versionNumber = Core.Nothing
    }

instance Core.FromJSON DeploymentConfig where
  parseJSON =
    Core.withObject
      "DeploymentConfig"
      ( \o ->
          DeploymentConfig
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "manifestFileName")
            Core.<*> (o Core..:? "scriptId")
            Core.<*> (o Core..:? "versionNumber")
      )

instance Core.ToJSON DeploymentConfig where
  toJSON DeploymentConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("manifestFileName" Core..=)
              Core.<$> manifestFileName,
            ("scriptId" Core..=) Core.<$> scriptId,
            ("versionNumber" Core..=) Core.<$> versionNumber
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A configuration that defines how a deployment is accessed externally.
--
-- /See:/ 'newEntryPoint' smart constructor.
data EntryPoint = EntryPoint
  { -- | Add-on properties.
    addOn :: (Core.Maybe GoogleAppsScriptTypeAddOnEntryPoint),
    -- | The type of the entry point.
    entryPointType :: (Core.Maybe EntryPoint_EntryPointType),
    -- | An entry point specification for Apps Script API execution calls.
    executionApi :: (Core.Maybe GoogleAppsScriptTypeExecutionApiEntryPoint),
    -- | An entry point specification for web apps.
    webApp :: (Core.Maybe GoogleAppsScriptTypeWebAppEntryPoint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntryPoint' with the minimum fields required to make a request.
newEntryPoint ::
  EntryPoint
newEntryPoint =
  EntryPoint
    { addOn = Core.Nothing,
      entryPointType = Core.Nothing,
      executionApi = Core.Nothing,
      webApp = Core.Nothing
    }

instance Core.FromJSON EntryPoint where
  parseJSON =
    Core.withObject
      "EntryPoint"
      ( \o ->
          EntryPoint
            Core.<$> (o Core..:? "addOn")
            Core.<*> (o Core..:? "entryPointType")
            Core.<*> (o Core..:? "executionApi")
            Core.<*> (o Core..:? "webApp")
      )

instance Core.ToJSON EntryPoint where
  toJSON EntryPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("addOn" Core..=) Core.<$> addOn,
            ("entryPointType" Core..=) Core.<$> entryPointType,
            ("executionApi" Core..=) Core.<$> executionApi,
            ("webApp" Core..=) Core.<$> webApp
          ]
      )

-- | The response for executing or debugging a function in an Apps Script project.
--
-- /See:/ 'newExecuteStreamResponse' smart constructor.
newtype ExecuteStreamResponse = ExecuteStreamResponse
  { -- | The result of the execution.
    result :: (Core.Maybe ScriptExecutionResult)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecuteStreamResponse' with the minimum fields required to make a request.
newExecuteStreamResponse ::
  ExecuteStreamResponse
newExecuteStreamResponse = ExecuteStreamResponse {result = Core.Nothing}

instance Core.FromJSON ExecuteStreamResponse where
  parseJSON =
    Core.withObject
      "ExecuteStreamResponse"
      ( \o ->
          ExecuteStreamResponse Core.<$> (o Core..:? "result")
      )

instance Core.ToJSON ExecuteStreamResponse where
  toJSON ExecuteStreamResponse {..} =
    Core.object
      (Core.catMaybes [("result" Core..=) Core.<$> result])

-- | An object that provides information about the nature of an error resulting from an attempted execution of a script function using the Apps Script API. If a run call succeeds but the script function (or Apps Script itself) throws an exception, the response body\'s error field contains a Status object. The @Status@ object\'s @details@ field contains an array with a single one of these @ExecutionError@ objects.
--
-- /See:/ 'newExecutionError' smart constructor.
data ExecutionError = ExecutionError
  { -- | The error message thrown by Apps Script, usually localized into the user\'s language.
    errorMessage :: (Core.Maybe Core.Text),
    -- | The error type, for example @TypeError@ or @ReferenceError@. If the error type is unavailable, this field is not included.
    errorType :: (Core.Maybe Core.Text),
    -- | An array of objects that provide a stack trace through the script to show where the execution failed, with the deepest call first.
    scriptStackTraceElements :: (Core.Maybe [ScriptStackTraceElement])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutionError' with the minimum fields required to make a request.
newExecutionError ::
  ExecutionError
newExecutionError =
  ExecutionError
    { errorMessage = Core.Nothing,
      errorType = Core.Nothing,
      scriptStackTraceElements = Core.Nothing
    }

instance Core.FromJSON ExecutionError where
  parseJSON =
    Core.withObject
      "ExecutionError"
      ( \o ->
          ExecutionError
            Core.<$> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "errorType")
            Core.<*> ( o Core..:? "scriptStackTraceElements"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ExecutionError where
  toJSON ExecutionError {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorMessage" Core..=) Core.<$> errorMessage,
            ("errorType" Core..=) Core.<$> errorType,
            ("scriptStackTraceElements" Core..=)
              Core.<$> scriptStackTraceElements
          ]
      )

-- | A request to run the function in a script. The script is identified by the specified @script_id@. Executing a function on a script returns results based on the implementation of the script.
--
-- /See:/ 'newExecutionRequest' smart constructor.
data ExecutionRequest = ExecutionRequest
  { -- | If @true@ and the user is an owner of the script, the script runs at the most recently saved version rather than the version deployed for use with the Apps Script API. Optional; default is @false@.
    devMode :: (Core.Maybe Core.Bool),
    -- | The name of the function to execute in the given script. The name does not include parentheses or parameters. It can reference a function in an included library such as @Library.libFunction1@.
    function :: (Core.Maybe Core.Text),
    -- | The parameters to be passed to the function being executed. The object type for each parameter should match the expected type in Apps Script. Parameters cannot be Apps Script-specific object types (such as a @Document@ or a @Calendar@); they can only be primitive types such as @string@, @number@, @array@, @object@, or @boolean@. Optional.
    parameters :: (Core.Maybe [Core.Value]),
    -- | /Deprecated/. For use with Android add-ons only. An ID that represents the user\'s current session in the Android app for Google Docs or Sheets, included as extra data in the <https://developer.android.com/guide/components/intents-filters.html Intent> that launches the add-on. When an Android add-on is run with a session state, it gains the privileges of a <https://developers.google.com/apps-script/guides/bound bound> script—that is, it can access information like the user\'s current cursor position (in Docs) or selected cell (in Sheets). To retrieve the state, call @Intent.getStringExtra(\"com.google.android.apps.docs.addons.SessionState\")@. Optional.
    sessionState :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutionRequest' with the minimum fields required to make a request.
newExecutionRequest ::
  ExecutionRequest
newExecutionRequest =
  ExecutionRequest
    { devMode = Core.Nothing,
      function = Core.Nothing,
      parameters = Core.Nothing,
      sessionState = Core.Nothing
    }

instance Core.FromJSON ExecutionRequest where
  parseJSON =
    Core.withObject
      "ExecutionRequest"
      ( \o ->
          ExecutionRequest
            Core.<$> (o Core..:? "devMode")
            Core.<*> (o Core..:? "function")
            Core.<*> (o Core..:? "parameters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "sessionState")
      )

instance Core.ToJSON ExecutionRequest where
  toJSON ExecutionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("devMode" Core..=) Core.<$> devMode,
            ("function" Core..=) Core.<$> function,
            ("parameters" Core..=) Core.<$> parameters,
            ("sessionState" Core..=) Core.<$> sessionState
          ]
      )

-- | An object that provides the return value of a function executed using the Apps Script API. If the script function returns successfully, the response body\'s response field contains this @ExecutionResponse@ object.
--
-- /See:/ 'newExecutionResponse' smart constructor.
newtype ExecutionResponse = ExecutionResponse
  { -- | The return value of the script function. The type matches the object type returned in Apps Script. Functions called using the Apps Script API cannot return Apps Script-specific objects (such as a @Document@ or a @Calendar@); they can only return primitive types such as a @string@, @number@, @array@, @object@, or @boolean@.
    result :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutionResponse' with the minimum fields required to make a request.
newExecutionResponse ::
  ExecutionResponse
newExecutionResponse = ExecutionResponse {result = Core.Nothing}

instance Core.FromJSON ExecutionResponse where
  parseJSON =
    Core.withObject
      "ExecutionResponse"
      ( \o ->
          ExecutionResponse Core.<$> (o Core..:? "result")
      )

instance Core.ToJSON ExecutionResponse where
  toJSON ExecutionResponse {..} =
    Core.object
      (Core.catMaybes [("result" Core..=) Core.<$> result])

-- | An individual file within a script project. A file is a third-party source code created by one or more developers. It can be a server-side JS code, HTML, or a configuration file. Each script project can contain multiple files.
--
-- /See:/ 'newFile' smart constructor.
data File = File
  { -- | Creation date timestamp. This read-only field is only visible to users who have WRITER permission for the script project.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The defined set of functions in the script file, if any.
    functionSet :: (Core.Maybe GoogleAppsScriptTypeFunctionSet),
    -- | The user who modified the file most recently. This read-only field is only visible to users who have WRITER permission for the script project.
    lastModifyUser :: (Core.Maybe GoogleAppsScriptTypeUser),
    -- | The name of the file. The file extension is not part of the file name, which can be identified from the type field.
    name :: (Core.Maybe Core.Text),
    -- | The file content.
    source :: (Core.Maybe Core.Text),
    -- | The type of the file.
    type' :: (Core.Maybe File_Type),
    -- | Last modified date timestamp. This read-only field is only visible to users who have WRITER permission for the script project.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
newFile ::
  File
newFile =
  File
    { createTime = Core.Nothing,
      functionSet = Core.Nothing,
      lastModifyUser = Core.Nothing,
      name = Core.Nothing,
      source = Core.Nothing,
      type' = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON File where
  parseJSON =
    Core.withObject
      "File"
      ( \o ->
          File
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "functionSet")
            Core.<*> (o Core..:? "lastModifyUser")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON File where
  toJSON File {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("functionSet" Core..=) Core.<$> functionSet,
            ("lastModifyUser" Core..=) Core.<$> lastModifyUser,
            ("name" Core..=) Core.<$> name,
            ("source" Core..=) Core.<$> source,
            ("type" Core..=) Core.<$> type',
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | An add-on entry point.
--
-- /See:/ 'newGoogleAppsScriptTypeAddOnEntryPoint' smart constructor.
data GoogleAppsScriptTypeAddOnEntryPoint = GoogleAppsScriptTypeAddOnEntryPoint
  { -- | The add-on\'s required list of supported container types.
    addOnType :: (Core.Maybe GoogleAppsScriptTypeAddOnEntryPoint_AddOnType),
    -- | The add-on\'s optional description.
    description :: (Core.Maybe Core.Text),
    -- | The add-on\'s optional help URL.
    helpUrl :: (Core.Maybe Core.Text),
    -- | The add-on\'s required post install tip URL.
    postInstallTipUrl :: (Core.Maybe Core.Text),
    -- | The add-on\'s optional report issue URL.
    reportIssueUrl :: (Core.Maybe Core.Text),
    -- | The add-on\'s required title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeAddOnEntryPoint' with the minimum fields required to make a request.
newGoogleAppsScriptTypeAddOnEntryPoint ::
  GoogleAppsScriptTypeAddOnEntryPoint
newGoogleAppsScriptTypeAddOnEntryPoint =
  GoogleAppsScriptTypeAddOnEntryPoint
    { addOnType = Core.Nothing,
      description = Core.Nothing,
      helpUrl = Core.Nothing,
      postInstallTipUrl = Core.Nothing,
      reportIssueUrl = Core.Nothing,
      title = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsScriptTypeAddOnEntryPoint
  where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeAddOnEntryPoint"
      ( \o ->
          GoogleAppsScriptTypeAddOnEntryPoint
            Core.<$> (o Core..:? "addOnType")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "helpUrl")
            Core.<*> (o Core..:? "postInstallTipUrl")
            Core.<*> (o Core..:? "reportIssueUrl")
            Core.<*> (o Core..:? "title")
      )

instance
  Core.ToJSON
    GoogleAppsScriptTypeAddOnEntryPoint
  where
  toJSON GoogleAppsScriptTypeAddOnEntryPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("addOnType" Core..=) Core.<$> addOnType,
            ("description" Core..=) Core.<$> description,
            ("helpUrl" Core..=) Core.<$> helpUrl,
            ("postInstallTipUrl" Core..=)
              Core.<$> postInstallTipUrl,
            ("reportIssueUrl" Core..=) Core.<$> reportIssueUrl,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | API executable entry point configuration.
--
-- /See:/ 'newGoogleAppsScriptTypeExecutionApiConfig' smart constructor.
newtype GoogleAppsScriptTypeExecutionApiConfig = GoogleAppsScriptTypeExecutionApiConfig
  { -- | Who has permission to run the API executable.
    access :: (Core.Maybe GoogleAppsScriptTypeExecutionApiConfig_Access)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeExecutionApiConfig' with the minimum fields required to make a request.
newGoogleAppsScriptTypeExecutionApiConfig ::
  GoogleAppsScriptTypeExecutionApiConfig
newGoogleAppsScriptTypeExecutionApiConfig =
  GoogleAppsScriptTypeExecutionApiConfig {access = Core.Nothing}

instance
  Core.FromJSON
    GoogleAppsScriptTypeExecutionApiConfig
  where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeExecutionApiConfig"
      ( \o ->
          GoogleAppsScriptTypeExecutionApiConfig
            Core.<$> (o Core..:? "access")
      )

instance
  Core.ToJSON
    GoogleAppsScriptTypeExecutionApiConfig
  where
  toJSON GoogleAppsScriptTypeExecutionApiConfig {..} =
    Core.object
      (Core.catMaybes [("access" Core..=) Core.<$> access])

-- | An API executable entry point.
--
-- /See:/ 'newGoogleAppsScriptTypeExecutionApiEntryPoint' smart constructor.
newtype GoogleAppsScriptTypeExecutionApiEntryPoint = GoogleAppsScriptTypeExecutionApiEntryPoint
  { -- | The entry point\'s configuration.
    entryPointConfig :: (Core.Maybe GoogleAppsScriptTypeExecutionApiConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeExecutionApiEntryPoint' with the minimum fields required to make a request.
newGoogleAppsScriptTypeExecutionApiEntryPoint ::
  GoogleAppsScriptTypeExecutionApiEntryPoint
newGoogleAppsScriptTypeExecutionApiEntryPoint =
  GoogleAppsScriptTypeExecutionApiEntryPoint {entryPointConfig = Core.Nothing}

instance
  Core.FromJSON
    GoogleAppsScriptTypeExecutionApiEntryPoint
  where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeExecutionApiEntryPoint"
      ( \o ->
          GoogleAppsScriptTypeExecutionApiEntryPoint
            Core.<$> (o Core..:? "entryPointConfig")
      )

instance
  Core.ToJSON
    GoogleAppsScriptTypeExecutionApiEntryPoint
  where
  toJSON GoogleAppsScriptTypeExecutionApiEntryPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("entryPointConfig" Core..=)
              Core.<$> entryPointConfig
          ]
      )

-- | Represents a function in a script project.
--
-- /See:/ 'newGoogleAppsScriptTypeFunction' smart constructor.
data GoogleAppsScriptTypeFunction = GoogleAppsScriptTypeFunction
  { -- | The function name in the script project.
    name :: (Core.Maybe Core.Text),
    -- | The ordered list of parameter names of the function in the script project.
    parameters :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeFunction' with the minimum fields required to make a request.
newGoogleAppsScriptTypeFunction ::
  GoogleAppsScriptTypeFunction
newGoogleAppsScriptTypeFunction =
  GoogleAppsScriptTypeFunction {name = Core.Nothing, parameters = Core.Nothing}

instance Core.FromJSON GoogleAppsScriptTypeFunction where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeFunction"
      ( \o ->
          GoogleAppsScriptTypeFunction
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "parameters" Core..!= Core.mempty)
      )

instance Core.ToJSON GoogleAppsScriptTypeFunction where
  toJSON GoogleAppsScriptTypeFunction {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | A set of functions. No duplicates are permitted.
--
-- /See:/ 'newGoogleAppsScriptTypeFunctionSet' smart constructor.
newtype GoogleAppsScriptTypeFunctionSet = GoogleAppsScriptTypeFunctionSet
  { -- | A list of functions composing the set.
    values :: (Core.Maybe [GoogleAppsScriptTypeFunction])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeFunctionSet' with the minimum fields required to make a request.
newGoogleAppsScriptTypeFunctionSet ::
  GoogleAppsScriptTypeFunctionSet
newGoogleAppsScriptTypeFunctionSet =
  GoogleAppsScriptTypeFunctionSet {values = Core.Nothing}

instance
  Core.FromJSON
    GoogleAppsScriptTypeFunctionSet
  where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeFunctionSet"
      ( \o ->
          GoogleAppsScriptTypeFunctionSet
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON GoogleAppsScriptTypeFunctionSet where
  toJSON GoogleAppsScriptTypeFunctionSet {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Representation of a single script process execution that was started from the script editor, a trigger, an application, or using the Apps Script API. This is distinct from the @Operation@ resource, which only represents executions started via the Apps Script API.
--
-- /See:/ 'newGoogleAppsScriptTypeProcess' smart constructor.
data GoogleAppsScriptTypeProcess = GoogleAppsScriptTypeProcess
  { -- | Duration the execution spent executing.
    duration :: (Core.Maybe Core.GDuration),
    -- | Name of the function the started the execution.
    functionName :: (Core.Maybe Core.Text),
    -- | The executions status.
    processStatus :: (Core.Maybe GoogleAppsScriptTypeProcess_ProcessStatus),
    -- | The executions type.
    processType :: (Core.Maybe GoogleAppsScriptTypeProcess_ProcessType),
    -- | Name of the script being executed.
    projectName :: (Core.Maybe Core.Text),
    -- | Time the execution started.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | The executing users access level to the script.
    userAccessLevel :: (Core.Maybe GoogleAppsScriptTypeProcess_UserAccessLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeProcess' with the minimum fields required to make a request.
newGoogleAppsScriptTypeProcess ::
  GoogleAppsScriptTypeProcess
newGoogleAppsScriptTypeProcess =
  GoogleAppsScriptTypeProcess
    { duration = Core.Nothing,
      functionName = Core.Nothing,
      processStatus = Core.Nothing,
      processType = Core.Nothing,
      projectName = Core.Nothing,
      startTime = Core.Nothing,
      userAccessLevel = Core.Nothing
    }

instance Core.FromJSON GoogleAppsScriptTypeProcess where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeProcess"
      ( \o ->
          GoogleAppsScriptTypeProcess
            Core.<$> (o Core..:? "duration")
            Core.<*> (o Core..:? "functionName")
            Core.<*> (o Core..:? "processStatus")
            Core.<*> (o Core..:? "processType")
            Core.<*> (o Core..:? "projectName")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "userAccessLevel")
      )

instance Core.ToJSON GoogleAppsScriptTypeProcess where
  toJSON GoogleAppsScriptTypeProcess {..} =
    Core.object
      ( Core.catMaybes
          [ ("duration" Core..=) Core.<$> duration,
            ("functionName" Core..=) Core.<$> functionName,
            ("processStatus" Core..=) Core.<$> processStatus,
            ("processType" Core..=) Core.<$> processType,
            ("projectName" Core..=) Core.<$> projectName,
            ("startTime" Core..=) Core.<$> startTime,
            ("userAccessLevel" Core..=)
              Core.<$> userAccessLevel
          ]
      )

-- | A simple user profile resource.
--
-- /See:/ 'newGoogleAppsScriptTypeUser' smart constructor.
data GoogleAppsScriptTypeUser = GoogleAppsScriptTypeUser
  { -- | The user\'s domain.
    domain :: (Core.Maybe Core.Text),
    -- | The user\'s identifying email address.
    email :: (Core.Maybe Core.Text),
    -- | The user\'s display name.
    name :: (Core.Maybe Core.Text),
    -- | The user\'s photo.
    photoUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeUser' with the minimum fields required to make a request.
newGoogleAppsScriptTypeUser ::
  GoogleAppsScriptTypeUser
newGoogleAppsScriptTypeUser =
  GoogleAppsScriptTypeUser
    { domain = Core.Nothing,
      email = Core.Nothing,
      name = Core.Nothing,
      photoUrl = Core.Nothing
    }

instance Core.FromJSON GoogleAppsScriptTypeUser where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeUser"
      ( \o ->
          GoogleAppsScriptTypeUser
            Core.<$> (o Core..:? "domain")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "photoUrl")
      )

instance Core.ToJSON GoogleAppsScriptTypeUser where
  toJSON GoogleAppsScriptTypeUser {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("email" Core..=) Core.<$> email,
            ("name" Core..=) Core.<$> name,
            ("photoUrl" Core..=) Core.<$> photoUrl
          ]
      )

-- | Web app entry point configuration.
--
-- /See:/ 'newGoogleAppsScriptTypeWebAppConfig' smart constructor.
data GoogleAppsScriptTypeWebAppConfig = GoogleAppsScriptTypeWebAppConfig
  { -- | Who has permission to run the web app.
    access :: (Core.Maybe GoogleAppsScriptTypeWebAppConfig_Access),
    -- | Who to execute the web app as.
    executeAs :: (Core.Maybe GoogleAppsScriptTypeWebAppConfig_ExecuteAs)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeWebAppConfig' with the minimum fields required to make a request.
newGoogleAppsScriptTypeWebAppConfig ::
  GoogleAppsScriptTypeWebAppConfig
newGoogleAppsScriptTypeWebAppConfig =
  GoogleAppsScriptTypeWebAppConfig
    { access = Core.Nothing,
      executeAs = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsScriptTypeWebAppConfig
  where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeWebAppConfig"
      ( \o ->
          GoogleAppsScriptTypeWebAppConfig
            Core.<$> (o Core..:? "access")
            Core.<*> (o Core..:? "executeAs")
      )

instance Core.ToJSON GoogleAppsScriptTypeWebAppConfig where
  toJSON GoogleAppsScriptTypeWebAppConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("access" Core..=) Core.<$> access,
            ("executeAs" Core..=) Core.<$> executeAs
          ]
      )

-- | A web application entry point.
--
-- /See:/ 'newGoogleAppsScriptTypeWebAppEntryPoint' smart constructor.
data GoogleAppsScriptTypeWebAppEntryPoint = GoogleAppsScriptTypeWebAppEntryPoint
  { -- | The entry point\'s configuration.
    entryPointConfig :: (Core.Maybe GoogleAppsScriptTypeWebAppConfig),
    -- | The URL for the web application.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAppsScriptTypeWebAppEntryPoint' with the minimum fields required to make a request.
newGoogleAppsScriptTypeWebAppEntryPoint ::
  GoogleAppsScriptTypeWebAppEntryPoint
newGoogleAppsScriptTypeWebAppEntryPoint =
  GoogleAppsScriptTypeWebAppEntryPoint
    { entryPointConfig = Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleAppsScriptTypeWebAppEntryPoint
  where
  parseJSON =
    Core.withObject
      "GoogleAppsScriptTypeWebAppEntryPoint"
      ( \o ->
          GoogleAppsScriptTypeWebAppEntryPoint
            Core.<$> (o Core..:? "entryPointConfig")
            Core.<*> (o Core..:? "url")
      )

instance
  Core.ToJSON
    GoogleAppsScriptTypeWebAppEntryPoint
  where
  toJSON GoogleAppsScriptTypeWebAppEntryPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("entryPointConfig" Core..=)
              Core.<$> entryPointConfig,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Response with the list of deployments for the specified Apps Script project.
--
-- /See:/ 'newListDeploymentsResponse' smart constructor.
data ListDeploymentsResponse = ListDeploymentsResponse
  { -- | The list of deployments.
    deployments :: (Core.Maybe [Deployment]),
    -- | The token that can be used in the next call to get the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDeploymentsResponse' with the minimum fields required to make a request.
newListDeploymentsResponse ::
  ListDeploymentsResponse
newListDeploymentsResponse =
  ListDeploymentsResponse
    { deployments = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDeploymentsResponse where
  parseJSON =
    Core.withObject
      "ListDeploymentsResponse"
      ( \o ->
          ListDeploymentsResponse
            Core.<$> (o Core..:? "deployments" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDeploymentsResponse where
  toJSON ListDeploymentsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deployments" Core..=) Core.<$> deployments,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response with the list of Process resources.
--
-- /See:/ 'newListScriptProcessesResponse' smart constructor.
data ListScriptProcessesResponse = ListScriptProcessesResponse
  { -- | Token for the next page of results. If empty, there are no more pages remaining.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of processes matching request parameters.
    processes :: (Core.Maybe [GoogleAppsScriptTypeProcess])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListScriptProcessesResponse' with the minimum fields required to make a request.
newListScriptProcessesResponse ::
  ListScriptProcessesResponse
newListScriptProcessesResponse =
  ListScriptProcessesResponse
    { nextPageToken = Core.Nothing,
      processes = Core.Nothing
    }

instance Core.FromJSON ListScriptProcessesResponse where
  parseJSON =
    Core.withObject
      "ListScriptProcessesResponse"
      ( \o ->
          ListScriptProcessesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "processes" Core..!= Core.mempty)
      )

instance Core.ToJSON ListScriptProcessesResponse where
  toJSON ListScriptProcessesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("processes" Core..=) Core.<$> processes
          ]
      )

-- | Response with the list of Process resources.
--
-- /See:/ 'newListUserProcessesResponse' smart constructor.
data ListUserProcessesResponse = ListUserProcessesResponse
  { -- | Token for the next page of results. If empty, there are no more pages remaining.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of processes matching request parameters.
    processes :: (Core.Maybe [GoogleAppsScriptTypeProcess])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUserProcessesResponse' with the minimum fields required to make a request.
newListUserProcessesResponse ::
  ListUserProcessesResponse
newListUserProcessesResponse =
  ListUserProcessesResponse
    { nextPageToken = Core.Nothing,
      processes = Core.Nothing
    }

instance Core.FromJSON ListUserProcessesResponse where
  parseJSON =
    Core.withObject
      "ListUserProcessesResponse"
      ( \o ->
          ListUserProcessesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "processes" Core..!= Core.mempty)
      )

instance Core.ToJSON ListUserProcessesResponse where
  toJSON ListUserProcessesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("processes" Core..=) Core.<$> processes
          ]
      )

-- | @ListValue@ is a wrapper around a repeated field of values.
--
-- /See:/ 'newListValue' smart constructor.
newtype ListValue = ListValue
  { -- | Repeated field of dynamically typed values.
    values :: (Core.Maybe [Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListValue' with the minimum fields required to make a request.
newListValue ::
  ListValue
newListValue = ListValue {values = Core.Nothing}

instance Core.FromJSON ListValue where
  parseJSON =
    Core.withObject
      "ListValue"
      ( \o ->
          ListValue
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON ListValue where
  toJSON ListValue {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Response with the list of the versions for the specified script project.
--
-- /See:/ 'newListVersionsResponse' smart constructor.
data ListVersionsResponse = ListVersionsResponse
  { -- | The token use to fetch the next page of records. if not exist in the response, that means no more versions to list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of versions.
    versions :: (Core.Maybe [Version])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListVersionsResponse' with the minimum fields required to make a request.
newListVersionsResponse ::
  ListVersionsResponse
newListVersionsResponse =
  ListVersionsResponse {nextPageToken = Core.Nothing, versions = Core.Nothing}

instance Core.FromJSON ListVersionsResponse where
  parseJSON =
    Core.withObject
      "ListVersionsResponse"
      ( \o ->
          ListVersionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "versions" Core..!= Core.mempty)
      )

instance Core.ToJSON ListVersionsResponse where
  toJSON ListVersionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("versions" Core..=) Core.<$> versions
          ]
      )

-- | Resource containing usage stats for a given script, based on the supplied filter and mask present in the request.
--
-- /See:/ 'newMetrics' smart constructor.
data Metrics = Metrics
  { -- | Number of active users.
    activeUsers :: (Core.Maybe [MetricsValue]),
    -- | Number of failed executions.
    failedExecutions :: (Core.Maybe [MetricsValue]),
    -- | Number of total executions.
    totalExecutions :: (Core.Maybe [MetricsValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metrics' with the minimum fields required to make a request.
newMetrics ::
  Metrics
newMetrics =
  Metrics
    { activeUsers = Core.Nothing,
      failedExecutions = Core.Nothing,
      totalExecutions = Core.Nothing
    }

instance Core.FromJSON Metrics where
  parseJSON =
    Core.withObject
      "Metrics"
      ( \o ->
          Metrics
            Core.<$> (o Core..:? "activeUsers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "failedExecutions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "totalExecutions" Core..!= Core.mempty)
      )

instance Core.ToJSON Metrics where
  toJSON Metrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeUsers" Core..=) Core.<$> activeUsers,
            ("failedExecutions" Core..=)
              Core.<$> failedExecutions,
            ("totalExecutions" Core..=)
              Core.<$> totalExecutions
          ]
      )

-- | Metrics value that holds number of executions counted.
--
-- /See:/ 'newMetricsValue' smart constructor.
data MetricsValue = MetricsValue
  { -- | Required field indicating the end time of the interval.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Required field indicating the start time of the interval.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Indicates the number of executions counted.
    value :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricsValue' with the minimum fields required to make a request.
newMetricsValue ::
  MetricsValue
newMetricsValue =
  MetricsValue
    { endTime = Core.Nothing,
      startTime = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON MetricsValue where
  parseJSON =
    Core.withObject
      "MetricsValue"
      ( \o ->
          MetricsValue
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON MetricsValue where
  toJSON MetricsValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime,
            ("value" Core..=) Core.. Core.AsText Core.<$> value
          ]
      )

-- | A representation of an execution of an Apps Script function started with run. The execution response does not arrive until the function finishes executing. The maximum execution runtime is listed in the </apps-script/guides/services/quotas#current_limitations Apps Script quotas guide>. After execution has started, it can have one of four outcomes: - If the script function returns successfully, the response field contains an ExecutionResponse object with the function\'s return value in the object\'s @result@ field. - If the script function (or Apps Script itself) throws an exception, the error field contains a Status object. The @Status@ object\'s @details@ field contains an array with a single ExecutionError object that provides information about the nature of the error. - If the execution has not yet completed, the done field is @false@ and the neither the @response@ nor @error@ fields are present. - If the @run@ call itself fails (for example, because of a malformed request or an authorization error), the
-- method returns an HTTP response code in the 4XX range with a different format for the response body. Client libraries automatically convert a 4XX response into an exception class.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | This field indicates whether the script execution has completed. A completed execution has a populated @response@ field containing the ExecutionResponse from function that was executed.
    done :: (Core.Maybe Core.Bool),
    -- | If a @run@ call succeeds but the script function (or Apps Script itself) throws an exception, this field contains a Status object. The @Status@ object\'s @details@ field contains an array with a single ExecutionError object that provides information about the nature of the error.
    error :: (Core.Maybe Status),
    -- | If the script function returns successfully, this field contains an ExecutionResponse object with the function\'s return value.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation {done = Core.Nothing, error = Core.Nothing, response = Core.Nothing}

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | If the script function returns successfully, this field contains an ExecutionResponse object with the function\'s return value.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | The script project resource.
--
-- /See:/ 'newProject' smart constructor.
data Project = Project
  { -- | When the script was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | User who originally created the script.
    creator :: (Core.Maybe GoogleAppsScriptTypeUser),
    -- | User who last modified the script.
    lastModifyUser :: (Core.Maybe GoogleAppsScriptTypeUser),
    -- | The parent\'s Drive ID that the script will be attached to. This is usually the ID of a Google Document or Google Sheet. This filed is optional, and if not set, a stand-alone script will be created.
    parentId :: (Core.Maybe Core.Text),
    -- | The script project\'s Drive ID.
    scriptId :: (Core.Maybe Core.Text),
    -- | The title for the project.
    title :: (Core.Maybe Core.Text),
    -- | When the script was last updated.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
newProject ::
  Project
newProject =
  Project
    { createTime = Core.Nothing,
      creator = Core.Nothing,
      lastModifyUser = Core.Nothing,
      parentId = Core.Nothing,
      scriptId = Core.Nothing,
      title = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Project where
  parseJSON =
    Core.withObject
      "Project"
      ( \o ->
          Project
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "creator")
            Core.<*> (o Core..:? "lastModifyUser")
            Core.<*> (o Core..:? "parentId")
            Core.<*> (o Core..:? "scriptId")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Project where
  toJSON Project {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("creator" Core..=) Core.<$> creator,
            ("lastModifyUser" Core..=) Core.<$> lastModifyUser,
            ("parentId" Core..=) Core.<$> parentId,
            ("scriptId" Core..=) Core.<$> scriptId,
            ("title" Core..=) Core.<$> title,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The result of an execution.
--
-- /See:/ 'newScriptExecutionResult' smart constructor.
newtype ScriptExecutionResult = ScriptExecutionResult
  { -- | The returned value of the execution.
    returnValue :: (Core.Maybe Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptExecutionResult' with the minimum fields required to make a request.
newScriptExecutionResult ::
  ScriptExecutionResult
newScriptExecutionResult = ScriptExecutionResult {returnValue = Core.Nothing}

instance Core.FromJSON ScriptExecutionResult where
  parseJSON =
    Core.withObject
      "ScriptExecutionResult"
      ( \o ->
          ScriptExecutionResult
            Core.<$> (o Core..:? "returnValue")
      )

instance Core.ToJSON ScriptExecutionResult where
  toJSON ScriptExecutionResult {..} =
    Core.object
      ( Core.catMaybes
          [("returnValue" Core..=) Core.<$> returnValue]
      )

-- | A stack trace through the script that shows where the execution failed.
--
-- /See:/ 'newScriptStackTraceElement' smart constructor.
data ScriptStackTraceElement = ScriptStackTraceElement
  { -- | The name of the function that failed.
    function :: (Core.Maybe Core.Text),
    -- | The line number where the script failed.
    lineNumber :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptStackTraceElement' with the minimum fields required to make a request.
newScriptStackTraceElement ::
  ScriptStackTraceElement
newScriptStackTraceElement =
  ScriptStackTraceElement {function = Core.Nothing, lineNumber = Core.Nothing}

instance Core.FromJSON ScriptStackTraceElement where
  parseJSON =
    Core.withObject
      "ScriptStackTraceElement"
      ( \o ->
          ScriptStackTraceElement
            Core.<$> (o Core..:? "function")
            Core.<*> (o Core..:? "lineNumber")
      )

instance Core.ToJSON ScriptStackTraceElement where
  toJSON ScriptStackTraceElement {..} =
    Core.object
      ( Core.catMaybes
          [ ("function" Core..=) Core.<$> function,
            ("lineNumber" Core..=) Core.<$> lineNumber
          ]
      )

-- | If a @run@ call succeeds but the script function (or Apps Script itself) throws an exception, the response body\'s error field contains this @Status@ object.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code. For this API, this value either: - 10, indicating a @SCRIPT_TIMEOUT@ error, - 3, indicating an @INVALID_ARGUMENT@ error, or - 1, indicating a @CANCELLED@ execution.
    code :: (Core.Maybe Core.Int32),
    -- | An array that contains a single ExecutionError object that provides information about the nature of the error.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which is in English. Any user-facing error message is localized and sent in the details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

-- | @Struct@ represents a structured data value, consisting of fields which map to dynamically typed values.
--
-- /See:/ 'newStruct' smart constructor.
newtype Struct = Struct
  { -- | Unordered map of dynamically typed values.
    fields :: (Core.Maybe Struct_Fields)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Struct' with the minimum fields required to make a request.
newStruct ::
  Struct
newStruct = Struct {fields = Core.Nothing}

instance Core.FromJSON Struct where
  parseJSON =
    Core.withObject
      "Struct"
      (\o -> Struct Core.<$> (o Core..:? "fields"))

instance Core.ToJSON Struct where
  toJSON Struct {..} =
    Core.object
      (Core.catMaybes [("fields" Core..=) Core.<$> fields])

-- | Unordered map of dynamically typed values.
--
-- /See:/ 'newStruct_Fields' smart constructor.
newtype Struct_Fields = Struct_Fields
  { -- |
    addtional :: (Core.HashMap Core.Text Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Struct_Fields' with the minimum fields required to make a request.
newStruct_Fields ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Value ->
  Struct_Fields
newStruct_Fields addtional = Struct_Fields {addtional = addtional}

instance Core.FromJSON Struct_Fields where
  parseJSON =
    Core.withObject
      "Struct_Fields"
      ( \o ->
          Struct_Fields Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Struct_Fields where
  toJSON Struct_Fields {..} = Core.toJSON addtional

-- | Request with deployment information to update an existing deployment.
--
-- /See:/ 'newUpdateDeploymentRequest' smart constructor.
newtype UpdateDeploymentRequest = UpdateDeploymentRequest
  { -- | The deployment configuration.
    deploymentConfig :: (Core.Maybe DeploymentConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDeploymentRequest' with the minimum fields required to make a request.
newUpdateDeploymentRequest ::
  UpdateDeploymentRequest
newUpdateDeploymentRequest =
  UpdateDeploymentRequest {deploymentConfig = Core.Nothing}

instance Core.FromJSON UpdateDeploymentRequest where
  parseJSON =
    Core.withObject
      "UpdateDeploymentRequest"
      ( \o ->
          UpdateDeploymentRequest
            Core.<$> (o Core..:? "deploymentConfig")
      )

instance Core.ToJSON UpdateDeploymentRequest where
  toJSON UpdateDeploymentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deploymentConfig" Core..=)
              Core.<$> deploymentConfig
          ]
      )

-- | @Value@ represents a dynamically typed value which is the outcome of an executed script.
--
-- /See:/ 'newValue' smart constructor.
data Value = Value
  { -- | Represents a boolean value.
    boolValue :: (Core.Maybe Core.Bool),
    -- | Represents raw byte values.
    bytesValue :: (Core.Maybe Core.Base64),
    -- | Represents a date in ms since the epoch.
    dateValue :: (Core.Maybe Core.Int64),
    -- | Represents a repeated @Value@.
    listValue :: (Core.Maybe ListValue),
    -- | Represents a null value.
    nullValue :: (Core.Maybe Value_NullValue),
    -- | Represents a double value.
    numberValue :: (Core.Maybe Core.Double),
    -- | Represents a structured proto value.
    protoValue :: (Core.Maybe Value_ProtoValue),
    -- | Represents a string value.
    stringValue :: (Core.Maybe Core.Text),
    -- | Represents a structured value.
    structValue :: (Core.Maybe Struct)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
newValue ::
  Value
newValue =
  Value
    { boolValue = Core.Nothing,
      bytesValue = Core.Nothing,
      dateValue = Core.Nothing,
      listValue = Core.Nothing,
      nullValue = Core.Nothing,
      numberValue = Core.Nothing,
      protoValue = Core.Nothing,
      stringValue = Core.Nothing,
      structValue = Core.Nothing
    }

instance Core.FromJSON Value where
  parseJSON =
    Core.withObject
      "Value"
      ( \o ->
          Value
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "bytesValue")
            Core.<*> (o Core..:? "dateValue")
            Core.<*> (o Core..:? "listValue")
            Core.<*> (o Core..:? "nullValue")
            Core.<*> (o Core..:? "numberValue")
            Core.<*> (o Core..:? "protoValue")
            Core.<*> (o Core..:? "stringValue")
            Core.<*> (o Core..:? "structValue")
      )

instance Core.ToJSON Value where
  toJSON Value {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("bytesValue" Core..=) Core.<$> bytesValue,
            ("dateValue" Core..=) Core.. Core.AsText
              Core.<$> dateValue,
            ("listValue" Core..=) Core.<$> listValue,
            ("nullValue" Core..=) Core.<$> nullValue,
            ("numberValue" Core..=) Core.<$> numberValue,
            ("protoValue" Core..=) Core.<$> protoValue,
            ("stringValue" Core..=) Core.<$> stringValue,
            ("structValue" Core..=) Core.<$> structValue
          ]
      )

-- | Represents a structured proto value.
--
-- /See:/ 'newValue_ProtoValue' smart constructor.
newtype Value_ProtoValue = Value_ProtoValue
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Value_ProtoValue' with the minimum fields required to make a request.
newValue_ProtoValue ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Value_ProtoValue
newValue_ProtoValue addtional = Value_ProtoValue {addtional = addtional}

instance Core.FromJSON Value_ProtoValue where
  parseJSON =
    Core.withObject
      "Value_ProtoValue"
      ( \o ->
          Value_ProtoValue Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Value_ProtoValue where
  toJSON Value_ProtoValue {..} = Core.toJSON addtional

-- | A resource representing a script project version. A version is a \"snapshot\" of a script project and is similar to a read-only branched release. When creating deployments, the version to use must be specified.
--
-- /See:/ 'newVersion' smart constructor.
data Version = Version
  { -- | When the version was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The description for this version.
    description :: (Core.Maybe Core.Text),
    -- | The script project\'s Drive ID.
    scriptId :: (Core.Maybe Core.Text),
    -- | The incremental ID that is created by Apps Script when a version is created. This is system assigned number and is immutable once created.
    versionNumber :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Version' with the minimum fields required to make a request.
newVersion ::
  Version
newVersion =
  Version
    { createTime = Core.Nothing,
      description = Core.Nothing,
      scriptId = Core.Nothing,
      versionNumber = Core.Nothing
    }

instance Core.FromJSON Version where
  parseJSON =
    Core.withObject
      "Version"
      ( \o ->
          Version
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "scriptId")
            Core.<*> (o Core..:? "versionNumber")
      )

instance Core.ToJSON Version where
  toJSON Version {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("scriptId" Core..=) Core.<$> scriptId,
            ("versionNumber" Core..=) Core.<$> versionNumber
          ]
      )

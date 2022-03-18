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
-- Module      : Network.Google.Debugger.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Debugger.Internal.Product
  ( -- * AliasContext
    AliasContext (..),
    newAliasContext,

    -- * Breakpoint
    Breakpoint (..),
    newBreakpoint,

    -- * Breakpoint_Labels
    Breakpoint_Labels (..),
    newBreakpoint_Labels,

    -- * CloudRepoSourceContext
    CloudRepoSourceContext (..),
    newCloudRepoSourceContext,

    -- * CloudWorkspaceId
    CloudWorkspaceId (..),
    newCloudWorkspaceId,

    -- * CloudWorkspaceSourceContext
    CloudWorkspaceSourceContext (..),
    newCloudWorkspaceSourceContext,

    -- * Debuggee
    Debuggee (..),
    newDebuggee,

    -- * Debuggee_Labels
    Debuggee_Labels (..),
    newDebuggee_Labels,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * ExtendedSourceContext
    ExtendedSourceContext (..),
    newExtendedSourceContext,

    -- * ExtendedSourceContext_Labels
    ExtendedSourceContext_Labels (..),
    newExtendedSourceContext_Labels,

    -- * FormatMessage
    FormatMessage (..),
    newFormatMessage,

    -- * GerritSourceContext
    GerritSourceContext (..),
    newGerritSourceContext,

    -- * GetBreakpointResponse
    GetBreakpointResponse (..),
    newGetBreakpointResponse,

    -- * GitSourceContext
    GitSourceContext (..),
    newGitSourceContext,

    -- * ListActiveBreakpointsResponse
    ListActiveBreakpointsResponse (..),
    newListActiveBreakpointsResponse,

    -- * ListBreakpointsResponse
    ListBreakpointsResponse (..),
    newListBreakpointsResponse,

    -- * ListDebuggeesResponse
    ListDebuggeesResponse (..),
    newListDebuggeesResponse,

    -- * ProjectRepoId
    ProjectRepoId (..),
    newProjectRepoId,

    -- * RegisterDebuggeeRequest
    RegisterDebuggeeRequest (..),
    newRegisterDebuggeeRequest,

    -- * RegisterDebuggeeResponse
    RegisterDebuggeeResponse (..),
    newRegisterDebuggeeResponse,

    -- * RepoId
    RepoId (..),
    newRepoId,

    -- * SetBreakpointResponse
    SetBreakpointResponse (..),
    newSetBreakpointResponse,

    -- * SourceContext
    SourceContext (..),
    newSourceContext,

    -- * SourceLocation
    SourceLocation (..),
    newSourceLocation,

    -- * StackFrame
    StackFrame (..),
    newStackFrame,

    -- * StatusMessage
    StatusMessage (..),
    newStatusMessage,

    -- * UpdateActiveBreakpointRequest
    UpdateActiveBreakpointRequest (..),
    newUpdateActiveBreakpointRequest,

    -- * UpdateActiveBreakpointResponse
    UpdateActiveBreakpointResponse (..),
    newUpdateActiveBreakpointResponse,

    -- * Variable
    Variable (..),
    newVariable,
  )
where

import Network.Google.Debugger.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | An alias to a repo revision.
--
-- /See:/ 'newAliasContext' smart constructor.
data AliasContext = AliasContext
  { -- | The alias kind.
    kind :: (Core.Maybe AliasContext_Kind),
    -- | The alias name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AliasContext' with the minimum fields required to make a request.
newAliasContext ::
  AliasContext
newAliasContext = AliasContext {kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON AliasContext where
  parseJSON =
    Core.withObject
      "AliasContext"
      ( \o ->
          AliasContext
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AliasContext where
  toJSON AliasContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | ------------------------------------------------------------------------------ ## Breakpoint (the resource) Represents the breakpoint specification, status and results.
--
-- /See:/ 'newBreakpoint' smart constructor.
data Breakpoint = Breakpoint
  { -- | Action that the agent should perform when the code at the breakpoint location is hit.
    action :: (Core.Maybe Breakpoint_Action),
    -- | The deadline for the breakpoint to stay in CANARY/ACTIVE state. The value is meaningless when the breakpoint is not in CANARY/ACTIVE state.
    canaryExpireTime :: (Core.Maybe Core.DateTime'),
    -- | Condition that triggers the breakpoint. The condition is a compound boolean expression composed using expressions in a programming language at the source location.
    condition :: (Core.Maybe Core.Text),
    -- | Time this breakpoint was created by the server in seconds resolution.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Values of evaluated expressions at breakpoint time. The evaluated expressions appear in exactly the same order they are listed in the @expressions@ field. The @name@ field holds the original expression text, the @value@ or @members@ field holds the result of the evaluated expression. If the expression cannot be evaluated, the @status@ inside the @Variable@ will indicate an error and contain the error text.
    evaluatedExpressions :: (Core.Maybe [Variable]),
    -- | List of read-only expressions to evaluate at the breakpoint location. The expressions are composed using expressions in the programming language at the source location. If the breakpoint action is @LOG@, the evaluated expressions are included in log statements.
    expressions :: (Core.Maybe [Core.Text]),
    -- | Time this breakpoint was finalized as seen by the server in seconds resolution.
    finalTime :: (Core.Maybe Core.DateTime'),
    -- | Breakpoint identifier, unique in the scope of the debuggee.
    id :: (Core.Maybe Core.Text),
    -- | When true, indicates that this is a final result and the breakpoint state will not change from here on.
    isFinalState :: (Core.Maybe Core.Bool),
    -- | A set of custom breakpoint properties, populated by the agent, to be displayed to the user.
    labels :: (Core.Maybe Breakpoint_Labels),
    -- | Breakpoint source location.
    location :: (Core.Maybe SourceLocation),
    -- | Indicates the severity of the log. Only relevant when action is @LOG@.
    logLevel :: (Core.Maybe Breakpoint_LogLevel),
    -- | Only relevant when action is @LOG@. Defines the message to log when the breakpoint hits. The message may include parameter placeholders @$0@, @$1@, etc. These placeholders are replaced with the evaluated value of the appropriate expression. Expressions not referenced in @log_message_format@ are not logged. Example: @Message received, id = $0, count = $1@ with @expressions@ = @[ message.id, message.count ]@.
    logMessageFormat :: (Core.Maybe Core.Text),
    -- | The stack at breakpoint time, where stack_frames[0] represents the most recently entered function.
    stackFrames :: (Core.Maybe [StackFrame]),
    -- | The current state of the breakpoint.
    state :: (Core.Maybe Breakpoint_State),
    -- | Breakpoint status. The status includes an error flag and a human readable message. This field is usually unset. The message can be either informational or an error message. Regardless, clients should always display the text message back to the user. Error status indicates complete failure of the breakpoint. Example (non-final state): @Still loading symbols...@ Examples (final state): * @Invalid line number@ referring to location * @Field f not found in class C@ referring to condition
    status :: (Core.Maybe StatusMessage),
    -- | E-mail address of the user that created this breakpoint
    userEmail :: (Core.Maybe Core.Text),
    -- | The @variable_table@ exists to aid with computation, memory and network traffic optimization. It enables storing a variable once and reference it from multiple variables, including variables stored in the @variable_table@ itself. For example, the same @this@ object, which may appear at many levels of the stack, can have all of its data stored once in this table. The stack frame variables then would hold only a reference to it. The variable @var_table_index@ field is an index into this repeated field. The stored objects are nameless and get their name from the referencing variable. The effective variable is a merge of the referencing variable and the referenced variable.
    variableTable :: (Core.Maybe [Variable])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Breakpoint' with the minimum fields required to make a request.
newBreakpoint ::
  Breakpoint
newBreakpoint =
  Breakpoint
    { action = Core.Nothing,
      canaryExpireTime = Core.Nothing,
      condition = Core.Nothing,
      createTime = Core.Nothing,
      evaluatedExpressions = Core.Nothing,
      expressions = Core.Nothing,
      finalTime = Core.Nothing,
      id = Core.Nothing,
      isFinalState = Core.Nothing,
      labels = Core.Nothing,
      location = Core.Nothing,
      logLevel = Core.Nothing,
      logMessageFormat = Core.Nothing,
      stackFrames = Core.Nothing,
      state = Core.Nothing,
      status = Core.Nothing,
      userEmail = Core.Nothing,
      variableTable = Core.Nothing
    }

instance Core.FromJSON Breakpoint where
  parseJSON =
    Core.withObject
      "Breakpoint"
      ( \o ->
          Breakpoint
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "canaryExpireTime")
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "createTime")
            Core.<*> ( o Core..:? "evaluatedExpressions"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "expressions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "finalTime")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isFinalState")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "logLevel")
            Core.<*> (o Core..:? "logMessageFormat")
            Core.<*> (o Core..:? "stackFrames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "userEmail")
            Core.<*> (o Core..:? "variableTable" Core..!= Core.mempty)
      )

instance Core.ToJSON Breakpoint where
  toJSON Breakpoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("canaryExpireTime" Core..=)
              Core.<$> canaryExpireTime,
            ("condition" Core..=) Core.<$> condition,
            ("createTime" Core..=) Core.<$> createTime,
            ("evaluatedExpressions" Core..=)
              Core.<$> evaluatedExpressions,
            ("expressions" Core..=) Core.<$> expressions,
            ("finalTime" Core..=) Core.<$> finalTime,
            ("id" Core..=) Core.<$> id,
            ("isFinalState" Core..=) Core.<$> isFinalState,
            ("labels" Core..=) Core.<$> labels,
            ("location" Core..=) Core.<$> location,
            ("logLevel" Core..=) Core.<$> logLevel,
            ("logMessageFormat" Core..=)
              Core.<$> logMessageFormat,
            ("stackFrames" Core..=) Core.<$> stackFrames,
            ("state" Core..=) Core.<$> state,
            ("status" Core..=) Core.<$> status,
            ("userEmail" Core..=) Core.<$> userEmail,
            ("variableTable" Core..=) Core.<$> variableTable
          ]
      )

-- | A set of custom breakpoint properties, populated by the agent, to be displayed to the user.
--
-- /See:/ 'newBreakpoint_Labels' smart constructor.
newtype Breakpoint_Labels = Breakpoint_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Breakpoint_Labels' with the minimum fields required to make a request.
newBreakpoint_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Breakpoint_Labels
newBreakpoint_Labels addtional = Breakpoint_Labels {addtional = addtional}

instance Core.FromJSON Breakpoint_Labels where
  parseJSON =
    Core.withObject
      "Breakpoint_Labels"
      ( \o ->
          Breakpoint_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Breakpoint_Labels where
  toJSON Breakpoint_Labels {..} = Core.toJSON addtional

-- | A CloudRepoSourceContext denotes a particular revision in a cloud repo (a repo hosted by the Google Cloud Platform).
--
-- /See:/ 'newCloudRepoSourceContext' smart constructor.
data CloudRepoSourceContext = CloudRepoSourceContext
  { -- | An alias, which may be a branch or tag.
    aliasContext :: (Core.Maybe AliasContext),
    -- | The name of an alias (branch, tag, etc.).
    aliasName :: (Core.Maybe Core.Text),
    -- | The ID of the repo.
    repoId :: (Core.Maybe RepoId),
    -- | A revision ID.
    revisionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudRepoSourceContext' with the minimum fields required to make a request.
newCloudRepoSourceContext ::
  CloudRepoSourceContext
newCloudRepoSourceContext =
  CloudRepoSourceContext
    { aliasContext = Core.Nothing,
      aliasName = Core.Nothing,
      repoId = Core.Nothing,
      revisionId = Core.Nothing
    }

instance Core.FromJSON CloudRepoSourceContext where
  parseJSON =
    Core.withObject
      "CloudRepoSourceContext"
      ( \o ->
          CloudRepoSourceContext
            Core.<$> (o Core..:? "aliasContext")
            Core.<*> (o Core..:? "aliasName")
            Core.<*> (o Core..:? "repoId")
            Core.<*> (o Core..:? "revisionId")
      )

instance Core.ToJSON CloudRepoSourceContext where
  toJSON CloudRepoSourceContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("aliasContext" Core..=) Core.<$> aliasContext,
            ("aliasName" Core..=) Core.<$> aliasName,
            ("repoId" Core..=) Core.<$> repoId,
            ("revisionId" Core..=) Core.<$> revisionId
          ]
      )

-- | A CloudWorkspaceId is a unique identifier for a cloud workspace. A cloud workspace is a place associated with a repo where modified files can be stored before they are committed.
--
-- /See:/ 'newCloudWorkspaceId' smart constructor.
data CloudWorkspaceId = CloudWorkspaceId
  { -- | The unique name of the workspace within the repo. This is the name chosen by the client in the Source API\'s CreateWorkspace method.
    name :: (Core.Maybe Core.Text),
    -- | The ID of the repo containing the workspace.
    repoId :: (Core.Maybe RepoId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudWorkspaceId' with the minimum fields required to make a request.
newCloudWorkspaceId ::
  CloudWorkspaceId
newCloudWorkspaceId =
  CloudWorkspaceId {name = Core.Nothing, repoId = Core.Nothing}

instance Core.FromJSON CloudWorkspaceId where
  parseJSON =
    Core.withObject
      "CloudWorkspaceId"
      ( \o ->
          CloudWorkspaceId
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "repoId")
      )

instance Core.ToJSON CloudWorkspaceId where
  toJSON CloudWorkspaceId {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("repoId" Core..=) Core.<$> repoId
          ]
      )

-- | A CloudWorkspaceSourceContext denotes a workspace at a particular snapshot.
--
-- /See:/ 'newCloudWorkspaceSourceContext' smart constructor.
data CloudWorkspaceSourceContext = CloudWorkspaceSourceContext
  { -- | The ID of the snapshot. An empty snapshot_id refers to the most recent snapshot.
    snapshotId :: (Core.Maybe Core.Text),
    -- | The ID of the workspace.
    workspaceId :: (Core.Maybe CloudWorkspaceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudWorkspaceSourceContext' with the minimum fields required to make a request.
newCloudWorkspaceSourceContext ::
  CloudWorkspaceSourceContext
newCloudWorkspaceSourceContext =
  CloudWorkspaceSourceContext
    { snapshotId = Core.Nothing,
      workspaceId = Core.Nothing
    }

instance Core.FromJSON CloudWorkspaceSourceContext where
  parseJSON =
    Core.withObject
      "CloudWorkspaceSourceContext"
      ( \o ->
          CloudWorkspaceSourceContext
            Core.<$> (o Core..:? "snapshotId")
            Core.<*> (o Core..:? "workspaceId")
      )

instance Core.ToJSON CloudWorkspaceSourceContext where
  toJSON CloudWorkspaceSourceContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("snapshotId" Core..=) Core.<$> snapshotId,
            ("workspaceId" Core..=) Core.<$> workspaceId
          ]
      )

-- | Represents the debugged application. The application may include one or more replicated processes executing the same code. Each of these processes is attached with a debugger agent, carrying out the debugging commands. Agents attached to the same debuggee identify themselves as such by using exactly the same Debuggee message value when registering.
--
-- /See:/ 'newDebuggee' smart constructor.
data Debuggee = Debuggee
  { -- | Version ID of the agent. Schema: @domain\/language-platform\/vmajor.minor@ (for example @google.com\/java-gcp\/v1.1@).
    agentVersion :: (Core.Maybe Core.Text),
    -- | Used when setting breakpoint canary for this debuggee.
    canaryMode :: (Core.Maybe Debuggee_CanaryMode),
    -- | Human readable description of the debuggee. Including a human-readable project name, environment name and version information is recommended.
    description :: (Core.Maybe Core.Text),
    -- | References to the locations and revisions of the source code used in the deployed application.
    extSourceContexts :: (Core.Maybe [ExtendedSourceContext]),
    -- | Unique identifier for the debuggee generated by the controller service.
    id :: (Core.Maybe Core.Text),
    -- | If set to @true@, indicates that the agent should disable itself and detach from the debuggee.
    isDisabled :: (Core.Maybe Core.Bool),
    -- | If set to @true@, indicates that Controller service does not detect any activity from the debuggee agents and the application is possibly stopped.
    isInactive :: (Core.Maybe Core.Bool),
    -- | A set of custom debuggee properties, populated by the agent, to be displayed to the user.
    labels :: (Core.Maybe Debuggee_Labels),
    -- | Project the debuggee is associated with. Use project number or id when registering a Google Cloud Platform project.
    project :: (Core.Maybe Core.Text),
    -- | References to the locations and revisions of the source code used in the deployed application.
    sourceContexts :: (Core.Maybe [SourceContext]),
    -- | Human readable message to be displayed to the user about this debuggee. Absence of this field indicates no status. The message can be either informational or an error status.
    status :: (Core.Maybe StatusMessage),
    -- | Uniquifier to further distinguish the application. It is possible that different applications might have identical values in the debuggee message, thus, incorrectly identified as a single application by the Controller service. This field adds salt to further distinguish the application. Agents should consider seeding this field with value that identifies the code, binary, configuration and environment.
    uniquifier :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Debuggee' with the minimum fields required to make a request.
newDebuggee ::
  Debuggee
newDebuggee =
  Debuggee
    { agentVersion = Core.Nothing,
      canaryMode = Core.Nothing,
      description = Core.Nothing,
      extSourceContexts = Core.Nothing,
      id = Core.Nothing,
      isDisabled = Core.Nothing,
      isInactive = Core.Nothing,
      labels = Core.Nothing,
      project = Core.Nothing,
      sourceContexts = Core.Nothing,
      status = Core.Nothing,
      uniquifier = Core.Nothing
    }

instance Core.FromJSON Debuggee where
  parseJSON =
    Core.withObject
      "Debuggee"
      ( \o ->
          Debuggee
            Core.<$> (o Core..:? "agentVersion")
            Core.<*> (o Core..:? "canaryMode")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "extSourceContexts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isDisabled")
            Core.<*> (o Core..:? "isInactive")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "project")
            Core.<*> (o Core..:? "sourceContexts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "uniquifier")
      )

instance Core.ToJSON Debuggee where
  toJSON Debuggee {..} =
    Core.object
      ( Core.catMaybes
          [ ("agentVersion" Core..=) Core.<$> agentVersion,
            ("canaryMode" Core..=) Core.<$> canaryMode,
            ("description" Core..=) Core.<$> description,
            ("extSourceContexts" Core..=)
              Core.<$> extSourceContexts,
            ("id" Core..=) Core.<$> id,
            ("isDisabled" Core..=) Core.<$> isDisabled,
            ("isInactive" Core..=) Core.<$> isInactive,
            ("labels" Core..=) Core.<$> labels,
            ("project" Core..=) Core.<$> project,
            ("sourceContexts" Core..=) Core.<$> sourceContexts,
            ("status" Core..=) Core.<$> status,
            ("uniquifier" Core..=) Core.<$> uniquifier
          ]
      )

-- | A set of custom debuggee properties, populated by the agent, to be displayed to the user.
--
-- /See:/ 'newDebuggee_Labels' smart constructor.
newtype Debuggee_Labels = Debuggee_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Debuggee_Labels' with the minimum fields required to make a request.
newDebuggee_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Debuggee_Labels
newDebuggee_Labels addtional = Debuggee_Labels {addtional = addtional}

instance Core.FromJSON Debuggee_Labels where
  parseJSON =
    Core.withObject
      "Debuggee_Labels"
      ( \o ->
          Debuggee_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Debuggee_Labels where
  toJSON Debuggee_Labels {..} = Core.toJSON addtional

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

-- | An ExtendedSourceContext is a SourceContext combined with additional details describing the context.
--
-- /See:/ 'newExtendedSourceContext' smart constructor.
data ExtendedSourceContext = ExtendedSourceContext
  { -- | Any source context.
    context :: (Core.Maybe SourceContext),
    -- | Labels with user defined metadata.
    labels :: (Core.Maybe ExtendedSourceContext_Labels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExtendedSourceContext' with the minimum fields required to make a request.
newExtendedSourceContext ::
  ExtendedSourceContext
newExtendedSourceContext =
  ExtendedSourceContext {context = Core.Nothing, labels = Core.Nothing}

instance Core.FromJSON ExtendedSourceContext where
  parseJSON =
    Core.withObject
      "ExtendedSourceContext"
      ( \o ->
          ExtendedSourceContext
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "labels")
      )

instance Core.ToJSON ExtendedSourceContext where
  toJSON ExtendedSourceContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("labels" Core..=) Core.<$> labels
          ]
      )

-- | Labels with user defined metadata.
--
-- /See:/ 'newExtendedSourceContext_Labels' smart constructor.
newtype ExtendedSourceContext_Labels = ExtendedSourceContext_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExtendedSourceContext_Labels' with the minimum fields required to make a request.
newExtendedSourceContext_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  ExtendedSourceContext_Labels
newExtendedSourceContext_Labels addtional =
  ExtendedSourceContext_Labels {addtional = addtional}

instance Core.FromJSON ExtendedSourceContext_Labels where
  parseJSON =
    Core.withObject
      "ExtendedSourceContext_Labels"
      ( \o ->
          ExtendedSourceContext_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ExtendedSourceContext_Labels where
  toJSON ExtendedSourceContext_Labels {..} =
    Core.toJSON addtional

-- | Represents a message with parameters.
--
-- /See:/ 'newFormatMessage' smart constructor.
data FormatMessage = FormatMessage
  { -- | Format template for the message. The @format@ uses placeholders @$0@, @$1@, etc. to reference parameters. @$$@ can be used to denote the @$@ character. Examples: * @Failed to load \'$0\' which helps debug $1 the first time it is loaded. Again, $0 is very important.@ * @Please pay $$10 to use $0 instead of $1.@
    format :: (Core.Maybe Core.Text),
    -- | Optional parameters to be embedded into the message.
    parameters :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FormatMessage' with the minimum fields required to make a request.
newFormatMessage ::
  FormatMessage
newFormatMessage =
  FormatMessage {format = Core.Nothing, parameters = Core.Nothing}

instance Core.FromJSON FormatMessage where
  parseJSON =
    Core.withObject
      "FormatMessage"
      ( \o ->
          FormatMessage
            Core.<$> (o Core..:? "format")
            Core.<*> (o Core..:? "parameters" Core..!= Core.mempty)
      )

instance Core.ToJSON FormatMessage where
  toJSON FormatMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("format" Core..=) Core.<$> format,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | A SourceContext referring to a Gerrit project.
--
-- /See:/ 'newGerritSourceContext' smart constructor.
data GerritSourceContext = GerritSourceContext
  { -- | An alias, which may be a branch or tag.
    aliasContext :: (Core.Maybe AliasContext),
    -- | The name of an alias (branch, tag, etc.).
    aliasName :: (Core.Maybe Core.Text),
    -- | The full project name within the host. Projects may be nested, so \"project\/subproject\" is a valid project name. The \"repo name\" is hostURI\/project.
    gerritProject :: (Core.Maybe Core.Text),
    -- | The URI of a running Gerrit instance.
    hostUri :: (Core.Maybe Core.Text),
    -- | A revision (commit) ID.
    revisionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GerritSourceContext' with the minimum fields required to make a request.
newGerritSourceContext ::
  GerritSourceContext
newGerritSourceContext =
  GerritSourceContext
    { aliasContext = Core.Nothing,
      aliasName = Core.Nothing,
      gerritProject = Core.Nothing,
      hostUri = Core.Nothing,
      revisionId = Core.Nothing
    }

instance Core.FromJSON GerritSourceContext where
  parseJSON =
    Core.withObject
      "GerritSourceContext"
      ( \o ->
          GerritSourceContext
            Core.<$> (o Core..:? "aliasContext")
            Core.<*> (o Core..:? "aliasName")
            Core.<*> (o Core..:? "gerritProject")
            Core.<*> (o Core..:? "hostUri")
            Core.<*> (o Core..:? "revisionId")
      )

instance Core.ToJSON GerritSourceContext where
  toJSON GerritSourceContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("aliasContext" Core..=) Core.<$> aliasContext,
            ("aliasName" Core..=) Core.<$> aliasName,
            ("gerritProject" Core..=) Core.<$> gerritProject,
            ("hostUri" Core..=) Core.<$> hostUri,
            ("revisionId" Core..=) Core.<$> revisionId
          ]
      )

-- | Response for getting breakpoint information.
--
-- /See:/ 'newGetBreakpointResponse' smart constructor.
newtype GetBreakpointResponse = GetBreakpointResponse
  { -- | Complete breakpoint state. The fields @id@ and @location@ are guaranteed to be set.
    breakpoint :: (Core.Maybe Breakpoint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetBreakpointResponse' with the minimum fields required to make a request.
newGetBreakpointResponse ::
  GetBreakpointResponse
newGetBreakpointResponse = GetBreakpointResponse {breakpoint = Core.Nothing}

instance Core.FromJSON GetBreakpointResponse where
  parseJSON =
    Core.withObject
      "GetBreakpointResponse"
      ( \o ->
          GetBreakpointResponse
            Core.<$> (o Core..:? "breakpoint")
      )

instance Core.ToJSON GetBreakpointResponse where
  toJSON GetBreakpointResponse {..} =
    Core.object
      ( Core.catMaybes
          [("breakpoint" Core..=) Core.<$> breakpoint]
      )

-- | A GitSourceContext denotes a particular revision in a third party Git repository (e.g. GitHub).
--
-- /See:/ 'newGitSourceContext' smart constructor.
data GitSourceContext = GitSourceContext
  { -- | Git commit hash. required.
    revisionId :: (Core.Maybe Core.Text),
    -- | Git repository URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GitSourceContext' with the minimum fields required to make a request.
newGitSourceContext ::
  GitSourceContext
newGitSourceContext =
  GitSourceContext {revisionId = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON GitSourceContext where
  parseJSON =
    Core.withObject
      "GitSourceContext"
      ( \o ->
          GitSourceContext
            Core.<$> (o Core..:? "revisionId")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GitSourceContext where
  toJSON GitSourceContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("revisionId" Core..=) Core.<$> revisionId,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Response for listing active breakpoints.
--
-- /See:/ 'newListActiveBreakpointsResponse' smart constructor.
data ListActiveBreakpointsResponse = ListActiveBreakpointsResponse
  { -- | List of all active breakpoints. The fields @id@ and @location@ are guaranteed to be set on each breakpoint.
    breakpoints :: (Core.Maybe [Breakpoint]),
    -- | A token that can be used in the next method call to block until the list of breakpoints changes.
    nextWaitToken :: (Core.Maybe Core.Text),
    -- | If set to @true@, indicates that there is no change to the list of active breakpoints and the server-selected timeout has expired. The @breakpoints@ field would be empty and should be ignored.
    waitExpired :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListActiveBreakpointsResponse' with the minimum fields required to make a request.
newListActiveBreakpointsResponse ::
  ListActiveBreakpointsResponse
newListActiveBreakpointsResponse =
  ListActiveBreakpointsResponse
    { breakpoints = Core.Nothing,
      nextWaitToken = Core.Nothing,
      waitExpired = Core.Nothing
    }

instance Core.FromJSON ListActiveBreakpointsResponse where
  parseJSON =
    Core.withObject
      "ListActiveBreakpointsResponse"
      ( \o ->
          ListActiveBreakpointsResponse
            Core.<$> (o Core..:? "breakpoints" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextWaitToken")
            Core.<*> (o Core..:? "waitExpired")
      )

instance Core.ToJSON ListActiveBreakpointsResponse where
  toJSON ListActiveBreakpointsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("breakpoints" Core..=) Core.<$> breakpoints,
            ("nextWaitToken" Core..=) Core.<$> nextWaitToken,
            ("waitExpired" Core..=) Core.<$> waitExpired
          ]
      )

-- | Response for listing breakpoints.
--
-- /See:/ 'newListBreakpointsResponse' smart constructor.
data ListBreakpointsResponse = ListBreakpointsResponse
  { -- | List of breakpoints matching the request. The fields @id@ and @location@ are guaranteed to be set on each breakpoint. The fields: @stack_frames@, @evaluated_expressions@ and @variable_table@ are cleared on each breakpoint regardless of its status.
    breakpoints :: (Core.Maybe [Breakpoint]),
    -- | A wait token that can be used in the next call to @list@ (REST) or @ListBreakpoints@ (RPC) to block until the list of breakpoints has changes.
    nextWaitToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBreakpointsResponse' with the minimum fields required to make a request.
newListBreakpointsResponse ::
  ListBreakpointsResponse
newListBreakpointsResponse =
  ListBreakpointsResponse
    { breakpoints = Core.Nothing,
      nextWaitToken = Core.Nothing
    }

instance Core.FromJSON ListBreakpointsResponse where
  parseJSON =
    Core.withObject
      "ListBreakpointsResponse"
      ( \o ->
          ListBreakpointsResponse
            Core.<$> (o Core..:? "breakpoints" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextWaitToken")
      )

instance Core.ToJSON ListBreakpointsResponse where
  toJSON ListBreakpointsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("breakpoints" Core..=) Core.<$> breakpoints,
            ("nextWaitToken" Core..=) Core.<$> nextWaitToken
          ]
      )

-- | Response for listing debuggees.
--
-- /See:/ 'newListDebuggeesResponse' smart constructor.
newtype ListDebuggeesResponse = ListDebuggeesResponse
  { -- | List of debuggees accessible to the calling user. The fields @debuggee.id@ and @description@ are guaranteed to be set. The @description@ field is a human readable field provided by agents and can be displayed to users.
    debuggees :: (Core.Maybe [Debuggee])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDebuggeesResponse' with the minimum fields required to make a request.
newListDebuggeesResponse ::
  ListDebuggeesResponse
newListDebuggeesResponse = ListDebuggeesResponse {debuggees = Core.Nothing}

instance Core.FromJSON ListDebuggeesResponse where
  parseJSON =
    Core.withObject
      "ListDebuggeesResponse"
      ( \o ->
          ListDebuggeesResponse
            Core.<$> (o Core..:? "debuggees" Core..!= Core.mempty)
      )

instance Core.ToJSON ListDebuggeesResponse where
  toJSON ListDebuggeesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("debuggees" Core..=) Core.<$> debuggees]
      )

-- | Selects a repo using a Google Cloud Platform project ID (e.g. winged-cargo-31) and a repo name within that project.
--
-- /See:/ 'newProjectRepoId' smart constructor.
data ProjectRepoId = ProjectRepoId
  { -- | The ID of the project.
    projectId :: (Core.Maybe Core.Text),
    -- | The name of the repo. Leave empty for the default repo.
    repoName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectRepoId' with the minimum fields required to make a request.
newProjectRepoId ::
  ProjectRepoId
newProjectRepoId =
  ProjectRepoId {projectId = Core.Nothing, repoName = Core.Nothing}

instance Core.FromJSON ProjectRepoId where
  parseJSON =
    Core.withObject
      "ProjectRepoId"
      ( \o ->
          ProjectRepoId
            Core.<$> (o Core..:? "projectId")
            Core.<*> (o Core..:? "repoName")
      )

instance Core.ToJSON ProjectRepoId where
  toJSON ProjectRepoId {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectId" Core..=) Core.<$> projectId,
            ("repoName" Core..=) Core.<$> repoName
          ]
      )

-- | Request to register a debuggee.
--
-- /See:/ 'newRegisterDebuggeeRequest' smart constructor.
newtype RegisterDebuggeeRequest = RegisterDebuggeeRequest
  { -- | Required. Debuggee information to register. The fields @project@, @uniquifier@, @description@ and @agent_version@ of the debuggee must be set.
    debuggee :: (Core.Maybe Debuggee)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegisterDebuggeeRequest' with the minimum fields required to make a request.
newRegisterDebuggeeRequest ::
  RegisterDebuggeeRequest
newRegisterDebuggeeRequest = RegisterDebuggeeRequest {debuggee = Core.Nothing}

instance Core.FromJSON RegisterDebuggeeRequest where
  parseJSON =
    Core.withObject
      "RegisterDebuggeeRequest"
      ( \o ->
          RegisterDebuggeeRequest
            Core.<$> (o Core..:? "debuggee")
      )

instance Core.ToJSON RegisterDebuggeeRequest where
  toJSON RegisterDebuggeeRequest {..} =
    Core.object
      ( Core.catMaybes
          [("debuggee" Core..=) Core.<$> debuggee]
      )

-- | Response for registering a debuggee.
--
-- /See:/ 'newRegisterDebuggeeResponse' smart constructor.
data RegisterDebuggeeResponse = RegisterDebuggeeResponse
  { -- | A unique ID generated for the agent. Each RegisterDebuggee request will generate a new agent ID.
    agentId :: (Core.Maybe Core.Text),
    -- | Debuggee resource. The field @id@ is guaranteed to be set (in addition to the echoed fields). If the field @is_disabled@ is set to @true@, the agent should disable itself by removing all breakpoints and detaching from the application. It should however continue to poll @RegisterDebuggee@ until reenabled.
    debuggee :: (Core.Maybe Debuggee)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegisterDebuggeeResponse' with the minimum fields required to make a request.
newRegisterDebuggeeResponse ::
  RegisterDebuggeeResponse
newRegisterDebuggeeResponse =
  RegisterDebuggeeResponse {agentId = Core.Nothing, debuggee = Core.Nothing}

instance Core.FromJSON RegisterDebuggeeResponse where
  parseJSON =
    Core.withObject
      "RegisterDebuggeeResponse"
      ( \o ->
          RegisterDebuggeeResponse
            Core.<$> (o Core..:? "agentId")
            Core.<*> (o Core..:? "debuggee")
      )

instance Core.ToJSON RegisterDebuggeeResponse where
  toJSON RegisterDebuggeeResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("agentId" Core..=) Core.<$> agentId,
            ("debuggee" Core..=) Core.<$> debuggee
          ]
      )

-- | A unique identifier for a cloud repo.
--
-- /See:/ 'newRepoId' smart constructor.
data RepoId = RepoId
  { -- | A combination of a project ID and a repo name.
    projectRepoId :: (Core.Maybe ProjectRepoId),
    -- | A server-assigned, globally unique identifier.
    uid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepoId' with the minimum fields required to make a request.
newRepoId ::
  RepoId
newRepoId = RepoId {projectRepoId = Core.Nothing, uid = Core.Nothing}

instance Core.FromJSON RepoId where
  parseJSON =
    Core.withObject
      "RepoId"
      ( \o ->
          RepoId
            Core.<$> (o Core..:? "projectRepoId")
            Core.<*> (o Core..:? "uid")
      )

instance Core.ToJSON RepoId where
  toJSON RepoId {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectRepoId" Core..=) Core.<$> projectRepoId,
            ("uid" Core..=) Core.<$> uid
          ]
      )

-- | Response for setting a breakpoint.
--
-- /See:/ 'newSetBreakpointResponse' smart constructor.
newtype SetBreakpointResponse = SetBreakpointResponse
  { -- | Breakpoint resource. The field @id@ is guaranteed to be set (in addition to the echoed fields).
    breakpoint :: (Core.Maybe Breakpoint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetBreakpointResponse' with the minimum fields required to make a request.
newSetBreakpointResponse ::
  SetBreakpointResponse
newSetBreakpointResponse = SetBreakpointResponse {breakpoint = Core.Nothing}

instance Core.FromJSON SetBreakpointResponse where
  parseJSON =
    Core.withObject
      "SetBreakpointResponse"
      ( \o ->
          SetBreakpointResponse
            Core.<$> (o Core..:? "breakpoint")
      )

instance Core.ToJSON SetBreakpointResponse where
  toJSON SetBreakpointResponse {..} =
    Core.object
      ( Core.catMaybes
          [("breakpoint" Core..=) Core.<$> breakpoint]
      )

-- | A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
--
-- /See:/ 'newSourceContext' smart constructor.
data SourceContext = SourceContext
  { -- | A SourceContext referring to a revision in a cloud repo.
    cloudRepo :: (Core.Maybe CloudRepoSourceContext),
    -- | A SourceContext referring to a snapshot in a cloud workspace.
    cloudWorkspace :: (Core.Maybe CloudWorkspaceSourceContext),
    -- | A SourceContext referring to a Gerrit project.
    gerrit :: (Core.Maybe GerritSourceContext),
    -- | A SourceContext referring to any third party Git repo (e.g. GitHub).
    git :: (Core.Maybe GitSourceContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
newSourceContext ::
  SourceContext
newSourceContext =
  SourceContext
    { cloudRepo = Core.Nothing,
      cloudWorkspace = Core.Nothing,
      gerrit = Core.Nothing,
      git = Core.Nothing
    }

instance Core.FromJSON SourceContext where
  parseJSON =
    Core.withObject
      "SourceContext"
      ( \o ->
          SourceContext
            Core.<$> (o Core..:? "cloudRepo")
            Core.<*> (o Core..:? "cloudWorkspace")
            Core.<*> (o Core..:? "gerrit")
            Core.<*> (o Core..:? "git")
      )

instance Core.ToJSON SourceContext where
  toJSON SourceContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudRepo" Core..=) Core.<$> cloudRepo,
            ("cloudWorkspace" Core..=) Core.<$> cloudWorkspace,
            ("gerrit" Core..=) Core.<$> gerrit,
            ("git" Core..=) Core.<$> git
          ]
      )

-- | Represents a location in the source code.
--
-- /See:/ 'newSourceLocation' smart constructor.
data SourceLocation = SourceLocation
  { -- | Column within a line. The first column in a line as the value @1@. Agents that do not support setting breakpoints on specific columns ignore this field.
    column :: (Core.Maybe Core.Int32),
    -- | Line inside the file. The first line in the file has the value @1@.
    line :: (Core.Maybe Core.Int32),
    -- | Path to the source file within the source context of the target binary.
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
newSourceLocation ::
  SourceLocation
newSourceLocation =
  SourceLocation
    { column = Core.Nothing,
      line = Core.Nothing,
      path = Core.Nothing
    }

instance Core.FromJSON SourceLocation where
  parseJSON =
    Core.withObject
      "SourceLocation"
      ( \o ->
          SourceLocation
            Core.<$> (o Core..:? "column")
            Core.<*> (o Core..:? "line")
            Core.<*> (o Core..:? "path")
      )

instance Core.ToJSON SourceLocation where
  toJSON SourceLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("column" Core..=) Core.<$> column,
            ("line" Core..=) Core.<$> line,
            ("path" Core..=) Core.<$> path
          ]
      )

-- | Represents a stack frame context.
--
-- /See:/ 'newStackFrame' smart constructor.
data StackFrame = StackFrame
  { -- | Set of arguments passed to this function. Note that this might not be populated for all stack frames.
    arguments :: (Core.Maybe [Variable]),
    -- | Demangled function name at the call site.
    function :: (Core.Maybe Core.Text),
    -- | Set of local variables at the stack frame location. Note that this might not be populated for all stack frames.
    locals :: (Core.Maybe [Variable]),
    -- | Source location of the call site.
    location :: (Core.Maybe SourceLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackFrame' with the minimum fields required to make a request.
newStackFrame ::
  StackFrame
newStackFrame =
  StackFrame
    { arguments = Core.Nothing,
      function = Core.Nothing,
      locals = Core.Nothing,
      location = Core.Nothing
    }

instance Core.FromJSON StackFrame where
  parseJSON =
    Core.withObject
      "StackFrame"
      ( \o ->
          StackFrame
            Core.<$> (o Core..:? "arguments" Core..!= Core.mempty)
            Core.<*> (o Core..:? "function")
            Core.<*> (o Core..:? "locals" Core..!= Core.mempty)
            Core.<*> (o Core..:? "location")
      )

instance Core.ToJSON StackFrame where
  toJSON StackFrame {..} =
    Core.object
      ( Core.catMaybes
          [ ("arguments" Core..=) Core.<$> arguments,
            ("function" Core..=) Core.<$> function,
            ("locals" Core..=) Core.<$> locals,
            ("location" Core..=) Core.<$> location
          ]
      )

-- | Represents a contextual status message. The message can indicate an error or informational status, and refer to specific parts of the containing object. For example, the @Breakpoint.status@ field can indicate an error referring to the @BREAKPOINT_SOURCE_LOCATION@ with the message @Location not found@.
--
-- /See:/ 'newStatusMessage' smart constructor.
data StatusMessage = StatusMessage
  { -- | Status message text.
    description :: (Core.Maybe FormatMessage),
    -- | Distinguishes errors from informational messages.
    isError :: (Core.Maybe Core.Bool),
    -- | Reference to which the message applies.
    refersTo :: (Core.Maybe StatusMessage_RefersTo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StatusMessage' with the minimum fields required to make a request.
newStatusMessage ::
  StatusMessage
newStatusMessage =
  StatusMessage
    { description = Core.Nothing,
      isError = Core.Nothing,
      refersTo = Core.Nothing
    }

instance Core.FromJSON StatusMessage where
  parseJSON =
    Core.withObject
      "StatusMessage"
      ( \o ->
          StatusMessage
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "isError")
            Core.<*> (o Core..:? "refersTo")
      )

instance Core.ToJSON StatusMessage where
  toJSON StatusMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("isError" Core..=) Core.<$> isError,
            ("refersTo" Core..=) Core.<$> refersTo
          ]
      )

-- | Request to update an active breakpoint.
--
-- /See:/ 'newUpdateActiveBreakpointRequest' smart constructor.
newtype UpdateActiveBreakpointRequest = UpdateActiveBreakpointRequest
  { -- | Required. Updated breakpoint information. The field @id@ must be set. The agent must echo all Breakpoint specification fields in the update.
    breakpoint :: (Core.Maybe Breakpoint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateActiveBreakpointRequest' with the minimum fields required to make a request.
newUpdateActiveBreakpointRequest ::
  UpdateActiveBreakpointRequest
newUpdateActiveBreakpointRequest =
  UpdateActiveBreakpointRequest {breakpoint = Core.Nothing}

instance Core.FromJSON UpdateActiveBreakpointRequest where
  parseJSON =
    Core.withObject
      "UpdateActiveBreakpointRequest"
      ( \o ->
          UpdateActiveBreakpointRequest
            Core.<$> (o Core..:? "breakpoint")
      )

instance Core.ToJSON UpdateActiveBreakpointRequest where
  toJSON UpdateActiveBreakpointRequest {..} =
    Core.object
      ( Core.catMaybes
          [("breakpoint" Core..=) Core.<$> breakpoint]
      )

-- | Response for updating an active breakpoint. The message is defined to allow future extensions.
--
-- /See:/ 'newUpdateActiveBreakpointResponse' smart constructor.
data UpdateActiveBreakpointResponse = UpdateActiveBreakpointResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateActiveBreakpointResponse' with the minimum fields required to make a request.
newUpdateActiveBreakpointResponse ::
  UpdateActiveBreakpointResponse
newUpdateActiveBreakpointResponse = UpdateActiveBreakpointResponse

instance Core.FromJSON UpdateActiveBreakpointResponse where
  parseJSON =
    Core.withObject
      "UpdateActiveBreakpointResponse"
      (\o -> Core.pure UpdateActiveBreakpointResponse)

instance Core.ToJSON UpdateActiveBreakpointResponse where
  toJSON = Core.const Core.emptyObject

-- | Represents a variable or an argument possibly of a compound object type. Note how the following variables are represented: 1) A simple variable: int x = 5 { name: \"x\", value: \"5\", type: \"int\" } \/\/ Captured variable 2) A compound object: struct T { int m1; int m2; }; T x = { 3, 7 }; { \/\/ Captured variable name: \"x\", type: \"T\", members { name: \"m1\", value: \"3\", type: \"int\" }, members { name: \"m2\", value: \"7\", type: \"int\" } } 3) A pointer where the pointee was captured: T x = { 3, 7 }; T* p = &x; { \/\/ Captured variable name: \"p\", type: \"T/\", value: \"0x00500500\", members { name: \"m1\", value: \"3\", type: \"int\" }, members { name: \"m2\", value: \"7\", type: \"int\" } } 4) A pointer where the pointee was not captured: T/ p = new T; { \/\/ Captured variable name: \"p\", type: \"T*\", value: \"0x00400400\" status { is/error: true, description { format: \"unavailable\" } } } The status should describe the reason for the missing value, such as @,@,
-- \`@. Note that a null pointer should not have members. 5) An unnamed value: int* p = new int(7); { \/\/ Captured variable name: \"p\", value: \"0x00500500\", type: \"int*\", members { value: \"7\", type: \"int\" } } 6) An unnamed pointer where the pointee was not captured: int* p = new int(7); int** pp = &p; { \/\/ Captured variable name: \"pp\", value: \"0x00500500\", type: \"int**\", members { value: \"0x00400400\", type: \"int*\" status { is_error: true, description: { format: \"unavailable\" } } } } } To optimize computation, memory and network traffic, variables that repeat in the output multiple times can be stored once in a shared variable table and be referenced using the@var/table/index\` field. The variables stored in the shared table are nameless and are essentially a partition of the complete variable. To reconstruct the complete variable, merge the referencing variable with the referenced variable. When using the shared variable table, the following variables: T x = { 3, 7 }; T* p = &x; T& r = x;
-- { name: \"x\", var/table_index: 3, type: \"T\" } \/\/ Captured variables { name: \"p\", value \"0x00500500\", type=\"T*\", var/table/index: 3 } { name: \"r\", type=\"T&\", var/table/index: 3 } { \/\/ Shared variable table entry #3: members { name: \"m1\", value: \"3\", type: \"int\" }, members { name: \"m2\", value: \"7\", type: \"int\" } } Note that the pointer address is stored with the referencing variable and not with the referenced variable. This allows the referenced variable to be shared between pointers and references. The type field is optional. The debugger agent may or may not support it.
--
-- /See:/ 'newVariable' smart constructor.
data Variable = Variable
  { -- | Members contained or pointed to by the variable.
    members :: (Core.Maybe [Variable]),
    -- | Name of the variable, if any.
    name :: (Core.Maybe Core.Text),
    -- | Status associated with the variable. This field will usually stay unset. A status of a single variable only applies to that variable or expression. The rest of breakpoint data still remains valid. Variables might be reported in error state even when breakpoint is not in final state. The message may refer to variable name with @refers_to@ set to @VARIABLE_NAME@. Alternatively @refers_to@ will be set to @VARIABLE_VALUE@. In either case variable value and members will be unset. Example of error message applied to name: @Invalid expression syntax@. Example of information message applied to value: @Not captured@. Examples of error message applied to value: * @Malformed string@, * @Field f not found in class C@ * @Null pointer dereference@
    status :: (Core.Maybe StatusMessage),
    -- | Variable type (e.g. @MyClass@). If the variable is split with @var_table_index@, @type@ goes next to @value@. The interpretation of a type is agent specific. It is recommended to include the dynamic type rather than a static type of an object.
    type' :: (Core.Maybe Core.Text),
    -- | Simple value of the variable.
    value :: (Core.Maybe Core.Text),
    -- | Reference to a variable in the shared variable table. More than one variable can reference the same variable in the table. The @var_table_index@ field is an index into @variable_table@ in Breakpoint.
    varTableIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Variable' with the minimum fields required to make a request.
newVariable ::
  Variable
newVariable =
  Variable
    { members = Core.Nothing,
      name = Core.Nothing,
      status = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing,
      varTableIndex = Core.Nothing
    }

instance Core.FromJSON Variable where
  parseJSON =
    Core.withObject
      "Variable"
      ( \o ->
          Variable
            Core.<$> (o Core..:? "members" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
            Core.<*> (o Core..:? "varTableIndex")
      )

instance Core.ToJSON Variable where
  toJSON Variable {..} =
    Core.object
      ( Core.catMaybes
          [ ("members" Core..=) Core.<$> members,
            ("name" Core..=) Core.<$> name,
            ("status" Core..=) Core.<$> status,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value,
            ("varTableIndex" Core..=) Core.<$> varTableIndex
          ]
      )

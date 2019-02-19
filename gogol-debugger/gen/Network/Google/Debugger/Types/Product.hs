{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Debugger.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Debugger.Types.Product where

import           Network.Google.Debugger.Types.Sum
import           Network.Google.Prelude

-- | Response for registering a debuggee.
--
-- /See:/ 'registerDebuggeeResponse' smart constructor.
newtype RegisterDebuggeeResponse =
  RegisterDebuggeeResponse'
    { _rdrDebuggee :: Maybe Debuggee
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegisterDebuggeeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrDebuggee'
registerDebuggeeResponse
    :: RegisterDebuggeeResponse
registerDebuggeeResponse = RegisterDebuggeeResponse' {_rdrDebuggee = Nothing}


-- | Debuggee resource. The field \`id\` is guaranteed to be set (in addition
-- to the echoed fields). If the field \`is_disabled\` is set to \`true\`,
-- the agent should disable itself by removing all breakpoints and
-- detaching from the application. It should however continue to poll
-- \`RegisterDebuggee\` until reenabled.
rdrDebuggee :: Lens' RegisterDebuggeeResponse (Maybe Debuggee)
rdrDebuggee
  = lens _rdrDebuggee (\ s a -> s{_rdrDebuggee = a})

instance FromJSON RegisterDebuggeeResponse where
        parseJSON
          = withObject "RegisterDebuggeeResponse"
              (\ o ->
                 RegisterDebuggeeResponse' <$> (o .:? "debuggee"))

instance ToJSON RegisterDebuggeeResponse where
        toJSON RegisterDebuggeeResponse'{..}
          = object
              (catMaybes [("debuggee" .=) <$> _rdrDebuggee])

-- | A SourceContext is a reference to a tree of files. A SourceContext
-- together with a path point to a unique revision of a single file or
-- directory.
--
-- /See:/ 'sourceContext' smart constructor.
data SourceContext =
  SourceContext'
    { _scCloudWorkspace :: !(Maybe CloudWorkspaceSourceContext)
    , _scCloudRepo      :: !(Maybe CloudRepoSourceContext)
    , _scGerrit         :: !(Maybe GerritSourceContext)
    , _scGit            :: !(Maybe GitSourceContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCloudWorkspace'
--
-- * 'scCloudRepo'
--
-- * 'scGerrit'
--
-- * 'scGit'
sourceContext
    :: SourceContext
sourceContext =
  SourceContext'
    { _scCloudWorkspace = Nothing
    , _scCloudRepo = Nothing
    , _scGerrit = Nothing
    , _scGit = Nothing
    }


-- | A SourceContext referring to a snapshot in a cloud workspace.
scCloudWorkspace :: Lens' SourceContext (Maybe CloudWorkspaceSourceContext)
scCloudWorkspace
  = lens _scCloudWorkspace
      (\ s a -> s{_scCloudWorkspace = a})

-- | A SourceContext referring to a revision in a cloud repo.
scCloudRepo :: Lens' SourceContext (Maybe CloudRepoSourceContext)
scCloudRepo
  = lens _scCloudRepo (\ s a -> s{_scCloudRepo = a})

-- | A SourceContext referring to a Gerrit project.
scGerrit :: Lens' SourceContext (Maybe GerritSourceContext)
scGerrit = lens _scGerrit (\ s a -> s{_scGerrit = a})

-- | A SourceContext referring to any third party Git repo (e.g. GitHub).
scGit :: Lens' SourceContext (Maybe GitSourceContext)
scGit = lens _scGit (\ s a -> s{_scGit = a})

instance FromJSON SourceContext where
        parseJSON
          = withObject "SourceContext"
              (\ o ->
                 SourceContext' <$>
                   (o .:? "cloudWorkspace") <*> (o .:? "cloudRepo") <*>
                     (o .:? "gerrit")
                     <*> (o .:? "git"))

instance ToJSON SourceContext where
        toJSON SourceContext'{..}
          = object
              (catMaybes
                 [("cloudWorkspace" .=) <$> _scCloudWorkspace,
                  ("cloudRepo" .=) <$> _scCloudRepo,
                  ("gerrit" .=) <$> _scGerrit, ("git" .=) <$> _scGit])

-- | Response for setting a breakpoint.
--
-- /See:/ 'setBreakpointResponse' smart constructor.
newtype SetBreakpointResponse =
  SetBreakpointResponse'
    { _sbrBreakpoint :: Maybe Breakpoint
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetBreakpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrBreakpoint'
setBreakpointResponse
    :: SetBreakpointResponse
setBreakpointResponse = SetBreakpointResponse' {_sbrBreakpoint = Nothing}


-- | Breakpoint resource. The field \`id\` is guaranteed to be set (in
-- addition to the echoed fileds).
sbrBreakpoint :: Lens' SetBreakpointResponse (Maybe Breakpoint)
sbrBreakpoint
  = lens _sbrBreakpoint
      (\ s a -> s{_sbrBreakpoint = a})

instance FromJSON SetBreakpointResponse where
        parseJSON
          = withObject "SetBreakpointResponse"
              (\ o ->
                 SetBreakpointResponse' <$> (o .:? "breakpoint"))

instance ToJSON SetBreakpointResponse where
        toJSON SetBreakpointResponse'{..}
          = object
              (catMaybes [("breakpoint" .=) <$> _sbrBreakpoint])

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

-- | Response for updating an active breakpoint. The message is defined to
-- allow future extensions.
--
-- /See:/ 'updateActiveBreakpointResponse' smart constructor.
data UpdateActiveBreakpointResponse =
  UpdateActiveBreakpointResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateActiveBreakpointResponse' with the minimum fields required to make a request.
--
updateActiveBreakpointResponse
    :: UpdateActiveBreakpointResponse
updateActiveBreakpointResponse = UpdateActiveBreakpointResponse'


instance FromJSON UpdateActiveBreakpointResponse
         where
        parseJSON
          = withObject "UpdateActiveBreakpointResponse"
              (\ o -> pure UpdateActiveBreakpointResponse')

instance ToJSON UpdateActiveBreakpointResponse where
        toJSON = const emptyObject

-- | A SourceContext referring to a Gerrit project.
--
-- /See:/ 'gerritSourceContext' smart constructor.
data GerritSourceContext =
  GerritSourceContext'
    { _gscGerritProject :: !(Maybe Text)
    , _gscAliasName     :: !(Maybe Text)
    , _gscRevisionId    :: !(Maybe Text)
    , _gscHostURI       :: !(Maybe Text)
    , _gscAliasContext  :: !(Maybe AliasContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GerritSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscGerritProject'
--
-- * 'gscAliasName'
--
-- * 'gscRevisionId'
--
-- * 'gscHostURI'
--
-- * 'gscAliasContext'
gerritSourceContext
    :: GerritSourceContext
gerritSourceContext =
  GerritSourceContext'
    { _gscGerritProject = Nothing
    , _gscAliasName = Nothing
    , _gscRevisionId = Nothing
    , _gscHostURI = Nothing
    , _gscAliasContext = Nothing
    }


-- | The full project name within the host. Projects may be nested, so
-- \"project\/subproject\" is a valid project name. The \"repo name\" is
-- hostURI\/project.
gscGerritProject :: Lens' GerritSourceContext (Maybe Text)
gscGerritProject
  = lens _gscGerritProject
      (\ s a -> s{_gscGerritProject = a})

-- | The name of an alias (branch, tag, etc.).
gscAliasName :: Lens' GerritSourceContext (Maybe Text)
gscAliasName
  = lens _gscAliasName (\ s a -> s{_gscAliasName = a})

-- | A revision (commit) ID.
gscRevisionId :: Lens' GerritSourceContext (Maybe Text)
gscRevisionId
  = lens _gscRevisionId
      (\ s a -> s{_gscRevisionId = a})

-- | The URI of a running Gerrit instance.
gscHostURI :: Lens' GerritSourceContext (Maybe Text)
gscHostURI
  = lens _gscHostURI (\ s a -> s{_gscHostURI = a})

-- | An alias, which may be a branch or tag.
gscAliasContext :: Lens' GerritSourceContext (Maybe AliasContext)
gscAliasContext
  = lens _gscAliasContext
      (\ s a -> s{_gscAliasContext = a})

instance FromJSON GerritSourceContext where
        parseJSON
          = withObject "GerritSourceContext"
              (\ o ->
                 GerritSourceContext' <$>
                   (o .:? "gerritProject") <*> (o .:? "aliasName") <*>
                     (o .:? "revisionId")
                     <*> (o .:? "hostUri")
                     <*> (o .:? "aliasContext"))

instance ToJSON GerritSourceContext where
        toJSON GerritSourceContext'{..}
          = object
              (catMaybes
                 [("gerritProject" .=) <$> _gscGerritProject,
                  ("aliasName" .=) <$> _gscAliasName,
                  ("revisionId" .=) <$> _gscRevisionId,
                  ("hostUri" .=) <$> _gscHostURI,
                  ("aliasContext" .=) <$> _gscAliasContext])

-- | A unique identifier for a cloud repo.
--
-- /See:/ 'repoId' smart constructor.
data RepoId =
  RepoId'
    { _riUid           :: !(Maybe Text)
    , _riProjectRepoId :: !(Maybe ProjectRepoId)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepoId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riUid'
--
-- * 'riProjectRepoId'
repoId
    :: RepoId
repoId = RepoId' {_riUid = Nothing, _riProjectRepoId = Nothing}


-- | A server-assigned, globally unique identifier.
riUid :: Lens' RepoId (Maybe Text)
riUid = lens _riUid (\ s a -> s{_riUid = a})

-- | A combination of a project ID and a repo name.
riProjectRepoId :: Lens' RepoId (Maybe ProjectRepoId)
riProjectRepoId
  = lens _riProjectRepoId
      (\ s a -> s{_riProjectRepoId = a})

instance FromJSON RepoId where
        parseJSON
          = withObject "RepoId"
              (\ o ->
                 RepoId' <$>
                   (o .:? "uid") <*> (o .:? "projectRepoId"))

instance ToJSON RepoId where
        toJSON RepoId'{..}
          = object
              (catMaybes
                 [("uid" .=) <$> _riUid,
                  ("projectRepoId" .=) <$> _riProjectRepoId])

-- | Labels with user defined metadata.
--
-- /See:/ 'extendedSourceContextLabels' smart constructor.
newtype ExtendedSourceContextLabels =
  ExtendedSourceContextLabels'
    { _esclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExtendedSourceContextLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esclAddtional'
extendedSourceContextLabels
    :: HashMap Text Text -- ^ 'esclAddtional'
    -> ExtendedSourceContextLabels
extendedSourceContextLabels pEsclAddtional_ =
  ExtendedSourceContextLabels' {_esclAddtional = _Coerce # pEsclAddtional_}


esclAddtional :: Lens' ExtendedSourceContextLabels (HashMap Text Text)
esclAddtional
  = lens _esclAddtional
      (\ s a -> s{_esclAddtional = a})
      . _Coerce

instance FromJSON ExtendedSourceContextLabels where
        parseJSON
          = withObject "ExtendedSourceContextLabels"
              (\ o ->
                 ExtendedSourceContextLabels' <$> (parseJSONObject o))

instance ToJSON ExtendedSourceContextLabels where
        toJSON = toJSON . _esclAddtional

-- | Selects a repo using a Google Cloud Platform project ID (e.g.
-- winged-cargo-31) and a repo name within that project.
--
-- /See:/ 'projectRepoId' smart constructor.
data ProjectRepoId =
  ProjectRepoId'
    { _priRepoName  :: !(Maybe Text)
    , _priProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectRepoId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'priRepoName'
--
-- * 'priProjectId'
projectRepoId
    :: ProjectRepoId
projectRepoId = ProjectRepoId' {_priRepoName = Nothing, _priProjectId = Nothing}


-- | The name of the repo. Leave empty for the default repo.
priRepoName :: Lens' ProjectRepoId (Maybe Text)
priRepoName
  = lens _priRepoName (\ s a -> s{_priRepoName = a})

-- | The ID of the project.
priProjectId :: Lens' ProjectRepoId (Maybe Text)
priProjectId
  = lens _priProjectId (\ s a -> s{_priProjectId = a})

instance FromJSON ProjectRepoId where
        parseJSON
          = withObject "ProjectRepoId"
              (\ o ->
                 ProjectRepoId' <$>
                   (o .:? "repoName") <*> (o .:? "projectId"))

instance ToJSON ProjectRepoId where
        toJSON ProjectRepoId'{..}
          = object
              (catMaybes
                 [("repoName" .=) <$> _priRepoName,
                  ("projectId" .=) <$> _priProjectId])

-- | Represents a message with parameters.
--
-- /See:/ 'formatMessage' smart constructor.
data FormatMessage =
  FormatMessage'
    { _fmFormat     :: !(Maybe Text)
    , _fmParameters :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FormatMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmFormat'
--
-- * 'fmParameters'
formatMessage
    :: FormatMessage
formatMessage = FormatMessage' {_fmFormat = Nothing, _fmParameters = Nothing}


-- | Format template for the message. The \`format\` uses placeholders
-- \`$0\`, \`$1\`, etc. to reference parameters. \`$$\` can be used to
-- denote the \`$\` character. Examples: * \`Failed to load \'$0\' which
-- helps debug $1 the first time it is loaded. Again, $0 is very
-- important.\` * \`Please pay $$10 to use $0 instead of $1.\`
fmFormat :: Lens' FormatMessage (Maybe Text)
fmFormat = lens _fmFormat (\ s a -> s{_fmFormat = a})

-- | Optional parameters to be embedded into the message.
fmParameters :: Lens' FormatMessage [Text]
fmParameters
  = lens _fmParameters (\ s a -> s{_fmParameters = a})
      . _Default
      . _Coerce

instance FromJSON FormatMessage where
        parseJSON
          = withObject "FormatMessage"
              (\ o ->
                 FormatMessage' <$>
                   (o .:? "format") <*> (o .:? "parameters" .!= mempty))

instance ToJSON FormatMessage where
        toJSON FormatMessage'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _fmFormat,
                  ("parameters" .=) <$> _fmParameters])

-- | Represents the breakpoint specification, status and results.
--
-- /See:/ 'breakpoint' smart constructor.
data Breakpoint =
  Breakpoint'
    { _bStatus               :: !(Maybe StatusMessage)
    , _bLogLevel             :: !(Maybe BreakpointLogLevel)
    , _bLocation             :: !(Maybe SourceLocation)
    , _bAction               :: !(Maybe BreakpointAction)
    , _bFinalTime            :: !(Maybe DateTime')
    , _bExpressions          :: !(Maybe [Text])
    , _bLogMessageFormat     :: !(Maybe Text)
    , _bId                   :: !(Maybe Text)
    , _bLabels               :: !(Maybe BreakpointLabels)
    , _bUserEmail            :: !(Maybe Text)
    , _bVariableTable        :: !(Maybe [Variable])
    , _bStackFrames          :: !(Maybe [StackFrame])
    , _bCondition            :: !(Maybe Text)
    , _bEvaluatedExpressions :: !(Maybe [Variable])
    , _bCreateTime           :: !(Maybe DateTime')
    , _bIsFinalState         :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Breakpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bStatus'
--
-- * 'bLogLevel'
--
-- * 'bLocation'
--
-- * 'bAction'
--
-- * 'bFinalTime'
--
-- * 'bExpressions'
--
-- * 'bLogMessageFormat'
--
-- * 'bId'
--
-- * 'bLabels'
--
-- * 'bUserEmail'
--
-- * 'bVariableTable'
--
-- * 'bStackFrames'
--
-- * 'bCondition'
--
-- * 'bEvaluatedExpressions'
--
-- * 'bCreateTime'
--
-- * 'bIsFinalState'
breakpoint
    :: Breakpoint
breakpoint =
  Breakpoint'
    { _bStatus = Nothing
    , _bLogLevel = Nothing
    , _bLocation = Nothing
    , _bAction = Nothing
    , _bFinalTime = Nothing
    , _bExpressions = Nothing
    , _bLogMessageFormat = Nothing
    , _bId = Nothing
    , _bLabels = Nothing
    , _bUserEmail = Nothing
    , _bVariableTable = Nothing
    , _bStackFrames = Nothing
    , _bCondition = Nothing
    , _bEvaluatedExpressions = Nothing
    , _bCreateTime = Nothing
    , _bIsFinalState = Nothing
    }


-- | Breakpoint status. The status includes an error flag and a human
-- readable message. This field is usually unset. The message can be either
-- informational or an error message. Regardless, clients should always
-- display the text message back to the user. Error status indicates
-- complete failure of the breakpoint. Example (non-final state): \`Still
-- loading symbols...\` Examples (final state): * \`Invalid line number\`
-- referring to location * \`Field f not found in class C\` referring to
-- condition
bStatus :: Lens' Breakpoint (Maybe StatusMessage)
bStatus = lens _bStatus (\ s a -> s{_bStatus = a})

-- | Indicates the severity of the log. Only relevant when action is \`LOG\`.
bLogLevel :: Lens' Breakpoint (Maybe BreakpointLogLevel)
bLogLevel
  = lens _bLogLevel (\ s a -> s{_bLogLevel = a})

-- | Breakpoint source location.
bLocation :: Lens' Breakpoint (Maybe SourceLocation)
bLocation
  = lens _bLocation (\ s a -> s{_bLocation = a})

-- | Action that the agent should perform when the code at the breakpoint
-- location is hit.
bAction :: Lens' Breakpoint (Maybe BreakpointAction)
bAction = lens _bAction (\ s a -> s{_bAction = a})

-- | Time this breakpoint was finalized as seen by the server in seconds
-- resolution.
bFinalTime :: Lens' Breakpoint (Maybe UTCTime)
bFinalTime
  = lens _bFinalTime (\ s a -> s{_bFinalTime = a}) .
      mapping _DateTime

-- | List of read-only expressions to evaluate at the breakpoint location.
-- The expressions are composed using expressions in the programming
-- language at the source location. If the breakpoint action is \`LOG\`,
-- the evaluated expressions are included in log statements.
bExpressions :: Lens' Breakpoint [Text]
bExpressions
  = lens _bExpressions (\ s a -> s{_bExpressions = a})
      . _Default
      . _Coerce

-- | Only relevant when action is \`LOG\`. Defines the message to log when
-- the breakpoint hits. The message may include parameter placeholders
-- \`$0\`, \`$1\`, etc. These placeholders are replaced with the evaluated
-- value of the appropriate expression. Expressions not referenced in
-- \`log_message_format\` are not logged. Example: \`Message received, id =
-- $0, count = $1\` with \`expressions\` = \`[ message.id, message.count
-- ]\`.
bLogMessageFormat :: Lens' Breakpoint (Maybe Text)
bLogMessageFormat
  = lens _bLogMessageFormat
      (\ s a -> s{_bLogMessageFormat = a})

-- | Breakpoint identifier, unique in the scope of the debuggee.
bId :: Lens' Breakpoint (Maybe Text)
bId = lens _bId (\ s a -> s{_bId = a})

-- | A set of custom breakpoint properties, populated by the agent, to be
-- displayed to the user.
bLabels :: Lens' Breakpoint (Maybe BreakpointLabels)
bLabels = lens _bLabels (\ s a -> s{_bLabels = a})

-- | E-mail address of the user that created this breakpoint
bUserEmail :: Lens' Breakpoint (Maybe Text)
bUserEmail
  = lens _bUserEmail (\ s a -> s{_bUserEmail = a})

-- | The \`variable_table\` exists to aid with computation, memory and
-- network traffic optimization. It enables storing a variable once and
-- reference it from multiple variables, including variables stored in the
-- \`variable_table\` itself. For example, the same \`this\` object, which
-- may appear at many levels of the stack, can have all of its data stored
-- once in this table. The stack frame variables then would hold only a
-- reference to it. The variable \`var_table_index\` field is an index into
-- this repeated field. The stored objects are nameless and get their name
-- from the referencing variable. The effective variable is a merge of the
-- referencing variable and the referenced variable.
bVariableTable :: Lens' Breakpoint [Variable]
bVariableTable
  = lens _bVariableTable
      (\ s a -> s{_bVariableTable = a})
      . _Default
      . _Coerce

-- | The stack at breakpoint time, where stack_frames[0] represents the most
-- recently entered function.
bStackFrames :: Lens' Breakpoint [StackFrame]
bStackFrames
  = lens _bStackFrames (\ s a -> s{_bStackFrames = a})
      . _Default
      . _Coerce

-- | Condition that triggers the breakpoint. The condition is a compound
-- boolean expression composed using expressions in a programming language
-- at the source location.
bCondition :: Lens' Breakpoint (Maybe Text)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

-- | Values of evaluated expressions at breakpoint time. The evaluated
-- expressions appear in exactly the same order they are listed in the
-- \`expressions\` field. The \`name\` field holds the original expression
-- text, the \`value\` or \`members\` field holds the result of the
-- evaluated expression. If the expression cannot be evaluated, the
-- \`status\` inside the \`Variable\` will indicate an error and contain
-- the error text.
bEvaluatedExpressions :: Lens' Breakpoint [Variable]
bEvaluatedExpressions
  = lens _bEvaluatedExpressions
      (\ s a -> s{_bEvaluatedExpressions = a})
      . _Default
      . _Coerce

-- | Time this breakpoint was created by the server in seconds resolution.
bCreateTime :: Lens' Breakpoint (Maybe UTCTime)
bCreateTime
  = lens _bCreateTime (\ s a -> s{_bCreateTime = a}) .
      mapping _DateTime

-- | When true, indicates that this is a final result and the breakpoint
-- state will not change from here on.
bIsFinalState :: Lens' Breakpoint (Maybe Bool)
bIsFinalState
  = lens _bIsFinalState
      (\ s a -> s{_bIsFinalState = a})

instance FromJSON Breakpoint where
        parseJSON
          = withObject "Breakpoint"
              (\ o ->
                 Breakpoint' <$>
                   (o .:? "status") <*> (o .:? "logLevel") <*>
                     (o .:? "location")
                     <*> (o .:? "action")
                     <*> (o .:? "finalTime")
                     <*> (o .:? "expressions" .!= mempty)
                     <*> (o .:? "logMessageFormat")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "userEmail")
                     <*> (o .:? "variableTable" .!= mempty)
                     <*> (o .:? "stackFrames" .!= mempty)
                     <*> (o .:? "condition")
                     <*> (o .:? "evaluatedExpressions" .!= mempty)
                     <*> (o .:? "createTime")
                     <*> (o .:? "isFinalState"))

instance ToJSON Breakpoint where
        toJSON Breakpoint'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bStatus,
                  ("logLevel" .=) <$> _bLogLevel,
                  ("location" .=) <$> _bLocation,
                  ("action" .=) <$> _bAction,
                  ("finalTime" .=) <$> _bFinalTime,
                  ("expressions" .=) <$> _bExpressions,
                  ("logMessageFormat" .=) <$> _bLogMessageFormat,
                  ("id" .=) <$> _bId, ("labels" .=) <$> _bLabels,
                  ("userEmail" .=) <$> _bUserEmail,
                  ("variableTable" .=) <$> _bVariableTable,
                  ("stackFrames" .=) <$> _bStackFrames,
                  ("condition" .=) <$> _bCondition,
                  ("evaluatedExpressions" .=) <$>
                    _bEvaluatedExpressions,
                  ("createTime" .=) <$> _bCreateTime,
                  ("isFinalState" .=) <$> _bIsFinalState])

-- | A set of custom breakpoint properties, populated by the agent, to be
-- displayed to the user.
--
-- /See:/ 'breakpointLabels' smart constructor.
newtype BreakpointLabels =
  BreakpointLabels'
    { _blAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BreakpointLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blAddtional'
breakpointLabels
    :: HashMap Text Text -- ^ 'blAddtional'
    -> BreakpointLabels
breakpointLabels pBlAddtional_ =
  BreakpointLabels' {_blAddtional = _Coerce # pBlAddtional_}


blAddtional :: Lens' BreakpointLabels (HashMap Text Text)
blAddtional
  = lens _blAddtional (\ s a -> s{_blAddtional = a}) .
      _Coerce

instance FromJSON BreakpointLabels where
        parseJSON
          = withObject "BreakpointLabels"
              (\ o -> BreakpointLabels' <$> (parseJSONObject o))

instance ToJSON BreakpointLabels where
        toJSON = toJSON . _blAddtional

-- | Response for getting breakpoint information.
--
-- /See:/ 'getBreakpointResponse' smart constructor.
newtype GetBreakpointResponse =
  GetBreakpointResponse'
    { _gbrBreakpoint :: Maybe Breakpoint
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetBreakpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbrBreakpoint'
getBreakpointResponse
    :: GetBreakpointResponse
getBreakpointResponse = GetBreakpointResponse' {_gbrBreakpoint = Nothing}


-- | Complete breakpoint state. The fields \`id\` and \`location\` are
-- guaranteed to be set.
gbrBreakpoint :: Lens' GetBreakpointResponse (Maybe Breakpoint)
gbrBreakpoint
  = lens _gbrBreakpoint
      (\ s a -> s{_gbrBreakpoint = a})

instance FromJSON GetBreakpointResponse where
        parseJSON
          = withObject "GetBreakpointResponse"
              (\ o ->
                 GetBreakpointResponse' <$> (o .:? "breakpoint"))

instance ToJSON GetBreakpointResponse where
        toJSON GetBreakpointResponse'{..}
          = object
              (catMaybes [("breakpoint" .=) <$> _gbrBreakpoint])

-- | Represents a variable or an argument possibly of a compound object type.
-- Note how the following variables are represented: 1) A simple variable:
-- int x = 5 { name: \"x\", value: \"5\", type: \"int\" } \/\/ Captured
-- variable 2) A compound object: struct T { int m1; int m2; }; T x = { 3,
-- 7 }; { \/\/ Captured variable name: \"x\", type: \"T\", members { name:
-- \"m1\", value: \"3\", type: \"int\" }, members { name: \"m2\", value:
-- \"7\", type: \"int\" } } 3) A pointer where the pointee was captured: T
-- x = { 3, 7 }; T* p = &x; { \/\/ Captured variable name: \"p\", type:
-- \"T*\", value: \"0x00500500\", members { name: \"m1\", value: \"3\",
-- type: \"int\" }, members { name: \"m2\", value: \"7\", type: \"int\" } }
-- 4) A pointer where the pointee was not captured: T* p = new T; { \/\/
-- Captured variable name: \"p\", type: \"T*\", value: \"0x00400400\"
-- status { is_error: true, description { format: \"unavailable\" } } } The
-- status should describe the reason for the missing value, such as \`\`,
-- \`\`, \`\`. Note that a null pointer should not have members. 5) An
-- unnamed value: int* p = new int(7); { \/\/ Captured variable name:
-- \"p\", value: \"0x00500500\", type: \"int*\", members { value: \"7\",
-- type: \"int\" } } 6) An unnamed pointer where the pointee was not
-- captured: int* p = new int(7); int** pp = &p; { \/\/ Captured variable
-- name: \"pp\", value: \"0x00500500\", type: \"int**\", members { value:
-- \"0x00400400\", type: \"int*\" status { is_error: true, description: {
-- format: \"unavailable\" } } } } } To optimize computation, memory and
-- network traffic, variables that repeat in the output multiple times can
-- be stored once in a shared variable table and be referenced using the
-- \`var_table_index\` field. The variables stored in the shared table are
-- nameless and are essentially a partition of the complete variable. To
-- reconstruct the complete variable, merge the referencing variable with
-- the referenced variable. When using the shared variable table, the
-- following variables: T x = { 3, 7 }; T* p = &x; T& r = x; { name: \"x\",
-- var_table_index: 3, type: \"T\" } \/\/ Captured variables { name: \"p\",
-- value \"0x00500500\", type=\"T*\", var_table_index: 3 } { name: \"r\",
-- type=\"T&\", var_table_index: 3 } { \/\/ Shared variable table entry #3:
-- members { name: \"m1\", value: \"3\", type: \"int\" }, members { name:
-- \"m2\", value: \"7\", type: \"int\" } } Note that the pointer address is
-- stored with the referencing variable and not with the referenced
-- variable. This allows the referenced variable to be shared between
-- pointers and references. The type field is optional. The debugger agent
-- may or may not support it.
--
-- /See:/ 'variable' smart constructor.
data Variable =
  Variable'
    { _vStatus        :: !(Maybe StatusMessage)
    , _vVarTableIndex :: !(Maybe (Textual Int32))
    , _vMembers       :: !(Maybe [Variable])
    , _vValue         :: !(Maybe Text)
    , _vName          :: !(Maybe Text)
    , _vType          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Variable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vStatus'
--
-- * 'vVarTableIndex'
--
-- * 'vMembers'
--
-- * 'vValue'
--
-- * 'vName'
--
-- * 'vType'
variable
    :: Variable
variable =
  Variable'
    { _vStatus = Nothing
    , _vVarTableIndex = Nothing
    , _vMembers = Nothing
    , _vValue = Nothing
    , _vName = Nothing
    , _vType = Nothing
    }


-- | Status associated with the variable. This field will usually stay unset.
-- A status of a single variable only applies to that variable or
-- expression. The rest of breakpoint data still remains valid. Variables
-- might be reported in error state even when breakpoint is not in final
-- state. The message may refer to variable name with \`refers_to\` set to
-- \`VARIABLE_NAME\`. Alternatively \`refers_to\` will be set to
-- \`VARIABLE_VALUE\`. In either case variable value and members will be
-- unset. Example of error message applied to name: \`Invalid expression
-- syntax\`. Example of information message applied to value: \`Not
-- captured\`. Examples of error message applied to value: * \`Malformed
-- string\`, * \`Field f not found in class C\` * \`Null pointer
-- dereference\`
vStatus :: Lens' Variable (Maybe StatusMessage)
vStatus = lens _vStatus (\ s a -> s{_vStatus = a})

-- | Reference to a variable in the shared variable table. More than one
-- variable can reference the same variable in the table. The
-- \`var_table_index\` field is an index into \`variable_table\` in
-- Breakpoint.
vVarTableIndex :: Lens' Variable (Maybe Int32)
vVarTableIndex
  = lens _vVarTableIndex
      (\ s a -> s{_vVarTableIndex = a})
      . mapping _Coerce

-- | Members contained or pointed to by the variable.
vMembers :: Lens' Variable [Variable]
vMembers
  = lens _vMembers (\ s a -> s{_vMembers = a}) .
      _Default
      . _Coerce

-- | Simple value of the variable.
vValue :: Lens' Variable (Maybe Text)
vValue = lens _vValue (\ s a -> s{_vValue = a})

-- | Name of the variable, if any.
vName :: Lens' Variable (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

-- | Variable type (e.g. \`MyClass\`). If the variable is split with
-- \`var_table_index\`, \`type\` goes next to \`value\`. The interpretation
-- of a type is agent specific. It is recommended to include the dynamic
-- type rather than a static type of an object.
vType :: Lens' Variable (Maybe Text)
vType = lens _vType (\ s a -> s{_vType = a})

instance FromJSON Variable where
        parseJSON
          = withObject "Variable"
              (\ o ->
                 Variable' <$>
                   (o .:? "status") <*> (o .:? "varTableIndex") <*>
                     (o .:? "members" .!= mempty)
                     <*> (o .:? "value")
                     <*> (o .:? "name")
                     <*> (o .:? "type"))

instance ToJSON Variable where
        toJSON Variable'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _vStatus,
                  ("varTableIndex" .=) <$> _vVarTableIndex,
                  ("members" .=) <$> _vMembers,
                  ("value" .=) <$> _vValue, ("name" .=) <$> _vName,
                  ("type" .=) <$> _vType])

-- | Response for listing breakpoints.
--
-- /See:/ 'listBreakpointsResponse' smart constructor.
data ListBreakpointsResponse =
  ListBreakpointsResponse'
    { _lbrNextWaitToken :: !(Maybe Text)
    , _lbrBreakpoints   :: !(Maybe [Breakpoint])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBreakpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextWaitToken'
--
-- * 'lbrBreakpoints'
listBreakpointsResponse
    :: ListBreakpointsResponse
listBreakpointsResponse =
  ListBreakpointsResponse'
    {_lbrNextWaitToken = Nothing, _lbrBreakpoints = Nothing}


-- | A wait token that can be used in the next call to \`list\` (REST) or
-- \`ListBreakpoints\` (RPC) to block until the list of breakpoints has
-- changes.
lbrNextWaitToken :: Lens' ListBreakpointsResponse (Maybe Text)
lbrNextWaitToken
  = lens _lbrNextWaitToken
      (\ s a -> s{_lbrNextWaitToken = a})

-- | List of breakpoints matching the request. The fields \`id\` and
-- \`location\` are guaranteed to be set on each breakpoint. The fields:
-- \`stack_frames\`, \`evaluated_expressions\` and \`variable_table\` are
-- cleared on each breakpoint regardless of its status.
lbrBreakpoints :: Lens' ListBreakpointsResponse [Breakpoint]
lbrBreakpoints
  = lens _lbrBreakpoints
      (\ s a -> s{_lbrBreakpoints = a})
      . _Default
      . _Coerce

instance FromJSON ListBreakpointsResponse where
        parseJSON
          = withObject "ListBreakpointsResponse"
              (\ o ->
                 ListBreakpointsResponse' <$>
                   (o .:? "nextWaitToken") <*>
                     (o .:? "breakpoints" .!= mempty))

instance ToJSON ListBreakpointsResponse where
        toJSON ListBreakpointsResponse'{..}
          = object
              (catMaybes
                 [("nextWaitToken" .=) <$> _lbrNextWaitToken,
                  ("breakpoints" .=) <$> _lbrBreakpoints])

-- | Response for listing debuggees.
--
-- /See:/ 'listDebuggeesResponse' smart constructor.
newtype ListDebuggeesResponse =
  ListDebuggeesResponse'
    { _ldrDebuggees :: Maybe [Debuggee]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDebuggeesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrDebuggees'
listDebuggeesResponse
    :: ListDebuggeesResponse
listDebuggeesResponse = ListDebuggeesResponse' {_ldrDebuggees = Nothing}


-- | List of debuggees accessible to the calling user. The fields
-- \`debuggee.id\` and \`description\` are guaranteed to be set. The
-- \`description\` field is a human readable field provided by agents and
-- can be displayed to users.
ldrDebuggees :: Lens' ListDebuggeesResponse [Debuggee]
ldrDebuggees
  = lens _ldrDebuggees (\ s a -> s{_ldrDebuggees = a})
      . _Default
      . _Coerce

instance FromJSON ListDebuggeesResponse where
        parseJSON
          = withObject "ListDebuggeesResponse"
              (\ o ->
                 ListDebuggeesResponse' <$>
                   (o .:? "debuggees" .!= mempty))

instance ToJSON ListDebuggeesResponse where
        toJSON ListDebuggeesResponse'{..}
          = object
              (catMaybes [("debuggees" .=) <$> _ldrDebuggees])

-- | Request to update an active breakpoint.
--
-- /See:/ 'updateActiveBreakpointRequest' smart constructor.
newtype UpdateActiveBreakpointRequest =
  UpdateActiveBreakpointRequest'
    { _uabrBreakpoint :: Maybe Breakpoint
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateActiveBreakpointRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uabrBreakpoint'
updateActiveBreakpointRequest
    :: UpdateActiveBreakpointRequest
updateActiveBreakpointRequest =
  UpdateActiveBreakpointRequest' {_uabrBreakpoint = Nothing}


-- | Updated breakpoint information. The field \`id\` must be set. The agent
-- must echo all Breakpoint specification fields in the update.
uabrBreakpoint :: Lens' UpdateActiveBreakpointRequest (Maybe Breakpoint)
uabrBreakpoint
  = lens _uabrBreakpoint
      (\ s a -> s{_uabrBreakpoint = a})

instance FromJSON UpdateActiveBreakpointRequest where
        parseJSON
          = withObject "UpdateActiveBreakpointRequest"
              (\ o ->
                 UpdateActiveBreakpointRequest' <$>
                   (o .:? "breakpoint"))

instance ToJSON UpdateActiveBreakpointRequest where
        toJSON UpdateActiveBreakpointRequest'{..}
          = object
              (catMaybes [("breakpoint" .=) <$> _uabrBreakpoint])

-- | Represents a contextual status message. The message can indicate an
-- error or informational status, and refer to specific parts of the
-- containing object. For example, the \`Breakpoint.status\` field can
-- indicate an error referring to the \`BREAKPOINT_SOURCE_LOCATION\` with
-- the message \`Location not found\`.
--
-- /See:/ 'statusMessage' smart constructor.
data StatusMessage =
  StatusMessage'
    { _smRefersTo    :: !(Maybe StatusMessageRefersTo)
    , _smIsError     :: !(Maybe Bool)
    , _smDescription :: !(Maybe FormatMessage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smRefersTo'
--
-- * 'smIsError'
--
-- * 'smDescription'
statusMessage
    :: StatusMessage
statusMessage =
  StatusMessage'
    {_smRefersTo = Nothing, _smIsError = Nothing, _smDescription = Nothing}


-- | Reference to which the message applies.
smRefersTo :: Lens' StatusMessage (Maybe StatusMessageRefersTo)
smRefersTo
  = lens _smRefersTo (\ s a -> s{_smRefersTo = a})

-- | Distinguishes errors from informational messages.
smIsError :: Lens' StatusMessage (Maybe Bool)
smIsError
  = lens _smIsError (\ s a -> s{_smIsError = a})

-- | Status message text.
smDescription :: Lens' StatusMessage (Maybe FormatMessage)
smDescription
  = lens _smDescription
      (\ s a -> s{_smDescription = a})

instance FromJSON StatusMessage where
        parseJSON
          = withObject "StatusMessage"
              (\ o ->
                 StatusMessage' <$>
                   (o .:? "refersTo") <*> (o .:? "isError") <*>
                     (o .:? "description"))

instance ToJSON StatusMessage where
        toJSON StatusMessage'{..}
          = object
              (catMaybes
                 [("refersTo" .=) <$> _smRefersTo,
                  ("isError" .=) <$> _smIsError,
                  ("description" .=) <$> _smDescription])

-- | Response for listing active breakpoints.
--
-- /See:/ 'listActiveBreakpointsResponse' smart constructor.
data ListActiveBreakpointsResponse =
  ListActiveBreakpointsResponse'
    { _labrNextWaitToken :: !(Maybe Text)
    , _labrBreakpoints   :: !(Maybe [Breakpoint])
    , _labrWaitExpired   :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListActiveBreakpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'labrNextWaitToken'
--
-- * 'labrBreakpoints'
--
-- * 'labrWaitExpired'
listActiveBreakpointsResponse
    :: ListActiveBreakpointsResponse
listActiveBreakpointsResponse =
  ListActiveBreakpointsResponse'
    { _labrNextWaitToken = Nothing
    , _labrBreakpoints = Nothing
    , _labrWaitExpired = Nothing
    }


-- | A token that can be used in the next method call to block until the list
-- of breakpoints changes.
labrNextWaitToken :: Lens' ListActiveBreakpointsResponse (Maybe Text)
labrNextWaitToken
  = lens _labrNextWaitToken
      (\ s a -> s{_labrNextWaitToken = a})

-- | List of all active breakpoints. The fields \`id\` and \`location\` are
-- guaranteed to be set on each breakpoint.
labrBreakpoints :: Lens' ListActiveBreakpointsResponse [Breakpoint]
labrBreakpoints
  = lens _labrBreakpoints
      (\ s a -> s{_labrBreakpoints = a})
      . _Default
      . _Coerce

-- | If set to \`true\`, indicates that there is no change to the list of
-- active breakpoints and the server-selected timeout has expired. The
-- \`breakpoints\` field would be empty and should be ignored.
labrWaitExpired :: Lens' ListActiveBreakpointsResponse (Maybe Bool)
labrWaitExpired
  = lens _labrWaitExpired
      (\ s a -> s{_labrWaitExpired = a})

instance FromJSON ListActiveBreakpointsResponse where
        parseJSON
          = withObject "ListActiveBreakpointsResponse"
              (\ o ->
                 ListActiveBreakpointsResponse' <$>
                   (o .:? "nextWaitToken") <*>
                     (o .:? "breakpoints" .!= mempty)
                     <*> (o .:? "waitExpired"))

instance ToJSON ListActiveBreakpointsResponse where
        toJSON ListActiveBreakpointsResponse'{..}
          = object
              (catMaybes
                 [("nextWaitToken" .=) <$> _labrNextWaitToken,
                  ("breakpoints" .=) <$> _labrBreakpoints,
                  ("waitExpired" .=) <$> _labrWaitExpired])

-- | An ExtendedSourceContext is a SourceContext combined with additional
-- details describing the context.
--
-- /See:/ 'extendedSourceContext' smart constructor.
data ExtendedSourceContext =
  ExtendedSourceContext'
    { _escContext :: !(Maybe SourceContext)
    , _escLabels  :: !(Maybe ExtendedSourceContextLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExtendedSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'escContext'
--
-- * 'escLabels'
extendedSourceContext
    :: ExtendedSourceContext
extendedSourceContext =
  ExtendedSourceContext' {_escContext = Nothing, _escLabels = Nothing}


-- | Any source context.
escContext :: Lens' ExtendedSourceContext (Maybe SourceContext)
escContext
  = lens _escContext (\ s a -> s{_escContext = a})

-- | Labels with user defined metadata.
escLabels :: Lens' ExtendedSourceContext (Maybe ExtendedSourceContextLabels)
escLabels
  = lens _escLabels (\ s a -> s{_escLabels = a})

instance FromJSON ExtendedSourceContext where
        parseJSON
          = withObject "ExtendedSourceContext"
              (\ o ->
                 ExtendedSourceContext' <$>
                   (o .:? "context") <*> (o .:? "labels"))

instance ToJSON ExtendedSourceContext where
        toJSON ExtendedSourceContext'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _escContext,
                  ("labels" .=) <$> _escLabels])

-- | A GitSourceContext denotes a particular revision in a third party Git
-- repository (e.g. GitHub).
--
-- /See:/ 'gitSourceContext' smart constructor.
data GitSourceContext =
  GitSourceContext'
    { _gURL        :: !(Maybe Text)
    , _gRevisionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GitSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gURL'
--
-- * 'gRevisionId'
gitSourceContext
    :: GitSourceContext
gitSourceContext = GitSourceContext' {_gURL = Nothing, _gRevisionId = Nothing}


-- | Git repository URL.
gURL :: Lens' GitSourceContext (Maybe Text)
gURL = lens _gURL (\ s a -> s{_gURL = a})

-- | Git commit hash. required.
gRevisionId :: Lens' GitSourceContext (Maybe Text)
gRevisionId
  = lens _gRevisionId (\ s a -> s{_gRevisionId = a})

instance FromJSON GitSourceContext where
        parseJSON
          = withObject "GitSourceContext"
              (\ o ->
                 GitSourceContext' <$>
                   (o .:? "url") <*> (o .:? "revisionId"))

instance ToJSON GitSourceContext where
        toJSON GitSourceContext'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _gURL,
                  ("revisionId" .=) <$> _gRevisionId])

-- | Represents a location in the source code.
--
-- /See:/ 'sourceLocation' smart constructor.
data SourceLocation =
  SourceLocation'
    { _slPath   :: !(Maybe Text)
    , _slLine   :: !(Maybe (Textual Int32))
    , _slColumn :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slPath'
--
-- * 'slLine'
--
-- * 'slColumn'
sourceLocation
    :: SourceLocation
sourceLocation =
  SourceLocation' {_slPath = Nothing, _slLine = Nothing, _slColumn = Nothing}


-- | Path to the source file within the source context of the target binary.
slPath :: Lens' SourceLocation (Maybe Text)
slPath = lens _slPath (\ s a -> s{_slPath = a})

-- | Line inside the file. The first line in the file has the value \`1\`.
slLine :: Lens' SourceLocation (Maybe Int32)
slLine
  = lens _slLine (\ s a -> s{_slLine = a}) .
      mapping _Coerce

-- | Column within a line. The first column in a line as the value \`1\`.
-- Agents that do not support setting breakpoints on specific columns
-- ignore this field.
slColumn :: Lens' SourceLocation (Maybe Int32)
slColumn
  = lens _slColumn (\ s a -> s{_slColumn = a}) .
      mapping _Coerce

instance FromJSON SourceLocation where
        parseJSON
          = withObject "SourceLocation"
              (\ o ->
                 SourceLocation' <$>
                   (o .:? "path") <*> (o .:? "line") <*>
                     (o .:? "column"))

instance ToJSON SourceLocation where
        toJSON SourceLocation'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _slPath, ("line" .=) <$> _slLine,
                  ("column" .=) <$> _slColumn])

-- | Represents a stack frame context.
--
-- /See:/ 'stackFrame' smart constructor.
data StackFrame =
  StackFrame'
    { _sfFunction  :: !(Maybe Text)
    , _sfLocation  :: !(Maybe SourceLocation)
    , _sfArguments :: !(Maybe [Variable])
    , _sfLocals    :: !(Maybe [Variable])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfFunction'
--
-- * 'sfLocation'
--
-- * 'sfArguments'
--
-- * 'sfLocals'
stackFrame
    :: StackFrame
stackFrame =
  StackFrame'
    { _sfFunction = Nothing
    , _sfLocation = Nothing
    , _sfArguments = Nothing
    , _sfLocals = Nothing
    }


-- | Demangled function name at the call site.
sfFunction :: Lens' StackFrame (Maybe Text)
sfFunction
  = lens _sfFunction (\ s a -> s{_sfFunction = a})

-- | Source location of the call site.
sfLocation :: Lens' StackFrame (Maybe SourceLocation)
sfLocation
  = lens _sfLocation (\ s a -> s{_sfLocation = a})

-- | Set of arguments passed to this function. Note that this might not be
-- populated for all stack frames.
sfArguments :: Lens' StackFrame [Variable]
sfArguments
  = lens _sfArguments (\ s a -> s{_sfArguments = a}) .
      _Default
      . _Coerce

-- | Set of local variables at the stack frame location. Note that this might
-- not be populated for all stack frames.
sfLocals :: Lens' StackFrame [Variable]
sfLocals
  = lens _sfLocals (\ s a -> s{_sfLocals = a}) .
      _Default
      . _Coerce

instance FromJSON StackFrame where
        parseJSON
          = withObject "StackFrame"
              (\ o ->
                 StackFrame' <$>
                   (o .:? "function") <*> (o .:? "location") <*>
                     (o .:? "arguments" .!= mempty)
                     <*> (o .:? "locals" .!= mempty))

instance ToJSON StackFrame where
        toJSON StackFrame'{..}
          = object
              (catMaybes
                 [("function" .=) <$> _sfFunction,
                  ("location" .=) <$> _sfLocation,
                  ("arguments" .=) <$> _sfArguments,
                  ("locals" .=) <$> _sfLocals])

-- | A CloudRepoSourceContext denotes a particular revision in a cloud repo
-- (a repo hosted by the Google Cloud Platform).
--
-- /See:/ 'cloudRepoSourceContext' smart constructor.
data CloudRepoSourceContext =
  CloudRepoSourceContext'
    { _crscRepoId       :: !(Maybe RepoId)
    , _crscAliasName    :: !(Maybe Text)
    , _crscRevisionId   :: !(Maybe Text)
    , _crscAliasContext :: !(Maybe AliasContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudRepoSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crscRepoId'
--
-- * 'crscAliasName'
--
-- * 'crscRevisionId'
--
-- * 'crscAliasContext'
cloudRepoSourceContext
    :: CloudRepoSourceContext
cloudRepoSourceContext =
  CloudRepoSourceContext'
    { _crscRepoId = Nothing
    , _crscAliasName = Nothing
    , _crscRevisionId = Nothing
    , _crscAliasContext = Nothing
    }


-- | The ID of the repo.
crscRepoId :: Lens' CloudRepoSourceContext (Maybe RepoId)
crscRepoId
  = lens _crscRepoId (\ s a -> s{_crscRepoId = a})

-- | The name of an alias (branch, tag, etc.).
crscAliasName :: Lens' CloudRepoSourceContext (Maybe Text)
crscAliasName
  = lens _crscAliasName
      (\ s a -> s{_crscAliasName = a})

-- | A revision ID.
crscRevisionId :: Lens' CloudRepoSourceContext (Maybe Text)
crscRevisionId
  = lens _crscRevisionId
      (\ s a -> s{_crscRevisionId = a})

-- | An alias, which may be a branch or tag.
crscAliasContext :: Lens' CloudRepoSourceContext (Maybe AliasContext)
crscAliasContext
  = lens _crscAliasContext
      (\ s a -> s{_crscAliasContext = a})

instance FromJSON CloudRepoSourceContext where
        parseJSON
          = withObject "CloudRepoSourceContext"
              (\ o ->
                 CloudRepoSourceContext' <$>
                   (o .:? "repoId") <*> (o .:? "aliasName") <*>
                     (o .:? "revisionId")
                     <*> (o .:? "aliasContext"))

instance ToJSON CloudRepoSourceContext where
        toJSON CloudRepoSourceContext'{..}
          = object
              (catMaybes
                 [("repoId" .=) <$> _crscRepoId,
                  ("aliasName" .=) <$> _crscAliasName,
                  ("revisionId" .=) <$> _crscRevisionId,
                  ("aliasContext" .=) <$> _crscAliasContext])

-- | A set of custom debuggee properties, populated by the agent, to be
-- displayed to the user.
--
-- /See:/ 'debuggeeLabels' smart constructor.
newtype DebuggeeLabels =
  DebuggeeLabels'
    { _dlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DebuggeeLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlAddtional'
debuggeeLabels
    :: HashMap Text Text -- ^ 'dlAddtional'
    -> DebuggeeLabels
debuggeeLabels pDlAddtional_ =
  DebuggeeLabels' {_dlAddtional = _Coerce # pDlAddtional_}


dlAddtional :: Lens' DebuggeeLabels (HashMap Text Text)
dlAddtional
  = lens _dlAddtional (\ s a -> s{_dlAddtional = a}) .
      _Coerce

instance FromJSON DebuggeeLabels where
        parseJSON
          = withObject "DebuggeeLabels"
              (\ o -> DebuggeeLabels' <$> (parseJSONObject o))

instance ToJSON DebuggeeLabels where
        toJSON = toJSON . _dlAddtional

-- | Represents the debugged application. The application may include one or
-- more replicated processes executing the same code. Each of these
-- processes is attached with a debugger agent, carrying out the debugging
-- commands. Agents attached to the same debuggee identify themselves as
-- such by using exactly the same Debuggee message value when registering.
--
-- /See:/ 'debuggee' smart constructor.
data Debuggee =
  Debuggee'
    { _dStatus            :: !(Maybe StatusMessage)
    , _dUniquifier        :: !(Maybe Text)
    , _dProject           :: !(Maybe Text)
    , _dExtSourceContexts :: !(Maybe [ExtendedSourceContext])
    , _dAgentVersion      :: !(Maybe Text)
    , _dIsDisabled        :: !(Maybe Bool)
    , _dId                :: !(Maybe Text)
    , _dLabels            :: !(Maybe DebuggeeLabels)
    , _dDescription       :: !(Maybe Text)
    , _dIsInactive        :: !(Maybe Bool)
    , _dSourceContexts    :: !(Maybe [SourceContext])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Debuggee' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStatus'
--
-- * 'dUniquifier'
--
-- * 'dProject'
--
-- * 'dExtSourceContexts'
--
-- * 'dAgentVersion'
--
-- * 'dIsDisabled'
--
-- * 'dId'
--
-- * 'dLabels'
--
-- * 'dDescription'
--
-- * 'dIsInactive'
--
-- * 'dSourceContexts'
debuggee
    :: Debuggee
debuggee =
  Debuggee'
    { _dStatus = Nothing
    , _dUniquifier = Nothing
    , _dProject = Nothing
    , _dExtSourceContexts = Nothing
    , _dAgentVersion = Nothing
    , _dIsDisabled = Nothing
    , _dId = Nothing
    , _dLabels = Nothing
    , _dDescription = Nothing
    , _dIsInactive = Nothing
    , _dSourceContexts = Nothing
    }


-- | Human readable message to be displayed to the user about this debuggee.
-- Absence of this field indicates no status. The message can be either
-- informational or an error status.
dStatus :: Lens' Debuggee (Maybe StatusMessage)
dStatus = lens _dStatus (\ s a -> s{_dStatus = a})

-- | Uniquifier to further distinguish the application. It is possible that
-- different applications might have identical values in the debuggee
-- message, thus, incorrectly identified as a single application by the
-- Controller service. This field adds salt to further distinguish the
-- application. Agents should consider seeding this field with value that
-- identifies the code, binary, configuration and environment.
dUniquifier :: Lens' Debuggee (Maybe Text)
dUniquifier
  = lens _dUniquifier (\ s a -> s{_dUniquifier = a})

-- | Project the debuggee is associated with. Use project number or id when
-- registering a Google Cloud Platform project.
dProject :: Lens' Debuggee (Maybe Text)
dProject = lens _dProject (\ s a -> s{_dProject = a})

-- | References to the locations and revisions of the source code used in the
-- deployed application.
dExtSourceContexts :: Lens' Debuggee [ExtendedSourceContext]
dExtSourceContexts
  = lens _dExtSourceContexts
      (\ s a -> s{_dExtSourceContexts = a})
      . _Default
      . _Coerce

-- | Version ID of the agent. Schema:
-- \`domain\/language-platform\/vmajor.minor\` (for example
-- \`google.com\/java-gcp\/v1.1\`).
dAgentVersion :: Lens' Debuggee (Maybe Text)
dAgentVersion
  = lens _dAgentVersion
      (\ s a -> s{_dAgentVersion = a})

-- | If set to \`true\`, indicates that the agent should disable itself and
-- detach from the debuggee.
dIsDisabled :: Lens' Debuggee (Maybe Bool)
dIsDisabled
  = lens _dIsDisabled (\ s a -> s{_dIsDisabled = a})

-- | Unique identifier for the debuggee generated by the controller service.
dId :: Lens' Debuggee (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

-- | A set of custom debuggee properties, populated by the agent, to be
-- displayed to the user.
dLabels :: Lens' Debuggee (Maybe DebuggeeLabels)
dLabels = lens _dLabels (\ s a -> s{_dLabels = a})

-- | Human readable description of the debuggee. Including a human-readable
-- project name, environment name and version information is recommended.
dDescription :: Lens' Debuggee (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | If set to \`true\`, indicates that Controller service does not detect
-- any activity from the debuggee agents and the application is possibly
-- stopped.
dIsInactive :: Lens' Debuggee (Maybe Bool)
dIsInactive
  = lens _dIsInactive (\ s a -> s{_dIsInactive = a})

-- | References to the locations and revisions of the source code used in the
-- deployed application.
dSourceContexts :: Lens' Debuggee [SourceContext]
dSourceContexts
  = lens _dSourceContexts
      (\ s a -> s{_dSourceContexts = a})
      . _Default
      . _Coerce

instance FromJSON Debuggee where
        parseJSON
          = withObject "Debuggee"
              (\ o ->
                 Debuggee' <$>
                   (o .:? "status") <*> (o .:? "uniquifier") <*>
                     (o .:? "project")
                     <*> (o .:? "extSourceContexts" .!= mempty)
                     <*> (o .:? "agentVersion")
                     <*> (o .:? "isDisabled")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "description")
                     <*> (o .:? "isInactive")
                     <*> (o .:? "sourceContexts" .!= mempty))

instance ToJSON Debuggee where
        toJSON Debuggee'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _dStatus,
                  ("uniquifier" .=) <$> _dUniquifier,
                  ("project" .=) <$> _dProject,
                  ("extSourceContexts" .=) <$> _dExtSourceContexts,
                  ("agentVersion" .=) <$> _dAgentVersion,
                  ("isDisabled" .=) <$> _dIsDisabled,
                  ("id" .=) <$> _dId, ("labels" .=) <$> _dLabels,
                  ("description" .=) <$> _dDescription,
                  ("isInactive" .=) <$> _dIsInactive,
                  ("sourceContexts" .=) <$> _dSourceContexts])

-- | A CloudWorkspaceSourceContext denotes a workspace at a particular
-- snapshot.
--
-- /See:/ 'cloudWorkspaceSourceContext' smart constructor.
data CloudWorkspaceSourceContext =
  CloudWorkspaceSourceContext'
    { _cwscWorkspaceId :: !(Maybe CloudWorkspaceId)
    , _cwscSnapshotId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudWorkspaceSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwscWorkspaceId'
--
-- * 'cwscSnapshotId'
cloudWorkspaceSourceContext
    :: CloudWorkspaceSourceContext
cloudWorkspaceSourceContext =
  CloudWorkspaceSourceContext'
    {_cwscWorkspaceId = Nothing, _cwscSnapshotId = Nothing}


-- | The ID of the workspace.
cwscWorkspaceId :: Lens' CloudWorkspaceSourceContext (Maybe CloudWorkspaceId)
cwscWorkspaceId
  = lens _cwscWorkspaceId
      (\ s a -> s{_cwscWorkspaceId = a})

-- | The ID of the snapshot. An empty snapshot_id refers to the most recent
-- snapshot.
cwscSnapshotId :: Lens' CloudWorkspaceSourceContext (Maybe Text)
cwscSnapshotId
  = lens _cwscSnapshotId
      (\ s a -> s{_cwscSnapshotId = a})

instance FromJSON CloudWorkspaceSourceContext where
        parseJSON
          = withObject "CloudWorkspaceSourceContext"
              (\ o ->
                 CloudWorkspaceSourceContext' <$>
                   (o .:? "workspaceId") <*> (o .:? "snapshotId"))

instance ToJSON CloudWorkspaceSourceContext where
        toJSON CloudWorkspaceSourceContext'{..}
          = object
              (catMaybes
                 [("workspaceId" .=) <$> _cwscWorkspaceId,
                  ("snapshotId" .=) <$> _cwscSnapshotId])

-- | Request to register a debuggee.
--
-- /See:/ 'registerDebuggeeRequest' smart constructor.
newtype RegisterDebuggeeRequest =
  RegisterDebuggeeRequest'
    { _rDebuggee :: Maybe Debuggee
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegisterDebuggeeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rDebuggee'
registerDebuggeeRequest
    :: RegisterDebuggeeRequest
registerDebuggeeRequest = RegisterDebuggeeRequest' {_rDebuggee = Nothing}


-- | Debuggee information to register. The fields \`project\`,
-- \`uniquifier\`, \`description\` and \`agent_version\` of the debuggee
-- must be set.
rDebuggee :: Lens' RegisterDebuggeeRequest (Maybe Debuggee)
rDebuggee
  = lens _rDebuggee (\ s a -> s{_rDebuggee = a})

instance FromJSON RegisterDebuggeeRequest where
        parseJSON
          = withObject "RegisterDebuggeeRequest"
              (\ o ->
                 RegisterDebuggeeRequest' <$> (o .:? "debuggee"))

instance ToJSON RegisterDebuggeeRequest where
        toJSON RegisterDebuggeeRequest'{..}
          = object (catMaybes [("debuggee" .=) <$> _rDebuggee])

-- | An alias to a repo revision.
--
-- /See:/ 'aliasContext' smart constructor.
data AliasContext =
  AliasContext'
    { _acKind :: !(Maybe AliasContextKind)
    , _acName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AliasContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acKind'
--
-- * 'acName'
aliasContext
    :: AliasContext
aliasContext = AliasContext' {_acKind = Nothing, _acName = Nothing}


-- | The alias kind.
acKind :: Lens' AliasContext (Maybe AliasContextKind)
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | The alias name.
acName :: Lens' AliasContext (Maybe Text)
acName = lens _acName (\ s a -> s{_acName = a})

instance FromJSON AliasContext where
        parseJSON
          = withObject "AliasContext"
              (\ o ->
                 AliasContext' <$> (o .:? "kind") <*> (o .:? "name"))

instance ToJSON AliasContext where
        toJSON AliasContext'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _acKind, ("name" .=) <$> _acName])

-- | A CloudWorkspaceId is a unique identifier for a cloud workspace. A cloud
-- workspace is a place associated with a repo where modified files can be
-- stored before they are committed.
--
-- /See:/ 'cloudWorkspaceId' smart constructor.
data CloudWorkspaceId =
  CloudWorkspaceId'
    { _cwiRepoId :: !(Maybe RepoId)
    , _cwiName   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudWorkspaceId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwiRepoId'
--
-- * 'cwiName'
cloudWorkspaceId
    :: CloudWorkspaceId
cloudWorkspaceId = CloudWorkspaceId' {_cwiRepoId = Nothing, _cwiName = Nothing}


-- | The ID of the repo containing the workspace.
cwiRepoId :: Lens' CloudWorkspaceId (Maybe RepoId)
cwiRepoId
  = lens _cwiRepoId (\ s a -> s{_cwiRepoId = a})

-- | The unique name of the workspace within the repo. This is the name
-- chosen by the client in the Source API\'s CreateWorkspace method.
cwiName :: Lens' CloudWorkspaceId (Maybe Text)
cwiName = lens _cwiName (\ s a -> s{_cwiName = a})

instance FromJSON CloudWorkspaceId where
        parseJSON
          = withObject "CloudWorkspaceId"
              (\ o ->
                 CloudWorkspaceId' <$>
                   (o .:? "repoId") <*> (o .:? "name"))

instance ToJSON CloudWorkspaceId where
        toJSON CloudWorkspaceId'{..}
          = object
              (catMaybes
                 [("repoId" .=) <$> _cwiRepoId,
                  ("name" .=) <$> _cwiName])

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Debugger.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Debugger.Types.Product where

import           Network.Google.Debugger.Types.Sum
import           Network.Google.Prelude

-- | The response of registering a debuggee.
--
-- /See:/ 'registerDebuggeeResponse' smart constructor.
newtype RegisterDebuggeeResponse = RegisterDebuggeeResponse
    { _rdrDebuggee :: Maybe Debuggee
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegisterDebuggeeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrDebuggee'
registerDebuggeeResponse
    :: RegisterDebuggeeResponse
registerDebuggeeResponse =
    RegisterDebuggeeResponse
    { _rdrDebuggee = Nothing
    }

-- | The debuggee resource. The field \'id\' is guranteed to be set (in
-- addition to the echoed fields).
rdrDebuggee :: Lens' RegisterDebuggeeResponse (Maybe Debuggee)
rdrDebuggee
  = lens _rdrDebuggee (\ s a -> s{_rdrDebuggee = a})

instance FromJSON RegisterDebuggeeResponse where
        parseJSON
          = withObject "RegisterDebuggeeResponse"
              (\ o ->
                 RegisterDebuggeeResponse <$> (o .:? "debuggee"))

instance ToJSON RegisterDebuggeeResponse where
        toJSON RegisterDebuggeeResponse{..}
          = object
              (catMaybes [("debuggee" .=) <$> _rdrDebuggee])

-- | A SourceContext is a reference to a tree of files. A SourceContext
-- together with a path point to a unique revision of a single file or
-- directory.
--
-- /See:/ 'sourceContext' smart constructor.
data SourceContext = SourceContext
    { _scCloudWorkspace :: !(Maybe CloudWorkspaceSourceContext)
    , _scCloudRepo      :: !(Maybe CloudRepoSourceContext)
    , _scGerrit         :: !(Maybe GerritSourceContext)
    , _scGit            :: !(Maybe GitSourceContext)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SourceContext
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
                 SourceContext <$>
                   (o .:? "cloudWorkspace") <*> (o .:? "cloudRepo") <*>
                     (o .:? "gerrit")
                     <*> (o .:? "git"))

instance ToJSON SourceContext where
        toJSON SourceContext{..}
          = object
              (catMaybes
                 [("cloudWorkspace" .=) <$> _scCloudWorkspace,
                  ("cloudRepo" .=) <$> _scCloudRepo,
                  ("gerrit" .=) <$> _scGerrit, ("git" .=) <$> _scGit])

-- | The response of setting a breakpoint.
--
-- /See:/ 'setBreakpointResponse' smart constructor.
newtype SetBreakpointResponse = SetBreakpointResponse
    { _sbrBreakpoint :: Maybe Breakpoint
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetBreakpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrBreakpoint'
setBreakpointResponse
    :: SetBreakpointResponse
setBreakpointResponse =
    SetBreakpointResponse
    { _sbrBreakpoint = Nothing
    }

-- | The breakpoint resource. The field \'id\' is guranteed to be set (in
-- addition to the echoed fileds).
sbrBreakpoint :: Lens' SetBreakpointResponse (Maybe Breakpoint)
sbrBreakpoint
  = lens _sbrBreakpoint
      (\ s a -> s{_sbrBreakpoint = a})

instance FromJSON SetBreakpointResponse where
        parseJSON
          = withObject "SetBreakpointResponse"
              (\ o ->
                 SetBreakpointResponse <$> (o .:? "breakpoint"))

instance ToJSON SetBreakpointResponse where
        toJSON SetBreakpointResponse{..}
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
    Empty
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty)

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The response of updating an active breakpoint. The message is defined to
-- allow future extensions.
--
-- /See:/ 'updateActiveBreakpointResponse' smart constructor.
data UpdateActiveBreakpointResponse =
    UpdateActiveBreakpointResponse
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateActiveBreakpointResponse' with the minimum fields required to make a request.
--
updateActiveBreakpointResponse
    :: UpdateActiveBreakpointResponse
updateActiveBreakpointResponse = UpdateActiveBreakpointResponse

instance FromJSON UpdateActiveBreakpointResponse
         where
        parseJSON
          = withObject "UpdateActiveBreakpointResponse"
              (\ o -> pure UpdateActiveBreakpointResponse)

instance ToJSON UpdateActiveBreakpointResponse where
        toJSON = const emptyObject

-- | A SourceContext referring to a Gerrit project.
--
-- /See:/ 'gerritSourceContext' smart constructor.
data GerritSourceContext = GerritSourceContext
    { _gscGerritProject :: !(Maybe Text)
    , _gscAliasName     :: !(Maybe Text)
    , _gscRevisionId    :: !(Maybe Text)
    , _gscHostURI       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
gerritSourceContext
    :: GerritSourceContext
gerritSourceContext =
    GerritSourceContext
    { _gscGerritProject = Nothing
    , _gscAliasName = Nothing
    , _gscRevisionId = Nothing
    , _gscHostURI = Nothing
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

instance FromJSON GerritSourceContext where
        parseJSON
          = withObject "GerritSourceContext"
              (\ o ->
                 GerritSourceContext <$>
                   (o .:? "gerritProject") <*> (o .:? "aliasName") <*>
                     (o .:? "revisionId")
                     <*> (o .:? "hostUri"))

instance ToJSON GerritSourceContext where
        toJSON GerritSourceContext{..}
          = object
              (catMaybes
                 [("gerritProject" .=) <$> _gscGerritProject,
                  ("aliasName" .=) <$> _gscAliasName,
                  ("revisionId" .=) <$> _gscRevisionId,
                  ("hostUri" .=) <$> _gscHostURI])

-- | A unique identifier for a cloud repo.
--
-- /See:/ 'repoId' smart constructor.
data RepoId = RepoId
    { _riUid           :: !(Maybe Text)
    , _riProjectRepoId :: !(Maybe ProjectRepoId)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepoId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riUid'
--
-- * 'riProjectRepoId'
repoId
    :: RepoId
repoId =
    RepoId
    { _riUid = Nothing
    , _riProjectRepoId = Nothing
    }

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
                 RepoId <$> (o .:? "uid") <*> (o .:? "projectRepoId"))

instance ToJSON RepoId where
        toJSON RepoId{..}
          = object
              (catMaybes
                 [("uid" .=) <$> _riUid,
                  ("projectRepoId" .=) <$> _riProjectRepoId])

-- | Selects a repo using a Google Cloud Platform project ID (e.g.
-- winged-cargo-31) and a repo name within that project.
--
-- /See:/ 'projectRepoId' smart constructor.
data ProjectRepoId = ProjectRepoId
    { _priRepoName  :: !(Maybe Text)
    , _priProjectId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectRepoId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'priRepoName'
--
-- * 'priProjectId'
projectRepoId
    :: ProjectRepoId
projectRepoId =
    ProjectRepoId
    { _priRepoName = Nothing
    , _priProjectId = Nothing
    }

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
                 ProjectRepoId <$>
                   (o .:? "repoName") <*> (o .:? "projectId"))

instance ToJSON ProjectRepoId where
        toJSON ProjectRepoId{..}
          = object
              (catMaybes
                 [("repoName" .=) <$> _priRepoName,
                  ("projectId" .=) <$> _priProjectId])

-- | Represents a message with parameters.
--
-- /See:/ 'formatMessage' smart constructor.
data FormatMessage = FormatMessage
    { _fmFormat     :: !(Maybe Text)
    , _fmParameters :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FormatMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmFormat'
--
-- * 'fmParameters'
formatMessage
    :: FormatMessage
formatMessage =
    FormatMessage
    { _fmFormat = Nothing
    , _fmParameters = Nothing
    }

-- | Format template of the message. The \"format\" uses placeholders \"$0\",
-- \"$1\", etc. to reference parameters. \"$$\" can be used to denote the \'$\'
-- character. Examples: \"Failed to load \'$0\' which helps debug $1 the
-- first time it is loaded. Again, $0 is very important.\" \"Please pay
-- $$10 to use $0 instead of $1.\"
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
                 FormatMessage <$>
                   (o .:? "format") <*> (o .:? "parameters" .!= mempty))

instance ToJSON FormatMessage where
        toJSON FormatMessage{..}
          = object
              (catMaybes
                 [("format" .=) <$> _fmFormat,
                  ("parameters" .=) <$> _fmParameters])

-- | Represents the breakpoint specification, status and results.
--
-- /See:/ 'breakpoint' smart constructor.
data Breakpoint = Breakpoint
    { _bStatus               :: !(Maybe StatusMessage)
    , _bLogLevel             :: !(Maybe Text)
    , _bLocation             :: !(Maybe SourceLocation)
    , _bAction               :: !(Maybe Text)
    , _bFinalTime            :: !(Maybe Text)
    , _bExpressions          :: !(Maybe [Text])
    , _bLogMessageFormat     :: !(Maybe Text)
    , _bId                   :: !(Maybe Text)
    , _bUserEmail            :: !(Maybe Text)
    , _bVariableTable        :: !(Maybe [Variable])
    , _bStackFrames          :: !(Maybe [StackFrame])
    , _bCondition            :: !(Maybe Text)
    , _bEvaluatedExpressions :: !(Maybe [Variable])
    , _bCreateTime           :: !(Maybe Text)
    , _bIsFinalState         :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Breakpoint
    { _bStatus = Nothing
    , _bLogLevel = Nothing
    , _bLocation = Nothing
    , _bAction = Nothing
    , _bFinalTime = Nothing
    , _bExpressions = Nothing
    , _bLogMessageFormat = Nothing
    , _bId = Nothing
    , _bUserEmail = Nothing
    , _bVariableTable = Nothing
    , _bStackFrames = Nothing
    , _bCondition = Nothing
    , _bEvaluatedExpressions = Nothing
    , _bCreateTime = Nothing
    , _bIsFinalState = Nothing
    }

-- | Breakpoint status. The status includes an error flag and a human
-- readable message. This field will usually stay unset. The message can be
-- either informational or error. Nevertheless, clients should always
-- display the text message back to the user. Error status of a breakpoint
-- indicates complete failure. Example (non-final state): \'Still loading
-- symbols...\' Examples (final state): \'Failed to insert breakpoint\'
-- referring to breakpoint, \'Field f not found in class C\' referring to
-- condition, ...
bStatus :: Lens' Breakpoint (Maybe StatusMessage)
bStatus = lens _bStatus (\ s a -> s{_bStatus = a})

-- | Indicates the severity of the log. Only relevant when action is \"LOG\".
bLogLevel :: Lens' Breakpoint (Maybe Text)
bLogLevel
  = lens _bLogLevel (\ s a -> s{_bLogLevel = a})

-- | The breakpoint source location.
bLocation :: Lens' Breakpoint (Maybe SourceLocation)
bLocation
  = lens _bLocation (\ s a -> s{_bLocation = a})

-- | Defines what to do when the breakpoint hits.
bAction :: Lens' Breakpoint (Maybe Text)
bAction = lens _bAction (\ s a -> s{_bAction = a})

-- | The time this breakpoint was finalized as seen by the server. The value
-- is in seconds resolution.
bFinalTime :: Lens' Breakpoint (Maybe Text)
bFinalTime
  = lens _bFinalTime (\ s a -> s{_bFinalTime = a})

-- | A list of read-only expressions to evaluate at the breakpoint location.
-- The expressions are composed using expressions in the programming
-- language at the source location. If the breakpoint action is \"LOG\",
-- the evaluated expressions are included in log statements.
bExpressions :: Lens' Breakpoint [Text]
bExpressions
  = lens _bExpressions (\ s a -> s{_bExpressions = a})
      . _Default
      . _Coerce

-- | Only relevant when action is \"LOG\". Defines the message to log when
-- the breakpoint hits. The message may include parameter placeholders
-- \"$0\", \"$1\", etc. These placeholders will be replaced with the
-- evaluated value of the appropriate expression. Expressions not
-- referenced in \"log_message_format\" will not be logged. Example:
-- \"Poisonous message received, id = $0, count = $1\" with expressions = [
-- \"message.id\", \"message.count\" ].
bLogMessageFormat :: Lens' Breakpoint (Maybe Text)
bLogMessageFormat
  = lens _bLogMessageFormat
      (\ s a -> s{_bLogMessageFormat = a})

-- | Breakpoint identifier, unique in the scope of the debuggee.
bId :: Lens' Breakpoint (Maybe Text)
bId = lens _bId (\ s a -> s{_bId = a})

-- | The e-mail of the user that created this breakpoint
bUserEmail :: Lens' Breakpoint (Maybe Text)
bUserEmail
  = lens _bUserEmail (\ s a -> s{_bUserEmail = a})

-- | The variable_table exists to aid with computation, memory and network
-- traffic optimization. It enables storing a variable once and reference
-- it from multiple variables, including variables stored in the
-- variable_table itself. For example, the object \'this\', which may
-- appear at many levels of the stack, can have all of it\'s data stored
-- once in this table. The stack frame variables then would hold only a
-- reference to it. The variable var_index field is an index into this
-- repeated field. The stored objects are nameless and get their name from
-- the referencing variable. The effective variable is a merge of the
-- referencing veariable and the referenced variable.
bVariableTable :: Lens' Breakpoint [Variable]
bVariableTable
  = lens _bVariableTable
      (\ s a -> s{_bVariableTable = a})
      . _Default
      . _Coerce

-- | The stack at breakpoint time.
bStackFrames :: Lens' Breakpoint [StackFrame]
bStackFrames
  = lens _bStackFrames (\ s a -> s{_bStackFrames = a})
      . _Default
      . _Coerce

-- | A condition to trigger the breakpoint. The condition is a compound
-- boolean expression composed using expressions in a programming language
-- at the source location.
bCondition :: Lens' Breakpoint (Maybe Text)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

-- | The evaluated expressions\' values at breakpoint time. The evaluated
-- expressions appear in exactly the same order they are listed in the
-- \'expressions\' field. The \'name\' field holds the original expression
-- text, the \'value\'\/\'members\' field holds the result of the evaluated
-- expression. If the expression can not be evaluated, an error text is
-- placed in the value field.
bEvaluatedExpressions :: Lens' Breakpoint [Variable]
bEvaluatedExpressions
  = lens _bEvaluatedExpressions
      (\ s a -> s{_bEvaluatedExpressions = a})
      . _Default
      . _Coerce

-- | The time this breakpoint was created by the server. The value is in
-- seconds resolution.
bCreateTime :: Lens' Breakpoint (Maybe Text)
bCreateTime
  = lens _bCreateTime (\ s a -> s{_bCreateTime = a})

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
                 Breakpoint <$>
                   (o .:? "status") <*> (o .:? "logLevel") <*>
                     (o .:? "location")
                     <*> (o .:? "action")
                     <*> (o .:? "finalTime")
                     <*> (o .:? "expressions" .!= mempty)
                     <*> (o .:? "logMessageFormat")
                     <*> (o .:? "id")
                     <*> (o .:? "userEmail")
                     <*> (o .:? "variableTable" .!= mempty)
                     <*> (o .:? "stackFrames" .!= mempty)
                     <*> (o .:? "condition")
                     <*> (o .:? "evaluatedExpressions" .!= mempty)
                     <*> (o .:? "createTime")
                     <*> (o .:? "isFinalState"))

instance ToJSON Breakpoint where
        toJSON Breakpoint{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bStatus,
                  ("logLevel" .=) <$> _bLogLevel,
                  ("location" .=) <$> _bLocation,
                  ("action" .=) <$> _bAction,
                  ("finalTime" .=) <$> _bFinalTime,
                  ("expressions" .=) <$> _bExpressions,
                  ("logMessageFormat" .=) <$> _bLogMessageFormat,
                  ("id" .=) <$> _bId, ("userEmail" .=) <$> _bUserEmail,
                  ("variableTable" .=) <$> _bVariableTable,
                  ("stackFrames" .=) <$> _bStackFrames,
                  ("condition" .=) <$> _bCondition,
                  ("evaluatedExpressions" .=) <$>
                    _bEvaluatedExpressions,
                  ("createTime" .=) <$> _bCreateTime,
                  ("isFinalState" .=) <$> _bIsFinalState])

-- | The response of getting breakpoint information.
--
-- /See:/ 'getBreakpointResponse' smart constructor.
newtype GetBreakpointResponse = GetBreakpointResponse
    { _gbrBreakpoint :: Maybe Breakpoint
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetBreakpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbrBreakpoint'
getBreakpointResponse
    :: GetBreakpointResponse
getBreakpointResponse =
    GetBreakpointResponse
    { _gbrBreakpoint = Nothing
    }

-- | The complete breakpoint state. The fields \'id\' and \'location\' are
-- guranteed to be set.
gbrBreakpoint :: Lens' GetBreakpointResponse (Maybe Breakpoint)
gbrBreakpoint
  = lens _gbrBreakpoint
      (\ s a -> s{_gbrBreakpoint = a})

instance FromJSON GetBreakpointResponse where
        parseJSON
          = withObject "GetBreakpointResponse"
              (\ o ->
                 GetBreakpointResponse <$> (o .:? "breakpoint"))

instance ToJSON GetBreakpointResponse where
        toJSON GetBreakpointResponse{..}
          = object
              (catMaybes [("breakpoint" .=) <$> _gbrBreakpoint])

-- | Represents a variable or an argument possibly of a compound object type.
-- 1. A simple variable such as, int x = 5 is represented as: { name:
-- \"x\", value: \"5\" } 2. A compound object such as, struct T { int m1;
-- int m2; }; T x = { 3, 7 }; is represented as: { name: \"x\", members {
-- name: \"m1\", value: \"3\" }, members { name: \"m2\", value: \"7\" } }
-- 3. A pointer where the pointee was captured such as, T x = { 3, 7 }; T*
-- p = &x; is represented as: { name: \"p\", value: \"0x00500500\", members
-- { name: \"m1\", value: \"3\" }, members { name: \"m2\", value: \"7\" } }
-- 4. A pointer where the pointee was not captured or is inaccessible such
-- as, T* p = new T; is represented as: { name: \"p\", value:
-- \"0x00400400\", members { value: \"\" } } the value text should decribe
-- the reason for the missing value. such as , , . note that a null pointer
-- should not have members. 5. An unnamed value such as, int* p = new
-- int(7); is represented as, { name: \"p\", value: \"0x00500500\", members
-- { value: \"7\" } } 6. An unnamed pointer where the pointee was not
-- captured such as, int* p = new int(7); int** pp = &p; is represented as:
-- { name: \"pp\", value: \"0x00500500\", members { value: \"0x00400400\",
-- members { value: \"\" } } } To optimize computation, memory and network
-- traffic, variables that repeat in the output multiple times can be
-- stored once in a shared variable table and be referenced using the
-- var_index field. The variables stored in the shared table are nameless
-- and are essentially a partition of the complete variable. To reconstruct
-- the complete variable merge the referencing variable with the referenced
-- variable. When using the shared variable table, variables can be
-- represented as: T x = { 3, 7 }; T* p = &x; T& r = x; are represented as,
-- { name: \"x\", var_index: 3 } { name: \"p\", value \"0x00500500\",
-- var_index: 3 } { name: \"r\", var_index: 3 } with shared variable table
-- entry #3: { members { name: \"m1\", value: \"3\" }, members { name:
-- \"m2\", value: \"7\" } } Note that the pointer address is stored with
-- the referencing variable and not with the referenced variable, to allow
-- the referenced variable to be shared between pointer and references.
--
-- /See:/ 'variable' smart constructor.
data Variable = Variable
    { _vStatus        :: !(Maybe StatusMessage)
    , _vVarTableIndex :: !(Maybe Int32)
    , _vMembers       :: !(Maybe [Variable])
    , _vValue         :: !(Maybe Text)
    , _vName          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
variable
    :: Variable
variable =
    Variable
    { _vStatus = Nothing
    , _vVarTableIndex = Nothing
    , _vMembers = Nothing
    , _vValue = Nothing
    , _vName = Nothing
    }

-- | Status associated with the variable. This field will usually stay unset.
-- A status of a single variable only applies to that variable or
-- expression. The rest of breakpoint data still remains valid. Variables
-- might be reported in error state even when breakpoint is not in final
-- state. The message may refer to variable name with \"refers_to\" set to
-- \"VARIABLE_NAME\". Alternatively \"refers_to\" will be set to
-- \"VARIABLE_VALUE\". In either case variable value and members will be
-- unset. Example of error message applied to name: \"Invalid expression
-- syntax\". Example of information message applied to value: \"Not
-- captured\". Examples of error message applied to value: \"Malformed
-- string\", \"Field f not found in class C\", \"Null pointer
-- dereference\".
vStatus :: Lens' Variable (Maybe StatusMessage)
vStatus = lens _vStatus (\ s a -> s{_vStatus = a})

-- | This is a reference to a variable in the shared variable table. More
-- than one variable can reference the same variable in the table. The
-- var_index field is an index into variable_table in Breakpoint.
vVarTableIndex :: Lens' Variable (Maybe Int32)
vVarTableIndex
  = lens _vVarTableIndex
      (\ s a -> s{_vVarTableIndex = a})

-- | The members contained or pointed to by the variable.
vMembers :: Lens' Variable [Variable]
vMembers
  = lens _vMembers (\ s a -> s{_vMembers = a}) .
      _Default
      . _Coerce

-- | The simple value of the variable.
vValue :: Lens' Variable (Maybe Text)
vValue = lens _vValue (\ s a -> s{_vValue = a})

-- | The name of the variable, if any.
vName :: Lens' Variable (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

instance FromJSON Variable where
        parseJSON
          = withObject "Variable"
              (\ o ->
                 Variable <$>
                   (o .:? "status") <*> (o .:? "varTableIndex") <*>
                     (o .:? "members" .!= mempty)
                     <*> (o .:? "value")
                     <*> (o .:? "name"))

instance ToJSON Variable where
        toJSON Variable{..}
          = object
              (catMaybes
                 [("status" .=) <$> _vStatus,
                  ("varTableIndex" .=) <$> _vVarTableIndex,
                  ("members" .=) <$> _vMembers,
                  ("value" .=) <$> _vValue, ("name" .=) <$> _vName])

-- | The response of listing breakpoints.
--
-- /See:/ 'listBreakpointsResponse' smart constructor.
data ListBreakpointsResponse = ListBreakpointsResponse
    { _lbrNextWaitToken :: !(Maybe Text)
    , _lbrBreakpoints   :: !(Maybe [Breakpoint])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListBreakpointsResponse
    { _lbrNextWaitToken = Nothing
    , _lbrBreakpoints = Nothing
    }

-- | A wait token that can be used in the next call to ListBreakpoints to
-- block until the list of breakpoints has changes.
lbrNextWaitToken :: Lens' ListBreakpointsResponse (Maybe Text)
lbrNextWaitToken
  = lens _lbrNextWaitToken
      (\ s a -> s{_lbrNextWaitToken = a})

-- | List of all breakpoints with complete state. The fields \'id\' and
-- \'location\' are guranteed to be set on each breakpoint.
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
                 ListBreakpointsResponse <$>
                   (o .:? "nextWaitToken") <*>
                     (o .:? "breakpoints" .!= mempty))

instance ToJSON ListBreakpointsResponse where
        toJSON ListBreakpointsResponse{..}
          = object
              (catMaybes
                 [("nextWaitToken" .=) <$> _lbrNextWaitToken,
                  ("breakpoints" .=) <$> _lbrBreakpoints])

-- | The response of listing debuggees.
--
-- /See:/ 'listDebuggeesResponse' smart constructor.
newtype ListDebuggeesResponse = ListDebuggeesResponse
    { _ldrDebuggees :: Maybe [Debuggee]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListDebuggeesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrDebuggees'
listDebuggeesResponse
    :: ListDebuggeesResponse
listDebuggeesResponse =
    ListDebuggeesResponse
    { _ldrDebuggees = Nothing
    }

-- | The list of debuggees accessible to the calling user. Note that the
-- description field is the only human readable field that should be
-- displayed to the user. The fields \'debuggee.id\' and \'description\'
-- are guranteed to be set on each debuggee.
ldrDebuggees :: Lens' ListDebuggeesResponse [Debuggee]
ldrDebuggees
  = lens _ldrDebuggees (\ s a -> s{_ldrDebuggees = a})
      . _Default
      . _Coerce

instance FromJSON ListDebuggeesResponse where
        parseJSON
          = withObject "ListDebuggeesResponse"
              (\ o ->
                 ListDebuggeesResponse <$>
                   (o .:? "debuggees" .!= mempty))

instance ToJSON ListDebuggeesResponse where
        toJSON ListDebuggeesResponse{..}
          = object
              (catMaybes [("debuggees" .=) <$> _ldrDebuggees])

-- | The request to update an active breakpoint.
--
-- /See:/ 'updateActiveBreakpointRequest' smart constructor.
newtype UpdateActiveBreakpointRequest = UpdateActiveBreakpointRequest
    { _uabrBreakpoint :: Maybe Breakpoint
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateActiveBreakpointRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uabrBreakpoint'
updateActiveBreakpointRequest
    :: UpdateActiveBreakpointRequest
updateActiveBreakpointRequest =
    UpdateActiveBreakpointRequest
    { _uabrBreakpoint = Nothing
    }

-- | The updated breakpoint information. The field \'id\' must be set.
uabrBreakpoint :: Lens' UpdateActiveBreakpointRequest (Maybe Breakpoint)
uabrBreakpoint
  = lens _uabrBreakpoint
      (\ s a -> s{_uabrBreakpoint = a})

instance FromJSON UpdateActiveBreakpointRequest where
        parseJSON
          = withObject "UpdateActiveBreakpointRequest"
              (\ o ->
                 UpdateActiveBreakpointRequest <$>
                   (o .:? "breakpoint"))

instance ToJSON UpdateActiveBreakpointRequest where
        toJSON UpdateActiveBreakpointRequest{..}
          = object
              (catMaybes [("breakpoint" .=) <$> _uabrBreakpoint])

-- | Represents a contextual status message. The message can indicate an
-- error or informational status, and refer to specific parts of the
-- containing object. For example, the Breakpoint.status field can indicate
-- an error referring to the BREAKPOINT_SOURCE_LOCATION with the message
-- \"Location not found\".
--
-- /See:/ 'statusMessage' smart constructor.
data StatusMessage = StatusMessage
    { _smRefersTo    :: !(Maybe Text)
    , _smIsError     :: !(Maybe Bool)
    , _smDescription :: !(Maybe FormatMessage)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    StatusMessage
    { _smRefersTo = Nothing
    , _smIsError = Nothing
    , _smDescription = Nothing
    }

-- | Reference to which the message applies.
smRefersTo :: Lens' StatusMessage (Maybe Text)
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
                 StatusMessage <$>
                   (o .:? "refersTo") <*> (o .:? "isError") <*>
                     (o .:? "description"))

instance ToJSON StatusMessage where
        toJSON StatusMessage{..}
          = object
              (catMaybes
                 [("refersTo" .=) <$> _smRefersTo,
                  ("isError" .=) <$> _smIsError,
                  ("description" .=) <$> _smDescription])

-- | The response of listing active breakpoints.
--
-- /See:/ 'listActiveBreakpointsResponse' smart constructor.
data ListActiveBreakpointsResponse = ListActiveBreakpointsResponse
    { _labrNextWaitToken :: !(Maybe Text)
    , _labrBreakpoints   :: !(Maybe [Breakpoint])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListActiveBreakpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'labrNextWaitToken'
--
-- * 'labrBreakpoints'
listActiveBreakpointsResponse
    :: ListActiveBreakpointsResponse
listActiveBreakpointsResponse =
    ListActiveBreakpointsResponse
    { _labrNextWaitToken = Nothing
    , _labrBreakpoints = Nothing
    }

-- | A wait token that can be used in the next method call to block until the
-- list of breakpoints changes.
labrNextWaitToken :: Lens' ListActiveBreakpointsResponse (Maybe Text)
labrNextWaitToken
  = lens _labrNextWaitToken
      (\ s a -> s{_labrNextWaitToken = a})

-- | List of all active breakpoints. The fields \'id\' and \'location\' are
-- guranteed to be set on each breakpoint.
labrBreakpoints :: Lens' ListActiveBreakpointsResponse [Breakpoint]
labrBreakpoints
  = lens _labrBreakpoints
      (\ s a -> s{_labrBreakpoints = a})
      . _Default
      . _Coerce

instance FromJSON ListActiveBreakpointsResponse where
        parseJSON
          = withObject "ListActiveBreakpointsResponse"
              (\ o ->
                 ListActiveBreakpointsResponse <$>
                   (o .:? "nextWaitToken") <*>
                     (o .:? "breakpoints" .!= mempty))

instance ToJSON ListActiveBreakpointsResponse where
        toJSON ListActiveBreakpointsResponse{..}
          = object
              (catMaybes
                 [("nextWaitToken" .=) <$> _labrNextWaitToken,
                  ("breakpoints" .=) <$> _labrBreakpoints])

-- | A GitSourceContext denotes a particular revision in a third party Git
-- repository (e.g. GitHub).
--
-- /See:/ 'gitSourceContext' smart constructor.
data GitSourceContext = GitSourceContext
    { _gURL        :: !(Maybe Text)
    , _gRevisionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GitSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gURL'
--
-- * 'gRevisionId'
gitSourceContext
    :: GitSourceContext
gitSourceContext =
    GitSourceContext
    { _gURL = Nothing
    , _gRevisionId = Nothing
    }

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
                 GitSourceContext <$>
                   (o .:? "url") <*> (o .:? "revisionId"))

instance ToJSON GitSourceContext where
        toJSON GitSourceContext{..}
          = object
              (catMaybes
                 [("url" .=) <$> _gURL,
                  ("revisionId" .=) <$> _gRevisionId])

-- | Represents a location in the source code.
--
-- /See:/ 'sourceLocation' smart constructor.
data SourceLocation = SourceLocation
    { _slPath :: !(Maybe Text)
    , _slLine :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slPath'
--
-- * 'slLine'
sourceLocation
    :: SourceLocation
sourceLocation =
    SourceLocation
    { _slPath = Nothing
    , _slLine = Nothing
    }

-- | A path to the source file within the source context of the target
-- binary.
slPath :: Lens' SourceLocation (Maybe Text)
slPath = lens _slPath (\ s a -> s{_slPath = a})

-- | The line inside the file (first line value is \'1\').
slLine :: Lens' SourceLocation (Maybe Int32)
slLine = lens _slLine (\ s a -> s{_slLine = a})

instance FromJSON SourceLocation where
        parseJSON
          = withObject "SourceLocation"
              (\ o ->
                 SourceLocation <$> (o .:? "path") <*> (o .:? "line"))

instance ToJSON SourceLocation where
        toJSON SourceLocation{..}
          = object
              (catMaybes
                 [("path" .=) <$> _slPath, ("line" .=) <$> _slLine])

-- | Represents a stack frame context.
--
-- /See:/ 'stackFrame' smart constructor.
data StackFrame = StackFrame
    { _sfFunction  :: !(Maybe Text)
    , _sfLocation  :: !(Maybe SourceLocation)
    , _sfArguments :: !(Maybe [Variable])
    , _sfLocals    :: !(Maybe [Variable])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    StackFrame
    { _sfFunction = Nothing
    , _sfLocation = Nothing
    , _sfArguments = Nothing
    , _sfLocals = Nothing
    }

-- | The unmangled function name at the call site.
sfFunction :: Lens' StackFrame (Maybe Text)
sfFunction
  = lens _sfFunction (\ s a -> s{_sfFunction = a})

-- | The source location of the call site.
sfLocation :: Lens' StackFrame (Maybe SourceLocation)
sfLocation
  = lens _sfLocation (\ s a -> s{_sfLocation = a})

-- | The set of arguments passed to this function Note that this might not be
-- populated for all stack frames.
sfArguments :: Lens' StackFrame [Variable]
sfArguments
  = lens _sfArguments (\ s a -> s{_sfArguments = a}) .
      _Default
      . _Coerce

-- | The set of local variables at the stack frame location. Note that this
-- might not be populated for all stack frames.
sfLocals :: Lens' StackFrame [Variable]
sfLocals
  = lens _sfLocals (\ s a -> s{_sfLocals = a}) .
      _Default
      . _Coerce

instance FromJSON StackFrame where
        parseJSON
          = withObject "StackFrame"
              (\ o ->
                 StackFrame <$>
                   (o .:? "function") <*> (o .:? "location") <*>
                     (o .:? "arguments" .!= mempty)
                     <*> (o .:? "locals" .!= mempty))

instance ToJSON StackFrame where
        toJSON StackFrame{..}
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
data CloudRepoSourceContext = CloudRepoSourceContext
    { _crscRepoId     :: !(Maybe RepoId)
    , _crscAliasName  :: !(Maybe Text)
    , _crscRevisionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudRepoSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crscRepoId'
--
-- * 'crscAliasName'
--
-- * 'crscRevisionId'
cloudRepoSourceContext
    :: CloudRepoSourceContext
cloudRepoSourceContext =
    CloudRepoSourceContext
    { _crscRepoId = Nothing
    , _crscAliasName = Nothing
    , _crscRevisionId = Nothing
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

instance FromJSON CloudRepoSourceContext where
        parseJSON
          = withObject "CloudRepoSourceContext"
              (\ o ->
                 CloudRepoSourceContext <$>
                   (o .:? "repoId") <*> (o .:? "aliasName") <*>
                     (o .:? "revisionId"))

instance ToJSON CloudRepoSourceContext where
        toJSON CloudRepoSourceContext{..}
          = object
              (catMaybes
                 [("repoId" .=) <$> _crscRepoId,
                  ("aliasName" .=) <$> _crscAliasName,
                  ("revisionId" .=) <$> _crscRevisionId])

-- | A set of custom debuggee properties, populated by the agent, to be
-- displayed to the user.
--
-- /See:/ 'debuggeeLabels' smart constructor.
newtype DebuggeeLabels = DebuggeeLabels
    { _dlProperties :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggeeLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlProperties'
debuggeeLabels
    :: HashMap Text Text -- ^ 'properties'
    -> DebuggeeLabels
debuggeeLabels pDlProperties_ =
    DebuggeeLabels
    { _dlProperties = pDlProperties_
    }

dlProperties :: Lens' DebuggeeLabels (HashMap Text Text)
dlProperties
  = lens _dlProperties (\ s a -> s{_dlProperties = a})

instance FromJSON DebuggeeLabels where
        parseJSON
          = withObject "DebuggeeLabels"
              (\ o -> DebuggeeLabels <$> (parseJSONObject o))

instance ToJSON DebuggeeLabels where
        toJSON = toJSON . _dlProperties

-- | Represents the application to debug. The application may include one or
-- more replicated processes executing the same code. Each of these
-- processes is attached with a debugger agent, carrying out the debugging
-- commands. The agents attached to the same debuggee are identified by
-- using exactly the same fields\' values when registering.
--
-- /See:/ 'debuggee' smart constructor.
data Debuggee = Debuggee
    { _dStatus         :: !(Maybe StatusMessage)
    , _dUniquifier     :: !(Maybe Text)
    , _dProject        :: !(Maybe Text)
    , _dAgentVersion   :: !(Maybe Text)
    , _dIsDisabled     :: !(Maybe Bool)
    , _dId             :: !(Maybe Text)
    , _dLabels         :: !(Maybe DebuggeeLabels)
    , _dDescription    :: !(Maybe Text)
    , _dIsInactive     :: !(Maybe Bool)
    , _dSourceContexts :: !(Maybe [SourceContext])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Debuggee
    { _dStatus = Nothing
    , _dUniquifier = Nothing
    , _dProject = Nothing
    , _dAgentVersion = Nothing
    , _dIsDisabled = Nothing
    , _dId = Nothing
    , _dLabels = Nothing
    , _dDescription = Nothing
    , _dIsInactive = Nothing
    , _dSourceContexts = Nothing
    }

-- | Human readable message to be displayed to the user about this debuggee.
-- Absense of this field indicates no message. The message can be either
-- informational or error.
dStatus :: Lens' Debuggee (Maybe StatusMessage)
dStatus = lens _dStatus (\ s a -> s{_dStatus = a})

-- | The debuggee uniqifier within the project. Any string that id the
-- application within the project can be used. Recomended to include
-- environement and version or build id\'s.
dUniquifier :: Lens' Debuggee (Maybe Text)
dUniquifier
  = lens _dUniquifier (\ s a -> s{_dUniquifier = a})

-- | The project the debuggee is associated with. Use the project number when
-- registering a Google Cloud Platform project.
dProject :: Lens' Debuggee (Maybe Text)
dProject = lens _dProject (\ s a -> s{_dProject = a})

-- | Version ID of the agent release. The version ID is structured as
-- following: \"domain\/type\/vmajor.minor\" (for example
-- \"google.com\/gcp-java\/v1.1\").
dAgentVersion :: Lens' Debuggee (Maybe Text)
dAgentVersion
  = lens _dAgentVersion
      (\ s a -> s{_dAgentVersion = a})

-- | If set to true, indicates that the agent should disable itself and
-- detach from the debuggee.
dIsDisabled :: Lens' Debuggee (Maybe Bool)
dIsDisabled
  = lens _dIsDisabled (\ s a -> s{_dIsDisabled = a})

-- | Debuggee unique identifer generated by the server.
dId :: Lens' Debuggee (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

-- | A set of custom debuggee properties, populated by the agent, to be
-- displayed to the user.
dLabels :: Lens' Debuggee (Maybe DebuggeeLabels)
dLabels = lens _dLabels (\ s a -> s{_dLabels = a})

-- | A human readable description of the debuggee. Recommended to include
-- human readable project name, environment name, and version information .
dDescription :: Lens' Debuggee (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | If set to true indicates that the debuggee has not been seen by the
-- Controller service in the last active time period (defined by the
-- server).
dIsInactive :: Lens' Debuggee (Maybe Bool)
dIsInactive
  = lens _dIsInactive (\ s a -> s{_dIsInactive = a})

-- | Repository snapshots containing the source code of the project.
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
                 Debuggee <$>
                   (o .:? "status") <*> (o .:? "uniquifier") <*>
                     (o .:? "project")
                     <*> (o .:? "agentVersion")
                     <*> (o .:? "isDisabled")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "description")
                     <*> (o .:? "isInactive")
                     <*> (o .:? "sourceContexts" .!= mempty))

instance ToJSON Debuggee where
        toJSON Debuggee{..}
          = object
              (catMaybes
                 [("status" .=) <$> _dStatus,
                  ("uniquifier" .=) <$> _dUniquifier,
                  ("project" .=) <$> _dProject,
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
data CloudWorkspaceSourceContext = CloudWorkspaceSourceContext
    { _cwscWorkspaceId :: !(Maybe CloudWorkspaceId)
    , _cwscSnapshotId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CloudWorkspaceSourceContext
    { _cwscWorkspaceId = Nothing
    , _cwscSnapshotId = Nothing
    }

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
                 CloudWorkspaceSourceContext <$>
                   (o .:? "workspaceId") <*> (o .:? "snapshotId"))

instance ToJSON CloudWorkspaceSourceContext where
        toJSON CloudWorkspaceSourceContext{..}
          = object
              (catMaybes
                 [("workspaceId" .=) <$> _cwscWorkspaceId,
                  ("snapshotId" .=) <$> _cwscSnapshotId])

-- | The request to register a debuggee.
--
-- /See:/ 'registerDebuggeeRequest' smart constructor.
newtype RegisterDebuggeeRequest = RegisterDebuggeeRequest
    { _rDebuggee :: Maybe Debuggee
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegisterDebuggeeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rDebuggee'
registerDebuggeeRequest
    :: RegisterDebuggeeRequest
registerDebuggeeRequest =
    RegisterDebuggeeRequest
    { _rDebuggee = Nothing
    }

-- | The debuggee information to register. The fields \'project\',
-- \'uniquifier\', \'description\' and \'agent_version\' of the debuggee
-- must be set.
rDebuggee :: Lens' RegisterDebuggeeRequest (Maybe Debuggee)
rDebuggee
  = lens _rDebuggee (\ s a -> s{_rDebuggee = a})

instance FromJSON RegisterDebuggeeRequest where
        parseJSON
          = withObject "RegisterDebuggeeRequest"
              (\ o ->
                 RegisterDebuggeeRequest <$> (o .:? "debuggee"))

instance ToJSON RegisterDebuggeeRequest where
        toJSON RegisterDebuggeeRequest{..}
          = object (catMaybes [("debuggee" .=) <$> _rDebuggee])

-- | A CloudWorkspaceId is a unique identifier for a cloud workspace. A cloud
-- workspace is a place associated with a repo where modified files can be
-- stored before they are committed.
--
-- /See:/ 'cloudWorkspaceId' smart constructor.
data CloudWorkspaceId = CloudWorkspaceId
    { _cwiRepoId :: !(Maybe RepoId)
    , _cwiName   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudWorkspaceId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwiRepoId'
--
-- * 'cwiName'
cloudWorkspaceId
    :: CloudWorkspaceId
cloudWorkspaceId =
    CloudWorkspaceId
    { _cwiRepoId = Nothing
    , _cwiName = Nothing
    }

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
                 CloudWorkspaceId <$>
                   (o .:? "repoId") <*> (o .:? "name"))

instance ToJSON CloudWorkspaceId where
        toJSON CloudWorkspaceId{..}
          = object
              (catMaybes
                 [("repoId" .=) <$> _cwiRepoId,
                  ("name" .=) <$> _cwiName])

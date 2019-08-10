{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TagManager.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TagManager.Types.Product where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types.Sum

-- | List Variables Response.
--
-- /See:/ 'listVariablesResponse' smart constructor.
data ListVariablesResponse =
  ListVariablesResponse'
    { _lvrNextPageToken :: !(Maybe Text)
    , _lvrVariable      :: !(Maybe [Variable])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListVariablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrNextPageToken'
--
-- * 'lvrVariable'
listVariablesResponse
    :: ListVariablesResponse
listVariablesResponse =
  ListVariablesResponse' {_lvrNextPageToken = Nothing, _lvrVariable = Nothing}


-- | Continuation token for fetching the next page of results.
lvrNextPageToken :: Lens' ListVariablesResponse (Maybe Text)
lvrNextPageToken
  = lens _lvrNextPageToken
      (\ s a -> s{_lvrNextPageToken = a})

-- | All GTM Variables of a GTM Container.
lvrVariable :: Lens' ListVariablesResponse [Variable]
lvrVariable
  = lens _lvrVariable (\ s a -> s{_lvrVariable = a}) .
      _Default
      . _Coerce

instance FromJSON ListVariablesResponse where
        parseJSON
          = withObject "ListVariablesResponse"
              (\ o ->
                 ListVariablesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "variable" .!= mempty))

instance ToJSON ListVariablesResponse where
        toJSON ListVariablesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lvrNextPageToken,
                  ("variable" .=) <$> _lvrVariable])

-- | List Folders Response.
--
-- /See:/ 'listFoldersResponse' smart constructor.
data ListFoldersResponse =
  ListFoldersResponse'
    { _lfrNextPageToken :: !(Maybe Text)
    , _lfrFolder        :: !(Maybe [Folder])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListFoldersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrNextPageToken'
--
-- * 'lfrFolder'
listFoldersResponse
    :: ListFoldersResponse
listFoldersResponse =
  ListFoldersResponse' {_lfrNextPageToken = Nothing, _lfrFolder = Nothing}


-- | Continuation token for fetching the next page of results.
lfrNextPageToken :: Lens' ListFoldersResponse (Maybe Text)
lfrNextPageToken
  = lens _lfrNextPageToken
      (\ s a -> s{_lfrNextPageToken = a})

-- | All GTM Folders of a GTM Container.
lfrFolder :: Lens' ListFoldersResponse [Folder]
lfrFolder
  = lens _lfrFolder (\ s a -> s{_lfrFolder = a}) .
      _Default
      . _Coerce

instance FromJSON ListFoldersResponse where
        parseJSON
          = withObject "ListFoldersResponse"
              (\ o ->
                 ListFoldersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "folder" .!= mempty))

instance ToJSON ListFoldersResponse where
        toJSON ListFoldersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lfrNextPageToken,
                  ("folder" .=) <$> _lfrFolder])

--
-- /See:/ 'listZonesResponse' smart constructor.
data ListZonesResponse =
  ListZonesResponse'
    { _lzrNextPageToken :: !(Maybe Text)
    , _lzrZone          :: !(Maybe [Zone])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListZonesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lzrNextPageToken'
--
-- * 'lzrZone'
listZonesResponse
    :: ListZonesResponse
listZonesResponse =
  ListZonesResponse' {_lzrNextPageToken = Nothing, _lzrZone = Nothing}


-- | Continuation token for fetching the next page of results.
lzrNextPageToken :: Lens' ListZonesResponse (Maybe Text)
lzrNextPageToken
  = lens _lzrNextPageToken
      (\ s a -> s{_lzrNextPageToken = a})

-- | All GTM Zones of a GTM Container.
lzrZone :: Lens' ListZonesResponse [Zone]
lzrZone
  = lens _lzrZone (\ s a -> s{_lzrZone = a}) . _Default
      . _Coerce

instance FromJSON ListZonesResponse where
        parseJSON
          = withObject "ListZonesResponse"
              (\ o ->
                 ListZonesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "zone" .!= mempty))

instance ToJSON ListZonesResponse where
        toJSON ListZonesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lzrNextPageToken,
                  ("zone" .=) <$> _lzrZone])

-- | The result of reverting a zone in a workspace.
--
-- /See:/ 'revertZoneResponse' smart constructor.
newtype RevertZoneResponse =
  RevertZoneResponse'
    { _rzrZone :: Maybe Zone
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevertZoneResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rzrZone'
revertZoneResponse
    :: RevertZoneResponse
revertZoneResponse = RevertZoneResponse' {_rzrZone = Nothing}


-- | Zone as it appears in the latest container version since the last
-- workspace synchronization operation. If no zone is present, that means
-- the zone was deleted in the latest container version.
rzrZone :: Lens' RevertZoneResponse (Maybe Zone)
rzrZone = lens _rzrZone (\ s a -> s{_rzrZone = a})

instance FromJSON RevertZoneResponse where
        parseJSON
          = withObject "RevertZoneResponse"
              (\ o -> RevertZoneResponse' <$> (o .:? "zone"))

instance ToJSON RevertZoneResponse where
        toJSON RevertZoneResponse'{..}
          = object (catMaybes [("zone" .=) <$> _rzrZone])

-- | List Environments Response.
--
-- /See:/ 'listEnvironmentsResponse' smart constructor.
data ListEnvironmentsResponse =
  ListEnvironmentsResponse'
    { _lerNextPageToken :: !(Maybe Text)
    , _lerEnvironment   :: !(Maybe [Environment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListEnvironmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerNextPageToken'
--
-- * 'lerEnvironment'
listEnvironmentsResponse
    :: ListEnvironmentsResponse
listEnvironmentsResponse =
  ListEnvironmentsResponse'
    {_lerNextPageToken = Nothing, _lerEnvironment = Nothing}


-- | Continuation token for fetching the next page of results.
lerNextPageToken :: Lens' ListEnvironmentsResponse (Maybe Text)
lerNextPageToken
  = lens _lerNextPageToken
      (\ s a -> s{_lerNextPageToken = a})

-- | All Environments of a GTM Container.
lerEnvironment :: Lens' ListEnvironmentsResponse [Environment]
lerEnvironment
  = lens _lerEnvironment
      (\ s a -> s{_lerEnvironment = a})
      . _Default
      . _Coerce

instance FromJSON ListEnvironmentsResponse where
        parseJSON
          = withObject "ListEnvironmentsResponse"
              (\ o ->
                 ListEnvironmentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "environment" .!= mempty))

instance ToJSON ListEnvironmentsResponse where
        toJSON ListEnvironmentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lerNextPageToken,
                  ("environment" .=) <$> _lerEnvironment])

-- | The result of reverting folder changes in a workspace.
--
-- /See:/ 'revertFolderResponse' smart constructor.
newtype RevertFolderResponse =
  RevertFolderResponse'
    { _rfrFolder :: Maybe Folder
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevertFolderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfrFolder'
revertFolderResponse
    :: RevertFolderResponse
revertFolderResponse = RevertFolderResponse' {_rfrFolder = Nothing}


-- | Folder as it appears in the latest container version since the last
-- workspace synchronization operation. If no folder is present, that means
-- the folder was deleted in the latest container version.
rfrFolder :: Lens' RevertFolderResponse (Maybe Folder)
rfrFolder
  = lens _rfrFolder (\ s a -> s{_rfrFolder = a})

instance FromJSON RevertFolderResponse where
        parseJSON
          = withObject "RevertFolderResponse"
              (\ o -> RevertFolderResponse' <$> (o .:? "folder"))

instance ToJSON RevertFolderResponse where
        toJSON RevertFolderResponse'{..}
          = object (catMaybes [("folder" .=) <$> _rfrFolder])

-- | The result of reverting a variable in a workspace.
--
-- /See:/ 'revertVariableResponse' smart constructor.
newtype RevertVariableResponse =
  RevertVariableResponse'
    { _rvrVariable :: Maybe Variable
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevertVariableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rvrVariable'
revertVariableResponse
    :: RevertVariableResponse
revertVariableResponse = RevertVariableResponse' {_rvrVariable = Nothing}


-- | Variable as it appears in the latest container version since the last
-- workspace synchronization operation. If no variable is present, that
-- means the variable was deleted in the latest container version.
rvrVariable :: Lens' RevertVariableResponse (Maybe Variable)
rvrVariable
  = lens _rvrVariable (\ s a -> s{_rvrVariable = a})

instance FromJSON RevertVariableResponse where
        parseJSON
          = withObject "RevertVariableResponse"
              (\ o ->
                 RevertVariableResponse' <$> (o .:? "variable"))

instance ToJSON RevertVariableResponse where
        toJSON RevertVariableResponse'{..}
          = object
              (catMaybes [("variable" .=) <$> _rvrVariable])

-- | Publish container version response.
--
-- /See:/ 'publishContainerVersionResponse' smart constructor.
data PublishContainerVersionResponse =
  PublishContainerVersionResponse'
    { _pcvrCompilerError    :: !(Maybe Bool)
    , _pcvrContainerVersion :: !(Maybe ContainerVersion)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublishContainerVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcvrCompilerError'
--
-- * 'pcvrContainerVersion'
publishContainerVersionResponse
    :: PublishContainerVersionResponse
publishContainerVersionResponse =
  PublishContainerVersionResponse'
    {_pcvrCompilerError = Nothing, _pcvrContainerVersion = Nothing}


-- | Compiler errors or not.
pcvrCompilerError :: Lens' PublishContainerVersionResponse (Maybe Bool)
pcvrCompilerError
  = lens _pcvrCompilerError
      (\ s a -> s{_pcvrCompilerError = a})

-- | The container version created.
pcvrContainerVersion :: Lens' PublishContainerVersionResponse (Maybe ContainerVersion)
pcvrContainerVersion
  = lens _pcvrContainerVersion
      (\ s a -> s{_pcvrContainerVersion = a})

instance FromJSON PublishContainerVersionResponse
         where
        parseJSON
          = withObject "PublishContainerVersionResponse"
              (\ o ->
                 PublishContainerVersionResponse' <$>
                   (o .:? "compilerError") <*>
                     (o .:? "containerVersion"))

instance ToJSON PublishContainerVersionResponse where
        toJSON PublishContainerVersionResponse'{..}
          = object
              (catMaybes
                 [("compilerError" .=) <$> _pcvrCompilerError,
                  ("containerVersion" .=) <$> _pcvrContainerVersion])

-- | A list of workspaces in a container.
--
-- /See:/ 'listWorkspacesResponse' smart constructor.
data ListWorkspacesResponse =
  ListWorkspacesResponse'
    { _lwrNextPageToken :: !(Maybe Text)
    , _lwrWorkspace     :: !(Maybe [Workspace])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListWorkspacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwrNextPageToken'
--
-- * 'lwrWorkspace'
listWorkspacesResponse
    :: ListWorkspacesResponse
listWorkspacesResponse =
  ListWorkspacesResponse' {_lwrNextPageToken = Nothing, _lwrWorkspace = Nothing}


-- | Continuation token for fetching the next page of results.
lwrNextPageToken :: Lens' ListWorkspacesResponse (Maybe Text)
lwrNextPageToken
  = lens _lwrNextPageToken
      (\ s a -> s{_lwrNextPageToken = a})

-- | All Workspaces of a GTM Container.
lwrWorkspace :: Lens' ListWorkspacesResponse [Workspace]
lwrWorkspace
  = lens _lwrWorkspace (\ s a -> s{_lwrWorkspace = a})
      . _Default
      . _Coerce

instance FromJSON ListWorkspacesResponse where
        parseJSON
          = withObject "ListWorkspacesResponse"
              (\ o ->
                 ListWorkspacesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "workspace" .!= mempty))

instance ToJSON ListWorkspacesResponse where
        toJSON ListWorkspacesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lwrNextPageToken,
                  ("workspace" .=) <$> _lwrWorkspace])

-- | Represents a Google Tag Manager Container Version Header.
--
-- /See:/ 'containerVersionHeader' smart constructor.
data ContainerVersionHeader =
  ContainerVersionHeader'
    { _cvhNumTags            :: !(Maybe Text)
    , _cvhNumMacros          :: !(Maybe Text)
    , _cvhContainerId        :: !(Maybe Text)
    , _cvhPath               :: !(Maybe Text)
    , _cvhContainerVersionId :: !(Maybe Text)
    , _cvhAccountId          :: !(Maybe Text)
    , _cvhName               :: !(Maybe Text)
    , _cvhNumTriggers        :: !(Maybe Text)
    , _cvhDeleted            :: !(Maybe Bool)
    , _cvhNumZones           :: !(Maybe Text)
    , _cvhNumRules           :: !(Maybe Text)
    , _cvhNumVariables       :: !(Maybe Text)
    , _cvhNumCustomTemplates :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerVersionHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvhNumTags'
--
-- * 'cvhNumMacros'
--
-- * 'cvhContainerId'
--
-- * 'cvhPath'
--
-- * 'cvhContainerVersionId'
--
-- * 'cvhAccountId'
--
-- * 'cvhName'
--
-- * 'cvhNumTriggers'
--
-- * 'cvhDeleted'
--
-- * 'cvhNumZones'
--
-- * 'cvhNumRules'
--
-- * 'cvhNumVariables'
--
-- * 'cvhNumCustomTemplates'
containerVersionHeader
    :: ContainerVersionHeader
containerVersionHeader =
  ContainerVersionHeader'
    { _cvhNumTags = Nothing
    , _cvhNumMacros = Nothing
    , _cvhContainerId = Nothing
    , _cvhPath = Nothing
    , _cvhContainerVersionId = Nothing
    , _cvhAccountId = Nothing
    , _cvhName = Nothing
    , _cvhNumTriggers = Nothing
    , _cvhDeleted = Nothing
    , _cvhNumZones = Nothing
    , _cvhNumRules = Nothing
    , _cvhNumVariables = Nothing
    , _cvhNumCustomTemplates = Nothing
    }


-- | Number of tags in the container version.
cvhNumTags :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumTags
  = lens _cvhNumTags (\ s a -> s{_cvhNumTags = a})

-- | Number of macros in the container version.
cvhNumMacros :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumMacros
  = lens _cvhNumMacros (\ s a -> s{_cvhNumMacros = a})

-- | GTM Container ID.
cvhContainerId :: Lens' ContainerVersionHeader (Maybe Text)
cvhContainerId
  = lens _cvhContainerId
      (\ s a -> s{_cvhContainerId = a})

-- | GTM Container Versions\'s API relative path.
cvhPath :: Lens' ContainerVersionHeader (Maybe Text)
cvhPath = lens _cvhPath (\ s a -> s{_cvhPath = a})

-- | The Container Version ID uniquely identifies the GTM Container Version.
cvhContainerVersionId :: Lens' ContainerVersionHeader (Maybe Text)
cvhContainerVersionId
  = lens _cvhContainerVersionId
      (\ s a -> s{_cvhContainerVersionId = a})

-- | GTM Account ID.
cvhAccountId :: Lens' ContainerVersionHeader (Maybe Text)
cvhAccountId
  = lens _cvhAccountId (\ s a -> s{_cvhAccountId = a})

-- | Container version display name.
cvhName :: Lens' ContainerVersionHeader (Maybe Text)
cvhName = lens _cvhName (\ s a -> s{_cvhName = a})

-- | Number of triggers in the container version.
cvhNumTriggers :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumTriggers
  = lens _cvhNumTriggers
      (\ s a -> s{_cvhNumTriggers = a})

-- | A value of true indicates this container version has been deleted.
cvhDeleted :: Lens' ContainerVersionHeader (Maybe Bool)
cvhDeleted
  = lens _cvhDeleted (\ s a -> s{_cvhDeleted = a})

-- | Number of zones in the container version.
cvhNumZones :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumZones
  = lens _cvhNumZones (\ s a -> s{_cvhNumZones = a})

-- | Number of rules in the container version.
cvhNumRules :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumRules
  = lens _cvhNumRules (\ s a -> s{_cvhNumRules = a})

-- | Number of variables in the container version.
cvhNumVariables :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumVariables
  = lens _cvhNumVariables
      (\ s a -> s{_cvhNumVariables = a})

-- | Number of custom templates in the container version.
cvhNumCustomTemplates :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumCustomTemplates
  = lens _cvhNumCustomTemplates
      (\ s a -> s{_cvhNumCustomTemplates = a})

instance FromJSON ContainerVersionHeader where
        parseJSON
          = withObject "ContainerVersionHeader"
              (\ o ->
                 ContainerVersionHeader' <$>
                   (o .:? "numTags") <*> (o .:? "numMacros") <*>
                     (o .:? "containerId")
                     <*> (o .:? "path")
                     <*> (o .:? "containerVersionId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "numTriggers")
                     <*> (o .:? "deleted")
                     <*> (o .:? "numZones")
                     <*> (o .:? "numRules")
                     <*> (o .:? "numVariables")
                     <*> (o .:? "numCustomTemplates"))

instance ToJSON ContainerVersionHeader where
        toJSON ContainerVersionHeader'{..}
          = object
              (catMaybes
                 [("numTags" .=) <$> _cvhNumTags,
                  ("numMacros" .=) <$> _cvhNumMacros,
                  ("containerId" .=) <$> _cvhContainerId,
                  ("path" .=) <$> _cvhPath,
                  ("containerVersionId" .=) <$> _cvhContainerVersionId,
                  ("accountId" .=) <$> _cvhAccountId,
                  ("name" .=) <$> _cvhName,
                  ("numTriggers" .=) <$> _cvhNumTriggers,
                  ("deleted" .=) <$> _cvhDeleted,
                  ("numZones" .=) <$> _cvhNumZones,
                  ("numRules" .=) <$> _cvhNumRules,
                  ("numVariables" .=) <$> _cvhNumVariables,
                  ("numCustomTemplates" .=) <$>
                    _cvhNumCustomTemplates])

-- | Represents a tag that fires after another tag in order to tear down
-- dependencies.
--
-- /See:/ 'teardownTag' smart constructor.
data TeardownTag =
  TeardownTag'
    { _ttStopTeardownOnFailure :: !(Maybe Bool)
    , _ttTagName               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TeardownTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttStopTeardownOnFailure'
--
-- * 'ttTagName'
teardownTag
    :: TeardownTag
teardownTag =
  TeardownTag' {_ttStopTeardownOnFailure = Nothing, _ttTagName = Nothing}


-- | If true, fire the teardown tag if and only if the main tag fires
-- successfully. If false, fire the teardown tag regardless of main tag
-- firing status.
ttStopTeardownOnFailure :: Lens' TeardownTag (Maybe Bool)
ttStopTeardownOnFailure
  = lens _ttStopTeardownOnFailure
      (\ s a -> s{_ttStopTeardownOnFailure = a})

-- | The name of the teardown tag.
ttTagName :: Lens' TeardownTag (Maybe Text)
ttTagName
  = lens _ttTagName (\ s a -> s{_ttTagName = a})

instance FromJSON TeardownTag where
        parseJSON
          = withObject "TeardownTag"
              (\ o ->
                 TeardownTag' <$>
                   (o .:? "stopTeardownOnFailure") <*>
                     (o .:? "tagName"))

instance ToJSON TeardownTag where
        toJSON TeardownTag'{..}
          = object
              (catMaybes
                 [("stopTeardownOnFailure" .=) <$>
                    _ttStopTeardownOnFailure,
                  ("tagName" .=) <$> _ttTagName])

-- | List triggers response.
--
-- /See:/ 'listTriggersResponse' smart constructor.
data ListTriggersResponse =
  ListTriggersResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTrigger       :: !(Maybe [Trigger])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTriggersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrTrigger'
listTriggersResponse
    :: ListTriggersResponse
listTriggersResponse =
  ListTriggersResponse' {_ltrNextPageToken = Nothing, _ltrTrigger = Nothing}


-- | Continuation token for fetching the next page of results.
ltrNextPageToken :: Lens' ListTriggersResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | All GTM Triggers of a GTM Container.
ltrTrigger :: Lens' ListTriggersResponse [Trigger]
ltrTrigger
  = lens _ltrTrigger (\ s a -> s{_ltrTrigger = a}) .
      _Default
      . _Coerce

instance FromJSON ListTriggersResponse where
        parseJSON
          = withObject "ListTriggersResponse"
              (\ o ->
                 ListTriggersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "trigger" .!= mempty))

instance ToJSON ListTriggersResponse where
        toJSON ListTriggersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("trigger" .=) <$> _ltrTrigger])

-- | Represents a Google Tag Manager Tag.
--
-- /See:/ 'tag' smart constructor.
data Tag =
  Tag'
    { _tBlockingTriggerId :: !(Maybe [Text])
    , _tScheduleEndMs     :: !(Maybe (Textual Int64))
    , _tParentFolderId    :: !(Maybe Text)
    , _tLiveOnly          :: !(Maybe Bool)
    , _tContainerId       :: !(Maybe Text)
    , _tPriority          :: !(Maybe Parameter)
    , _tTeardownTag       :: !(Maybe [TeardownTag])
    , _tPath              :: !(Maybe Text)
    , _tFingerprint       :: !(Maybe Text)
    , _tTagFiringOption   :: !(Maybe TagTagFiringOption)
    , _tAccountId         :: !(Maybe Text)
    , _tTagId             :: !(Maybe Text)
    , _tName              :: !(Maybe Text)
    , _tTagManagerURL     :: !(Maybe Text)
    , _tBlockingRuleId    :: !(Maybe [Text])
    , _tSetupTag          :: !(Maybe [SetupTag])
    , _tFiringTriggerId   :: !(Maybe [Text])
    , _tWorkspaceId       :: !(Maybe Text)
    , _tType              :: !(Maybe Text)
    , _tScheduleStartMs   :: !(Maybe (Textual Int64))
    , _tNotes             :: !(Maybe Text)
    , _tPaused            :: !(Maybe Bool)
    , _tFiringRuleId      :: !(Maybe [Text])
    , _tParameter         :: !(Maybe [Parameter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tBlockingTriggerId'
--
-- * 'tScheduleEndMs'
--
-- * 'tParentFolderId'
--
-- * 'tLiveOnly'
--
-- * 'tContainerId'
--
-- * 'tPriority'
--
-- * 'tTeardownTag'
--
-- * 'tPath'
--
-- * 'tFingerprint'
--
-- * 'tTagFiringOption'
--
-- * 'tAccountId'
--
-- * 'tTagId'
--
-- * 'tName'
--
-- * 'tTagManagerURL'
--
-- * 'tBlockingRuleId'
--
-- * 'tSetupTag'
--
-- * 'tFiringTriggerId'
--
-- * 'tWorkspaceId'
--
-- * 'tType'
--
-- * 'tScheduleStartMs'
--
-- * 'tNotes'
--
-- * 'tPaused'
--
-- * 'tFiringRuleId'
--
-- * 'tParameter'
tag
    :: Tag
tag =
  Tag'
    { _tBlockingTriggerId = Nothing
    , _tScheduleEndMs = Nothing
    , _tParentFolderId = Nothing
    , _tLiveOnly = Nothing
    , _tContainerId = Nothing
    , _tPriority = Nothing
    , _tTeardownTag = Nothing
    , _tPath = Nothing
    , _tFingerprint = Nothing
    , _tTagFiringOption = Nothing
    , _tAccountId = Nothing
    , _tTagId = Nothing
    , _tName = Nothing
    , _tTagManagerURL = Nothing
    , _tBlockingRuleId = Nothing
    , _tSetupTag = Nothing
    , _tFiringTriggerId = Nothing
    , _tWorkspaceId = Nothing
    , _tType = Nothing
    , _tScheduleStartMs = Nothing
    , _tNotes = Nothing
    , _tPaused = Nothing
    , _tFiringRuleId = Nothing
    , _tParameter = Nothing
    }


-- | Blocking trigger IDs. If any of the listed triggers evaluate to true,
-- the tag will not fire.
tBlockingTriggerId :: Lens' Tag [Text]
tBlockingTriggerId
  = lens _tBlockingTriggerId
      (\ s a -> s{_tBlockingTriggerId = a})
      . _Default
      . _Coerce

-- | The end timestamp in milliseconds to schedule a tag.
tScheduleEndMs :: Lens' Tag (Maybe Int64)
tScheduleEndMs
  = lens _tScheduleEndMs
      (\ s a -> s{_tScheduleEndMs = a})
      . mapping _Coerce

-- | Parent folder id.
tParentFolderId :: Lens' Tag (Maybe Text)
tParentFolderId
  = lens _tParentFolderId
      (\ s a -> s{_tParentFolderId = a})

-- | If set to true, this tag will only fire in the live environment (e.g.
-- not in preview or debug mode).
tLiveOnly :: Lens' Tag (Maybe Bool)
tLiveOnly
  = lens _tLiveOnly (\ s a -> s{_tLiveOnly = a})

-- | GTM Container ID.
tContainerId :: Lens' Tag (Maybe Text)
tContainerId
  = lens _tContainerId (\ s a -> s{_tContainerId = a})

-- | User defined numeric priority of the tag. Tags are fired asynchronously
-- in order of priority. Tags with higher numeric value fire first. A
-- tag\'s priority can be a positive or negative value. The default value
-- is 0.
tPriority :: Lens' Tag (Maybe Parameter)
tPriority
  = lens _tPriority (\ s a -> s{_tPriority = a})

-- | The list of teardown tags. Currently we only allow one.
tTeardownTag :: Lens' Tag [TeardownTag]
tTeardownTag
  = lens _tTeardownTag (\ s a -> s{_tTeardownTag = a})
      . _Default
      . _Coerce

-- | GTM Tag\'s API relative path.
tPath :: Lens' Tag (Maybe Text)
tPath = lens _tPath (\ s a -> s{_tPath = a})

-- | The fingerprint of the GTM Tag as computed at storage time. This value
-- is recomputed whenever the tag is modified.
tFingerprint :: Lens' Tag (Maybe Text)
tFingerprint
  = lens _tFingerprint (\ s a -> s{_tFingerprint = a})

-- | Option to fire this tag.
tTagFiringOption :: Lens' Tag (Maybe TagTagFiringOption)
tTagFiringOption
  = lens _tTagFiringOption
      (\ s a -> s{_tTagFiringOption = a})

-- | GTM Account ID.
tAccountId :: Lens' Tag (Maybe Text)
tAccountId
  = lens _tAccountId (\ s a -> s{_tAccountId = a})

-- | The Tag ID uniquely identifies the GTM Tag.
tTagId :: Lens' Tag (Maybe Text)
tTagId = lens _tTagId (\ s a -> s{_tTagId = a})

-- | Tag display name.
tName :: Lens' Tag (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | Auto generated link to the tag manager UI
tTagManagerURL :: Lens' Tag (Maybe Text)
tTagManagerURL
  = lens _tTagManagerURL
      (\ s a -> s{_tTagManagerURL = a})

-- | Blocking rule IDs. If any of the listed rules evaluate to true, the tag
-- will not fire.
tBlockingRuleId :: Lens' Tag [Text]
tBlockingRuleId
  = lens _tBlockingRuleId
      (\ s a -> s{_tBlockingRuleId = a})
      . _Default
      . _Coerce

-- | The list of setup tags. Currently we only allow one.
tSetupTag :: Lens' Tag [SetupTag]
tSetupTag
  = lens _tSetupTag (\ s a -> s{_tSetupTag = a}) .
      _Default
      . _Coerce

-- | Firing trigger IDs. A tag will fire when any of the listed triggers are
-- true and all of its blockingTriggerIds (if any specified) are false.
tFiringTriggerId :: Lens' Tag [Text]
tFiringTriggerId
  = lens _tFiringTriggerId
      (\ s a -> s{_tFiringTriggerId = a})
      . _Default
      . _Coerce

-- | GTM Workspace ID.
tWorkspaceId :: Lens' Tag (Maybe Text)
tWorkspaceId
  = lens _tWorkspaceId (\ s a -> s{_tWorkspaceId = a})

-- | GTM Tag Type.
tType :: Lens' Tag (Maybe Text)
tType = lens _tType (\ s a -> s{_tType = a})

-- | The start timestamp in milliseconds to schedule a tag.
tScheduleStartMs :: Lens' Tag (Maybe Int64)
tScheduleStartMs
  = lens _tScheduleStartMs
      (\ s a -> s{_tScheduleStartMs = a})
      . mapping _Coerce

-- | User notes on how to apply this tag in the container.
tNotes :: Lens' Tag (Maybe Text)
tNotes = lens _tNotes (\ s a -> s{_tNotes = a})

-- | Indicates whether the tag is paused, which prevents the tag from firing.
tPaused :: Lens' Tag (Maybe Bool)
tPaused = lens _tPaused (\ s a -> s{_tPaused = a})

-- | Firing rule IDs. A tag will fire when any of the listed rules are true
-- and all of its blockingRuleIds (if any specified) are false.
tFiringRuleId :: Lens' Tag [Text]
tFiringRuleId
  = lens _tFiringRuleId
      (\ s a -> s{_tFiringRuleId = a})
      . _Default
      . _Coerce

-- | The tag\'s parameters.
tParameter :: Lens' Tag [Parameter]
tParameter
  = lens _tParameter (\ s a -> s{_tParameter = a}) .
      _Default
      . _Coerce

instance FromJSON Tag where
        parseJSON
          = withObject "Tag"
              (\ o ->
                 Tag' <$>
                   (o .:? "blockingTriggerId" .!= mempty) <*>
                     (o .:? "scheduleEndMs")
                     <*> (o .:? "parentFolderId")
                     <*> (o .:? "liveOnly")
                     <*> (o .:? "containerId")
                     <*> (o .:? "priority")
                     <*> (o .:? "teardownTag" .!= mempty)
                     <*> (o .:? "path")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "tagFiringOption")
                     <*> (o .:? "accountId")
                     <*> (o .:? "tagId")
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "blockingRuleId" .!= mempty)
                     <*> (o .:? "setupTag" .!= mempty)
                     <*> (o .:? "firingTriggerId" .!= mempty)
                     <*> (o .:? "workspaceId")
                     <*> (o .:? "type")
                     <*> (o .:? "scheduleStartMs")
                     <*> (o .:? "notes")
                     <*> (o .:? "paused")
                     <*> (o .:? "firingRuleId" .!= mempty)
                     <*> (o .:? "parameter" .!= mempty))

instance ToJSON Tag where
        toJSON Tag'{..}
          = object
              (catMaybes
                 [("blockingTriggerId" .=) <$> _tBlockingTriggerId,
                  ("scheduleEndMs" .=) <$> _tScheduleEndMs,
                  ("parentFolderId" .=) <$> _tParentFolderId,
                  ("liveOnly" .=) <$> _tLiveOnly,
                  ("containerId" .=) <$> _tContainerId,
                  ("priority" .=) <$> _tPriority,
                  ("teardownTag" .=) <$> _tTeardownTag,
                  ("path" .=) <$> _tPath,
                  ("fingerprint" .=) <$> _tFingerprint,
                  ("tagFiringOption" .=) <$> _tTagFiringOption,
                  ("accountId" .=) <$> _tAccountId,
                  ("tagId" .=) <$> _tTagId, ("name" .=) <$> _tName,
                  ("tagManagerUrl" .=) <$> _tTagManagerURL,
                  ("blockingRuleId" .=) <$> _tBlockingRuleId,
                  ("setupTag" .=) <$> _tSetupTag,
                  ("firingTriggerId" .=) <$> _tFiringTriggerId,
                  ("workspaceId" .=) <$> _tWorkspaceId,
                  ("type" .=) <$> _tType,
                  ("scheduleStartMs" .=) <$> _tScheduleStartMs,
                  ("notes" .=) <$> _tNotes, ("paused" .=) <$> _tPaused,
                  ("firingRuleId" .=) <$> _tFiringRuleId,
                  ("parameter" .=) <$> _tParameter])

-- | Represents a Zone\'s type restrictions.
--
-- /See:/ 'zoneTypeRestriction' smart constructor.
data ZoneTypeRestriction =
  ZoneTypeRestriction'
    { _ztrEnable            :: !(Maybe Bool)
    , _ztrWhiteListedTypeId :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ZoneTypeRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ztrEnable'
--
-- * 'ztrWhiteListedTypeId'
zoneTypeRestriction
    :: ZoneTypeRestriction
zoneTypeRestriction =
  ZoneTypeRestriction' {_ztrEnable = Nothing, _ztrWhiteListedTypeId = Nothing}


-- | True if type restrictions have been enabled for this Zone.
ztrEnable :: Lens' ZoneTypeRestriction (Maybe Bool)
ztrEnable
  = lens _ztrEnable (\ s a -> s{_ztrEnable = a})

-- | List of type public ids that have been whitelisted for use in this Zone.
ztrWhiteListedTypeId :: Lens' ZoneTypeRestriction [Text]
ztrWhiteListedTypeId
  = lens _ztrWhiteListedTypeId
      (\ s a -> s{_ztrWhiteListedTypeId = a})
      . _Default
      . _Coerce

instance FromJSON ZoneTypeRestriction where
        parseJSON
          = withObject "ZoneTypeRestriction"
              (\ o ->
                 ZoneTypeRestriction' <$>
                   (o .:? "enable") <*>
                     (o .:? "whitelistedTypeId" .!= mempty))

instance ToJSON ZoneTypeRestriction where
        toJSON ZoneTypeRestriction'{..}
          = object
              (catMaybes
                 [("enable" .=) <$> _ztrEnable,
                  ("whitelistedTypeId" .=) <$> _ztrWhiteListedTypeId])

-- | Create container versions response.
--
-- /See:/ 'createContainerVersionResponse' smart constructor.
data CreateContainerVersionResponse =
  CreateContainerVersionResponse'
    { _ccvrCompilerError    :: !(Maybe Bool)
    , _ccvrNewWorkspacePath :: !(Maybe Text)
    , _ccvrContainerVersion :: !(Maybe ContainerVersion)
    , _ccvrSyncStatus       :: !(Maybe SyncStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateContainerVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccvrCompilerError'
--
-- * 'ccvrNewWorkspacePath'
--
-- * 'ccvrContainerVersion'
--
-- * 'ccvrSyncStatus'
createContainerVersionResponse
    :: CreateContainerVersionResponse
createContainerVersionResponse =
  CreateContainerVersionResponse'
    { _ccvrCompilerError = Nothing
    , _ccvrNewWorkspacePath = Nothing
    , _ccvrContainerVersion = Nothing
    , _ccvrSyncStatus = Nothing
    }


-- | Compiler errors or not.
ccvrCompilerError :: Lens' CreateContainerVersionResponse (Maybe Bool)
ccvrCompilerError
  = lens _ccvrCompilerError
      (\ s a -> s{_ccvrCompilerError = a})

-- | Auto generated workspace path created as a result of version creation.
-- This field should only be populated if the created version was not a
-- quick preview.
ccvrNewWorkspacePath :: Lens' CreateContainerVersionResponse (Maybe Text)
ccvrNewWorkspacePath
  = lens _ccvrNewWorkspacePath
      (\ s a -> s{_ccvrNewWorkspacePath = a})

-- | The container version created.
ccvrContainerVersion :: Lens' CreateContainerVersionResponse (Maybe ContainerVersion)
ccvrContainerVersion
  = lens _ccvrContainerVersion
      (\ s a -> s{_ccvrContainerVersion = a})

-- | Whether version creation failed when syncing the workspace to the latest
-- container version.
ccvrSyncStatus :: Lens' CreateContainerVersionResponse (Maybe SyncStatus)
ccvrSyncStatus
  = lens _ccvrSyncStatus
      (\ s a -> s{_ccvrSyncStatus = a})

instance FromJSON CreateContainerVersionResponse
         where
        parseJSON
          = withObject "CreateContainerVersionResponse"
              (\ o ->
                 CreateContainerVersionResponse' <$>
                   (o .:? "compilerError") <*>
                     (o .:? "newWorkspacePath")
                     <*> (o .:? "containerVersion")
                     <*> (o .:? "syncStatus"))

instance ToJSON CreateContainerVersionResponse where
        toJSON CreateContainerVersionResponse'{..}
          = object
              (catMaybes
                 [("compilerError" .=) <$> _ccvrCompilerError,
                  ("newWorkspacePath" .=) <$> _ccvrNewWorkspacePath,
                  ("containerVersion" .=) <$> _ccvrContainerVersion,
                  ("syncStatus" .=) <$> _ccvrSyncStatus])

-- | Options for new container versions.
--
-- /See:/ 'createContainerVersionRequestVersionOptions' smart constructor.
data CreateContainerVersionRequestVersionOptions =
  CreateContainerVersionRequestVersionOptions'
    { _ccvrvoName  :: !(Maybe Text)
    , _ccvrvoNotes :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateContainerVersionRequestVersionOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccvrvoName'
--
-- * 'ccvrvoNotes'
createContainerVersionRequestVersionOptions
    :: CreateContainerVersionRequestVersionOptions
createContainerVersionRequestVersionOptions =
  CreateContainerVersionRequestVersionOptions'
    {_ccvrvoName = Nothing, _ccvrvoNotes = Nothing}


-- | The name of the container version to be created.
ccvrvoName :: Lens' CreateContainerVersionRequestVersionOptions (Maybe Text)
ccvrvoName
  = lens _ccvrvoName (\ s a -> s{_ccvrvoName = a})

-- | The notes of the container version to be created.
ccvrvoNotes :: Lens' CreateContainerVersionRequestVersionOptions (Maybe Text)
ccvrvoNotes
  = lens _ccvrvoNotes (\ s a -> s{_ccvrvoNotes = a})

instance FromJSON
           CreateContainerVersionRequestVersionOptions
         where
        parseJSON
          = withObject
              "CreateContainerVersionRequestVersionOptions"
              (\ o ->
                 CreateContainerVersionRequestVersionOptions' <$>
                   (o .:? "name") <*> (o .:? "notes"))

instance ToJSON
           CreateContainerVersionRequestVersionOptions
         where
        toJSON
          CreateContainerVersionRequestVersionOptions'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ccvrvoName,
                  ("notes" .=) <$> _ccvrvoNotes])

-- | Represents a Google Tag Manager Container Workspace.
--
-- /See:/ 'workspace' smart constructor.
data Workspace =
  Workspace'
    { _wContainerId   :: !(Maybe Text)
    , _wPath          :: !(Maybe Text)
    , _wFingerprint   :: !(Maybe Text)
    , _wAccountId     :: !(Maybe Text)
    , _wName          :: !(Maybe Text)
    , _wTagManagerURL :: !(Maybe Text)
    , _wWorkspaceId   :: !(Maybe Text)
    , _wDescription   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Workspace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wContainerId'
--
-- * 'wPath'
--
-- * 'wFingerprint'
--
-- * 'wAccountId'
--
-- * 'wName'
--
-- * 'wTagManagerURL'
--
-- * 'wWorkspaceId'
--
-- * 'wDescription'
workspace
    :: Workspace
workspace =
  Workspace'
    { _wContainerId = Nothing
    , _wPath = Nothing
    , _wFingerprint = Nothing
    , _wAccountId = Nothing
    , _wName = Nothing
    , _wTagManagerURL = Nothing
    , _wWorkspaceId = Nothing
    , _wDescription = Nothing
    }


-- | GTM Container ID.
wContainerId :: Lens' Workspace (Maybe Text)
wContainerId
  = lens _wContainerId (\ s a -> s{_wContainerId = a})

-- | GTM Workspace\'s API relative path.
wPath :: Lens' Workspace (Maybe Text)
wPath = lens _wPath (\ s a -> s{_wPath = a})

-- | The fingerprint of the GTM Workspace as computed at storage time. This
-- value is recomputed whenever the workspace is modified.
wFingerprint :: Lens' Workspace (Maybe Text)
wFingerprint
  = lens _wFingerprint (\ s a -> s{_wFingerprint = a})

-- | GTM Account ID.
wAccountId :: Lens' Workspace (Maybe Text)
wAccountId
  = lens _wAccountId (\ s a -> s{_wAccountId = a})

-- | Workspace display name.
wName :: Lens' Workspace (Maybe Text)
wName = lens _wName (\ s a -> s{_wName = a})

-- | Auto generated link to the tag manager UI
wTagManagerURL :: Lens' Workspace (Maybe Text)
wTagManagerURL
  = lens _wTagManagerURL
      (\ s a -> s{_wTagManagerURL = a})

-- | The Workspace ID uniquely identifies the GTM Workspace.
wWorkspaceId :: Lens' Workspace (Maybe Text)
wWorkspaceId
  = lens _wWorkspaceId (\ s a -> s{_wWorkspaceId = a})

-- | Workspace description.
wDescription :: Lens' Workspace (Maybe Text)
wDescription
  = lens _wDescription (\ s a -> s{_wDescription = a})

instance FromJSON Workspace where
        parseJSON
          = withObject "Workspace"
              (\ o ->
                 Workspace' <$>
                   (o .:? "containerId") <*> (o .:? "path") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "workspaceId")
                     <*> (o .:? "description"))

instance ToJSON Workspace where
        toJSON Workspace'{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _wContainerId,
                  ("path" .=) <$> _wPath,
                  ("fingerprint" .=) <$> _wFingerprint,
                  ("accountId" .=) <$> _wAccountId,
                  ("name" .=) <$> _wName,
                  ("tagManagerUrl" .=) <$> _wTagManagerURL,
                  ("workspaceId" .=) <$> _wWorkspaceId,
                  ("description" .=) <$> _wDescription])

-- | Represents a Google Tag Manager Environment. Note that a user can
-- create, delete and update environments of type USER, but can only update
-- the enable_debug and url fields of environments of other types.
--
-- /See:/ 'environment' smart constructor.
data Environment =
  Environment'
    { _eContainerId            :: !(Maybe Text)
    , _ePath                   :: !(Maybe Text)
    , _eFingerprint            :: !(Maybe Text)
    , _eContainerVersionId     :: !(Maybe Text)
    , _eURL                    :: !(Maybe Text)
    , _eAuthorizationCode      :: !(Maybe Text)
    , _eAccountId              :: !(Maybe Text)
    , _eName                   :: !(Maybe Text)
    , _eTagManagerURL          :: !(Maybe Text)
    , _eAuthorizationTimestamp :: !(Maybe Timestamp)
    , _eEnableDebug            :: !(Maybe Bool)
    , _eEnvironmentId          :: !(Maybe Text)
    , _eWorkspaceId            :: !(Maybe Text)
    , _eType                   :: !(Maybe EnvironmentType)
    , _eDescription            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eContainerId'
--
-- * 'ePath'
--
-- * 'eFingerprint'
--
-- * 'eContainerVersionId'
--
-- * 'eURL'
--
-- * 'eAuthorizationCode'
--
-- * 'eAccountId'
--
-- * 'eName'
--
-- * 'eTagManagerURL'
--
-- * 'eAuthorizationTimestamp'
--
-- * 'eEnableDebug'
--
-- * 'eEnvironmentId'
--
-- * 'eWorkspaceId'
--
-- * 'eType'
--
-- * 'eDescription'
environment
    :: Environment
environment =
  Environment'
    { _eContainerId = Nothing
    , _ePath = Nothing
    , _eFingerprint = Nothing
    , _eContainerVersionId = Nothing
    , _eURL = Nothing
    , _eAuthorizationCode = Nothing
    , _eAccountId = Nothing
    , _eName = Nothing
    , _eTagManagerURL = Nothing
    , _eAuthorizationTimestamp = Nothing
    , _eEnableDebug = Nothing
    , _eEnvironmentId = Nothing
    , _eWorkspaceId = Nothing
    , _eType = Nothing
    , _eDescription = Nothing
    }


-- | GTM Container ID.
eContainerId :: Lens' Environment (Maybe Text)
eContainerId
  = lens _eContainerId (\ s a -> s{_eContainerId = a})

-- | GTM Environment\'s API relative path.
ePath :: Lens' Environment (Maybe Text)
ePath = lens _ePath (\ s a -> s{_ePath = a})

-- | The fingerprint of the GTM environment as computed at storage time. This
-- value is recomputed whenever the environment is modified.
eFingerprint :: Lens' Environment (Maybe Text)
eFingerprint
  = lens _eFingerprint (\ s a -> s{_eFingerprint = a})

-- | Represents a link to a container version.
eContainerVersionId :: Lens' Environment (Maybe Text)
eContainerVersionId
  = lens _eContainerVersionId
      (\ s a -> s{_eContainerVersionId = a})

-- | Default preview page url for the environment.
eURL :: Lens' Environment (Maybe Text)
eURL = lens _eURL (\ s a -> s{_eURL = a})

-- | The environment authorization code.
eAuthorizationCode :: Lens' Environment (Maybe Text)
eAuthorizationCode
  = lens _eAuthorizationCode
      (\ s a -> s{_eAuthorizationCode = a})

-- | GTM Account ID.
eAccountId :: Lens' Environment (Maybe Text)
eAccountId
  = lens _eAccountId (\ s a -> s{_eAccountId = a})

-- | The environment display name. Can be set or changed only on USER type
-- environments.
eName :: Lens' Environment (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | Auto generated link to the tag manager UI
eTagManagerURL :: Lens' Environment (Maybe Text)
eTagManagerURL
  = lens _eTagManagerURL
      (\ s a -> s{_eTagManagerURL = a})

-- | The last update time-stamp for the authorization code.
eAuthorizationTimestamp :: Lens' Environment (Maybe Timestamp)
eAuthorizationTimestamp
  = lens _eAuthorizationTimestamp
      (\ s a -> s{_eAuthorizationTimestamp = a})

-- | Whether or not to enable debug by default for the environment.
eEnableDebug :: Lens' Environment (Maybe Bool)
eEnableDebug
  = lens _eEnableDebug (\ s a -> s{_eEnableDebug = a})

-- | GTM Environment ID uniquely identifies the GTM Environment.
eEnvironmentId :: Lens' Environment (Maybe Text)
eEnvironmentId
  = lens _eEnvironmentId
      (\ s a -> s{_eEnvironmentId = a})

-- | Represents a link to a quick preview of a workspace.
eWorkspaceId :: Lens' Environment (Maybe Text)
eWorkspaceId
  = lens _eWorkspaceId (\ s a -> s{_eWorkspaceId = a})

-- | The type of this environment.
eType :: Lens' Environment (Maybe EnvironmentType)
eType = lens _eType (\ s a -> s{_eType = a})

-- | The environment description. Can be set or changed only on USER type
-- environments.
eDescription :: Lens' Environment (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Environment where
        parseJSON
          = withObject "Environment"
              (\ o ->
                 Environment' <$>
                   (o .:? "containerId") <*> (o .:? "path") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "containerVersionId")
                     <*> (o .:? "url")
                     <*> (o .:? "authorizationCode")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "authorizationTimestamp")
                     <*> (o .:? "enableDebug")
                     <*> (o .:? "environmentId")
                     <*> (o .:? "workspaceId")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON Environment where
        toJSON Environment'{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _eContainerId,
                  ("path" .=) <$> _ePath,
                  ("fingerprint" .=) <$> _eFingerprint,
                  ("containerVersionId" .=) <$> _eContainerVersionId,
                  ("url" .=) <$> _eURL,
                  ("authorizationCode" .=) <$> _eAuthorizationCode,
                  ("accountId" .=) <$> _eAccountId,
                  ("name" .=) <$> _eName,
                  ("tagManagerUrl" .=) <$> _eTagManagerURL,
                  ("authorizationTimestamp" .=) <$>
                    _eAuthorizationTimestamp,
                  ("enableDebug" .=) <$> _eEnableDebug,
                  ("environmentId" .=) <$> _eEnvironmentId,
                  ("workspaceId" .=) <$> _eWorkspaceId,
                  ("type" .=) <$> _eType,
                  ("description" .=) <$> _eDescription])

-- | Defines the Google Tag Manager Account access permissions.
--
-- /See:/ 'accountAccess' smart constructor.
newtype AccountAccess =
  AccountAccess'
    { _aaPermission :: Maybe AccountAccessPermission
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaPermission'
accountAccess
    :: AccountAccess
accountAccess = AccountAccess' {_aaPermission = Nothing}


-- | Whether the user has no access, user access, or admin access to an
-- account.
aaPermission :: Lens' AccountAccess (Maybe AccountAccessPermission)
aaPermission
  = lens _aaPermission (\ s a -> s{_aaPermission = a})

instance FromJSON AccountAccess where
        parseJSON
          = withObject "AccountAccess"
              (\ o -> AccountAccess' <$> (o .:? "permission"))

instance ToJSON AccountAccess where
        toJSON AccountAccess'{..}
          = object
              (catMaybes [("permission" .=) <$> _aaPermission])

-- | List user permissions response.
--
-- /See:/ 'listUserPermissionsResponse' smart constructor.
data ListUserPermissionsResponse =
  ListUserPermissionsResponse'
    { _luprNextPageToken  :: !(Maybe Text)
    , _luprUserPermission :: !(Maybe [UserPermission])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListUserPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luprNextPageToken'
--
-- * 'luprUserPermission'
listUserPermissionsResponse
    :: ListUserPermissionsResponse
listUserPermissionsResponse =
  ListUserPermissionsResponse'
    {_luprNextPageToken = Nothing, _luprUserPermission = Nothing}


-- | Continuation token for fetching the next page of results.
luprNextPageToken :: Lens' ListUserPermissionsResponse (Maybe Text)
luprNextPageToken
  = lens _luprNextPageToken
      (\ s a -> s{_luprNextPageToken = a})

-- | All GTM UserPermissions of a GTM Account.
luprUserPermission :: Lens' ListUserPermissionsResponse [UserPermission]
luprUserPermission
  = lens _luprUserPermission
      (\ s a -> s{_luprUserPermission = a})
      . _Default
      . _Coerce

instance FromJSON ListUserPermissionsResponse where
        parseJSON
          = withObject "ListUserPermissionsResponse"
              (\ o ->
                 ListUserPermissionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "userPermission" .!= mempty))

instance ToJSON ListUserPermissionsResponse where
        toJSON ListUserPermissionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _luprNextPageToken,
                  ("userPermission" .=) <$> _luprUserPermission])

--
-- /See:/ 'createBuiltInVariableResponse' smart constructor.
newtype CreateBuiltInVariableResponse =
  CreateBuiltInVariableResponse'
    { _cbivrBuiltInVariable :: Maybe [BuiltInVariable]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateBuiltInVariableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbivrBuiltInVariable'
createBuiltInVariableResponse
    :: CreateBuiltInVariableResponse
createBuiltInVariableResponse =
  CreateBuiltInVariableResponse' {_cbivrBuiltInVariable = Nothing}


-- | List of created built-in variables.
cbivrBuiltInVariable :: Lens' CreateBuiltInVariableResponse [BuiltInVariable]
cbivrBuiltInVariable
  = lens _cbivrBuiltInVariable
      (\ s a -> s{_cbivrBuiltInVariable = a})
      . _Default
      . _Coerce

instance FromJSON CreateBuiltInVariableResponse where
        parseJSON
          = withObject "CreateBuiltInVariableResponse"
              (\ o ->
                 CreateBuiltInVariableResponse' <$>
                   (o .:? "builtInVariable" .!= mempty))

instance ToJSON CreateBuiltInVariableResponse where
        toJSON CreateBuiltInVariableResponse'{..}
          = object
              (catMaybes
                 [("builtInVariable" .=) <$> _cbivrBuiltInVariable])

-- | Represents a child container of a Zone.
--
-- /See:/ 'zoneChildContainer' smart constructor.
data ZoneChildContainer =
  ZoneChildContainer'
    { _zccPublicId :: !(Maybe Text)
    , _zccNickname :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ZoneChildContainer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zccPublicId'
--
-- * 'zccNickname'
zoneChildContainer
    :: ZoneChildContainer
zoneChildContainer =
  ZoneChildContainer' {_zccPublicId = Nothing, _zccNickname = Nothing}


-- | The child container\'s public id.
zccPublicId :: Lens' ZoneChildContainer (Maybe Text)
zccPublicId
  = lens _zccPublicId (\ s a -> s{_zccPublicId = a})

-- | The zone\'s nickname for the child container.
zccNickname :: Lens' ZoneChildContainer (Maybe Text)
zccNickname
  = lens _zccNickname (\ s a -> s{_zccNickname = a})

instance FromJSON ZoneChildContainer where
        parseJSON
          = withObject "ZoneChildContainer"
              (\ o ->
                 ZoneChildContainer' <$>
                   (o .:? "publicId") <*> (o .:? "nickname"))

instance ToJSON ZoneChildContainer where
        toJSON ZoneChildContainer'{..}
          = object
              (catMaybes
                 [("publicId" .=) <$> _zccPublicId,
                  ("nickname" .=) <$> _zccNickname])

-- | List Accounts Response.
--
-- /See:/ 'listAccountsResponse' smart constructor.
data ListAccountsResponse =
  ListAccountsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAccount       :: !(Maybe [Account])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAccount'
listAccountsResponse
    :: ListAccountsResponse
listAccountsResponse =
  ListAccountsResponse' {_larNextPageToken = Nothing, _larAccount = Nothing}


-- | Continuation token for fetching the next page of results.
larNextPageToken :: Lens' ListAccountsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | List of GTM Accounts that a user has access to.
larAccount :: Lens' ListAccountsResponse [Account]
larAccount
  = lens _larAccount (\ s a -> s{_larAccount = a}) .
      _Default
      . _Coerce

instance FromJSON ListAccountsResponse where
        parseJSON
          = withObject "ListAccountsResponse"
              (\ o ->
                 ListAccountsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "account" .!= mempty))

instance ToJSON ListAccountsResponse where
        toJSON ListAccountsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("account" .=) <$> _larAccount])

-- | Represents a merge conflict.
--
-- /See:/ 'mergeConflict' smart constructor.
data MergeConflict =
  MergeConflict'
    { _mcEntityInBaseVersion :: !(Maybe Entity)
    , _mcEntityInWorkspace   :: !(Maybe Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MergeConflict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcEntityInBaseVersion'
--
-- * 'mcEntityInWorkspace'
mergeConflict
    :: MergeConflict
mergeConflict =
  MergeConflict'
    {_mcEntityInBaseVersion = Nothing, _mcEntityInWorkspace = Nothing}


-- | The base version entity (since the latest sync operation) that has
-- conflicting changes compared to the workspace. If this field is missing,
-- it means the workspace entity is deleted from the base version.
mcEntityInBaseVersion :: Lens' MergeConflict (Maybe Entity)
mcEntityInBaseVersion
  = lens _mcEntityInBaseVersion
      (\ s a -> s{_mcEntityInBaseVersion = a})

-- | The workspace entity that has conflicting changes compared to the base
-- version. If an entity is deleted in a workspace, it will still appear
-- with a deleted change status.
mcEntityInWorkspace :: Lens' MergeConflict (Maybe Entity)
mcEntityInWorkspace
  = lens _mcEntityInWorkspace
      (\ s a -> s{_mcEntityInWorkspace = a})

instance FromJSON MergeConflict where
        parseJSON
          = withObject "MergeConflict"
              (\ o ->
                 MergeConflict' <$>
                   (o .:? "entityInBaseVersion") <*>
                     (o .:? "entityInWorkspace"))

instance ToJSON MergeConflict where
        toJSON MergeConflict'{..}
          = object
              (catMaybes
                 [("entityInBaseVersion" .=) <$>
                    _mcEntityInBaseVersion,
                  ("entityInWorkspace" .=) <$> _mcEntityInWorkspace])

-- | Represents a Google Tag Manager Folder.
--
-- /See:/ 'folder' smart constructor.
data Folder =
  Folder'
    { _fContainerId   :: !(Maybe Text)
    , _fPath          :: !(Maybe Text)
    , _fFingerprint   :: !(Maybe Text)
    , _fFolderId      :: !(Maybe Text)
    , _fAccountId     :: !(Maybe Text)
    , _fName          :: !(Maybe Text)
    , _fTagManagerURL :: !(Maybe Text)
    , _fWorkspaceId   :: !(Maybe Text)
    , _fNotes         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Folder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fContainerId'
--
-- * 'fPath'
--
-- * 'fFingerprint'
--
-- * 'fFolderId'
--
-- * 'fAccountId'
--
-- * 'fName'
--
-- * 'fTagManagerURL'
--
-- * 'fWorkspaceId'
--
-- * 'fNotes'
folder
    :: Folder
folder =
  Folder'
    { _fContainerId = Nothing
    , _fPath = Nothing
    , _fFingerprint = Nothing
    , _fFolderId = Nothing
    , _fAccountId = Nothing
    , _fName = Nothing
    , _fTagManagerURL = Nothing
    , _fWorkspaceId = Nothing
    , _fNotes = Nothing
    }


-- | GTM Container ID.
fContainerId :: Lens' Folder (Maybe Text)
fContainerId
  = lens _fContainerId (\ s a -> s{_fContainerId = a})

-- | GTM Folder\'s API relative path.
fPath :: Lens' Folder (Maybe Text)
fPath = lens _fPath (\ s a -> s{_fPath = a})

-- | The fingerprint of the GTM Folder as computed at storage time. This
-- value is recomputed whenever the folder is modified.
fFingerprint :: Lens' Folder (Maybe Text)
fFingerprint
  = lens _fFingerprint (\ s a -> s{_fFingerprint = a})

-- | The Folder ID uniquely identifies the GTM Folder.
fFolderId :: Lens' Folder (Maybe Text)
fFolderId
  = lens _fFolderId (\ s a -> s{_fFolderId = a})

-- | GTM Account ID.
fAccountId :: Lens' Folder (Maybe Text)
fAccountId
  = lens _fAccountId (\ s a -> s{_fAccountId = a})

-- | Folder display name.
fName :: Lens' Folder (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | Auto generated link to the tag manager UI
fTagManagerURL :: Lens' Folder (Maybe Text)
fTagManagerURL
  = lens _fTagManagerURL
      (\ s a -> s{_fTagManagerURL = a})

-- | GTM Workspace ID.
fWorkspaceId :: Lens' Folder (Maybe Text)
fWorkspaceId
  = lens _fWorkspaceId (\ s a -> s{_fWorkspaceId = a})

-- | User notes on how to apply this folder in the container.
fNotes :: Lens' Folder (Maybe Text)
fNotes = lens _fNotes (\ s a -> s{_fNotes = a})

instance FromJSON Folder where
        parseJSON
          = withObject "Folder"
              (\ o ->
                 Folder' <$>
                   (o .:? "containerId") <*> (o .:? "path") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "folderId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "workspaceId")
                     <*> (o .:? "notes"))

instance ToJSON Folder where
        toJSON Folder'{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _fContainerId,
                  ("path" .=) <$> _fPath,
                  ("fingerprint" .=) <$> _fFingerprint,
                  ("folderId" .=) <$> _fFolderId,
                  ("accountId" .=) <$> _fAccountId,
                  ("name" .=) <$> _fName,
                  ("tagManagerUrl" .=) <$> _fTagManagerURL,
                  ("workspaceId" .=) <$> _fWorkspaceId,
                  ("notes" .=) <$> _fNotes])

-- | Represents a Zone\'s boundaries.
--
-- /See:/ 'zoneBoundary' smart constructor.
data ZoneBoundary =
  ZoneBoundary'
    { _zbCustomEvaluationTriggerId :: !(Maybe [Text])
    , _zbCondition                 :: !(Maybe [Condition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ZoneBoundary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zbCustomEvaluationTriggerId'
--
-- * 'zbCondition'
zoneBoundary
    :: ZoneBoundary
zoneBoundary =
  ZoneBoundary' {_zbCustomEvaluationTriggerId = Nothing, _zbCondition = Nothing}


-- | Custom evaluation trigger IDs. A zone will evaluate its boundary
-- conditions when any of the listed triggers are true.
zbCustomEvaluationTriggerId :: Lens' ZoneBoundary [Text]
zbCustomEvaluationTriggerId
  = lens _zbCustomEvaluationTriggerId
      (\ s a -> s{_zbCustomEvaluationTriggerId = a})
      . _Default
      . _Coerce

-- | The conditions that, when conjoined, make up the boundary.
zbCondition :: Lens' ZoneBoundary [Condition]
zbCondition
  = lens _zbCondition (\ s a -> s{_zbCondition = a}) .
      _Default
      . _Coerce

instance FromJSON ZoneBoundary where
        parseJSON
          = withObject "ZoneBoundary"
              (\ o ->
                 ZoneBoundary' <$>
                   (o .:? "customEvaluationTriggerId" .!= mempty) <*>
                     (o .:? "condition" .!= mempty))

instance ToJSON ZoneBoundary where
        toJSON ZoneBoundary'{..}
          = object
              (catMaybes
                 [("customEvaluationTriggerId" .=) <$>
                    _zbCustomEvaluationTriggerId,
                  ("condition" .=) <$> _zbCondition])

-- | Represents a Google Tag Manager Variable.
--
-- /See:/ 'variable' smart constructor.
data Variable =
  Variable'
    { _vScheduleEndMs      :: !(Maybe (Textual Int64))
    , _vParentFolderId     :: !(Maybe Text)
    , _vContainerId        :: !(Maybe Text)
    , _vPath               :: !(Maybe Text)
    , _vFingerprint        :: !(Maybe Text)
    , _vVariableId         :: !(Maybe Text)
    , _vAccountId          :: !(Maybe Text)
    , _vDisablingTriggerId :: !(Maybe [Text])
    , _vName               :: !(Maybe Text)
    , _vTagManagerURL      :: !(Maybe Text)
    , _vFormatValue        :: !(Maybe VariableFormatValue)
    , _vWorkspaceId        :: !(Maybe Text)
    , _vType               :: !(Maybe Text)
    , _vScheduleStartMs    :: !(Maybe (Textual Int64))
    , _vNotes              :: !(Maybe Text)
    , _vEnablingTriggerId  :: !(Maybe [Text])
    , _vParameter          :: !(Maybe [Parameter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Variable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vScheduleEndMs'
--
-- * 'vParentFolderId'
--
-- * 'vContainerId'
--
-- * 'vPath'
--
-- * 'vFingerprint'
--
-- * 'vVariableId'
--
-- * 'vAccountId'
--
-- * 'vDisablingTriggerId'
--
-- * 'vName'
--
-- * 'vTagManagerURL'
--
-- * 'vFormatValue'
--
-- * 'vWorkspaceId'
--
-- * 'vType'
--
-- * 'vScheduleStartMs'
--
-- * 'vNotes'
--
-- * 'vEnablingTriggerId'
--
-- * 'vParameter'
variable
    :: Variable
variable =
  Variable'
    { _vScheduleEndMs = Nothing
    , _vParentFolderId = Nothing
    , _vContainerId = Nothing
    , _vPath = Nothing
    , _vFingerprint = Nothing
    , _vVariableId = Nothing
    , _vAccountId = Nothing
    , _vDisablingTriggerId = Nothing
    , _vName = Nothing
    , _vTagManagerURL = Nothing
    , _vFormatValue = Nothing
    , _vWorkspaceId = Nothing
    , _vType = Nothing
    , _vScheduleStartMs = Nothing
    , _vNotes = Nothing
    , _vEnablingTriggerId = Nothing
    , _vParameter = Nothing
    }


-- | The end timestamp in milliseconds to schedule a variable.
vScheduleEndMs :: Lens' Variable (Maybe Int64)
vScheduleEndMs
  = lens _vScheduleEndMs
      (\ s a -> s{_vScheduleEndMs = a})
      . mapping _Coerce

-- | Parent folder id.
vParentFolderId :: Lens' Variable (Maybe Text)
vParentFolderId
  = lens _vParentFolderId
      (\ s a -> s{_vParentFolderId = a})

-- | GTM Container ID.
vContainerId :: Lens' Variable (Maybe Text)
vContainerId
  = lens _vContainerId (\ s a -> s{_vContainerId = a})

-- | GTM Variable\'s API relative path.
vPath :: Lens' Variable (Maybe Text)
vPath = lens _vPath (\ s a -> s{_vPath = a})

-- | The fingerprint of the GTM Variable as computed at storage time. This
-- value is recomputed whenever the variable is modified.
vFingerprint :: Lens' Variable (Maybe Text)
vFingerprint
  = lens _vFingerprint (\ s a -> s{_vFingerprint = a})

-- | The Variable ID uniquely identifies the GTM Variable.
vVariableId :: Lens' Variable (Maybe Text)
vVariableId
  = lens _vVariableId (\ s a -> s{_vVariableId = a})

-- | GTM Account ID.
vAccountId :: Lens' Variable (Maybe Text)
vAccountId
  = lens _vAccountId (\ s a -> s{_vAccountId = a})

-- | For mobile containers only: A list of trigger IDs for disabling
-- conditional variables; the variable is enabled if one of the enabling
-- trigger is true while all the disabling trigger are false. Treated as an
-- unordered set.
vDisablingTriggerId :: Lens' Variable [Text]
vDisablingTriggerId
  = lens _vDisablingTriggerId
      (\ s a -> s{_vDisablingTriggerId = a})
      . _Default
      . _Coerce

-- | Variable display name.
vName :: Lens' Variable (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

-- | Auto generated link to the tag manager UI
vTagManagerURL :: Lens' Variable (Maybe Text)
vTagManagerURL
  = lens _vTagManagerURL
      (\ s a -> s{_vTagManagerURL = a})

-- | Option to convert a variable value to other value.
vFormatValue :: Lens' Variable (Maybe VariableFormatValue)
vFormatValue
  = lens _vFormatValue (\ s a -> s{_vFormatValue = a})

-- | GTM Workspace ID.
vWorkspaceId :: Lens' Variable (Maybe Text)
vWorkspaceId
  = lens _vWorkspaceId (\ s a -> s{_vWorkspaceId = a})

-- | GTM Variable Type.
vType :: Lens' Variable (Maybe Text)
vType = lens _vType (\ s a -> s{_vType = a})

-- | The start timestamp in milliseconds to schedule a variable.
vScheduleStartMs :: Lens' Variable (Maybe Int64)
vScheduleStartMs
  = lens _vScheduleStartMs
      (\ s a -> s{_vScheduleStartMs = a})
      . mapping _Coerce

-- | User notes on how to apply this variable in the container.
vNotes :: Lens' Variable (Maybe Text)
vNotes = lens _vNotes (\ s a -> s{_vNotes = a})

-- | For mobile containers only: A list of trigger IDs for enabling
-- conditional variables; the variable is enabled if one of the enabling
-- triggers is true while all the disabling triggers are false. Treated as
-- an unordered set.
vEnablingTriggerId :: Lens' Variable [Text]
vEnablingTriggerId
  = lens _vEnablingTriggerId
      (\ s a -> s{_vEnablingTriggerId = a})
      . _Default
      . _Coerce

-- | The variable\'s parameters.
vParameter :: Lens' Variable [Parameter]
vParameter
  = lens _vParameter (\ s a -> s{_vParameter = a}) .
      _Default
      . _Coerce

instance FromJSON Variable where
        parseJSON
          = withObject "Variable"
              (\ o ->
                 Variable' <$>
                   (o .:? "scheduleEndMs") <*> (o .:? "parentFolderId")
                     <*> (o .:? "containerId")
                     <*> (o .:? "path")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "variableId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "disablingTriggerId" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "formatValue")
                     <*> (o .:? "workspaceId")
                     <*> (o .:? "type")
                     <*> (o .:? "scheduleStartMs")
                     <*> (o .:? "notes")
                     <*> (o .:? "enablingTriggerId" .!= mempty)
                     <*> (o .:? "parameter" .!= mempty))

instance ToJSON Variable where
        toJSON Variable'{..}
          = object
              (catMaybes
                 [("scheduleEndMs" .=) <$> _vScheduleEndMs,
                  ("parentFolderId" .=) <$> _vParentFolderId,
                  ("containerId" .=) <$> _vContainerId,
                  ("path" .=) <$> _vPath,
                  ("fingerprint" .=) <$> _vFingerprint,
                  ("variableId" .=) <$> _vVariableId,
                  ("accountId" .=) <$> _vAccountId,
                  ("disablingTriggerId" .=) <$> _vDisablingTriggerId,
                  ("name" .=) <$> _vName,
                  ("tagManagerUrl" .=) <$> _vTagManagerURL,
                  ("formatValue" .=) <$> _vFormatValue,
                  ("workspaceId" .=) <$> _vWorkspaceId,
                  ("type" .=) <$> _vType,
                  ("scheduleStartMs" .=) <$> _vScheduleStartMs,
                  ("notes" .=) <$> _vNotes,
                  ("enablingTriggerId" .=) <$> _vEnablingTriggerId,
                  ("parameter" .=) <$> _vParameter])

-- | Represents a Google Tag Manager Zone\'s contents.
--
-- /See:/ 'zone' smart constructor.
data Zone =
  Zone'
    { _zContainerId     :: !(Maybe Text)
    , _zPath            :: !(Maybe Text)
    , _zBoundary        :: !(Maybe ZoneBoundary)
    , _zFingerprint     :: !(Maybe Text)
    , _zZoneId          :: !(Maybe Text)
    , _zTypeRestriction :: !(Maybe ZoneTypeRestriction)
    , _zAccountId       :: !(Maybe Text)
    , _zName            :: !(Maybe Text)
    , _zTagManagerURL   :: !(Maybe Text)
    , _zChildContainer  :: !(Maybe [ZoneChildContainer])
    , _zWorkspaceId     :: !(Maybe Text)
    , _zNotes           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Zone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zContainerId'
--
-- * 'zPath'
--
-- * 'zBoundary'
--
-- * 'zFingerprint'
--
-- * 'zZoneId'
--
-- * 'zTypeRestriction'
--
-- * 'zAccountId'
--
-- * 'zName'
--
-- * 'zTagManagerURL'
--
-- * 'zChildContainer'
--
-- * 'zWorkspaceId'
--
-- * 'zNotes'
zone
    :: Zone
zone =
  Zone'
    { _zContainerId = Nothing
    , _zPath = Nothing
    , _zBoundary = Nothing
    , _zFingerprint = Nothing
    , _zZoneId = Nothing
    , _zTypeRestriction = Nothing
    , _zAccountId = Nothing
    , _zName = Nothing
    , _zTagManagerURL = Nothing
    , _zChildContainer = Nothing
    , _zWorkspaceId = Nothing
    , _zNotes = Nothing
    }


-- | GTM Container ID.
zContainerId :: Lens' Zone (Maybe Text)
zContainerId
  = lens _zContainerId (\ s a -> s{_zContainerId = a})

-- | GTM Zone\'s API relative path.
zPath :: Lens' Zone (Maybe Text)
zPath = lens _zPath (\ s a -> s{_zPath = a})

-- | This Zone\'s boundary.
zBoundary :: Lens' Zone (Maybe ZoneBoundary)
zBoundary
  = lens _zBoundary (\ s a -> s{_zBoundary = a})

-- | The fingerprint of the GTM Zone as computed at storage time. This value
-- is recomputed whenever the zone is modified.
zFingerprint :: Lens' Zone (Maybe Text)
zFingerprint
  = lens _zFingerprint (\ s a -> s{_zFingerprint = a})

-- | The Zone ID uniquely identifies the GTM Zone.
zZoneId :: Lens' Zone (Maybe Text)
zZoneId = lens _zZoneId (\ s a -> s{_zZoneId = a})

-- | This Zone\'s type restrictions.
zTypeRestriction :: Lens' Zone (Maybe ZoneTypeRestriction)
zTypeRestriction
  = lens _zTypeRestriction
      (\ s a -> s{_zTypeRestriction = a})

-- | GTM Account ID.
zAccountId :: Lens' Zone (Maybe Text)
zAccountId
  = lens _zAccountId (\ s a -> s{_zAccountId = a})

-- | Zone display name.
zName :: Lens' Zone (Maybe Text)
zName = lens _zName (\ s a -> s{_zName = a})

-- | Auto generated link to the tag manager UI
zTagManagerURL :: Lens' Zone (Maybe Text)
zTagManagerURL
  = lens _zTagManagerURL
      (\ s a -> s{_zTagManagerURL = a})

-- | Containers that are children of this Zone.
zChildContainer :: Lens' Zone [ZoneChildContainer]
zChildContainer
  = lens _zChildContainer
      (\ s a -> s{_zChildContainer = a})
      . _Default
      . _Coerce

-- | GTM Workspace ID.
zWorkspaceId :: Lens' Zone (Maybe Text)
zWorkspaceId
  = lens _zWorkspaceId (\ s a -> s{_zWorkspaceId = a})

-- | User notes on how to apply this zone in the container.
zNotes :: Lens' Zone (Maybe Text)
zNotes = lens _zNotes (\ s a -> s{_zNotes = a})

instance FromJSON Zone where
        parseJSON
          = withObject "Zone"
              (\ o ->
                 Zone' <$>
                   (o .:? "containerId") <*> (o .:? "path") <*>
                     (o .:? "boundary")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "zoneId")
                     <*> (o .:? "typeRestriction")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "childContainer" .!= mempty)
                     <*> (o .:? "workspaceId")
                     <*> (o .:? "notes"))

instance ToJSON Zone where
        toJSON Zone'{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _zContainerId,
                  ("path" .=) <$> _zPath,
                  ("boundary" .=) <$> _zBoundary,
                  ("fingerprint" .=) <$> _zFingerprint,
                  ("zoneId" .=) <$> _zZoneId,
                  ("typeRestriction" .=) <$> _zTypeRestriction,
                  ("accountId" .=) <$> _zAccountId,
                  ("name" .=) <$> _zName,
                  ("tagManagerUrl" .=) <$> _zTagManagerURL,
                  ("childContainer" .=) <$> _zChildContainer,
                  ("workspaceId" .=) <$> _zWorkspaceId,
                  ("notes" .=) <$> _zNotes])

-- | A response after synchronizing the workspace to the latest container
-- version.
--
-- /See:/ 'syncWorkspaceResponse' smart constructor.
data SyncWorkspaceResponse =
  SyncWorkspaceResponse'
    { _swrMergeConflict :: !(Maybe [MergeConflict])
    , _swrSyncStatus    :: !(Maybe SyncStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SyncWorkspaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swrMergeConflict'
--
-- * 'swrSyncStatus'
syncWorkspaceResponse
    :: SyncWorkspaceResponse
syncWorkspaceResponse =
  SyncWorkspaceResponse' {_swrMergeConflict = Nothing, _swrSyncStatus = Nothing}


-- | The merge conflict after sync. If this field is not empty, the sync is
-- still treated as successful. But a version cannot be created until all
-- conflicts are resolved.
swrMergeConflict :: Lens' SyncWorkspaceResponse [MergeConflict]
swrMergeConflict
  = lens _swrMergeConflict
      (\ s a -> s{_swrMergeConflict = a})
      . _Default
      . _Coerce

-- | Indicates whether synchronization caused a merge conflict or sync error.
swrSyncStatus :: Lens' SyncWorkspaceResponse (Maybe SyncStatus)
swrSyncStatus
  = lens _swrSyncStatus
      (\ s a -> s{_swrSyncStatus = a})

instance FromJSON SyncWorkspaceResponse where
        parseJSON
          = withObject "SyncWorkspaceResponse"
              (\ o ->
                 SyncWorkspaceResponse' <$>
                   (o .:? "mergeConflict" .!= mempty) <*>
                     (o .:? "syncStatus"))

instance ToJSON SyncWorkspaceResponse where
        toJSON SyncWorkspaceResponse'{..}
          = object
              (catMaybes
                 [("mergeConflict" .=) <$> _swrMergeConflict,
                  ("syncStatus" .=) <$> _swrSyncStatus])

-- | The result of reverting a trigger in a workspace.
--
-- /See:/ 'revertTriggerResponse' smart constructor.
newtype RevertTriggerResponse =
  RevertTriggerResponse'
    { _rtrTrigger :: Maybe Trigger
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevertTriggerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrTrigger'
revertTriggerResponse
    :: RevertTriggerResponse
revertTriggerResponse = RevertTriggerResponse' {_rtrTrigger = Nothing}


-- | Trigger as it appears in the latest container version since the last
-- workspace synchronization operation. If no trigger is present, that
-- means the trigger was deleted in the latest container version.
rtrTrigger :: Lens' RevertTriggerResponse (Maybe Trigger)
rtrTrigger
  = lens _rtrTrigger (\ s a -> s{_rtrTrigger = a})

instance FromJSON RevertTriggerResponse where
        parseJSON
          = withObject "RevertTriggerResponse"
              (\ o -> RevertTriggerResponse' <$> (o .:? "trigger"))

instance ToJSON RevertTriggerResponse where
        toJSON RevertTriggerResponse'{..}
          = object (catMaybes [("trigger" .=) <$> _rtrTrigger])

-- | Represents a Google Tag Manager Account.
--
-- /See:/ 'account' smart constructor.
data Account =
  Account'
    { _aPath          :: !(Maybe Text)
    , _aShareData     :: !(Maybe Bool)
    , _aFingerprint   :: !(Maybe Text)
    , _aAccountId     :: !(Maybe Text)
    , _aName          :: !(Maybe Text)
    , _aTagManagerURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPath'
--
-- * 'aShareData'
--
-- * 'aFingerprint'
--
-- * 'aAccountId'
--
-- * 'aName'
--
-- * 'aTagManagerURL'
account
    :: Account
account =
  Account'
    { _aPath = Nothing
    , _aShareData = Nothing
    , _aFingerprint = Nothing
    , _aAccountId = Nothing
    , _aName = Nothing
    , _aTagManagerURL = Nothing
    }


-- | GTM Account\'s API relative path.
aPath :: Lens' Account (Maybe Text)
aPath = lens _aPath (\ s a -> s{_aPath = a})

-- | Whether the account shares data anonymously with Google and others. This
-- flag enables benchmarking by sharing your data in an anonymous form.
-- Google will remove all identifiable information about your website,
-- combine the data with hundreds of other anonymous sites and report
-- aggregate trends in the benchmarking service.
aShareData :: Lens' Account (Maybe Bool)
aShareData
  = lens _aShareData (\ s a -> s{_aShareData = a})

-- | The fingerprint of the GTM Account as computed at storage time. This
-- value is recomputed whenever the account is modified.
aFingerprint :: Lens' Account (Maybe Text)
aFingerprint
  = lens _aFingerprint (\ s a -> s{_aFingerprint = a})

-- | The Account ID uniquely identifies the GTM Account.
aAccountId :: Lens' Account (Maybe Text)
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | Account display name.
aName :: Lens' Account (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Auto generated link to the tag manager UI
aTagManagerURL :: Lens' Account (Maybe Text)
aTagManagerURL
  = lens _aTagManagerURL
      (\ s a -> s{_aTagManagerURL = a})

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account' <$>
                   (o .:? "path") <*> (o .:? "shareData") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl"))

instance ToJSON Account where
        toJSON Account'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _aPath,
                  ("shareData" .=) <$> _aShareData,
                  ("fingerprint" .=) <$> _aFingerprint,
                  ("accountId" .=) <$> _aAccountId,
                  ("name" .=) <$> _aName,
                  ("tagManagerUrl" .=) <$> _aTagManagerURL])

-- | The changes that have occurred in the workspace since the base container
-- version.
--
-- /See:/ 'getWorkspaceStatusResponse' smart constructor.
data GetWorkspaceStatusResponse =
  GetWorkspaceStatusResponse'
    { _gwsrMergeConflict   :: !(Maybe [MergeConflict])
    , _gwsrWorkspaceChange :: !(Maybe [Entity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetWorkspaceStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gwsrMergeConflict'
--
-- * 'gwsrWorkspaceChange'
getWorkspaceStatusResponse
    :: GetWorkspaceStatusResponse
getWorkspaceStatusResponse =
  GetWorkspaceStatusResponse'
    {_gwsrMergeConflict = Nothing, _gwsrWorkspaceChange = Nothing}


-- | The merge conflict after sync.
gwsrMergeConflict :: Lens' GetWorkspaceStatusResponse [MergeConflict]
gwsrMergeConflict
  = lens _gwsrMergeConflict
      (\ s a -> s{_gwsrMergeConflict = a})
      . _Default
      . _Coerce

-- | Entities that have been changed in the workspace.
gwsrWorkspaceChange :: Lens' GetWorkspaceStatusResponse [Entity]
gwsrWorkspaceChange
  = lens _gwsrWorkspaceChange
      (\ s a -> s{_gwsrWorkspaceChange = a})
      . _Default
      . _Coerce

instance FromJSON GetWorkspaceStatusResponse where
        parseJSON
          = withObject "GetWorkspaceStatusResponse"
              (\ o ->
                 GetWorkspaceStatusResponse' <$>
                   (o .:? "mergeConflict" .!= mempty) <*>
                     (o .:? "workspaceChange" .!= mempty))

instance ToJSON GetWorkspaceStatusResponse where
        toJSON GetWorkspaceStatusResponse'{..}
          = object
              (catMaybes
                 [("mergeConflict" .=) <$> _gwsrMergeConflict,
                  ("workspaceChange" .=) <$> _gwsrWorkspaceChange])

-- | Response to quick previewing a workspace.
--
-- /See:/ 'quickPreviewResponse' smart constructor.
data QuickPreviewResponse =
  QuickPreviewResponse'
    { _qprCompilerError    :: !(Maybe Bool)
    , _qprContainerVersion :: !(Maybe ContainerVersion)
    , _qprSyncStatus       :: !(Maybe SyncStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuickPreviewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qprCompilerError'
--
-- * 'qprContainerVersion'
--
-- * 'qprSyncStatus'
quickPreviewResponse
    :: QuickPreviewResponse
quickPreviewResponse =
  QuickPreviewResponse'
    { _qprCompilerError = Nothing
    , _qprContainerVersion = Nothing
    , _qprSyncStatus = Nothing
    }


-- | Were there compiler errors or not.
qprCompilerError :: Lens' QuickPreviewResponse (Maybe Bool)
qprCompilerError
  = lens _qprCompilerError
      (\ s a -> s{_qprCompilerError = a})

-- | The quick previewed container version.
qprContainerVersion :: Lens' QuickPreviewResponse (Maybe ContainerVersion)
qprContainerVersion
  = lens _qprContainerVersion
      (\ s a -> s{_qprContainerVersion = a})

-- | Whether quick previewing failed when syncing the workspace to the latest
-- container version.
qprSyncStatus :: Lens' QuickPreviewResponse (Maybe SyncStatus)
qprSyncStatus
  = lens _qprSyncStatus
      (\ s a -> s{_qprSyncStatus = a})

instance FromJSON QuickPreviewResponse where
        parseJSON
          = withObject "QuickPreviewResponse"
              (\ o ->
                 QuickPreviewResponse' <$>
                   (o .:? "compilerError") <*>
                     (o .:? "containerVersion")
                     <*> (o .:? "syncStatus"))

instance ToJSON QuickPreviewResponse where
        toJSON QuickPreviewResponse'{..}
          = object
              (catMaybes
                 [("compilerError" .=) <$> _qprCompilerError,
                  ("containerVersion" .=) <$> _qprContainerVersion,
                  ("syncStatus" .=) <$> _qprSyncStatus])

-- | List container versions response.
--
-- /See:/ 'listContainerVersionsResponse' smart constructor.
data ListContainerVersionsResponse =
  ListContainerVersionsResponse'
    { _lcvrNextPageToken          :: !(Maybe Text)
    , _lcvrContainerVersionHeader :: !(Maybe [ContainerVersionHeader])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListContainerVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcvrNextPageToken'
--
-- * 'lcvrContainerVersionHeader'
listContainerVersionsResponse
    :: ListContainerVersionsResponse
listContainerVersionsResponse =
  ListContainerVersionsResponse'
    {_lcvrNextPageToken = Nothing, _lcvrContainerVersionHeader = Nothing}


-- | Continuation token for fetching the next page of results.
lcvrNextPageToken :: Lens' ListContainerVersionsResponse (Maybe Text)
lcvrNextPageToken
  = lens _lcvrNextPageToken
      (\ s a -> s{_lcvrNextPageToken = a})

-- | All container version headers of a GTM Container.
lcvrContainerVersionHeader :: Lens' ListContainerVersionsResponse [ContainerVersionHeader]
lcvrContainerVersionHeader
  = lens _lcvrContainerVersionHeader
      (\ s a -> s{_lcvrContainerVersionHeader = a})
      . _Default
      . _Coerce

instance FromJSON ListContainerVersionsResponse where
        parseJSON
          = withObject "ListContainerVersionsResponse"
              (\ o ->
                 ListContainerVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "containerVersionHeader" .!= mempty))

instance ToJSON ListContainerVersionsResponse where
        toJSON ListContainerVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcvrNextPageToken,
                  ("containerVersionHeader" .=) <$>
                    _lcvrContainerVersionHeader])

-- | Represents a Google Tag Manager Container, which specifies the platform
-- tags will run on, manages workspaces, and retains container versions.
--
-- /See:/ 'container' smart constructor.
data Container =
  Container'
    { _cPublicId      :: !(Maybe Text)
    , _cUsageContext  :: !(Maybe [ContainerUsageContextItem])
    , _cContainerId   :: !(Maybe Text)
    , _cPath          :: !(Maybe Text)
    , _cFingerprint   :: !(Maybe Text)
    , _cAccountId     :: !(Maybe Text)
    , _cDomainName    :: !(Maybe [Text])
    , _cName          :: !(Maybe Text)
    , _cTagManagerURL :: !(Maybe Text)
    , _cNotes         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Container' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPublicId'
--
-- * 'cUsageContext'
--
-- * 'cContainerId'
--
-- * 'cPath'
--
-- * 'cFingerprint'
--
-- * 'cAccountId'
--
-- * 'cDomainName'
--
-- * 'cName'
--
-- * 'cTagManagerURL'
--
-- * 'cNotes'
container
    :: Container
container =
  Container'
    { _cPublicId = Nothing
    , _cUsageContext = Nothing
    , _cContainerId = Nothing
    , _cPath = Nothing
    , _cFingerprint = Nothing
    , _cAccountId = Nothing
    , _cDomainName = Nothing
    , _cName = Nothing
    , _cTagManagerURL = Nothing
    , _cNotes = Nothing
    }


-- | Container Public ID.
cPublicId :: Lens' Container (Maybe Text)
cPublicId
  = lens _cPublicId (\ s a -> s{_cPublicId = a})

-- | List of Usage Contexts for the Container. Valid values include: web,
-- android, or ios.
cUsageContext :: Lens' Container [ContainerUsageContextItem]
cUsageContext
  = lens _cUsageContext
      (\ s a -> s{_cUsageContext = a})
      . _Default
      . _Coerce

-- | The Container ID uniquely identifies the GTM Container.
cContainerId :: Lens' Container (Maybe Text)
cContainerId
  = lens _cContainerId (\ s a -> s{_cContainerId = a})

-- | GTM Container\'s API relative path.
cPath :: Lens' Container (Maybe Text)
cPath = lens _cPath (\ s a -> s{_cPath = a})

-- | The fingerprint of the GTM Container as computed at storage time. This
-- value is recomputed whenever the account is modified.
cFingerprint :: Lens' Container (Maybe Text)
cFingerprint
  = lens _cFingerprint (\ s a -> s{_cFingerprint = a})

-- | GTM Account ID.
cAccountId :: Lens' Container (Maybe Text)
cAccountId
  = lens _cAccountId (\ s a -> s{_cAccountId = a})

-- | List of domain names associated with the Container.
cDomainName :: Lens' Container [Text]
cDomainName
  = lens _cDomainName (\ s a -> s{_cDomainName = a}) .
      _Default
      . _Coerce

-- | Container display name.
cName :: Lens' Container (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Auto generated link to the tag manager UI
cTagManagerURL :: Lens' Container (Maybe Text)
cTagManagerURL
  = lens _cTagManagerURL
      (\ s a -> s{_cTagManagerURL = a})

-- | Container Notes.
cNotes :: Lens' Container (Maybe Text)
cNotes = lens _cNotes (\ s a -> s{_cNotes = a})

instance FromJSON Container where
        parseJSON
          = withObject "Container"
              (\ o ->
                 Container' <$>
                   (o .:? "publicId") <*>
                     (o .:? "usageContext" .!= mempty)
                     <*> (o .:? "containerId")
                     <*> (o .:? "path")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "accountId")
                     <*> (o .:? "domainName" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "notes"))

instance ToJSON Container where
        toJSON Container'{..}
          = object
              (catMaybes
                 [("publicId" .=) <$> _cPublicId,
                  ("usageContext" .=) <$> _cUsageContext,
                  ("containerId" .=) <$> _cContainerId,
                  ("path" .=) <$> _cPath,
                  ("fingerprint" .=) <$> _cFingerprint,
                  ("accountId" .=) <$> _cAccountId,
                  ("domainName" .=) <$> _cDomainName,
                  ("name" .=) <$> _cName,
                  ("tagManagerUrl" .=) <$> _cTagManagerURL,
                  ("notes" .=) <$> _cNotes])

-- | Built-in variables are a special category of variables that are
-- pre-created and non-customizable. They provide common functionality like
-- accessing propeties of the gtm data layer, monitoring clicks, or
-- accessing elements of a page URL.
--
-- /See:/ 'builtInVariable' smart constructor.
data BuiltInVariable =
  BuiltInVariable'
    { _bivContainerId :: !(Maybe Text)
    , _bivPath        :: !(Maybe Text)
    , _bivAccountId   :: !(Maybe Text)
    , _bivName        :: !(Maybe Text)
    , _bivWorkspaceId :: !(Maybe Text)
    , _bivType        :: !(Maybe BuiltInVariableType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuiltInVariable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bivContainerId'
--
-- * 'bivPath'
--
-- * 'bivAccountId'
--
-- * 'bivName'
--
-- * 'bivWorkspaceId'
--
-- * 'bivType'
builtInVariable
    :: BuiltInVariable
builtInVariable =
  BuiltInVariable'
    { _bivContainerId = Nothing
    , _bivPath = Nothing
    , _bivAccountId = Nothing
    , _bivName = Nothing
    , _bivWorkspaceId = Nothing
    , _bivType = Nothing
    }


-- | GTM Container ID.
bivContainerId :: Lens' BuiltInVariable (Maybe Text)
bivContainerId
  = lens _bivContainerId
      (\ s a -> s{_bivContainerId = a})

-- | GTM BuiltInVariable\'s API relative path.
bivPath :: Lens' BuiltInVariable (Maybe Text)
bivPath = lens _bivPath (\ s a -> s{_bivPath = a})

-- | GTM Account ID.
bivAccountId :: Lens' BuiltInVariable (Maybe Text)
bivAccountId
  = lens _bivAccountId (\ s a -> s{_bivAccountId = a})

-- | Name of the built-in variable to be used to refer to the built-in
-- variable.
bivName :: Lens' BuiltInVariable (Maybe Text)
bivName = lens _bivName (\ s a -> s{_bivName = a})

-- | GTM Workspace ID.
bivWorkspaceId :: Lens' BuiltInVariable (Maybe Text)
bivWorkspaceId
  = lens _bivWorkspaceId
      (\ s a -> s{_bivWorkspaceId = a})

-- | Type of built-in variable.
bivType :: Lens' BuiltInVariable (Maybe BuiltInVariableType)
bivType = lens _bivType (\ s a -> s{_bivType = a})

instance FromJSON BuiltInVariable where
        parseJSON
          = withObject "BuiltInVariable"
              (\ o ->
                 BuiltInVariable' <$>
                   (o .:? "containerId") <*> (o .:? "path") <*>
                     (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "workspaceId")
                     <*> (o .:? "type"))

instance ToJSON BuiltInVariable where
        toJSON BuiltInVariable'{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _bivContainerId,
                  ("path" .=) <$> _bivPath,
                  ("accountId" .=) <$> _bivAccountId,
                  ("name" .=) <$> _bivName,
                  ("workspaceId" .=) <$> _bivWorkspaceId,
                  ("type" .=) <$> _bivType])

-- | Represents a user\'s permissions to an account and its container.
--
-- /See:/ 'userPermission' smart constructor.
data UserPermission =
  UserPermission'
    { _upPath            :: !(Maybe Text)
    , _upAccountAccess   :: !(Maybe AccountAccess)
    , _upAccountId       :: !(Maybe Text)
    , _upEmailAddress    :: !(Maybe Text)
    , _upContainerAccess :: !(Maybe [ContainerAccess])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upPath'
--
-- * 'upAccountAccess'
--
-- * 'upAccountId'
--
-- * 'upEmailAddress'
--
-- * 'upContainerAccess'
userPermission
    :: UserPermission
userPermission =
  UserPermission'
    { _upPath = Nothing
    , _upAccountAccess = Nothing
    , _upAccountId = Nothing
    , _upEmailAddress = Nothing
    , _upContainerAccess = Nothing
    }


-- | GTM UserPermission\'s API relative path.
upPath :: Lens' UserPermission (Maybe Text)
upPath = lens _upPath (\ s a -> s{_upPath = a})

-- | GTM Account access permissions.
upAccountAccess :: Lens' UserPermission (Maybe AccountAccess)
upAccountAccess
  = lens _upAccountAccess
      (\ s a -> s{_upAccountAccess = a})

-- | The Account ID uniquely identifies the GTM Account.
upAccountId :: Lens' UserPermission (Maybe Text)
upAccountId
  = lens _upAccountId (\ s a -> s{_upAccountId = a})

-- | User\'s email address.
upEmailAddress :: Lens' UserPermission (Maybe Text)
upEmailAddress
  = lens _upEmailAddress
      (\ s a -> s{_upEmailAddress = a})

-- | GTM Container access permissions.
upContainerAccess :: Lens' UserPermission [ContainerAccess]
upContainerAccess
  = lens _upContainerAccess
      (\ s a -> s{_upContainerAccess = a})
      . _Default
      . _Coerce

instance FromJSON UserPermission where
        parseJSON
          = withObject "UserPermission"
              (\ o ->
                 UserPermission' <$>
                   (o .:? "path") <*> (o .:? "accountAccess") <*>
                     (o .:? "accountId")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "containerAccess" .!= mempty))

instance ToJSON UserPermission where
        toJSON UserPermission'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _upPath,
                  ("accountAccess" .=) <$> _upAccountAccess,
                  ("accountId" .=) <$> _upAccountId,
                  ("emailAddress" .=) <$> _upEmailAddress,
                  ("containerAccess" .=) <$> _upContainerAccess])

-- | Represents a Google Tag Manager Container Version.
--
-- /See:/ 'containerVersion' smart constructor.
data ContainerVersion =
  ContainerVersion'
    { _cvTag                :: !(Maybe [Tag])
    , _cvContainerId        :: !(Maybe Text)
    , _cvPath               :: !(Maybe Text)
    , _cvFingerprint        :: !(Maybe Text)
    , _cvContainerVersionId :: !(Maybe Text)
    , _cvFolder             :: !(Maybe [Folder])
    , _cvVariable           :: !(Maybe [Variable])
    , _cvZone               :: !(Maybe [Zone])
    , _cvAccountId          :: !(Maybe Text)
    , _cvName               :: !(Maybe Text)
    , _cvContainer          :: !(Maybe Container)
    , _cvBuiltInVariable    :: !(Maybe [BuiltInVariable])
    , _cvTagManagerURL      :: !(Maybe Text)
    , _cvDeleted            :: !(Maybe Bool)
    , _cvTrigger            :: !(Maybe [Trigger])
    , _cvCustomTemplate     :: !(Maybe [CustomTemplate])
    , _cvDescription        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvTag'
--
-- * 'cvContainerId'
--
-- * 'cvPath'
--
-- * 'cvFingerprint'
--
-- * 'cvContainerVersionId'
--
-- * 'cvFolder'
--
-- * 'cvVariable'
--
-- * 'cvZone'
--
-- * 'cvAccountId'
--
-- * 'cvName'
--
-- * 'cvContainer'
--
-- * 'cvBuiltInVariable'
--
-- * 'cvTagManagerURL'
--
-- * 'cvDeleted'
--
-- * 'cvTrigger'
--
-- * 'cvCustomTemplate'
--
-- * 'cvDescription'
containerVersion
    :: ContainerVersion
containerVersion =
  ContainerVersion'
    { _cvTag = Nothing
    , _cvContainerId = Nothing
    , _cvPath = Nothing
    , _cvFingerprint = Nothing
    , _cvContainerVersionId = Nothing
    , _cvFolder = Nothing
    , _cvVariable = Nothing
    , _cvZone = Nothing
    , _cvAccountId = Nothing
    , _cvName = Nothing
    , _cvContainer = Nothing
    , _cvBuiltInVariable = Nothing
    , _cvTagManagerURL = Nothing
    , _cvDeleted = Nothing
    , _cvTrigger = Nothing
    , _cvCustomTemplate = Nothing
    , _cvDescription = Nothing
    }


-- | The tags in the container that this version was taken from.
cvTag :: Lens' ContainerVersion [Tag]
cvTag
  = lens _cvTag (\ s a -> s{_cvTag = a}) . _Default .
      _Coerce

-- | GTM Container ID.
cvContainerId :: Lens' ContainerVersion (Maybe Text)
cvContainerId
  = lens _cvContainerId
      (\ s a -> s{_cvContainerId = a})

-- | GTM ContainerVersions\'s API relative path.
cvPath :: Lens' ContainerVersion (Maybe Text)
cvPath = lens _cvPath (\ s a -> s{_cvPath = a})

-- | The fingerprint of the GTM Container Version as computed at storage
-- time. This value is recomputed whenever the container version is
-- modified.
cvFingerprint :: Lens' ContainerVersion (Maybe Text)
cvFingerprint
  = lens _cvFingerprint
      (\ s a -> s{_cvFingerprint = a})

-- | The Container Version ID uniquely identifies the GTM Container Version.
cvContainerVersionId :: Lens' ContainerVersion (Maybe Text)
cvContainerVersionId
  = lens _cvContainerVersionId
      (\ s a -> s{_cvContainerVersionId = a})

-- | The folders in the container that this version was taken from.
cvFolder :: Lens' ContainerVersion [Folder]
cvFolder
  = lens _cvFolder (\ s a -> s{_cvFolder = a}) .
      _Default
      . _Coerce

-- | The variables in the container that this version was taken from.
cvVariable :: Lens' ContainerVersion [Variable]
cvVariable
  = lens _cvVariable (\ s a -> s{_cvVariable = a}) .
      _Default
      . _Coerce

-- | The zones in the container that this version was taken from.
cvZone :: Lens' ContainerVersion [Zone]
cvZone
  = lens _cvZone (\ s a -> s{_cvZone = a}) . _Default .
      _Coerce

-- | GTM Account ID.
cvAccountId :: Lens' ContainerVersion (Maybe Text)
cvAccountId
  = lens _cvAccountId (\ s a -> s{_cvAccountId = a})

-- | Container version display name.
cvName :: Lens' ContainerVersion (Maybe Text)
cvName = lens _cvName (\ s a -> s{_cvName = a})

-- | The container that this version was taken from.
cvContainer :: Lens' ContainerVersion (Maybe Container)
cvContainer
  = lens _cvContainer (\ s a -> s{_cvContainer = a})

-- | The built-in variables in the container that this version was taken
-- from.
cvBuiltInVariable :: Lens' ContainerVersion [BuiltInVariable]
cvBuiltInVariable
  = lens _cvBuiltInVariable
      (\ s a -> s{_cvBuiltInVariable = a})
      . _Default
      . _Coerce

-- | Auto generated link to the tag manager UI
cvTagManagerURL :: Lens' ContainerVersion (Maybe Text)
cvTagManagerURL
  = lens _cvTagManagerURL
      (\ s a -> s{_cvTagManagerURL = a})

-- | A value of true indicates this container version has been deleted.
cvDeleted :: Lens' ContainerVersion (Maybe Bool)
cvDeleted
  = lens _cvDeleted (\ s a -> s{_cvDeleted = a})

-- | The triggers in the container that this version was taken from.
cvTrigger :: Lens' ContainerVersion [Trigger]
cvTrigger
  = lens _cvTrigger (\ s a -> s{_cvTrigger = a}) .
      _Default
      . _Coerce

-- | The custom templates in the container that this version was taken from.
cvCustomTemplate :: Lens' ContainerVersion [CustomTemplate]
cvCustomTemplate
  = lens _cvCustomTemplate
      (\ s a -> s{_cvCustomTemplate = a})
      . _Default
      . _Coerce

-- | Container version description.
cvDescription :: Lens' ContainerVersion (Maybe Text)
cvDescription
  = lens _cvDescription
      (\ s a -> s{_cvDescription = a})

instance FromJSON ContainerVersion where
        parseJSON
          = withObject "ContainerVersion"
              (\ o ->
                 ContainerVersion' <$>
                   (o .:? "tag" .!= mempty) <*> (o .:? "containerId")
                     <*> (o .:? "path")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "containerVersionId")
                     <*> (o .:? "folder" .!= mempty)
                     <*> (o .:? "variable" .!= mempty)
                     <*> (o .:? "zone" .!= mempty)
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "container")
                     <*> (o .:? "builtInVariable" .!= mempty)
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "deleted")
                     <*> (o .:? "trigger" .!= mempty)
                     <*> (o .:? "customTemplate" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON ContainerVersion where
        toJSON ContainerVersion'{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _cvTag,
                  ("containerId" .=) <$> _cvContainerId,
                  ("path" .=) <$> _cvPath,
                  ("fingerprint" .=) <$> _cvFingerprint,
                  ("containerVersionId" .=) <$> _cvContainerVersionId,
                  ("folder" .=) <$> _cvFolder,
                  ("variable" .=) <$> _cvVariable,
                  ("zone" .=) <$> _cvZone,
                  ("accountId" .=) <$> _cvAccountId,
                  ("name" .=) <$> _cvName,
                  ("container" .=) <$> _cvContainer,
                  ("builtInVariable" .=) <$> _cvBuiltInVariable,
                  ("tagManagerUrl" .=) <$> _cvTagManagerURL,
                  ("deleted" .=) <$> _cvDeleted,
                  ("trigger" .=) <$> _cvTrigger,
                  ("customTemplate" .=) <$> _cvCustomTemplate,
                  ("description" .=) <$> _cvDescription])

-- | Represents a reference to atag that fires before another tag in order to
-- set up dependencies.
--
-- /See:/ 'setupTag' smart constructor.
data SetupTag =
  SetupTag'
    { _stTagName            :: !(Maybe Text)
    , _stStopOnSetupFailure :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetupTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stTagName'
--
-- * 'stStopOnSetupFailure'
setupTag
    :: SetupTag
setupTag = SetupTag' {_stTagName = Nothing, _stStopOnSetupFailure = Nothing}


-- | The name of the setup tag.
stTagName :: Lens' SetupTag (Maybe Text)
stTagName
  = lens _stTagName (\ s a -> s{_stTagName = a})

-- | If true, fire the main tag if and only if the setup tag fires
-- successfully. If false, fire the main tag regardless of setup tag firing
-- status.
stStopOnSetupFailure :: Lens' SetupTag (Maybe Bool)
stStopOnSetupFailure
  = lens _stStopOnSetupFailure
      (\ s a -> s{_stStopOnSetupFailure = a})

instance FromJSON SetupTag where
        parseJSON
          = withObject "SetupTag"
              (\ o ->
                 SetupTag' <$>
                   (o .:? "tagName") <*> (o .:? "stopOnSetupFailure"))

instance ToJSON SetupTag where
        toJSON SetupTag'{..}
          = object
              (catMaybes
                 [("tagName" .=) <$> _stTagName,
                  ("stopOnSetupFailure" .=) <$> _stStopOnSetupFailure])

-- | List Containers Response.
--
-- /See:/ 'listContainersResponse' smart constructor.
data ListContainersResponse =
  ListContainersResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrContainer     :: !(Maybe [Container])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListContainersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrContainer'
listContainersResponse
    :: ListContainersResponse
listContainersResponse =
  ListContainersResponse' {_lcrNextPageToken = Nothing, _lcrContainer = Nothing}


-- | Continuation token for fetching the next page of results.
lcrNextPageToken :: Lens' ListContainersResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | All Containers of a GTM Account.
lcrContainer :: Lens' ListContainersResponse [Container]
lcrContainer
  = lens _lcrContainer (\ s a -> s{_lcrContainer = a})
      . _Default
      . _Coerce

instance FromJSON ListContainersResponse where
        parseJSON
          = withObject "ListContainersResponse"
              (\ o ->
                 ListContainersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "container" .!= mempty))

instance ToJSON ListContainersResponse where
        toJSON ListContainersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("container" .=) <$> _lcrContainer])

-- | Represents a Google Tag Manager Trigger
--
-- /See:/ 'trigger' smart constructor.
data Trigger =
  Trigger'
    { _triContinuousTimeMinMilliseconds  :: !(Maybe Parameter)
    , _triMaxTimerLengthSeconds          :: !(Maybe Parameter)
    , _triCustomEventFilter              :: !(Maybe [Condition])
    , _triParentFolderId                 :: !(Maybe Text)
    , _triVisiblePercentageMax           :: !(Maybe Parameter)
    , _triContainerId                    :: !(Maybe Text)
    , _triPath                           :: !(Maybe Text)
    , _triSelector                       :: !(Maybe Parameter)
    , _triTriggerId                      :: !(Maybe Text)
    , _triCheckValidation                :: !(Maybe Parameter)
    , _triFingerprint                    :: !(Maybe Text)
    , _triTotalTimeMinMilliseconds       :: !(Maybe Parameter)
    , _triAutoEventFilter                :: !(Maybe [Condition])
    , _triUniqueTriggerId                :: !(Maybe Parameter)
    , _triHorizontalScrollPercentageList :: !(Maybe Parameter)
    , _triIntervalSeconds                :: !(Maybe Parameter)
    , _triVisiblePercentageMin           :: !(Maybe Parameter)
    , _triAccountId                      :: !(Maybe Text)
    , _triName                           :: !(Maybe Text)
    , _triInterval                       :: !(Maybe Parameter)
    , _triTagManagerURL                  :: !(Maybe Text)
    , _triWaitForTagsTimeout             :: !(Maybe Parameter)
    , _triLimit                          :: !(Maybe Parameter)
    , _triVerticalScrollPercentageList   :: !(Maybe Parameter)
    , _triFilter                         :: !(Maybe [Condition])
    , _triWorkspaceId                    :: !(Maybe Text)
    , _triType                           :: !(Maybe TriggerType)
    , _triNotes                          :: !(Maybe Text)
    , _triVisibilitySelector             :: !(Maybe Parameter)
    , _triEventName                      :: !(Maybe Parameter)
    , _triWaitForTags                    :: !(Maybe Parameter)
    , _triParameter                      :: !(Maybe [Parameter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Trigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'triContinuousTimeMinMilliseconds'
--
-- * 'triMaxTimerLengthSeconds'
--
-- * 'triCustomEventFilter'
--
-- * 'triParentFolderId'
--
-- * 'triVisiblePercentageMax'
--
-- * 'triContainerId'
--
-- * 'triPath'
--
-- * 'triSelector'
--
-- * 'triTriggerId'
--
-- * 'triCheckValidation'
--
-- * 'triFingerprint'
--
-- * 'triTotalTimeMinMilliseconds'
--
-- * 'triAutoEventFilter'
--
-- * 'triUniqueTriggerId'
--
-- * 'triHorizontalScrollPercentageList'
--
-- * 'triIntervalSeconds'
--
-- * 'triVisiblePercentageMin'
--
-- * 'triAccountId'
--
-- * 'triName'
--
-- * 'triInterval'
--
-- * 'triTagManagerURL'
--
-- * 'triWaitForTagsTimeout'
--
-- * 'triLimit'
--
-- * 'triVerticalScrollPercentageList'
--
-- * 'triFilter'
--
-- * 'triWorkspaceId'
--
-- * 'triType'
--
-- * 'triNotes'
--
-- * 'triVisibilitySelector'
--
-- * 'triEventName'
--
-- * 'triWaitForTags'
--
-- * 'triParameter'
trigger
    :: Trigger
trigger =
  Trigger'
    { _triContinuousTimeMinMilliseconds = Nothing
    , _triMaxTimerLengthSeconds = Nothing
    , _triCustomEventFilter = Nothing
    , _triParentFolderId = Nothing
    , _triVisiblePercentageMax = Nothing
    , _triContainerId = Nothing
    , _triPath = Nothing
    , _triSelector = Nothing
    , _triTriggerId = Nothing
    , _triCheckValidation = Nothing
    , _triFingerprint = Nothing
    , _triTotalTimeMinMilliseconds = Nothing
    , _triAutoEventFilter = Nothing
    , _triUniqueTriggerId = Nothing
    , _triHorizontalScrollPercentageList = Nothing
    , _triIntervalSeconds = Nothing
    , _triVisiblePercentageMin = Nothing
    , _triAccountId = Nothing
    , _triName = Nothing
    , _triInterval = Nothing
    , _triTagManagerURL = Nothing
    , _triWaitForTagsTimeout = Nothing
    , _triLimit = Nothing
    , _triVerticalScrollPercentageList = Nothing
    , _triFilter = Nothing
    , _triWorkspaceId = Nothing
    , _triType = Nothing
    , _triNotes = Nothing
    , _triVisibilitySelector = Nothing
    , _triEventName = Nothing
    , _triWaitForTags = Nothing
    , _triParameter = Nothing
    }


-- | A visibility trigger minimum continuous visible time (in milliseconds).
-- Only valid for AMP Visibility trigger.
triContinuousTimeMinMilliseconds :: Lens' Trigger (Maybe Parameter)
triContinuousTimeMinMilliseconds
  = lens _triContinuousTimeMinMilliseconds
      (\ s a -> s{_triContinuousTimeMinMilliseconds = a})

-- | Max time to fire Timer Events (in seconds). Only valid for AMP Timer
-- trigger.
triMaxTimerLengthSeconds :: Lens' Trigger (Maybe Parameter)
triMaxTimerLengthSeconds
  = lens _triMaxTimerLengthSeconds
      (\ s a -> s{_triMaxTimerLengthSeconds = a})

-- | Used in the case of custom event, which is fired iff all Conditions are
-- true.
triCustomEventFilter :: Lens' Trigger [Condition]
triCustomEventFilter
  = lens _triCustomEventFilter
      (\ s a -> s{_triCustomEventFilter = a})
      . _Default
      . _Coerce

-- | Parent folder id.
triParentFolderId :: Lens' Trigger (Maybe Text)
triParentFolderId
  = lens _triParentFolderId
      (\ s a -> s{_triParentFolderId = a})

-- | A visibility trigger maximum percent visibility. Only valid for AMP
-- Visibility trigger.
triVisiblePercentageMax :: Lens' Trigger (Maybe Parameter)
triVisiblePercentageMax
  = lens _triVisiblePercentageMax
      (\ s a -> s{_triVisiblePercentageMax = a})

-- | GTM Container ID.
triContainerId :: Lens' Trigger (Maybe Text)
triContainerId
  = lens _triContainerId
      (\ s a -> s{_triContainerId = a})

-- | GTM Trigger\'s API relative path.
triPath :: Lens' Trigger (Maybe Text)
triPath = lens _triPath (\ s a -> s{_triPath = a})

-- | A click trigger CSS selector (i.e. \"a\", \"button\" etc.). Only valid
-- for AMP Click trigger.
triSelector :: Lens' Trigger (Maybe Parameter)
triSelector
  = lens _triSelector (\ s a -> s{_triSelector = a})

-- | The Trigger ID uniquely identifies the GTM Trigger.
triTriggerId :: Lens' Trigger (Maybe Text)
triTriggerId
  = lens _triTriggerId (\ s a -> s{_triTriggerId = a})

-- | Whether or not we should only fire tags if the form submit or link click
-- event is not cancelled by some other event handler (e.g. because of
-- validation). Only valid for Form Submission and Link Click triggers.
triCheckValidation :: Lens' Trigger (Maybe Parameter)
triCheckValidation
  = lens _triCheckValidation
      (\ s a -> s{_triCheckValidation = a})

-- | The fingerprint of the GTM Trigger as computed at storage time. This
-- value is recomputed whenever the trigger is modified.
triFingerprint :: Lens' Trigger (Maybe Text)
triFingerprint
  = lens _triFingerprint
      (\ s a -> s{_triFingerprint = a})

-- | A visibility trigger minimum total visible time (in milliseconds). Only
-- valid for AMP Visibility trigger.
triTotalTimeMinMilliseconds :: Lens' Trigger (Maybe Parameter)
triTotalTimeMinMilliseconds
  = lens _triTotalTimeMinMilliseconds
      (\ s a -> s{_triTotalTimeMinMilliseconds = a})

-- | Used in the case of auto event tracking.
triAutoEventFilter :: Lens' Trigger [Condition]
triAutoEventFilter
  = lens _triAutoEventFilter
      (\ s a -> s{_triAutoEventFilter = a})
      . _Default
      . _Coerce

-- | Globally unique id of the trigger that auto-generates this (a Form
-- Submit, Link Click or Timer listener) if any. Used to make incompatible
-- auto-events work together with trigger filtering based on trigger ids.
-- This value is populated during output generation since the tags implied
-- by triggers don\'t exist until then. Only valid for Form Submit, Link
-- Click and Timer triggers.
triUniqueTriggerId :: Lens' Trigger (Maybe Parameter)
triUniqueTriggerId
  = lens _triUniqueTriggerId
      (\ s a -> s{_triUniqueTriggerId = a})

-- | List of integer percentage values for scroll triggers. The trigger will
-- fire when each percentage is reached when the view is scrolled
-- horizontally. Only valid for AMP scroll triggers.
triHorizontalScrollPercentageList :: Lens' Trigger (Maybe Parameter)
triHorizontalScrollPercentageList
  = lens _triHorizontalScrollPercentageList
      (\ s a -> s{_triHorizontalScrollPercentageList = a})

-- | Time between Timer Events to fire (in seconds). Only valid for AMP Timer
-- trigger.
triIntervalSeconds :: Lens' Trigger (Maybe Parameter)
triIntervalSeconds
  = lens _triIntervalSeconds
      (\ s a -> s{_triIntervalSeconds = a})

-- | A visibility trigger minimum percent visibility. Only valid for AMP
-- Visibility trigger.
triVisiblePercentageMin :: Lens' Trigger (Maybe Parameter)
triVisiblePercentageMin
  = lens _triVisiblePercentageMin
      (\ s a -> s{_triVisiblePercentageMin = a})

-- | GTM Account ID.
triAccountId :: Lens' Trigger (Maybe Text)
triAccountId
  = lens _triAccountId (\ s a -> s{_triAccountId = a})

-- | Trigger display name.
triName :: Lens' Trigger (Maybe Text)
triName = lens _triName (\ s a -> s{_triName = a})

-- | Time between triggering recurring Timer Events (in milliseconds). Only
-- valid for Timer triggers.
triInterval :: Lens' Trigger (Maybe Parameter)
triInterval
  = lens _triInterval (\ s a -> s{_triInterval = a})

-- | Auto generated link to the tag manager UI
triTagManagerURL :: Lens' Trigger (Maybe Text)
triTagManagerURL
  = lens _triTagManagerURL
      (\ s a -> s{_triTagManagerURL = a})

-- | How long to wait (in milliseconds) for tags to fire when
-- \'waits_for_tags\' above evaluates to true. Only valid for Form
-- Submission and Link Click triggers.
triWaitForTagsTimeout :: Lens' Trigger (Maybe Parameter)
triWaitForTagsTimeout
  = lens _triWaitForTagsTimeout
      (\ s a -> s{_triWaitForTagsTimeout = a})

-- | Limit of the number of GTM events this Timer Trigger will fire. If no
-- limit is set, we will continue to fire GTM events until the user leaves
-- the page. Only valid for Timer triggers.
triLimit :: Lens' Trigger (Maybe Parameter)
triLimit = lens _triLimit (\ s a -> s{_triLimit = a})

-- | List of integer percentage values for scroll triggers. The trigger will
-- fire when each percentage is reached when the view is scrolled
-- vertically. Only valid for AMP scroll triggers.
triVerticalScrollPercentageList :: Lens' Trigger (Maybe Parameter)
triVerticalScrollPercentageList
  = lens _triVerticalScrollPercentageList
      (\ s a -> s{_triVerticalScrollPercentageList = a})

-- | The trigger will only fire iff all Conditions are true.
triFilter :: Lens' Trigger [Condition]
triFilter
  = lens _triFilter (\ s a -> s{_triFilter = a}) .
      _Default
      . _Coerce

-- | GTM Workspace ID.
triWorkspaceId :: Lens' Trigger (Maybe Text)
triWorkspaceId
  = lens _triWorkspaceId
      (\ s a -> s{_triWorkspaceId = a})

-- | Defines the data layer event that causes this trigger.
triType :: Lens' Trigger (Maybe TriggerType)
triType = lens _triType (\ s a -> s{_triType = a})

-- | User notes on how to apply this trigger in the container.
triNotes :: Lens' Trigger (Maybe Text)
triNotes = lens _triNotes (\ s a -> s{_triNotes = a})

-- | A visibility trigger CSS selector (i.e. \"#id\"). Only valid for AMP
-- Visibility trigger.
triVisibilitySelector :: Lens' Trigger (Maybe Parameter)
triVisibilitySelector
  = lens _triVisibilitySelector
      (\ s a -> s{_triVisibilitySelector = a})

-- | Name of the GTM event that is fired. Only valid for Timer triggers.
triEventName :: Lens' Trigger (Maybe Parameter)
triEventName
  = lens _triEventName (\ s a -> s{_triEventName = a})

-- | Whether or not we should delay the form submissions or link opening
-- until all of the tags have fired (by preventing the default action and
-- later simulating the default action). Only valid for Form Submission and
-- Link Click triggers.
triWaitForTags :: Lens' Trigger (Maybe Parameter)
triWaitForTags
  = lens _triWaitForTags
      (\ s a -> s{_triWaitForTags = a})

-- | Additional parameters.
triParameter :: Lens' Trigger [Parameter]
triParameter
  = lens _triParameter (\ s a -> s{_triParameter = a})
      . _Default
      . _Coerce

instance FromJSON Trigger where
        parseJSON
          = withObject "Trigger"
              (\ o ->
                 Trigger' <$>
                   (o .:? "continuousTimeMinMilliseconds") <*>
                     (o .:? "maxTimerLengthSeconds")
                     <*> (o .:? "customEventFilter" .!= mempty)
                     <*> (o .:? "parentFolderId")
                     <*> (o .:? "visiblePercentageMax")
                     <*> (o .:? "containerId")
                     <*> (o .:? "path")
                     <*> (o .:? "selector")
                     <*> (o .:? "triggerId")
                     <*> (o .:? "checkValidation")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "totalTimeMinMilliseconds")
                     <*> (o .:? "autoEventFilter" .!= mempty)
                     <*> (o .:? "uniqueTriggerId")
                     <*> (o .:? "horizontalScrollPercentageList")
                     <*> (o .:? "intervalSeconds")
                     <*> (o .:? "visiblePercentageMin")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "interval")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "waitForTagsTimeout")
                     <*> (o .:? "limit")
                     <*> (o .:? "verticalScrollPercentageList")
                     <*> (o .:? "filter" .!= mempty)
                     <*> (o .:? "workspaceId")
                     <*> (o .:? "type")
                     <*> (o .:? "notes")
                     <*> (o .:? "visibilitySelector")
                     <*> (o .:? "eventName")
                     <*> (o .:? "waitForTags")
                     <*> (o .:? "parameter" .!= mempty))

instance ToJSON Trigger where
        toJSON Trigger'{..}
          = object
              (catMaybes
                 [("continuousTimeMinMilliseconds" .=) <$>
                    _triContinuousTimeMinMilliseconds,
                  ("maxTimerLengthSeconds" .=) <$>
                    _triMaxTimerLengthSeconds,
                  ("customEventFilter" .=) <$> _triCustomEventFilter,
                  ("parentFolderId" .=) <$> _triParentFolderId,
                  ("visiblePercentageMax" .=) <$>
                    _triVisiblePercentageMax,
                  ("containerId" .=) <$> _triContainerId,
                  ("path" .=) <$> _triPath,
                  ("selector" .=) <$> _triSelector,
                  ("triggerId" .=) <$> _triTriggerId,
                  ("checkValidation" .=) <$> _triCheckValidation,
                  ("fingerprint" .=) <$> _triFingerprint,
                  ("totalTimeMinMilliseconds" .=) <$>
                    _triTotalTimeMinMilliseconds,
                  ("autoEventFilter" .=) <$> _triAutoEventFilter,
                  ("uniqueTriggerId" .=) <$> _triUniqueTriggerId,
                  ("horizontalScrollPercentageList" .=) <$>
                    _triHorizontalScrollPercentageList,
                  ("intervalSeconds" .=) <$> _triIntervalSeconds,
                  ("visiblePercentageMin" .=) <$>
                    _triVisiblePercentageMin,
                  ("accountId" .=) <$> _triAccountId,
                  ("name" .=) <$> _triName,
                  ("interval" .=) <$> _triInterval,
                  ("tagManagerUrl" .=) <$> _triTagManagerURL,
                  ("waitForTagsTimeout" .=) <$> _triWaitForTagsTimeout,
                  ("limit" .=) <$> _triLimit,
                  ("verticalScrollPercentageList" .=) <$>
                    _triVerticalScrollPercentageList,
                  ("filter" .=) <$> _triFilter,
                  ("workspaceId" .=) <$> _triWorkspaceId,
                  ("type" .=) <$> _triType, ("notes" .=) <$> _triNotes,
                  ("visibilitySelector" .=) <$> _triVisibilitySelector,
                  ("eventName" .=) <$> _triEventName,
                  ("waitForTags" .=) <$> _triWaitForTags,
                  ("parameter" .=) <$> _triParameter])

-- | List Tags Response.
--
-- /See:/ 'listTagsResponse' smart constructor.
data ListTagsResponse =
  ListTagsResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lTag           :: !(Maybe [Tag])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lTag'
listTagsResponse
    :: ListTagsResponse
listTagsResponse =
  ListTagsResponse' {_lNextPageToken = Nothing, _lTag = Nothing}


-- | Continuation token for fetching the next page of results.
lNextPageToken :: Lens' ListTagsResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | All GTM Tags of a GTM Container.
lTag :: Lens' ListTagsResponse [Tag]
lTag
  = lens _lTag (\ s a -> s{_lTag = a}) . _Default .
      _Coerce

instance FromJSON ListTagsResponse where
        parseJSON
          = withObject "ListTagsResponse"
              (\ o ->
                 ListTagsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "tag" .!= mempty))

instance ToJSON ListTagsResponse where
        toJSON ListTagsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  ("tag" .=) <$> _lTag])

-- | A list of enabled built-in variables.
--
-- /See:/ 'listEnabledBuiltInVariablesResponse' smart constructor.
data ListEnabledBuiltInVariablesResponse =
  ListEnabledBuiltInVariablesResponse'
    { _lebivrNextPageToken   :: !(Maybe Text)
    , _lebivrBuiltInVariable :: !(Maybe [BuiltInVariable])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListEnabledBuiltInVariablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lebivrNextPageToken'
--
-- * 'lebivrBuiltInVariable'
listEnabledBuiltInVariablesResponse
    :: ListEnabledBuiltInVariablesResponse
listEnabledBuiltInVariablesResponse =
  ListEnabledBuiltInVariablesResponse'
    {_lebivrNextPageToken = Nothing, _lebivrBuiltInVariable = Nothing}


-- | Continuation token for fetching the next page of results.
lebivrNextPageToken :: Lens' ListEnabledBuiltInVariablesResponse (Maybe Text)
lebivrNextPageToken
  = lens _lebivrNextPageToken
      (\ s a -> s{_lebivrNextPageToken = a})

-- | All GTM BuiltInVariables of a GTM container.
lebivrBuiltInVariable :: Lens' ListEnabledBuiltInVariablesResponse [BuiltInVariable]
lebivrBuiltInVariable
  = lens _lebivrBuiltInVariable
      (\ s a -> s{_lebivrBuiltInVariable = a})
      . _Default
      . _Coerce

instance FromJSON ListEnabledBuiltInVariablesResponse
         where
        parseJSON
          = withObject "ListEnabledBuiltInVariablesResponse"
              (\ o ->
                 ListEnabledBuiltInVariablesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "builtInVariable" .!= mempty))

instance ToJSON ListEnabledBuiltInVariablesResponse
         where
        toJSON ListEnabledBuiltInVariablesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lebivrNextPageToken,
                  ("builtInVariable" .=) <$> _lebivrBuiltInVariable])

-- | Represents a Google Tag Manager Custom Template\'s contents.
--
-- /See:/ 'customTemplate' smart constructor.
data CustomTemplate =
  CustomTemplate'
    { _ctContainerId   :: !(Maybe Text)
    , _ctPath          :: !(Maybe Text)
    , _ctTemplateId    :: !(Maybe Text)
    , _ctFingerprint   :: !(Maybe Text)
    , _ctAccountId     :: !(Maybe Text)
    , _ctName          :: !(Maybe Text)
    , _ctTagManagerURL :: !(Maybe Text)
    , _ctTemplateData  :: !(Maybe Text)
    , _ctWorkspaceId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctContainerId'
--
-- * 'ctPath'
--
-- * 'ctTemplateId'
--
-- * 'ctFingerprint'
--
-- * 'ctAccountId'
--
-- * 'ctName'
--
-- * 'ctTagManagerURL'
--
-- * 'ctTemplateData'
--
-- * 'ctWorkspaceId'
customTemplate
    :: CustomTemplate
customTemplate =
  CustomTemplate'
    { _ctContainerId = Nothing
    , _ctPath = Nothing
    , _ctTemplateId = Nothing
    , _ctFingerprint = Nothing
    , _ctAccountId = Nothing
    , _ctName = Nothing
    , _ctTagManagerURL = Nothing
    , _ctTemplateData = Nothing
    , _ctWorkspaceId = Nothing
    }


-- | GTM Container ID.
ctContainerId :: Lens' CustomTemplate (Maybe Text)
ctContainerId
  = lens _ctContainerId
      (\ s a -> s{_ctContainerId = a})

-- | GTM Custom Template\'s API relative path.
ctPath :: Lens' CustomTemplate (Maybe Text)
ctPath = lens _ctPath (\ s a -> s{_ctPath = a})

-- | The Custom Template ID uniquely identifies the GTM custom template.
ctTemplateId :: Lens' CustomTemplate (Maybe Text)
ctTemplateId
  = lens _ctTemplateId (\ s a -> s{_ctTemplateId = a})

-- | The fingerprint of the GTM Custom Template as computed at storage time.
-- This value is recomputed whenever the template is modified.
ctFingerprint :: Lens' CustomTemplate (Maybe Text)
ctFingerprint
  = lens _ctFingerprint
      (\ s a -> s{_ctFingerprint = a})

-- | GTM Account ID.
ctAccountId :: Lens' CustomTemplate (Maybe Text)
ctAccountId
  = lens _ctAccountId (\ s a -> s{_ctAccountId = a})

-- | Custom Template display name.
ctName :: Lens' CustomTemplate (Maybe Text)
ctName = lens _ctName (\ s a -> s{_ctName = a})

-- | Auto generated link to the tag manager UI
ctTagManagerURL :: Lens' CustomTemplate (Maybe Text)
ctTagManagerURL
  = lens _ctTagManagerURL
      (\ s a -> s{_ctTagManagerURL = a})

-- | The custom template in text format.
ctTemplateData :: Lens' CustomTemplate (Maybe Text)
ctTemplateData
  = lens _ctTemplateData
      (\ s a -> s{_ctTemplateData = a})

-- | GTM Workspace ID.
ctWorkspaceId :: Lens' CustomTemplate (Maybe Text)
ctWorkspaceId
  = lens _ctWorkspaceId
      (\ s a -> s{_ctWorkspaceId = a})

instance FromJSON CustomTemplate where
        parseJSON
          = withObject "CustomTemplate"
              (\ o ->
                 CustomTemplate' <$>
                   (o .:? "containerId") <*> (o .:? "path") <*>
                     (o .:? "templateId")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "tagManagerUrl")
                     <*> (o .:? "templateData")
                     <*> (o .:? "workspaceId"))

instance ToJSON CustomTemplate where
        toJSON CustomTemplate'{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _ctContainerId,
                  ("path" .=) <$> _ctPath,
                  ("templateId" .=) <$> _ctTemplateId,
                  ("fingerprint" .=) <$> _ctFingerprint,
                  ("accountId" .=) <$> _ctAccountId,
                  ("name" .=) <$> _ctName,
                  ("tagManagerUrl" .=) <$> _ctTagManagerURL,
                  ("templateData" .=) <$> _ctTemplateData,
                  ("workspaceId" .=) <$> _ctWorkspaceId])

-- | Represents a Google Tag Manager Folder\'s contents.
--
-- /See:/ 'folderEntities' smart constructor.
data FolderEntities =
  FolderEntities'
    { _feNextPageToken :: !(Maybe Text)
    , _feTag           :: !(Maybe [Tag])
    , _feVariable      :: !(Maybe [Variable])
    , _feTrigger       :: !(Maybe [Trigger])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FolderEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feNextPageToken'
--
-- * 'feTag'
--
-- * 'feVariable'
--
-- * 'feTrigger'
folderEntities
    :: FolderEntities
folderEntities =
  FolderEntities'
    { _feNextPageToken = Nothing
    , _feTag = Nothing
    , _feVariable = Nothing
    , _feTrigger = Nothing
    }


-- | Continuation token for fetching the next page of results.
feNextPageToken :: Lens' FolderEntities (Maybe Text)
feNextPageToken
  = lens _feNextPageToken
      (\ s a -> s{_feNextPageToken = a})

-- | The list of tags inside the folder.
feTag :: Lens' FolderEntities [Tag]
feTag
  = lens _feTag (\ s a -> s{_feTag = a}) . _Default .
      _Coerce

-- | The list of variables inside the folder.
feVariable :: Lens' FolderEntities [Variable]
feVariable
  = lens _feVariable (\ s a -> s{_feVariable = a}) .
      _Default
      . _Coerce

-- | The list of triggers inside the folder.
feTrigger :: Lens' FolderEntities [Trigger]
feTrigger
  = lens _feTrigger (\ s a -> s{_feTrigger = a}) .
      _Default
      . _Coerce

instance FromJSON FolderEntities where
        parseJSON
          = withObject "FolderEntities"
              (\ o ->
                 FolderEntities' <$>
                   (o .:? "nextPageToken") <*> (o .:? "tag" .!= mempty)
                     <*> (o .:? "variable" .!= mempty)
                     <*> (o .:? "trigger" .!= mempty))

instance ToJSON FolderEntities where
        toJSON FolderEntities'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _feNextPageToken,
                  ("tag" .=) <$> _feTag,
                  ("variable" .=) <$> _feVariable,
                  ("trigger" .=) <$> _feTrigger])

-- | The status of a workspace after synchronization.
--
-- /See:/ 'syncStatus' smart constructor.
data SyncStatus =
  SyncStatus'
    { _ssSyncError     :: !(Maybe Bool)
    , _ssMergeConflict :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SyncStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssSyncError'
--
-- * 'ssMergeConflict'
syncStatus
    :: SyncStatus
syncStatus = SyncStatus' {_ssSyncError = Nothing, _ssMergeConflict = Nothing}


-- | An error occurred during the synchronization operation.
ssSyncError :: Lens' SyncStatus (Maybe Bool)
ssSyncError
  = lens _ssSyncError (\ s a -> s{_ssSyncError = a})

-- | Synchornization operation detected a merge conflict.
ssMergeConflict :: Lens' SyncStatus (Maybe Bool)
ssMergeConflict
  = lens _ssMergeConflict
      (\ s a -> s{_ssMergeConflict = a})

instance FromJSON SyncStatus where
        parseJSON
          = withObject "SyncStatus"
              (\ o ->
                 SyncStatus' <$>
                   (o .:? "syncError") <*> (o .:? "mergeConflict"))

instance ToJSON SyncStatus where
        toJSON SyncStatus'{..}
          = object
              (catMaybes
                 [("syncError" .=) <$> _ssSyncError,
                  ("mergeConflict" .=) <$> _ssMergeConflict])

-- | The result of reverting a tag in a workspace.
--
-- /See:/ 'revertTagResponse' smart constructor.
newtype RevertTagResponse =
  RevertTagResponse'
    { _rtrTag :: Maybe Tag
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevertTagResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrTag'
revertTagResponse
    :: RevertTagResponse
revertTagResponse = RevertTagResponse' {_rtrTag = Nothing}


-- | Tag as it appears in the latest container version since the last
-- workspace synchronization operation. If no tag is present, that means
-- the tag was deleted in the latest container version.
rtrTag :: Lens' RevertTagResponse (Maybe Tag)
rtrTag = lens _rtrTag (\ s a -> s{_rtrTag = a})

instance FromJSON RevertTagResponse where
        parseJSON
          = withObject "RevertTagResponse"
              (\ o -> RevertTagResponse' <$> (o .:? "tag"))

instance ToJSON RevertTagResponse where
        toJSON RevertTagResponse'{..}
          = object (catMaybes [("tag" .=) <$> _rtrTag])

-- | Represents a predicate.
--
-- /See:/ 'condition' smart constructor.
data Condition =
  Condition'
    { _cType      :: !(Maybe ConditionType)
    , _cParameter :: !(Maybe [Parameter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cType'
--
-- * 'cParameter'
condition
    :: Condition
condition = Condition' {_cType = Nothing, _cParameter = Nothing}


-- | The type of operator for this condition.
cType :: Lens' Condition (Maybe ConditionType)
cType = lens _cType (\ s a -> s{_cType = a})

-- | A list of named parameters (key\/value), depending on the condition\'s
-- type. Notes: - For binary operators, include parameters named arg0 and
-- arg1 for specifying the left and right operands, respectively. - At this
-- time, the left operand (arg0) must be a reference to a variable. - For
-- case-insensitive Regex matching, include a boolean parameter named
-- ignore_case that is set to true. If not specified or set to any other
-- value, the matching will be case sensitive. - To negate an operator,
-- include a boolean parameter named negate boolean parameter that is set
-- to true.
cParameter :: Lens' Condition [Parameter]
cParameter
  = lens _cParameter (\ s a -> s{_cParameter = a}) .
      _Default
      . _Coerce

instance FromJSON Condition where
        parseJSON
          = withObject "Condition"
              (\ o ->
                 Condition' <$>
                   (o .:? "type") <*> (o .:? "parameter" .!= mempty))

instance ToJSON Condition where
        toJSON Condition'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _cType,
                  ("parameter" .=) <$> _cParameter])

-- | A workspace entity that may represent a tag, trigger, variable, or
-- folder in addition to its status in the workspace.
--
-- /See:/ 'entity' smart constructor.
data Entity =
  Entity'
    { _eTag          :: !(Maybe Tag)
    , _eFolder       :: !(Maybe Folder)
    , _eVariable     :: !(Maybe Variable)
    , _eChangeStatus :: !(Maybe EntityChangeStatus)
    , _eTrigger      :: !(Maybe Trigger)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eTag'
--
-- * 'eFolder'
--
-- * 'eVariable'
--
-- * 'eChangeStatus'
--
-- * 'eTrigger'
entity
    :: Entity
entity =
  Entity'
    { _eTag = Nothing
    , _eFolder = Nothing
    , _eVariable = Nothing
    , _eChangeStatus = Nothing
    , _eTrigger = Nothing
    }


-- | The tag being represented by the entity.
eTag :: Lens' Entity (Maybe Tag)
eTag = lens _eTag (\ s a -> s{_eTag = a})

-- | The Folder being represented by the entity.
eFolder :: Lens' Entity (Maybe Folder)
eFolder = lens _eFolder (\ s a -> s{_eFolder = a})

-- | The variable being represented by the entity.
eVariable :: Lens' Entity (Maybe Variable)
eVariable
  = lens _eVariable (\ s a -> s{_eVariable = a})

-- | Represents how the entity has been changed in the workspace.
eChangeStatus :: Lens' Entity (Maybe EntityChangeStatus)
eChangeStatus
  = lens _eChangeStatus
      (\ s a -> s{_eChangeStatus = a})

-- | The trigger being represented by the entity.
eTrigger :: Lens' Entity (Maybe Trigger)
eTrigger = lens _eTrigger (\ s a -> s{_eTrigger = a})

instance FromJSON Entity where
        parseJSON
          = withObject "Entity"
              (\ o ->
                 Entity' <$>
                   (o .:? "tag") <*> (o .:? "folder") <*>
                     (o .:? "variable")
                     <*> (o .:? "changeStatus")
                     <*> (o .:? "trigger"))

instance ToJSON Entity where
        toJSON Entity'{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _eTag, ("folder" .=) <$> _eFolder,
                  ("variable" .=) <$> _eVariable,
                  ("changeStatus" .=) <$> _eChangeStatus,
                  ("trigger" .=) <$> _eTrigger])

-- | Defines the Google Tag Manager Container access permissions.
--
-- /See:/ 'containerAccess' smart constructor.
data ContainerAccess =
  ContainerAccess'
    { _caContainerId :: !(Maybe Text)
    , _caPermission  :: !(Maybe ContainerAccessPermission)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caContainerId'
--
-- * 'caPermission'
containerAccess
    :: ContainerAccess
containerAccess =
  ContainerAccess' {_caContainerId = Nothing, _caPermission = Nothing}


-- | GTM Container ID.
caContainerId :: Lens' ContainerAccess (Maybe Text)
caContainerId
  = lens _caContainerId
      (\ s a -> s{_caContainerId = a})

-- | List of Container permissions.
caPermission :: Lens' ContainerAccess (Maybe ContainerAccessPermission)
caPermission
  = lens _caPermission (\ s a -> s{_caPermission = a})

instance FromJSON ContainerAccess where
        parseJSON
          = withObject "ContainerAccess"
              (\ o ->
                 ContainerAccess' <$>
                   (o .:? "containerId") <*> (o .:? "permission"))

instance ToJSON ContainerAccess where
        toJSON ContainerAccess'{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _caContainerId,
                  ("permission" .=) <$> _caPermission])

-- | A Timestamp represents a point in time independent of any time zone or
-- local calendar, encoded as a count of seconds and fractions of seconds
-- at nanosecond resolution. The count is relative to an epoch at UTC
-- midnight on January 1, 1970, in the proleptic Gregorian calendar which
-- extends the Gregorian calendar backwards to year one. All minutes are 60
-- seconds long. Leap seconds are \"smeared\" so that no leap second table
-- is needed for interpretation, using a [24-hour linear
-- smear](https:\/\/developers.google.com\/time\/smear). The range is from
-- 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting
-- to that range, we ensure that we can convert to and from [RFC
-- 3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) date strings. # Examples
-- Example 1: Compute Timestamp from POSIX \`time()\`. Timestamp timestamp;
-- timestamp.set_seconds(time(NULL)); timestamp.set_nanos(0); Example 2:
-- Compute Timestamp from POSIX \`gettimeofday()\`. struct timeval tv;
-- gettimeofday(&tv, NULL); Timestamp timestamp;
-- timestamp.set_seconds(tv.tv_sec); timestamp.set_nanos(tv.tv_usec *
-- 1000); Example 3: Compute Timestamp from Win32
-- \`GetSystemTimeAsFileTime()\`. FILETIME ft;
-- GetSystemTimeAsFileTime(&ft); UINT64 ticks =
-- (((UINT64)ft.dwHighDateTime) \<\< 32) | ft.dwLowDateTime; \/\/ A Windows
-- tick is 100 nanoseconds. Windows epoch 1601-01-01T00:00:00Z \/\/ is
-- 11644473600 seconds before Unix epoch 1970-01-01T00:00:00Z. Timestamp
-- timestamp; timestamp.set_seconds((INT64) ((ticks \/ 10000000) -
-- 11644473600LL)); timestamp.set_nanos((INT32) ((ticks % 10000000) *
-- 100)); Example 4: Compute Timestamp from Java
-- \`System.currentTimeMillis()\`. long millis =
-- System.currentTimeMillis(); Timestamp timestamp =
-- Timestamp.newBuilder().setSeconds(millis \/ 1000) .setNanos((int)
-- ((millis % 1000) * 1000000)).build(); Example 5: Compute Timestamp from
-- current time in Python. timestamp = Timestamp()
-- timestamp.GetCurrentTime() # JSON Mapping In JSON format, the Timestamp
-- type is encoded as a string in the [RFC
-- 3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) format. That is, the
-- format is \"{year}-{month}-{day}T{hour}:{min}:{sec}[.{frac_sec}]Z\"
-- where {year} is always expressed using four digits while {month}, {day},
-- {hour}, {min}, and {sec} are zero-padded to two digits each. The
-- fractional seconds, which can go up to 9 digits (i.e. up to 1 nanosecond
-- resolution), are optional. The \"Z\" suffix indicates the timezone
-- (\"UTC\"); the timezone is required. A proto3 JSON serializer should
-- always use UTC (as indicated by \"Z\") when printing the Timestamp type
-- and a proto3 JSON parser should be able to accept both UTC and other
-- timezones (as indicated by an offset). For example,
-- \"2017-01-15T01:30:15.01Z\" encodes 15.01 seconds past 01:30 UTC on
-- January 15, 2017. In JavaScript, one can convert a Date object to this
-- format using the standard
-- [toISOString()](https:\/\/developer.mozilla.org\/en-US\/docs\/Web\/JavaScript\/Reference\/Global_Objects\/Date\/toISOString)
-- method. In Python, a standard \`datetime.datetime\` object can be
-- converted to this format using
-- [\`strftime\`](https:\/\/docs.python.org\/2\/library\/time.html#time.strftime)
-- with the time format spec \'%Y-%m-%dT%H:%M:%S.%fZ\'. Likewise, in Java,
-- one can use the Joda Time\'s [\`ISODateTimeFormat.dateTime()\`](
-- http:\/\/www.joda.org\/joda-time\/apidocs\/org\/joda\/time\/format\/ISODateTimeFormat.html#dateTime%2D%2D
-- ) to obtain a formatter capable of generating timestamps in this format.
--
-- /See:/ 'timestamp' smart constructor.
data Timestamp =
  Timestamp'
    { _tNanos   :: !(Maybe (Textual Int32))
    , _tSeconds :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Timestamp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tNanos'
--
-- * 'tSeconds'
timestamp
    :: Timestamp
timestamp = Timestamp' {_tNanos = Nothing, _tSeconds = Nothing}


-- | Non-negative fractions of a second at nanosecond resolution. Negative
-- second values with fractions must still have non-negative nanos values
-- that count forward in time. Must be from 0 to 999,999,999 inclusive.
tNanos :: Lens' Timestamp (Maybe Int32)
tNanos
  = lens _tNanos (\ s a -> s{_tNanos = a}) .
      mapping _Coerce

-- | Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z.
-- Must be from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive.
tSeconds :: Lens' Timestamp (Maybe Int64)
tSeconds
  = lens _tSeconds (\ s a -> s{_tSeconds = a}) .
      mapping _Coerce

instance FromJSON Timestamp where
        parseJSON
          = withObject "Timestamp"
              (\ o ->
                 Timestamp' <$> (o .:? "nanos") <*> (o .:? "seconds"))

instance ToJSON Timestamp where
        toJSON Timestamp'{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _tNanos,
                  ("seconds" .=) <$> _tSeconds])

--
-- /See:/ 'variableFormatValue' smart constructor.
data VariableFormatValue =
  VariableFormatValue'
    { _vfvConvertNullToValue      :: !(Maybe Parameter)
    , _vfvConvertTrueToValue      :: !(Maybe Parameter)
    , _vfvCaseConversionType      :: !(Maybe VariableFormatValueCaseConversionType)
    , _vfvConvertFalseToValue     :: !(Maybe Parameter)
    , _vfvConvertUndefinedToValue :: !(Maybe Parameter)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VariableFormatValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfvConvertNullToValue'
--
-- * 'vfvConvertTrueToValue'
--
-- * 'vfvCaseConversionType'
--
-- * 'vfvConvertFalseToValue'
--
-- * 'vfvConvertUndefinedToValue'
variableFormatValue
    :: VariableFormatValue
variableFormatValue =
  VariableFormatValue'
    { _vfvConvertNullToValue = Nothing
    , _vfvConvertTrueToValue = Nothing
    , _vfvCaseConversionType = Nothing
    , _vfvConvertFalseToValue = Nothing
    , _vfvConvertUndefinedToValue = Nothing
    }


-- | The value to convert if a variable value is null.
vfvConvertNullToValue :: Lens' VariableFormatValue (Maybe Parameter)
vfvConvertNullToValue
  = lens _vfvConvertNullToValue
      (\ s a -> s{_vfvConvertNullToValue = a})

-- | The value to convert if a variable value is true.
vfvConvertTrueToValue :: Lens' VariableFormatValue (Maybe Parameter)
vfvConvertTrueToValue
  = lens _vfvConvertTrueToValue
      (\ s a -> s{_vfvConvertTrueToValue = a})

-- | The option to convert a string-type variable value to either lowercase
-- or uppercase.
vfvCaseConversionType :: Lens' VariableFormatValue (Maybe VariableFormatValueCaseConversionType)
vfvCaseConversionType
  = lens _vfvCaseConversionType
      (\ s a -> s{_vfvCaseConversionType = a})

-- | The value to convert if a variable value is false.
vfvConvertFalseToValue :: Lens' VariableFormatValue (Maybe Parameter)
vfvConvertFalseToValue
  = lens _vfvConvertFalseToValue
      (\ s a -> s{_vfvConvertFalseToValue = a})

-- | The value to convert if a variable value is undefined.
vfvConvertUndefinedToValue :: Lens' VariableFormatValue (Maybe Parameter)
vfvConvertUndefinedToValue
  = lens _vfvConvertUndefinedToValue
      (\ s a -> s{_vfvConvertUndefinedToValue = a})

instance FromJSON VariableFormatValue where
        parseJSON
          = withObject "VariableFormatValue"
              (\ o ->
                 VariableFormatValue' <$>
                   (o .:? "convertNullToValue") <*>
                     (o .:? "convertTrueToValue")
                     <*> (o .:? "caseConversionType")
                     <*> (o .:? "convertFalseToValue")
                     <*> (o .:? "convertUndefinedToValue"))

instance ToJSON VariableFormatValue where
        toJSON VariableFormatValue'{..}
          = object
              (catMaybes
                 [("convertNullToValue" .=) <$>
                    _vfvConvertNullToValue,
                  ("convertTrueToValue" .=) <$> _vfvConvertTrueToValue,
                  ("caseConversionType" .=) <$> _vfvCaseConversionType,
                  ("convertFalseToValue" .=) <$>
                    _vfvConvertFalseToValue,
                  ("convertUndefinedToValue" .=) <$>
                    _vfvConvertUndefinedToValue])

-- | The result of reverting a built-in variable in a workspace.
--
-- /See:/ 'revertBuiltInVariableResponse' smart constructor.
newtype RevertBuiltInVariableResponse =
  RevertBuiltInVariableResponse'
    { _rbivrEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevertBuiltInVariableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbivrEnabled'
revertBuiltInVariableResponse
    :: RevertBuiltInVariableResponse
revertBuiltInVariableResponse =
  RevertBuiltInVariableResponse' {_rbivrEnabled = Nothing}


-- | Whether the built-in variable is enabled after reversion.
rbivrEnabled :: Lens' RevertBuiltInVariableResponse (Maybe Bool)
rbivrEnabled
  = lens _rbivrEnabled (\ s a -> s{_rbivrEnabled = a})

instance FromJSON RevertBuiltInVariableResponse where
        parseJSON
          = withObject "RevertBuiltInVariableResponse"
              (\ o ->
                 RevertBuiltInVariableResponse' <$> (o .:? "enabled"))

instance ToJSON RevertBuiltInVariableResponse where
        toJSON RevertBuiltInVariableResponse'{..}
          = object
              (catMaybes [("enabled" .=) <$> _rbivrEnabled])

-- | Represents a Google Tag Manager Parameter.
--
-- /See:/ 'parameter' smart constructor.
data Parameter =
  Parameter'
    { _pList  :: !(Maybe [Parameter])
    , _pValue :: !(Maybe Text)
    , _pMap   :: !(Maybe [Parameter])
    , _pKey   :: !(Maybe Text)
    , _pType  :: !(Maybe ParameterType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pList'
--
-- * 'pValue'
--
-- * 'pMap'
--
-- * 'pKey'
--
-- * 'pType'
parameter
    :: Parameter
parameter =
  Parameter'
    { _pList = Nothing
    , _pValue = Nothing
    , _pMap = Nothing
    , _pKey = Nothing
    , _pType = Nothing
    }


-- | This list parameter\'s parameters (keys will be ignored).
pList :: Lens' Parameter [Parameter]
pList
  = lens _pList (\ s a -> s{_pList = a}) . _Default .
      _Coerce

-- | A parameter\'s value (may contain variable references such as
-- \"{{myVariable}}\") as appropriate to the specified type.
pValue :: Lens' Parameter (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | This map parameter\'s parameters (must have keys; keys must be unique).
pMap :: Lens' Parameter [Parameter]
pMap
  = lens _pMap (\ s a -> s{_pMap = a}) . _Default .
      _Coerce

-- | The named key that uniquely identifies a parameter. Required for
-- top-level parameters, as well as map values. Ignored for list values.
pKey :: Lens' Parameter (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | The parameter type. Valid values are: - boolean: The value represents a
-- boolean, represented as \'true\' or \'false\' - integer: The value
-- represents a 64-bit signed integer value, in base 10 - list: A list of
-- parameters should be specified - map: A map of parameters should be
-- specified - template: The value represents any text; this can include
-- variable references (even variable references that might return
-- non-string types)
pType :: Lens' Parameter (Maybe ParameterType)
pType = lens _pType (\ s a -> s{_pType = a})

instance FromJSON Parameter where
        parseJSON
          = withObject "Parameter"
              (\ o ->
                 Parameter' <$>
                   (o .:? "list" .!= mempty) <*> (o .:? "value") <*>
                     (o .:? "map" .!= mempty)
                     <*> (o .:? "key")
                     <*> (o .:? "type"))

instance ToJSON Parameter where
        toJSON Parameter'{..}
          = object
              (catMaybes
                 [("list" .=) <$> _pList, ("value" .=) <$> _pValue,
                  ("map" .=) <$> _pMap, ("key" .=) <$> _pKey,
                  ("type" .=) <$> _pType])

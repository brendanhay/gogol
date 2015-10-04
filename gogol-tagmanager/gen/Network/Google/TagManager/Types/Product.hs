{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TagManager.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
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
newtype ListVariablesResponse = ListVariablesResponse
    { _lvrVariables :: Maybe [Variable]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListVariablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrVariables'
listVariablesResponse
    :: ListVariablesResponse
listVariablesResponse =
    ListVariablesResponse
    { _lvrVariables = Nothing
    }

-- | All GTM Variables of a GTM Container.
lvrVariables :: Lens' ListVariablesResponse [Variable]
lvrVariables
  = lens _lvrVariables (\ s a -> s{_lvrVariables = a})
      . _Default
      . _Coerce

instance FromJSON ListVariablesResponse where
        parseJSON
          = withObject "ListVariablesResponse"
              (\ o ->
                 ListVariablesResponse <$>
                   (o .:? "variables" .!= mempty))

instance ToJSON ListVariablesResponse where
        toJSON ListVariablesResponse{..}
          = object
              (catMaybes [("variables" .=) <$> _lvrVariables])

-- | List Folders Response.
--
-- /See:/ 'listFoldersResponse' smart constructor.
newtype ListFoldersResponse = ListFoldersResponse
    { _lfrFolders :: Maybe [Folder]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListFoldersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrFolders'
listFoldersResponse
    :: ListFoldersResponse
listFoldersResponse =
    ListFoldersResponse
    { _lfrFolders = Nothing
    }

-- | All GTM Folders of a GTM Container.
lfrFolders :: Lens' ListFoldersResponse [Folder]
lfrFolders
  = lens _lfrFolders (\ s a -> s{_lfrFolders = a}) .
      _Default
      . _Coerce

instance FromJSON ListFoldersResponse where
        parseJSON
          = withObject "ListFoldersResponse"
              (\ o ->
                 ListFoldersResponse <$> (o .:? "folders" .!= mempty))

instance ToJSON ListFoldersResponse where
        toJSON ListFoldersResponse{..}
          = object (catMaybes [("folders" .=) <$> _lfrFolders])

-- | List Rules Response.
--
-- /See:/ 'listRulesResponse' smart constructor.
newtype ListRulesResponse = ListRulesResponse
    { _lrrRules :: Maybe [Rule]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrRules'
listRulesResponse
    :: ListRulesResponse
listRulesResponse =
    ListRulesResponse
    { _lrrRules = Nothing
    }

-- | All GTM Rules of a GTM Container.
lrrRules :: Lens' ListRulesResponse [Rule]
lrrRules
  = lens _lrrRules (\ s a -> s{_lrrRules = a}) .
      _Default
      . _Coerce

instance FromJSON ListRulesResponse where
        parseJSON
          = withObject "ListRulesResponse"
              (\ o ->
                 ListRulesResponse <$> (o .:? "rules" .!= mempty))

instance ToJSON ListRulesResponse where
        toJSON ListRulesResponse{..}
          = object (catMaybes [("rules" .=) <$> _lrrRules])

-- | Publish container version response.
--
-- /See:/ 'publishContainerVersionResponse' smart constructor.
data PublishContainerVersionResponse = PublishContainerVersionResponse
    { _pcvrCompilerError    :: !(Maybe Bool)
    , _pcvrContainerVersion :: !(Maybe ContainerVersion)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PublishContainerVersionResponse
    { _pcvrCompilerError = Nothing
    , _pcvrContainerVersion = Nothing
    }

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
                 PublishContainerVersionResponse <$>
                   (o .:? "compilerError") <*>
                     (o .:? "containerVersion"))

instance ToJSON PublishContainerVersionResponse where
        toJSON PublishContainerVersionResponse{..}
          = object
              (catMaybes
                 [("compilerError" .=) <$> _pcvrCompilerError,
                  ("containerVersion" .=) <$> _pcvrContainerVersion])

-- | Represents a Google Tag Manager Container Version Header.
--
-- /See:/ 'containerVersionHeader' smart constructor.
data ContainerVersionHeader = ContainerVersionHeader
    { _cvhNumTags            :: !(Maybe Text)
    , _cvhNumMacros          :: !(Maybe Text)
    , _cvhContainerId        :: !(Maybe Text)
    , _cvhContainerVersionId :: !(Maybe Text)
    , _cvhAccountId          :: !(Maybe Text)
    , _cvhName               :: !(Maybe Text)
    , _cvhNumTriggers        :: !(Maybe Text)
    , _cvhDeleted            :: !(Maybe Bool)
    , _cvhNumRules           :: !(Maybe Text)
    , _cvhNumVariables       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cvhNumRules'
--
-- * 'cvhNumVariables'
containerVersionHeader
    :: ContainerVersionHeader
containerVersionHeader =
    ContainerVersionHeader
    { _cvhNumTags = Nothing
    , _cvhNumMacros = Nothing
    , _cvhContainerId = Nothing
    , _cvhContainerVersionId = Nothing
    , _cvhAccountId = Nothing
    , _cvhName = Nothing
    , _cvhNumTriggers = Nothing
    , _cvhDeleted = Nothing
    , _cvhNumRules = Nothing
    , _cvhNumVariables = Nothing
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

-- | Number of rules in the container version.
cvhNumRules :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumRules
  = lens _cvhNumRules (\ s a -> s{_cvhNumRules = a})

-- | Number of variables in the container version.
cvhNumVariables :: Lens' ContainerVersionHeader (Maybe Text)
cvhNumVariables
  = lens _cvhNumVariables
      (\ s a -> s{_cvhNumVariables = a})

instance FromJSON ContainerVersionHeader where
        parseJSON
          = withObject "ContainerVersionHeader"
              (\ o ->
                 ContainerVersionHeader <$>
                   (o .:? "numTags") <*> (o .:? "numMacros") <*>
                     (o .:? "containerId")
                     <*> (o .:? "containerVersionId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "numTriggers")
                     <*> (o .:? "deleted")
                     <*> (o .:? "numRules")
                     <*> (o .:? "numVariables"))

instance ToJSON ContainerVersionHeader where
        toJSON ContainerVersionHeader{..}
          = object
              (catMaybes
                 [("numTags" .=) <$> _cvhNumTags,
                  ("numMacros" .=) <$> _cvhNumMacros,
                  ("containerId" .=) <$> _cvhContainerId,
                  ("containerVersionId" .=) <$> _cvhContainerVersionId,
                  ("accountId" .=) <$> _cvhAccountId,
                  ("name" .=) <$> _cvhName,
                  ("numTriggers" .=) <$> _cvhNumTriggers,
                  ("deleted" .=) <$> _cvhDeleted,
                  ("numRules" .=) <$> _cvhNumRules,
                  ("numVariables" .=) <$> _cvhNumVariables])

--
-- /See:/ 'teardownTag' smart constructor.
data TeardownTag = TeardownTag
    { _ttStopTeardownOnFailure :: !(Maybe Bool)
    , _ttTagName               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TeardownTag
    { _ttStopTeardownOnFailure = Nothing
    , _ttTagName = Nothing
    }

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
                 TeardownTag <$>
                   (o .:? "stopTeardownOnFailure") <*>
                     (o .:? "tagName"))

instance ToJSON TeardownTag where
        toJSON TeardownTag{..}
          = object
              (catMaybes
                 [("stopTeardownOnFailure" .=) <$>
                    _ttStopTeardownOnFailure,
                  ("tagName" .=) <$> _ttTagName])

-- | List triggers response.
--
-- /See:/ 'listTriggersResponse' smart constructor.
newtype ListTriggersResponse = ListTriggersResponse
    { _ltrTriggers :: Maybe [Trigger]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTriggersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrTriggers'
listTriggersResponse
    :: ListTriggersResponse
listTriggersResponse =
    ListTriggersResponse
    { _ltrTriggers = Nothing
    }

-- | All GTM Triggers of a GTM Container.
ltrTriggers :: Lens' ListTriggersResponse [Trigger]
ltrTriggers
  = lens _ltrTriggers (\ s a -> s{_ltrTriggers = a}) .
      _Default
      . _Coerce

instance FromJSON ListTriggersResponse where
        parseJSON
          = withObject "ListTriggersResponse"
              (\ o ->
                 ListTriggersResponse <$>
                   (o .:? "triggers" .!= mempty))

instance ToJSON ListTriggersResponse where
        toJSON ListTriggersResponse{..}
          = object
              (catMaybes [("triggers" .=) <$> _ltrTriggers])

-- | Represents a Google Tag Manager Macro.
--
-- /See:/ 'macro' smart constructor.
data Macro = Macro
    { _mScheduleEndMs   :: !(Maybe Int64)
    , _mParentFolderId  :: !(Maybe Text)
    , _mContainerId     :: !(Maybe Text)
    , _mDisablingRuleId :: !(Maybe [Text])
    , _mFingerprint     :: !(Maybe Text)
    , _mAccountId       :: !(Maybe Text)
    , _mName            :: !(Maybe Text)
    , _mEnablingRuleId  :: !(Maybe [Text])
    , _mMacroId         :: !(Maybe Text)
    , _mType            :: !(Maybe Text)
    , _mScheduleStartMs :: !(Maybe Int64)
    , _mNotes           :: !(Maybe Text)
    , _mParameter       :: !(Maybe [Parameter])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Macro' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mScheduleEndMs'
--
-- * 'mParentFolderId'
--
-- * 'mContainerId'
--
-- * 'mDisablingRuleId'
--
-- * 'mFingerprint'
--
-- * 'mAccountId'
--
-- * 'mName'
--
-- * 'mEnablingRuleId'
--
-- * 'mMacroId'
--
-- * 'mType'
--
-- * 'mScheduleStartMs'
--
-- * 'mNotes'
--
-- * 'mParameter'
macro
    :: Macro
macro =
    Macro
    { _mScheduleEndMs = Nothing
    , _mParentFolderId = Nothing
    , _mContainerId = Nothing
    , _mDisablingRuleId = Nothing
    , _mFingerprint = Nothing
    , _mAccountId = Nothing
    , _mName = Nothing
    , _mEnablingRuleId = Nothing
    , _mMacroId = Nothing
    , _mType = Nothing
    , _mScheduleStartMs = Nothing
    , _mNotes = Nothing
    , _mParameter = Nothing
    }

-- | The end timestamp in milliseconds to schedule a macro.
mScheduleEndMs :: Lens' Macro (Maybe Int64)
mScheduleEndMs
  = lens _mScheduleEndMs
      (\ s a -> s{_mScheduleEndMs = a})

-- | Parent folder id.
mParentFolderId :: Lens' Macro (Maybe Text)
mParentFolderId
  = lens _mParentFolderId
      (\ s a -> s{_mParentFolderId = a})

-- | GTM Container ID.
mContainerId :: Lens' Macro (Maybe Text)
mContainerId
  = lens _mContainerId (\ s a -> s{_mContainerId = a})

-- | For mobile containers only: A list of rule IDs for disabling conditional
-- macros; the macro is enabled if one of the enabling rules is true while
-- all the disabling rules are false. Treated as an unordered set.
mDisablingRuleId :: Lens' Macro [Text]
mDisablingRuleId
  = lens _mDisablingRuleId
      (\ s a -> s{_mDisablingRuleId = a})
      . _Default
      . _Coerce

-- | The fingerprint of the GTM Macro as computed at storage time. This value
-- is recomputed whenever the macro is modified.
mFingerprint :: Lens' Macro (Maybe Text)
mFingerprint
  = lens _mFingerprint (\ s a -> s{_mFingerprint = a})

-- | GTM Account ID.
mAccountId :: Lens' Macro (Maybe Text)
mAccountId
  = lens _mAccountId (\ s a -> s{_mAccountId = a})

-- | Macro display name.
mName :: Lens' Macro (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | For mobile containers only: A list of rule IDs for enabling conditional
-- macros; the macro is enabled if one of the enabling rules is true while
-- all the disabling rules are false. Treated as an unordered set.
mEnablingRuleId :: Lens' Macro [Text]
mEnablingRuleId
  = lens _mEnablingRuleId
      (\ s a -> s{_mEnablingRuleId = a})
      . _Default
      . _Coerce

-- | The Macro ID uniquely identifies the GTM Macro.
mMacroId :: Lens' Macro (Maybe Text)
mMacroId = lens _mMacroId (\ s a -> s{_mMacroId = a})

-- | GTM Macro Type.
mType :: Lens' Macro (Maybe Text)
mType = lens _mType (\ s a -> s{_mType = a})

-- | The start timestamp in milliseconds to schedule a macro.
mScheduleStartMs :: Lens' Macro (Maybe Int64)
mScheduleStartMs
  = lens _mScheduleStartMs
      (\ s a -> s{_mScheduleStartMs = a})

-- | User notes on how to apply this macro in the container.
mNotes :: Lens' Macro (Maybe Text)
mNotes = lens _mNotes (\ s a -> s{_mNotes = a})

-- | The macro\'s parameters.
mParameter :: Lens' Macro [Parameter]
mParameter
  = lens _mParameter (\ s a -> s{_mParameter = a}) .
      _Default
      . _Coerce

instance FromJSON Macro where
        parseJSON
          = withObject "Macro"
              (\ o ->
                 Macro <$>
                   (o .:? "scheduleEndMs") <*> (o .:? "parentFolderId")
                     <*> (o .:? "containerId")
                     <*> (o .:? "disablingRuleId" .!= mempty)
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "enablingRuleId" .!= mempty)
                     <*> (o .:? "macroId")
                     <*> (o .:? "type")
                     <*> (o .:? "scheduleStartMs")
                     <*> (o .:? "notes")
                     <*> (o .:? "parameter" .!= mempty))

instance ToJSON Macro where
        toJSON Macro{..}
          = object
              (catMaybes
                 [("scheduleEndMs" .=) <$> _mScheduleEndMs,
                  ("parentFolderId" .=) <$> _mParentFolderId,
                  ("containerId" .=) <$> _mContainerId,
                  ("disablingRuleId" .=) <$> _mDisablingRuleId,
                  ("fingerprint" .=) <$> _mFingerprint,
                  ("accountId" .=) <$> _mAccountId,
                  ("name" .=) <$> _mName,
                  ("enablingRuleId" .=) <$> _mEnablingRuleId,
                  ("macroId" .=) <$> _mMacroId, ("type" .=) <$> _mType,
                  ("scheduleStartMs" .=) <$> _mScheduleStartMs,
                  ("notes" .=) <$> _mNotes,
                  ("parameter" .=) <$> _mParameter])

-- | Represents a Google Tag Manager Tag.
--
-- /See:/ 'tag' smart constructor.
data Tag = Tag
    { _tBlockingTriggerId :: !(Maybe [Text])
    , _tScheduleEndMs     :: !(Maybe Int64)
    , _tParentFolderId    :: !(Maybe Text)
    , _tLiveOnly          :: !(Maybe Bool)
    , _tContainerId       :: !(Maybe Text)
    , _tPriority          :: !(Maybe Parameter)
    , _tTeardownTag       :: !(Maybe [TeardownTag])
    , _tFingerprint       :: !(Maybe Text)
    , _tTagFiringOption   :: !(Maybe TagTagFiringOption)
    , _tAccountId         :: !(Maybe Text)
    , _tTagId             :: !(Maybe Text)
    , _tName              :: !(Maybe Text)
    , _tBlockingRuleId    :: !(Maybe [Text])
    , _tSetupTag          :: !(Maybe [SetupTag])
    , _tFiringTriggerId   :: !(Maybe [Text])
    , _tType              :: !(Maybe Text)
    , _tScheduleStartMs   :: !(Maybe Int64)
    , _tNotes             :: !(Maybe Text)
    , _tFiringRuleId      :: !(Maybe [Text])
    , _tParameter         :: !(Maybe [Parameter])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tBlockingRuleId'
--
-- * 'tSetupTag'
--
-- * 'tFiringTriggerId'
--
-- * 'tType'
--
-- * 'tScheduleStartMs'
--
-- * 'tNotes'
--
-- * 'tFiringRuleId'
--
-- * 'tParameter'
tag
    :: Tag
tag =
    Tag
    { _tBlockingTriggerId = Nothing
    , _tScheduleEndMs = Nothing
    , _tParentFolderId = Nothing
    , _tLiveOnly = Nothing
    , _tContainerId = Nothing
    , _tPriority = Nothing
    , _tTeardownTag = Nothing
    , _tFingerprint = Nothing
    , _tTagFiringOption = Nothing
    , _tAccountId = Nothing
    , _tTagId = Nothing
    , _tName = Nothing
    , _tBlockingRuleId = Nothing
    , _tSetupTag = Nothing
    , _tFiringTriggerId = Nothing
    , _tType = Nothing
    , _tScheduleStartMs = Nothing
    , _tNotes = Nothing
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

-- | GTM Tag Type.
tType :: Lens' Tag (Maybe Text)
tType = lens _tType (\ s a -> s{_tType = a})

-- | The start timestamp in milliseconds to schedule a tag.
tScheduleStartMs :: Lens' Tag (Maybe Int64)
tScheduleStartMs
  = lens _tScheduleStartMs
      (\ s a -> s{_tScheduleStartMs = a})

-- | User notes on how to apply this tag in the container.
tNotes :: Lens' Tag (Maybe Text)
tNotes = lens _tNotes (\ s a -> s{_tNotes = a})

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
                 Tag <$>
                   (o .:? "blockingTriggerId" .!= mempty) <*>
                     (o .:? "scheduleEndMs")
                     <*> (o .:? "parentFolderId")
                     <*> (o .:? "liveOnly")
                     <*> (o .:? "containerId")
                     <*> (o .:? "priority")
                     <*> (o .:? "teardownTag" .!= mempty)
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "tagFiringOption")
                     <*> (o .:? "accountId")
                     <*> (o .:? "tagId")
                     <*> (o .:? "name")
                     <*> (o .:? "blockingRuleId" .!= mempty)
                     <*> (o .:? "setupTag" .!= mempty)
                     <*> (o .:? "firingTriggerId" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "scheduleStartMs")
                     <*> (o .:? "notes")
                     <*> (o .:? "firingRuleId" .!= mempty)
                     <*> (o .:? "parameter" .!= mempty))

instance ToJSON Tag where
        toJSON Tag{..}
          = object
              (catMaybes
                 [("blockingTriggerId" .=) <$> _tBlockingTriggerId,
                  ("scheduleEndMs" .=) <$> _tScheduleEndMs,
                  ("parentFolderId" .=) <$> _tParentFolderId,
                  ("liveOnly" .=) <$> _tLiveOnly,
                  ("containerId" .=) <$> _tContainerId,
                  ("priority" .=) <$> _tPriority,
                  ("teardownTag" .=) <$> _tTeardownTag,
                  ("fingerprint" .=) <$> _tFingerprint,
                  ("tagFiringOption" .=) <$> _tTagFiringOption,
                  ("accountId" .=) <$> _tAccountId,
                  ("tagId" .=) <$> _tTagId, ("name" .=) <$> _tName,
                  ("blockingRuleId" .=) <$> _tBlockingRuleId,
                  ("setupTag" .=) <$> _tSetupTag,
                  ("firingTriggerId" .=) <$> _tFiringTriggerId,
                  ("type" .=) <$> _tType,
                  ("scheduleStartMs" .=) <$> _tScheduleStartMs,
                  ("notes" .=) <$> _tNotes,
                  ("firingRuleId" .=) <$> _tFiringRuleId,
                  ("parameter" .=) <$> _tParameter])

-- | Create container versions response.
--
-- /See:/ 'createContainerVersionResponse' smart constructor.
data CreateContainerVersionResponse = CreateContainerVersionResponse
    { _ccvrCompilerError    :: !(Maybe Bool)
    , _ccvrContainerVersion :: !(Maybe ContainerVersion)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateContainerVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccvrCompilerError'
--
-- * 'ccvrContainerVersion'
createContainerVersionResponse
    :: CreateContainerVersionResponse
createContainerVersionResponse =
    CreateContainerVersionResponse
    { _ccvrCompilerError = Nothing
    , _ccvrContainerVersion = Nothing
    }

-- | Compiler errors or not.
ccvrCompilerError :: Lens' CreateContainerVersionResponse (Maybe Bool)
ccvrCompilerError
  = lens _ccvrCompilerError
      (\ s a -> s{_ccvrCompilerError = a})

-- | The container version created.
ccvrContainerVersion :: Lens' CreateContainerVersionResponse (Maybe ContainerVersion)
ccvrContainerVersion
  = lens _ccvrContainerVersion
      (\ s a -> s{_ccvrContainerVersion = a})

instance FromJSON CreateContainerVersionResponse
         where
        parseJSON
          = withObject "CreateContainerVersionResponse"
              (\ o ->
                 CreateContainerVersionResponse <$>
                   (o .:? "compilerError") <*>
                     (o .:? "containerVersion"))

instance ToJSON CreateContainerVersionResponse where
        toJSON CreateContainerVersionResponse{..}
          = object
              (catMaybes
                 [("compilerError" .=) <$> _ccvrCompilerError,
                  ("containerVersion" .=) <$> _ccvrContainerVersion])

-- | Options for new container versions.
--
-- /See:/ 'createContainerVersionRequestVersionOptions' smart constructor.
data CreateContainerVersionRequestVersionOptions = CreateContainerVersionRequestVersionOptions
    { _ccvrvoName         :: !(Maybe Text)
    , _ccvrvoQuickPreview :: !(Maybe Bool)
    , _ccvrvoNotes        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateContainerVersionRequestVersionOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccvrvoName'
--
-- * 'ccvrvoQuickPreview'
--
-- * 'ccvrvoNotes'
createContainerVersionRequestVersionOptions
    :: CreateContainerVersionRequestVersionOptions
createContainerVersionRequestVersionOptions =
    CreateContainerVersionRequestVersionOptions
    { _ccvrvoName = Nothing
    , _ccvrvoQuickPreview = Nothing
    , _ccvrvoNotes = Nothing
    }

-- | The name of the container version to be created.
ccvrvoName :: Lens' CreateContainerVersionRequestVersionOptions (Maybe Text)
ccvrvoName
  = lens _ccvrvoName (\ s a -> s{_ccvrvoName = a})

-- | The creation of this version may be for quick preview and shouldn\'t be
-- saved.
ccvrvoQuickPreview :: Lens' CreateContainerVersionRequestVersionOptions (Maybe Bool)
ccvrvoQuickPreview
  = lens _ccvrvoQuickPreview
      (\ s a -> s{_ccvrvoQuickPreview = a})

-- | The notes of the container version to be created.
ccvrvoNotes :: Lens' CreateContainerVersionRequestVersionOptions (Maybe Text)
ccvrvoNotes
  = lens _ccvrvoNotes (\ s a -> s{_ccvrvoNotes = a})

instance FromJSON
         CreateContainerVersionRequestVersionOptions where
        parseJSON
          = withObject
              "CreateContainerVersionRequestVersionOptions"
              (\ o ->
                 CreateContainerVersionRequestVersionOptions <$>
                   (o .:? "name") <*> (o .:? "quickPreview") <*>
                     (o .:? "notes"))

instance ToJSON
         CreateContainerVersionRequestVersionOptions where
        toJSON
          CreateContainerVersionRequestVersionOptions{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ccvrvoName,
                  ("quickPreview" .=) <$> _ccvrvoQuickPreview,
                  ("notes" .=) <$> _ccvrvoNotes])

-- | Represents a user\'s permissions to an account and its container.
--
-- /See:/ 'userAccess' smart constructor.
data UserAccess = UserAccess
    { _uaAccountAccess   :: !(Maybe AccountAccess)
    , _uaAccountId       :: !(Maybe Text)
    , _uaEmailAddress    :: !(Maybe Text)
    , _uaContainerAccess :: !(Maybe [ContainerAccess])
    , _uaPermissionId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaAccountAccess'
--
-- * 'uaAccountId'
--
-- * 'uaEmailAddress'
--
-- * 'uaContainerAccess'
--
-- * 'uaPermissionId'
userAccess
    :: UserAccess
userAccess =
    UserAccess
    { _uaAccountAccess = Nothing
    , _uaAccountId = Nothing
    , _uaEmailAddress = Nothing
    , _uaContainerAccess = Nothing
    , _uaPermissionId = Nothing
    }

-- | GTM Account access permissions.
uaAccountAccess :: Lens' UserAccess (Maybe AccountAccess)
uaAccountAccess
  = lens _uaAccountAccess
      (\ s a -> s{_uaAccountAccess = a})

-- | GTM Account ID.
uaAccountId :: Lens' UserAccess (Maybe Text)
uaAccountId
  = lens _uaAccountId (\ s a -> s{_uaAccountId = a})

-- | User\'s email address.
uaEmailAddress :: Lens' UserAccess (Maybe Text)
uaEmailAddress
  = lens _uaEmailAddress
      (\ s a -> s{_uaEmailAddress = a})

-- | GTM Container access permissions.
uaContainerAccess :: Lens' UserAccess [ContainerAccess]
uaContainerAccess
  = lens _uaContainerAccess
      (\ s a -> s{_uaContainerAccess = a})
      . _Default
      . _Coerce

-- | Account Permission ID.
uaPermissionId :: Lens' UserAccess (Maybe Text)
uaPermissionId
  = lens _uaPermissionId
      (\ s a -> s{_uaPermissionId = a})

instance FromJSON UserAccess where
        parseJSON
          = withObject "UserAccess"
              (\ o ->
                 UserAccess <$>
                   (o .:? "accountAccess") <*> (o .:? "accountId") <*>
                     (o .:? "emailAddress")
                     <*> (o .:? "containerAccess" .!= mempty)
                     <*> (o .:? "permissionId"))

instance ToJSON UserAccess where
        toJSON UserAccess{..}
          = object
              (catMaybes
                 [("accountAccess" .=) <$> _uaAccountAccess,
                  ("accountId" .=) <$> _uaAccountId,
                  ("emailAddress" .=) <$> _uaEmailAddress,
                  ("containerAccess" .=) <$> _uaContainerAccess,
                  ("permissionId" .=) <$> _uaPermissionId])

-- | Defines the Google Tag Manager Account access permissions.
--
-- /See:/ 'accountAccess' smart constructor.
newtype AccountAccess = AccountAccess
    { _aaPermission :: Maybe [AccountAccessPermissionItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaPermission'
accountAccess
    :: AccountAccess
accountAccess =
    AccountAccess
    { _aaPermission = Nothing
    }

-- | List of Account permissions. Valid account permissions are read and
-- manage.
aaPermission :: Lens' AccountAccess [AccountAccessPermissionItem]
aaPermission
  = lens _aaPermission (\ s a -> s{_aaPermission = a})
      . _Default
      . _Coerce

instance FromJSON AccountAccess where
        parseJSON
          = withObject "AccountAccess"
              (\ o ->
                 AccountAccess <$> (o .:? "permission" .!= mempty))

instance ToJSON AccountAccess where
        toJSON AccountAccess{..}
          = object
              (catMaybes [("permission" .=) <$> _aaPermission])

-- | List Accounts Response.
--
-- /See:/ 'listAccountsResponse' smart constructor.
newtype ListAccountsResponse = ListAccountsResponse
    { _larAccounts :: Maybe [Account]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larAccounts'
listAccountsResponse
    :: ListAccountsResponse
listAccountsResponse =
    ListAccountsResponse
    { _larAccounts = Nothing
    }

-- | List of GTM Accounts that a user has access to.
larAccounts :: Lens' ListAccountsResponse [Account]
larAccounts
  = lens _larAccounts (\ s a -> s{_larAccounts = a}) .
      _Default
      . _Coerce

instance FromJSON ListAccountsResponse where
        parseJSON
          = withObject "ListAccountsResponse"
              (\ o ->
                 ListAccountsResponse <$>
                   (o .:? "accounts" .!= mempty))

instance ToJSON ListAccountsResponse where
        toJSON ListAccountsResponse{..}
          = object
              (catMaybes [("accounts" .=) <$> _larAccounts])

-- | Represents a Google Tag Manager Rule.
--
-- /See:/ 'rule' smart constructor.
data Rule = Rule
    { _rContainerId :: !(Maybe Text)
    , _rFingerprint :: !(Maybe Text)
    , _rRuleId      :: !(Maybe Text)
    , _rAccountId   :: !(Maybe Text)
    , _rName        :: !(Maybe Text)
    , _rNotes       :: !(Maybe Text)
    , _rCondition   :: !(Maybe [Condition])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Rule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rContainerId'
--
-- * 'rFingerprint'
--
-- * 'rRuleId'
--
-- * 'rAccountId'
--
-- * 'rName'
--
-- * 'rNotes'
--
-- * 'rCondition'
rule
    :: Rule
rule =
    Rule
    { _rContainerId = Nothing
    , _rFingerprint = Nothing
    , _rRuleId = Nothing
    , _rAccountId = Nothing
    , _rName = Nothing
    , _rNotes = Nothing
    , _rCondition = Nothing
    }

-- | GTM Container ID.
rContainerId :: Lens' Rule (Maybe Text)
rContainerId
  = lens _rContainerId (\ s a -> s{_rContainerId = a})

-- | The fingerprint of the GTM Rule as computed at storage time. This value
-- is recomputed whenever the rule is modified.
rFingerprint :: Lens' Rule (Maybe Text)
rFingerprint
  = lens _rFingerprint (\ s a -> s{_rFingerprint = a})

-- | The Rule ID uniquely identifies the GTM Rule.
rRuleId :: Lens' Rule (Maybe Text)
rRuleId = lens _rRuleId (\ s a -> s{_rRuleId = a})

-- | GTM Account ID.
rAccountId :: Lens' Rule (Maybe Text)
rAccountId
  = lens _rAccountId (\ s a -> s{_rAccountId = a})

-- | Rule display name.
rName :: Lens' Rule (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | User notes on how to apply this rule in the container.
rNotes :: Lens' Rule (Maybe Text)
rNotes = lens _rNotes (\ s a -> s{_rNotes = a})

-- | The list of conditions that make up this rule (implicit AND between
-- them).
rCondition :: Lens' Rule [Condition]
rCondition
  = lens _rCondition (\ s a -> s{_rCondition = a}) .
      _Default
      . _Coerce

instance FromJSON Rule where
        parseJSON
          = withObject "Rule"
              (\ o ->
                 Rule <$>
                   (o .:? "containerId") <*> (o .:? "fingerprint") <*>
                     (o .:? "ruleId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "notes")
                     <*> (o .:? "condition" .!= mempty))

instance ToJSON Rule where
        toJSON Rule{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _rContainerId,
                  ("fingerprint" .=) <$> _rFingerprint,
                  ("ruleId" .=) <$> _rRuleId,
                  ("accountId" .=) <$> _rAccountId,
                  ("name" .=) <$> _rName, ("notes" .=) <$> _rNotes,
                  ("condition" .=) <$> _rCondition])

-- | Represents a Google Tag Manager Folder.
--
-- /See:/ 'folder' smart constructor.
data Folder = Folder
    { _fContainerId :: !(Maybe Text)
    , _fFingerprint :: !(Maybe Text)
    , _fFolderId    :: !(Maybe Text)
    , _fAccountId   :: !(Maybe Text)
    , _fName        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Folder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fContainerId'
--
-- * 'fFingerprint'
--
-- * 'fFolderId'
--
-- * 'fAccountId'
--
-- * 'fName'
folder
    :: Folder
folder =
    Folder
    { _fContainerId = Nothing
    , _fFingerprint = Nothing
    , _fFolderId = Nothing
    , _fAccountId = Nothing
    , _fName = Nothing
    }

-- | GTM Container ID.
fContainerId :: Lens' Folder (Maybe Text)
fContainerId
  = lens _fContainerId (\ s a -> s{_fContainerId = a})

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

instance FromJSON Folder where
        parseJSON
          = withObject "Folder"
              (\ o ->
                 Folder <$>
                   (o .:? "containerId") <*> (o .:? "fingerprint") <*>
                     (o .:? "folderId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name"))

instance ToJSON Folder where
        toJSON Folder{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _fContainerId,
                  ("fingerprint" .=) <$> _fFingerprint,
                  ("folderId" .=) <$> _fFolderId,
                  ("accountId" .=) <$> _fAccountId,
                  ("name" .=) <$> _fName])

-- | Represents a Google Tag Manager Variable.
--
-- /See:/ 'variable' smart constructor.
data Variable = Variable
    { _vScheduleEndMs      :: !(Maybe Int64)
    , _vParentFolderId     :: !(Maybe Text)
    , _vContainerId        :: !(Maybe Text)
    , _vFingerprint        :: !(Maybe Text)
    , _vVariableId         :: !(Maybe Text)
    , _vAccountId          :: !(Maybe Text)
    , _vDisablingTriggerId :: !(Maybe [Text])
    , _vName               :: !(Maybe Text)
    , _vType               :: !(Maybe Text)
    , _vScheduleStartMs    :: !(Maybe Int64)
    , _vNotes              :: !(Maybe Text)
    , _vEnablingTriggerId  :: !(Maybe [Text])
    , _vParameter          :: !(Maybe [Parameter])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Variable
    { _vScheduleEndMs = Nothing
    , _vParentFolderId = Nothing
    , _vContainerId = Nothing
    , _vFingerprint = Nothing
    , _vVariableId = Nothing
    , _vAccountId = Nothing
    , _vDisablingTriggerId = Nothing
    , _vName = Nothing
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

-- | Parent folder id.
vParentFolderId :: Lens' Variable (Maybe Text)
vParentFolderId
  = lens _vParentFolderId
      (\ s a -> s{_vParentFolderId = a})

-- | GTM Container ID.
vContainerId :: Lens' Variable (Maybe Text)
vContainerId
  = lens _vContainerId (\ s a -> s{_vContainerId = a})

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

-- | GTM Variable Type.
vType :: Lens' Variable (Maybe Text)
vType = lens _vType (\ s a -> s{_vType = a})

-- | The start timestamp in milliseconds to schedule a variable.
vScheduleStartMs :: Lens' Variable (Maybe Int64)
vScheduleStartMs
  = lens _vScheduleStartMs
      (\ s a -> s{_vScheduleStartMs = a})

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
                 Variable <$>
                   (o .:? "scheduleEndMs") <*> (o .:? "parentFolderId")
                     <*> (o .:? "containerId")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "variableId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "disablingTriggerId" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "scheduleStartMs")
                     <*> (o .:? "notes")
                     <*> (o .:? "enablingTriggerId" .!= mempty)
                     <*> (o .:? "parameter" .!= mempty))

instance ToJSON Variable where
        toJSON Variable{..}
          = object
              (catMaybes
                 [("scheduleEndMs" .=) <$> _vScheduleEndMs,
                  ("parentFolderId" .=) <$> _vParentFolderId,
                  ("containerId" .=) <$> _vContainerId,
                  ("fingerprint" .=) <$> _vFingerprint,
                  ("variableId" .=) <$> _vVariableId,
                  ("accountId" .=) <$> _vAccountId,
                  ("disablingTriggerId" .=) <$> _vDisablingTriggerId,
                  ("name" .=) <$> _vName, ("type" .=) <$> _vType,
                  ("scheduleStartMs" .=) <$> _vScheduleStartMs,
                  ("notes" .=) <$> _vNotes,
                  ("enablingTriggerId" .=) <$> _vEnablingTriggerId,
                  ("parameter" .=) <$> _vParameter])

-- | Represents a Google Tag Manager Account.
--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _aaShareData   :: !(Maybe Bool)
    , _aaFingerprint :: !(Maybe Text)
    , _aaAccountId   :: !(Maybe Text)
    , _aaName        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaShareData'
--
-- * 'aaFingerprint'
--
-- * 'aaAccountId'
--
-- * 'aaName'
account
    :: Account
account =
    Account
    { _aaShareData = Nothing
    , _aaFingerprint = Nothing
    , _aaAccountId = Nothing
    , _aaName = Nothing
    }

-- | Whether the account shares data anonymously with Google and others.
aaShareData :: Lens' Account (Maybe Bool)
aaShareData
  = lens _aaShareData (\ s a -> s{_aaShareData = a})

-- | The fingerprint of the GTM Account as computed at storage time. This
-- value is recomputed whenever the account is modified.
aaFingerprint :: Lens' Account (Maybe Text)
aaFingerprint
  = lens _aaFingerprint
      (\ s a -> s{_aaFingerprint = a})

-- | The Account ID uniquely identifies the GTM Account.
aaAccountId :: Lens' Account (Maybe Text)
aaAccountId
  = lens _aaAccountId (\ s a -> s{_aaAccountId = a})

-- | Account display name.
aaName :: Lens' Account (Maybe Text)
aaName = lens _aaName (\ s a -> s{_aaName = a})

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account <$>
                   (o .:? "shareData") <*> (o .:? "fingerprint") <*>
                     (o .:? "accountId")
                     <*> (o .:? "name"))

instance ToJSON Account where
        toJSON Account{..}
          = object
              (catMaybes
                 [("shareData" .=) <$> _aaShareData,
                  ("fingerprint" .=) <$> _aaFingerprint,
                  ("accountId" .=) <$> _aaAccountId,
                  ("name" .=) <$> _aaName])

-- | List container versions response.
--
-- /See:/ 'listContainerVersionsResponse' smart constructor.
data ListContainerVersionsResponse = ListContainerVersionsResponse
    { _lcvrContainerVersionHeader :: !(Maybe [ContainerVersionHeader])
    , _lcvrContainerVersion       :: !(Maybe [ContainerVersion])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListContainerVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcvrContainerVersionHeader'
--
-- * 'lcvrContainerVersion'
listContainerVersionsResponse
    :: ListContainerVersionsResponse
listContainerVersionsResponse =
    ListContainerVersionsResponse
    { _lcvrContainerVersionHeader = Nothing
    , _lcvrContainerVersion = Nothing
    }

-- | All container version headers of a GTM Container.
lcvrContainerVersionHeader :: Lens' ListContainerVersionsResponse [ContainerVersionHeader]
lcvrContainerVersionHeader
  = lens _lcvrContainerVersionHeader
      (\ s a -> s{_lcvrContainerVersionHeader = a})
      . _Default
      . _Coerce

-- | All versions of a GTM Container.
lcvrContainerVersion :: Lens' ListContainerVersionsResponse [ContainerVersion]
lcvrContainerVersion
  = lens _lcvrContainerVersion
      (\ s a -> s{_lcvrContainerVersion = a})
      . _Default
      . _Coerce

instance FromJSON ListContainerVersionsResponse where
        parseJSON
          = withObject "ListContainerVersionsResponse"
              (\ o ->
                 ListContainerVersionsResponse <$>
                   (o .:? "containerVersionHeader" .!= mempty) <*>
                     (o .:? "containerVersion" .!= mempty))

instance ToJSON ListContainerVersionsResponse where
        toJSON ListContainerVersionsResponse{..}
          = object
              (catMaybes
                 [("containerVersionHeader" .=) <$>
                    _lcvrContainerVersionHeader,
                  ("containerVersion" .=) <$> _lcvrContainerVersion])

-- | Represents a Google Tag Manager Container.
--
-- /See:/ 'container' smart constructor.
data Container = Container
    { _cPublicId               :: !(Maybe Text)
    , _cUsageContext           :: !(Maybe [ContainerUsageContextItem])
    , _cEnabledBuiltInVariable :: !(Maybe [ContainerEnabledBuiltInVariableItem])
    , _cContainerId            :: !(Maybe Text)
    , _cFingerprint            :: !(Maybe Text)
    , _cTimeZoneCountryId      :: !(Maybe Text)
    , _cAccountId              :: !(Maybe Text)
    , _cDomainName             :: !(Maybe [Text])
    , _cName                   :: !(Maybe Text)
    , _cNotes                  :: !(Maybe Text)
    , _cTimeZoneId             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Container' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPublicId'
--
-- * 'cUsageContext'
--
-- * 'cEnabledBuiltInVariable'
--
-- * 'cContainerId'
--
-- * 'cFingerprint'
--
-- * 'cTimeZoneCountryId'
--
-- * 'cAccountId'
--
-- * 'cDomainName'
--
-- * 'cName'
--
-- * 'cNotes'
--
-- * 'cTimeZoneId'
container
    :: Container
container =
    Container
    { _cPublicId = Nothing
    , _cUsageContext = Nothing
    , _cEnabledBuiltInVariable = Nothing
    , _cContainerId = Nothing
    , _cFingerprint = Nothing
    , _cTimeZoneCountryId = Nothing
    , _cAccountId = Nothing
    , _cDomainName = Nothing
    , _cName = Nothing
    , _cNotes = Nothing
    , _cTimeZoneId = Nothing
    }

-- | Container Public ID.
cPublicId :: Lens' Container (Maybe Text)
cPublicId
  = lens _cPublicId (\ s a -> s{_cPublicId = a})

-- | List of Usage Contexts for the Container. Valid values include: web,
-- android, ios.
cUsageContext :: Lens' Container [ContainerUsageContextItem]
cUsageContext
  = lens _cUsageContext
      (\ s a -> s{_cUsageContext = a})
      . _Default
      . _Coerce

-- | List of enabled built-in variables. Valid values include: pageUrl,
-- pageHostname, pagePath, referrer, event, clickElement, clickClasses,
-- clickId, clickTarget, clickUrl, clickText, formElement, formClasses,
-- formId, formTarget, formUrl, formText, errorMessage, errorUrl,
-- errorLine, newHistoryFragment, oldHistoryFragment, newHistoryState,
-- oldHistoryState, historySource, containerVersion, debugMode,
-- randomNumber, containerId.
cEnabledBuiltInVariable :: Lens' Container [ContainerEnabledBuiltInVariableItem]
cEnabledBuiltInVariable
  = lens _cEnabledBuiltInVariable
      (\ s a -> s{_cEnabledBuiltInVariable = a})
      . _Default
      . _Coerce

-- | The Container ID uniquely identifies the GTM Container.
cContainerId :: Lens' Container (Maybe Text)
cContainerId
  = lens _cContainerId (\ s a -> s{_cContainerId = a})

-- | The fingerprint of the GTM Container as computed at storage time. This
-- value is recomputed whenever the account is modified.
cFingerprint :: Lens' Container (Maybe Text)
cFingerprint
  = lens _cFingerprint (\ s a -> s{_cFingerprint = a})

-- | Container Country ID.
cTimeZoneCountryId :: Lens' Container (Maybe Text)
cTimeZoneCountryId
  = lens _cTimeZoneCountryId
      (\ s a -> s{_cTimeZoneCountryId = a})

-- | GTM Account ID.
cAccountId :: Lens' Container (Maybe Text)
cAccountId
  = lens _cAccountId (\ s a -> s{_cAccountId = a})

-- | Optional list of domain names associated with the Container.
cDomainName :: Lens' Container [Text]
cDomainName
  = lens _cDomainName (\ s a -> s{_cDomainName = a}) .
      _Default
      . _Coerce

-- | Container display name.
cName :: Lens' Container (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Container Notes.
cNotes :: Lens' Container (Maybe Text)
cNotes = lens _cNotes (\ s a -> s{_cNotes = a})

-- | Container Time Zone ID.
cTimeZoneId :: Lens' Container (Maybe Text)
cTimeZoneId
  = lens _cTimeZoneId (\ s a -> s{_cTimeZoneId = a})

instance FromJSON Container where
        parseJSON
          = withObject "Container"
              (\ o ->
                 Container <$>
                   (o .:? "publicId") <*>
                     (o .:? "usageContext" .!= mempty)
                     <*> (o .:? "enabledBuiltInVariable" .!= mempty)
                     <*> (o .:? "containerId")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "timeZoneCountryId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "domainName" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "notes")
                     <*> (o .:? "timeZoneId"))

instance ToJSON Container where
        toJSON Container{..}
          = object
              (catMaybes
                 [("publicId" .=) <$> _cPublicId,
                  ("usageContext" .=) <$> _cUsageContext,
                  ("enabledBuiltInVariable" .=) <$>
                    _cEnabledBuiltInVariable,
                  ("containerId" .=) <$> _cContainerId,
                  ("fingerprint" .=) <$> _cFingerprint,
                  ("timeZoneCountryId" .=) <$> _cTimeZoneCountryId,
                  ("accountId" .=) <$> _cAccountId,
                  ("domainName" .=) <$> _cDomainName,
                  ("name" .=) <$> _cName, ("notes" .=) <$> _cNotes,
                  ("timeZoneId" .=) <$> _cTimeZoneId])

-- | List AccountUsers Response.
--
-- /See:/ 'listAccountUsersResponse' smart constructor.
newtype ListAccountUsersResponse = ListAccountUsersResponse
    { _laurUserAccess :: Maybe [UserAccess]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAccountUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laurUserAccess'
listAccountUsersResponse
    :: ListAccountUsersResponse
listAccountUsersResponse =
    ListAccountUsersResponse
    { _laurUserAccess = Nothing
    }

-- | All GTM AccountUsers of a GTM Account.
laurUserAccess :: Lens' ListAccountUsersResponse [UserAccess]
laurUserAccess
  = lens _laurUserAccess
      (\ s a -> s{_laurUserAccess = a})
      . _Default
      . _Coerce

instance FromJSON ListAccountUsersResponse where
        parseJSON
          = withObject "ListAccountUsersResponse"
              (\ o ->
                 ListAccountUsersResponse <$>
                   (o .:? "userAccess" .!= mempty))

instance ToJSON ListAccountUsersResponse where
        toJSON ListAccountUsersResponse{..}
          = object
              (catMaybes [("userAccess" .=) <$> _laurUserAccess])

-- | Represents a Google Tag Manager Container Version.
--
-- /See:/ 'containerVersion' smart constructor.
data ContainerVersion = ContainerVersion
    { _cvMacro              :: !(Maybe [Macro])
    , _cvTag                :: !(Maybe [Tag])
    , _cvContainerId        :: !(Maybe Text)
    , _cvFingerprint        :: !(Maybe Text)
    , _cvContainerVersionId :: !(Maybe Text)
    , _cvRule               :: !(Maybe [Rule])
    , _cvFolder             :: !(Maybe [Folder])
    , _cvVariable           :: !(Maybe [Variable])
    , _cvAccountId          :: !(Maybe Text)
    , _cvName               :: !(Maybe Text)
    , _cvContainer          :: !(Maybe Container)
    , _cvDeleted            :: !(Maybe Bool)
    , _cvTrigger            :: !(Maybe [Trigger])
    , _cvNotes              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContainerVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvMacro'
--
-- * 'cvTag'
--
-- * 'cvContainerId'
--
-- * 'cvFingerprint'
--
-- * 'cvContainerVersionId'
--
-- * 'cvRule'
--
-- * 'cvFolder'
--
-- * 'cvVariable'
--
-- * 'cvAccountId'
--
-- * 'cvName'
--
-- * 'cvContainer'
--
-- * 'cvDeleted'
--
-- * 'cvTrigger'
--
-- * 'cvNotes'
containerVersion
    :: ContainerVersion
containerVersion =
    ContainerVersion
    { _cvMacro = Nothing
    , _cvTag = Nothing
    , _cvContainerId = Nothing
    , _cvFingerprint = Nothing
    , _cvContainerVersionId = Nothing
    , _cvRule = Nothing
    , _cvFolder = Nothing
    , _cvVariable = Nothing
    , _cvAccountId = Nothing
    , _cvName = Nothing
    , _cvContainer = Nothing
    , _cvDeleted = Nothing
    , _cvTrigger = Nothing
    , _cvNotes = Nothing
    }

-- | The macros in the container that this version was taken from.
cvMacro :: Lens' ContainerVersion [Macro]
cvMacro
  = lens _cvMacro (\ s a -> s{_cvMacro = a}) . _Default
      . _Coerce

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

-- | The rules in the container that this version was taken from.
cvRule :: Lens' ContainerVersion [Rule]
cvRule
  = lens _cvRule (\ s a -> s{_cvRule = a}) . _Default .
      _Coerce

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

-- | User notes on how to apply this container version in the container.
cvNotes :: Lens' ContainerVersion (Maybe Text)
cvNotes = lens _cvNotes (\ s a -> s{_cvNotes = a})

instance FromJSON ContainerVersion where
        parseJSON
          = withObject "ContainerVersion"
              (\ o ->
                 ContainerVersion <$>
                   (o .:? "macro" .!= mempty) <*>
                     (o .:? "tag" .!= mempty)
                     <*> (o .:? "containerId")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "containerVersionId")
                     <*> (o .:? "rule" .!= mempty)
                     <*> (o .:? "folder" .!= mempty)
                     <*> (o .:? "variable" .!= mempty)
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "container")
                     <*> (o .:? "deleted")
                     <*> (o .:? "trigger" .!= mempty)
                     <*> (o .:? "notes"))

instance ToJSON ContainerVersion where
        toJSON ContainerVersion{..}
          = object
              (catMaybes
                 [("macro" .=) <$> _cvMacro, ("tag" .=) <$> _cvTag,
                  ("containerId" .=) <$> _cvContainerId,
                  ("fingerprint" .=) <$> _cvFingerprint,
                  ("containerVersionId" .=) <$> _cvContainerVersionId,
                  ("rule" .=) <$> _cvRule, ("folder" .=) <$> _cvFolder,
                  ("variable" .=) <$> _cvVariable,
                  ("accountId" .=) <$> _cvAccountId,
                  ("name" .=) <$> _cvName,
                  ("container" .=) <$> _cvContainer,
                  ("deleted" .=) <$> _cvDeleted,
                  ("trigger" .=) <$> _cvTrigger,
                  ("notes" .=) <$> _cvNotes])

--
-- /See:/ 'setupTag' smart constructor.
data SetupTag = SetupTag
    { _stTagName            :: !(Maybe Text)
    , _stStopOnSetupFailure :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetupTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stTagName'
--
-- * 'stStopOnSetupFailure'
setupTag
    :: SetupTag
setupTag =
    SetupTag
    { _stTagName = Nothing
    , _stStopOnSetupFailure = Nothing
    }

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
                 SetupTag <$>
                   (o .:? "tagName") <*> (o .:? "stopOnSetupFailure"))

instance ToJSON SetupTag where
        toJSON SetupTag{..}
          = object
              (catMaybes
                 [("tagName" .=) <$> _stTagName,
                  ("stopOnSetupFailure" .=) <$> _stStopOnSetupFailure])

-- | List Containers Response.
--
-- /See:/ 'listContainersResponse' smart constructor.
newtype ListContainersResponse = ListContainersResponse
    { _lcrContainers :: Maybe [Container]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListContainersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrContainers'
listContainersResponse
    :: ListContainersResponse
listContainersResponse =
    ListContainersResponse
    { _lcrContainers = Nothing
    }

-- | All Containers of a GTM Account.
lcrContainers :: Lens' ListContainersResponse [Container]
lcrContainers
  = lens _lcrContainers
      (\ s a -> s{_lcrContainers = a})
      . _Default
      . _Coerce

instance FromJSON ListContainersResponse where
        parseJSON
          = withObject "ListContainersResponse"
              (\ o ->
                 ListContainersResponse <$>
                   (o .:? "containers" .!= mempty))

instance ToJSON ListContainersResponse where
        toJSON ListContainersResponse{..}
          = object
              (catMaybes [("containers" .=) <$> _lcrContainers])

-- | Represents a Google Tag Manager Trigger
--
-- /See:/ 'trigger' smart constructor.
data Trigger = Trigger
    { _triCustomEventFilter   :: !(Maybe [Condition])
    , _triParentFolderId      :: !(Maybe Text)
    , _triContainerId         :: !(Maybe Text)
    , _triTriggerId           :: !(Maybe Text)
    , _triCheckValidation     :: !(Maybe Parameter)
    , _triFingerprint         :: !(Maybe Text)
    , _triAutoEventFilter     :: !(Maybe [Condition])
    , _triUniqueTriggerId     :: !(Maybe Parameter)
    , _triAccountId           :: !(Maybe Text)
    , _triName                :: !(Maybe Text)
    , _triInterval            :: !(Maybe Parameter)
    , _triEnableAllVideos     :: !(Maybe Parameter)
    , _triWaitForTagsTimeout  :: !(Maybe Parameter)
    , _triLimit               :: !(Maybe Parameter)
    , _triFilter              :: !(Maybe [Condition])
    , _triType                :: !(Maybe TriggerType)
    , _triVideoPercentageList :: !(Maybe Parameter)
    , _triEventName           :: !(Maybe Parameter)
    , _triWaitForTags         :: !(Maybe Parameter)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Trigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'triCustomEventFilter'
--
-- * 'triParentFolderId'
--
-- * 'triContainerId'
--
-- * 'triTriggerId'
--
-- * 'triCheckValidation'
--
-- * 'triFingerprint'
--
-- * 'triAutoEventFilter'
--
-- * 'triUniqueTriggerId'
--
-- * 'triAccountId'
--
-- * 'triName'
--
-- * 'triInterval'
--
-- * 'triEnableAllVideos'
--
-- * 'triWaitForTagsTimeout'
--
-- * 'triLimit'
--
-- * 'triFilter'
--
-- * 'triType'
--
-- * 'triVideoPercentageList'
--
-- * 'triEventName'
--
-- * 'triWaitForTags'
trigger
    :: Trigger
trigger =
    Trigger
    { _triCustomEventFilter = Nothing
    , _triParentFolderId = Nothing
    , _triContainerId = Nothing
    , _triTriggerId = Nothing
    , _triCheckValidation = Nothing
    , _triFingerprint = Nothing
    , _triAutoEventFilter = Nothing
    , _triUniqueTriggerId = Nothing
    , _triAccountId = Nothing
    , _triName = Nothing
    , _triInterval = Nothing
    , _triEnableAllVideos = Nothing
    , _triWaitForTagsTimeout = Nothing
    , _triLimit = Nothing
    , _triFilter = Nothing
    , _triType = Nothing
    , _triVideoPercentageList = Nothing
    , _triEventName = Nothing
    , _triWaitForTags = Nothing
    }

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

-- | GTM Container ID.
triContainerId :: Lens' Trigger (Maybe Text)
triContainerId
  = lens _triContainerId
      (\ s a -> s{_triContainerId = a})

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

-- | Reloads the videos in the page that don\'t already have the YT API
-- enabled. If false, only capture events from videos that already have the
-- API enabled. Only valid for YouTube triggers.
triEnableAllVideos :: Lens' Trigger (Maybe Parameter)
triEnableAllVideos
  = lens _triEnableAllVideos
      (\ s a -> s{_triEnableAllVideos = a})

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

-- | The trigger will only fire iff all Conditions are true.
triFilter :: Lens' Trigger [Condition]
triFilter
  = lens _triFilter (\ s a -> s{_triFilter = a}) .
      _Default
      . _Coerce

-- | Defines the data layer event that causes this trigger.
triType :: Lens' Trigger (Maybe TriggerType)
triType = lens _triType (\ s a -> s{_triType = a})

-- | List of integer percentage values. The trigger will fire as each
-- percentage is reached in any instrumented videos. Only valid for YouTube
-- triggers.
triVideoPercentageList :: Lens' Trigger (Maybe Parameter)
triVideoPercentageList
  = lens _triVideoPercentageList
      (\ s a -> s{_triVideoPercentageList = a})

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

instance FromJSON Trigger where
        parseJSON
          = withObject "Trigger"
              (\ o ->
                 Trigger <$>
                   (o .:? "customEventFilter" .!= mempty) <*>
                     (o .:? "parentFolderId")
                     <*> (o .:? "containerId")
                     <*> (o .:? "triggerId")
                     <*> (o .:? "checkValidation")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "autoEventFilter" .!= mempty)
                     <*> (o .:? "uniqueTriggerId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "interval")
                     <*> (o .:? "enableAllVideos")
                     <*> (o .:? "waitForTagsTimeout")
                     <*> (o .:? "limit")
                     <*> (o .:? "filter" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "videoPercentageList")
                     <*> (o .:? "eventName")
                     <*> (o .:? "waitForTags"))

instance ToJSON Trigger where
        toJSON Trigger{..}
          = object
              (catMaybes
                 [("customEventFilter" .=) <$> _triCustomEventFilter,
                  ("parentFolderId" .=) <$> _triParentFolderId,
                  ("containerId" .=) <$> _triContainerId,
                  ("triggerId" .=) <$> _triTriggerId,
                  ("checkValidation" .=) <$> _triCheckValidation,
                  ("fingerprint" .=) <$> _triFingerprint,
                  ("autoEventFilter" .=) <$> _triAutoEventFilter,
                  ("uniqueTriggerId" .=) <$> _triUniqueTriggerId,
                  ("accountId" .=) <$> _triAccountId,
                  ("name" .=) <$> _triName,
                  ("interval" .=) <$> _triInterval,
                  ("enableAllVideos" .=) <$> _triEnableAllVideos,
                  ("waitForTagsTimeout" .=) <$> _triWaitForTagsTimeout,
                  ("limit" .=) <$> _triLimit,
                  ("filter" .=) <$> _triFilter,
                  ("type" .=) <$> _triType,
                  ("videoPercentageList" .=) <$>
                    _triVideoPercentageList,
                  ("eventName" .=) <$> _triEventName,
                  ("waitForTags" .=) <$> _triWaitForTags])

-- | List Tags Response.
--
-- /See:/ 'listTagsResponse' smart constructor.
newtype ListTagsResponse = ListTagsResponse
    { _ltrTags :: Maybe [Tag]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrTags'
listTagsResponse
    :: ListTagsResponse
listTagsResponse =
    ListTagsResponse
    { _ltrTags = Nothing
    }

-- | All GTM Tags of a GTM Container.
ltrTags :: Lens' ListTagsResponse [Tag]
ltrTags
  = lens _ltrTags (\ s a -> s{_ltrTags = a}) . _Default
      . _Coerce

instance FromJSON ListTagsResponse where
        parseJSON
          = withObject "ListTagsResponse"
              (\ o ->
                 ListTagsResponse <$> (o .:? "tags" .!= mempty))

instance ToJSON ListTagsResponse where
        toJSON ListTagsResponse{..}
          = object (catMaybes [("tags" .=) <$> _ltrTags])

-- | List Macros Response.
--
-- /See:/ 'listMacrosResponse' smart constructor.
newtype ListMacrosResponse = ListMacrosResponse
    { _lmrMacros :: Maybe [Macro]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMacrosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrMacros'
listMacrosResponse
    :: ListMacrosResponse
listMacrosResponse =
    ListMacrosResponse
    { _lmrMacros = Nothing
    }

-- | All GTM Macros of a GTM Container.
lmrMacros :: Lens' ListMacrosResponse [Macro]
lmrMacros
  = lens _lmrMacros (\ s a -> s{_lmrMacros = a}) .
      _Default
      . _Coerce

instance FromJSON ListMacrosResponse where
        parseJSON
          = withObject "ListMacrosResponse"
              (\ o ->
                 ListMacrosResponse <$> (o .:? "macros" .!= mempty))

instance ToJSON ListMacrosResponse where
        toJSON ListMacrosResponse{..}
          = object (catMaybes [("macros" .=) <$> _lmrMacros])

-- | Represents a Google Tag Manager Folder\'s contents.
--
-- /See:/ 'folderEntities' smart constructor.
data FolderEntities = FolderEntities
    { _feTag      :: !(Maybe [Tag])
    , _feVariable :: !(Maybe [Variable])
    , _feTrigger  :: !(Maybe [Trigger])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FolderEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feTag'
--
-- * 'feVariable'
--
-- * 'feTrigger'
folderEntities
    :: FolderEntities
folderEntities =
    FolderEntities
    { _feTag = Nothing
    , _feVariable = Nothing
    , _feTrigger = Nothing
    }

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
                 FolderEntities <$>
                   (o .:? "tag" .!= mempty) <*>
                     (o .:? "variable" .!= mempty)
                     <*> (o .:? "trigger" .!= mempty))

instance ToJSON FolderEntities where
        toJSON FolderEntities{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _feTag,
                  ("variable" .=) <$> _feVariable,
                  ("trigger" .=) <$> _feTrigger])

-- | Represents a predicate.
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition
    { _cType      :: !(Maybe ConditionType)
    , _cParameter :: !(Maybe [Parameter])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cType'
--
-- * 'cParameter'
condition
    :: Condition
condition =
    Condition
    { _cType = Nothing
    , _cParameter = Nothing
    }

-- | The type of operator for this condition.
cType :: Lens' Condition (Maybe ConditionType)
cType = lens _cType (\ s a -> s{_cType = a})

-- | A list of named parameters (key\/value), depending on the condition\'s
-- type. Notes: - For binary operators, include parameters named arg0 and
-- arg1 for specifying the left and right operands, respectively. - At this
-- time, the left operand (arg0) must be a reference to a macro. - For
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
                 Condition <$>
                   (o .:? "type") <*> (o .:? "parameter" .!= mempty))

instance ToJSON Condition where
        toJSON Condition{..}
          = object
              (catMaybes
                 [("type" .=) <$> _cType,
                  ("parameter" .=) <$> _cParameter])

-- | Defines the Google Tag Manager Container access permissions.
--
-- /See:/ 'containerAccess' smart constructor.
data ContainerAccess = ContainerAccess
    { _caContainerId :: !(Maybe Text)
    , _caPermission  :: !(Maybe [ContainerAccessPermissionItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ContainerAccess
    { _caContainerId = Nothing
    , _caPermission = Nothing
    }

-- | GTM Container ID.
caContainerId :: Lens' ContainerAccess (Maybe Text)
caContainerId
  = lens _caContainerId
      (\ s a -> s{_caContainerId = a})

-- | List of Container permissions. Valid container permissions are: read,
-- edit, delete, publish.
caPermission :: Lens' ContainerAccess [ContainerAccessPermissionItem]
caPermission
  = lens _caPermission (\ s a -> s{_caPermission = a})
      . _Default
      . _Coerce

instance FromJSON ContainerAccess where
        parseJSON
          = withObject "ContainerAccess"
              (\ o ->
                 ContainerAccess <$>
                   (o .:? "containerId") <*>
                     (o .:? "permission" .!= mempty))

instance ToJSON ContainerAccess where
        toJSON ContainerAccess{..}
          = object
              (catMaybes
                 [("containerId" .=) <$> _caContainerId,
                  ("permission" .=) <$> _caPermission])

-- | Represents a Google Tag Manager Parameter.
--
-- /See:/ 'parameter' smart constructor.
data Parameter = Parameter
    { _pList  :: !(Maybe [Parameter])
    , _pValue :: !(Maybe Text)
    , _pMap   :: !(Maybe [Parameter])
    , _pKey   :: !(Maybe Text)
    , _pType  :: !(Maybe ParameterType)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Parameter
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

-- | A parameter\'s value (may contain macro references such as
-- \"{{myMacro}}\") as appropriate to the specified type.
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
-- macro references (even macro references that might return non-string
-- types)
pType :: Lens' Parameter (Maybe ParameterType)
pType = lens _pType (\ s a -> s{_pType = a})

instance FromJSON Parameter where
        parseJSON
          = withObject "Parameter"
              (\ o ->
                 Parameter <$>
                   (o .:? "list" .!= mempty) <*> (o .:? "value") <*>
                     (o .:? "map" .!= mempty)
                     <*> (o .:? "key")
                     <*> (o .:? "type"))

instance ToJSON Parameter where
        toJSON Parameter{..}
          = object
              (catMaybes
                 [("list" .=) <$> _pList, ("value" .=) <$> _pValue,
                  ("map" .=) <$> _pMap, ("key" .=) <$> _pKey,
                  ("type" .=) <$> _pType])

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

-- | List Folders Response.
--
-- /See:/ 'listFoldersResponse' smart constructor.
newtype ListFoldersResponse = ListFoldersResponse
    { _lfrFolders :: Maybe [Maybe Folder]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
lfrFolders :: Lens' ListFoldersResponse [Maybe Folder]
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

-- | List Variables Response.
--
-- /See:/ 'listVariablesResponse' smart constructor.
newtype ListVariablesResponse = ListVariablesResponse
    { _lvrVariables :: Maybe [Maybe Variable]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
lvrVariables :: Lens' ListVariablesResponse [Maybe Variable]
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

-- | List Rules Response.
--
-- /See:/ 'listRulesResponse' smart constructor.
newtype ListRulesResponse = ListRulesResponse
    { _lrrRules :: Maybe [Maybe Rule]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
lrrRules :: Lens' ListRulesResponse [Maybe Rule]
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
    , _pcvrContainerVersion :: !(Maybe (Maybe ContainerVersion))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pcvrContainerVersion :: Lens' PublishContainerVersionResponse (Maybe (Maybe ContainerVersion))
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

-- | Represents a Google Tag Manager Macro.
--
-- /See:/ 'mACro' smart constructor.
data MACro = MACro
    { _macScheduleEndMs   :: !(Maybe Int64)
    , _macParentFolderId  :: !(Maybe Text)
    , _macContainerId     :: !(Maybe Text)
    , _macDisablingRuleId :: !(Maybe [Text])
    , _macFingerprint     :: !(Maybe Text)
    , _macAccountId       :: !(Maybe Text)
    , _macName            :: !(Maybe Text)
    , _macEnablingRuleId  :: !(Maybe [Text])
    , _macMacroId         :: !(Maybe Text)
    , _macType            :: !(Maybe Text)
    , _macScheduleStartMs :: !(Maybe Int64)
    , _macNotes           :: !(Maybe Text)
    , _macParameter       :: !(Maybe [Maybe Parameter])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MACro' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'macScheduleEndMs'
--
-- * 'macParentFolderId'
--
-- * 'macContainerId'
--
-- * 'macDisablingRuleId'
--
-- * 'macFingerprint'
--
-- * 'macAccountId'
--
-- * 'macName'
--
-- * 'macEnablingRuleId'
--
-- * 'macMacroId'
--
-- * 'macType'
--
-- * 'macScheduleStartMs'
--
-- * 'macNotes'
--
-- * 'macParameter'
mACro
    :: MACro
mACro =
    MACro
    { _macScheduleEndMs = Nothing
    , _macParentFolderId = Nothing
    , _macContainerId = Nothing
    , _macDisablingRuleId = Nothing
    , _macFingerprint = Nothing
    , _macAccountId = Nothing
    , _macName = Nothing
    , _macEnablingRuleId = Nothing
    , _macMacroId = Nothing
    , _macType = Nothing
    , _macScheduleStartMs = Nothing
    , _macNotes = Nothing
    , _macParameter = Nothing
    }

-- | The end timestamp in milliseconds to schedule a macro.
macScheduleEndMs :: Lens' MACro (Maybe Int64)
macScheduleEndMs
  = lens _macScheduleEndMs
      (\ s a -> s{_macScheduleEndMs = a})

-- | Parent folder id.
macParentFolderId :: Lens' MACro (Maybe Text)
macParentFolderId
  = lens _macParentFolderId
      (\ s a -> s{_macParentFolderId = a})

-- | GTM Container ID.
macContainerId :: Lens' MACro (Maybe Text)
macContainerId
  = lens _macContainerId
      (\ s a -> s{_macContainerId = a})

-- | For mobile containers only: A list of rule IDs for disabling conditional
-- macros; the macro is enabled if one of the enabling rules is true while
-- all the disabling rules are false. Treated as an unordered set.
macDisablingRuleId :: Lens' MACro [Text]
macDisablingRuleId
  = lens _macDisablingRuleId
      (\ s a -> s{_macDisablingRuleId = a})
      . _Default
      . _Coerce

-- | The fingerprint of the GTM Macro as computed at storage time. This value
-- is recomputed whenever the macro is modified.
macFingerprint :: Lens' MACro (Maybe Text)
macFingerprint
  = lens _macFingerprint
      (\ s a -> s{_macFingerprint = a})

-- | GTM Account ID.
macAccountId :: Lens' MACro (Maybe Text)
macAccountId
  = lens _macAccountId (\ s a -> s{_macAccountId = a})

-- | Macro display name.
macName :: Lens' MACro (Maybe Text)
macName = lens _macName (\ s a -> s{_macName = a})

-- | For mobile containers only: A list of rule IDs for enabling conditional
-- macros; the macro is enabled if one of the enabling rules is true while
-- all the disabling rules are false. Treated as an unordered set.
macEnablingRuleId :: Lens' MACro [Text]
macEnablingRuleId
  = lens _macEnablingRuleId
      (\ s a -> s{_macEnablingRuleId = a})
      . _Default
      . _Coerce

-- | The Macro ID uniquely identifies the GTM Macro.
macMacroId :: Lens' MACro (Maybe Text)
macMacroId
  = lens _macMacroId (\ s a -> s{_macMacroId = a})

-- | GTM Macro Type.
macType :: Lens' MACro (Maybe Text)
macType = lens _macType (\ s a -> s{_macType = a})

-- | The start timestamp in milliseconds to schedule a macro.
macScheduleStartMs :: Lens' MACro (Maybe Int64)
macScheduleStartMs
  = lens _macScheduleStartMs
      (\ s a -> s{_macScheduleStartMs = a})

-- | User notes on how to apply this macro in the container.
macNotes :: Lens' MACro (Maybe Text)
macNotes = lens _macNotes (\ s a -> s{_macNotes = a})

-- | The macro\'s parameters.
macParameter :: Lens' MACro [Maybe Parameter]
macParameter
  = lens _macParameter (\ s a -> s{_macParameter = a})
      . _Default
      . _Coerce

instance FromJSON MACro where
        parseJSON
          = withObject "MACro"
              (\ o ->
                 MACro <$>
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

instance ToJSON MACro where
        toJSON MACro{..}
          = object
              (catMaybes
                 [("scheduleEndMs" .=) <$> _macScheduleEndMs,
                  ("parentFolderId" .=) <$> _macParentFolderId,
                  ("containerId" .=) <$> _macContainerId,
                  ("disablingRuleId" .=) <$> _macDisablingRuleId,
                  ("fingerprint" .=) <$> _macFingerprint,
                  ("accountId" .=) <$> _macAccountId,
                  ("name" .=) <$> _macName,
                  ("enablingRuleId" .=) <$> _macEnablingRuleId,
                  ("macroId" .=) <$> _macMacroId,
                  ("type" .=) <$> _macType,
                  ("scheduleStartMs" .=) <$> _macScheduleStartMs,
                  ("notes" .=) <$> _macNotes,
                  ("parameter" .=) <$> _macParameter])

-- | Represents a Google Tag Manager Tag.
--
-- /See:/ 'tag' smart constructor.
data Tag = Tag
    { _tagBlockingTriggerId :: !(Maybe [Text])
    , _tagScheduleEndMs     :: !(Maybe Int64)
    , _tagParentFolderId    :: !(Maybe Text)
    , _tagLiveOnly          :: !(Maybe Bool)
    , _tagContainerId       :: !(Maybe Text)
    , _tagPriority          :: !(Maybe (Maybe Parameter))
    , _tagTeardownTag       :: !(Maybe [Maybe TeardownTag])
    , _tagFingerprint       :: !(Maybe Text)
    , _tagTagFiringOption   :: !(Maybe Text)
    , _tagAccountId         :: !(Maybe Text)
    , _tagTagId             :: !(Maybe Text)
    , _tagName              :: !(Maybe Text)
    , _tagBlockingRuleId    :: !(Maybe [Text])
    , _tagSetupTag          :: !(Maybe [Maybe SetupTag])
    , _tagFiringTriggerId   :: !(Maybe [Text])
    , _tagType              :: !(Maybe Text)
    , _tagScheduleStartMs   :: !(Maybe Int64)
    , _tagNotes             :: !(Maybe Text)
    , _tagFiringRuleId      :: !(Maybe [Text])
    , _tagParameter         :: !(Maybe [Maybe Parameter])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagBlockingTriggerId'
--
-- * 'tagScheduleEndMs'
--
-- * 'tagParentFolderId'
--
-- * 'tagLiveOnly'
--
-- * 'tagContainerId'
--
-- * 'tagPriority'
--
-- * 'tagTeardownTag'
--
-- * 'tagFingerprint'
--
-- * 'tagTagFiringOption'
--
-- * 'tagAccountId'
--
-- * 'tagTagId'
--
-- * 'tagName'
--
-- * 'tagBlockingRuleId'
--
-- * 'tagSetupTag'
--
-- * 'tagFiringTriggerId'
--
-- * 'tagType'
--
-- * 'tagScheduleStartMs'
--
-- * 'tagNotes'
--
-- * 'tagFiringRuleId'
--
-- * 'tagParameter'
tag
    :: Tag
tag =
    Tag
    { _tagBlockingTriggerId = Nothing
    , _tagScheduleEndMs = Nothing
    , _tagParentFolderId = Nothing
    , _tagLiveOnly = Nothing
    , _tagContainerId = Nothing
    , _tagPriority = Nothing
    , _tagTeardownTag = Nothing
    , _tagFingerprint = Nothing
    , _tagTagFiringOption = Nothing
    , _tagAccountId = Nothing
    , _tagTagId = Nothing
    , _tagName = Nothing
    , _tagBlockingRuleId = Nothing
    , _tagSetupTag = Nothing
    , _tagFiringTriggerId = Nothing
    , _tagType = Nothing
    , _tagScheduleStartMs = Nothing
    , _tagNotes = Nothing
    , _tagFiringRuleId = Nothing
    , _tagParameter = Nothing
    }

-- | Blocking trigger IDs. If any of the listed triggers evaluate to true,
-- the tag will not fire.
tagBlockingTriggerId :: Lens' Tag [Text]
tagBlockingTriggerId
  = lens _tagBlockingTriggerId
      (\ s a -> s{_tagBlockingTriggerId = a})
      . _Default
      . _Coerce

-- | The end timestamp in milliseconds to schedule a tag.
tagScheduleEndMs :: Lens' Tag (Maybe Int64)
tagScheduleEndMs
  = lens _tagScheduleEndMs
      (\ s a -> s{_tagScheduleEndMs = a})

-- | Parent folder id.
tagParentFolderId :: Lens' Tag (Maybe Text)
tagParentFolderId
  = lens _tagParentFolderId
      (\ s a -> s{_tagParentFolderId = a})

-- | If set to true, this tag will only fire in the live environment (e.g.
-- not in preview or debug mode).
tagLiveOnly :: Lens' Tag (Maybe Bool)
tagLiveOnly
  = lens _tagLiveOnly (\ s a -> s{_tagLiveOnly = a})

-- | GTM Container ID.
tagContainerId :: Lens' Tag (Maybe Text)
tagContainerId
  = lens _tagContainerId
      (\ s a -> s{_tagContainerId = a})

-- | User defined numeric priority of the tag. Tags are fired asynchronously
-- in order of priority. Tags with higher numeric value fire first. A
-- tag\'s priority can be a positive or negative value. The default value
-- is 0.
tagPriority :: Lens' Tag (Maybe (Maybe Parameter))
tagPriority
  = lens _tagPriority (\ s a -> s{_tagPriority = a})

-- | The list of teardown tags. Currently we only allow one.
tagTeardownTag :: Lens' Tag [Maybe TeardownTag]
tagTeardownTag
  = lens _tagTeardownTag
      (\ s a -> s{_tagTeardownTag = a})
      . _Default
      . _Coerce

-- | The fingerprint of the GTM Tag as computed at storage time. This value
-- is recomputed whenever the tag is modified.
tagFingerprint :: Lens' Tag (Maybe Text)
tagFingerprint
  = lens _tagFingerprint
      (\ s a -> s{_tagFingerprint = a})

-- | Option to fire this tag.
tagTagFiringOption :: Lens' Tag (Maybe Text)
tagTagFiringOption
  = lens _tagTagFiringOption
      (\ s a -> s{_tagTagFiringOption = a})

-- | GTM Account ID.
tagAccountId :: Lens' Tag (Maybe Text)
tagAccountId
  = lens _tagAccountId (\ s a -> s{_tagAccountId = a})

-- | The Tag ID uniquely identifies the GTM Tag.
tagTagId :: Lens' Tag (Maybe Text)
tagTagId = lens _tagTagId (\ s a -> s{_tagTagId = a})

-- | Tag display name.
tagName :: Lens' Tag (Maybe Text)
tagName = lens _tagName (\ s a -> s{_tagName = a})

-- | Blocking rule IDs. If any of the listed rules evaluate to true, the tag
-- will not fire.
tagBlockingRuleId :: Lens' Tag [Text]
tagBlockingRuleId
  = lens _tagBlockingRuleId
      (\ s a -> s{_tagBlockingRuleId = a})
      . _Default
      . _Coerce

-- | The list of setup tags. Currently we only allow one.
tagSetupTag :: Lens' Tag [Maybe SetupTag]
tagSetupTag
  = lens _tagSetupTag (\ s a -> s{_tagSetupTag = a}) .
      _Default
      . _Coerce

-- | Firing trigger IDs. A tag will fire when any of the listed triggers are
-- true and all of its blockingTriggerIds (if any specified) are false.
tagFiringTriggerId :: Lens' Tag [Text]
tagFiringTriggerId
  = lens _tagFiringTriggerId
      (\ s a -> s{_tagFiringTriggerId = a})
      . _Default
      . _Coerce

-- | GTM Tag Type.
tagType :: Lens' Tag (Maybe Text)
tagType = lens _tagType (\ s a -> s{_tagType = a})

-- | The start timestamp in milliseconds to schedule a tag.
tagScheduleStartMs :: Lens' Tag (Maybe Int64)
tagScheduleStartMs
  = lens _tagScheduleStartMs
      (\ s a -> s{_tagScheduleStartMs = a})

-- | User notes on how to apply this tag in the container.
tagNotes :: Lens' Tag (Maybe Text)
tagNotes = lens _tagNotes (\ s a -> s{_tagNotes = a})

-- | Firing rule IDs. A tag will fire when any of the listed rules are true
-- and all of its blockingRuleIds (if any specified) are false.
tagFiringRuleId :: Lens' Tag [Text]
tagFiringRuleId
  = lens _tagFiringRuleId
      (\ s a -> s{_tagFiringRuleId = a})
      . _Default
      . _Coerce

-- | The tag\'s parameters.
tagParameter :: Lens' Tag [Maybe Parameter]
tagParameter
  = lens _tagParameter (\ s a -> s{_tagParameter = a})
      . _Default
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
                 [("blockingTriggerId" .=) <$> _tagBlockingTriggerId,
                  ("scheduleEndMs" .=) <$> _tagScheduleEndMs,
                  ("parentFolderId" .=) <$> _tagParentFolderId,
                  ("liveOnly" .=) <$> _tagLiveOnly,
                  ("containerId" .=) <$> _tagContainerId,
                  ("priority" .=) <$> _tagPriority,
                  ("teardownTag" .=) <$> _tagTeardownTag,
                  ("fingerprint" .=) <$> _tagFingerprint,
                  ("tagFiringOption" .=) <$> _tagTagFiringOption,
                  ("accountId" .=) <$> _tagAccountId,
                  ("tagId" .=) <$> _tagTagId, ("name" .=) <$> _tagName,
                  ("blockingRuleId" .=) <$> _tagBlockingRuleId,
                  ("setupTag" .=) <$> _tagSetupTag,
                  ("firingTriggerId" .=) <$> _tagFiringTriggerId,
                  ("type" .=) <$> _tagType,
                  ("scheduleStartMs" .=) <$> _tagScheduleStartMs,
                  ("notes" .=) <$> _tagNotes,
                  ("firingRuleId" .=) <$> _tagFiringRuleId,
                  ("parameter" .=) <$> _tagParameter])

--
-- /See:/ 'teardownTag' smart constructor.
data TeardownTag = TeardownTag
    { _ttStopTeardownOnFailure :: !(Maybe Bool)
    , _ttTagName               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Create container versions response.
--
-- /See:/ 'createContainerVersionResponse' smart constructor.
data CreateContainerVersionResponse = CreateContainerVersionResponse
    { _ccvrCompilerError    :: !(Maybe Bool)
    , _ccvrContainerVersion :: !(Maybe (Maybe ContainerVersion))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
ccvrContainerVersion :: Lens' CreateContainerVersionResponse (Maybe (Maybe ContainerVersion))
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

-- | List triggers response.
--
-- /See:/ 'listTriggersResponse' smart constructor.
newtype ListTriggersResponse = ListTriggersResponse
    { _ltrTriggers :: Maybe [Maybe Trigger]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
ltrTriggers :: Lens' ListTriggersResponse [Maybe Trigger]
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

-- | Options for new container versions.
--
-- /See:/ 'createContainerVersionRequestVersionOptions' smart constructor.
data CreateContainerVersionRequestVersionOptions = CreateContainerVersionRequestVersionOptions
    { _ccvrvoName         :: !(Maybe Text)
    , _ccvrvoQuickPreview :: !(Maybe Bool)
    , _ccvrvoNotes        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Defines the Google Tag Manager Account access permissions.
--
-- /See:/ 'accountAccess' smart constructor.
newtype AccountAccess = AccountAccess
    { _aaPermission :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
aaPermission :: Lens' AccountAccess [Text]
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

-- | Represents a user\'s permissions to an account and its container.
--
-- /See:/ 'userAccess' smart constructor.
data UserAccess = UserAccess
    { _uaAccountAccess   :: !(Maybe (Maybe AccountAccess))
    , _uaAccountId       :: !(Maybe Text)
    , _uaEmailAddress    :: !(Maybe Text)
    , _uaContainerAccess :: !(Maybe [Maybe ContainerAccess])
    , _uaPermissionId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
uaAccountAccess :: Lens' UserAccess (Maybe (Maybe AccountAccess))
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
uaContainerAccess :: Lens' UserAccess [Maybe ContainerAccess]
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

-- | List Accounts Response.
--
-- /See:/ 'listAccountsResponse' smart constructor.
newtype ListAccountsResponse = ListAccountsResponse
    { _larAccounts :: Maybe [Maybe Account]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
larAccounts :: Lens' ListAccountsResponse [Maybe Account]
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
    , _vParameter          :: !(Maybe [Maybe Parameter])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
vParameter :: Lens' Variable [Maybe Parameter]
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
    , _rCondition   :: !(Maybe [Maybe Condition])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
rCondition :: Lens' Rule [Maybe Condition]
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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Represents a Google Tag Manager Account.
--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _aShareData   :: !(Maybe Bool)
    , _aFingerprint :: !(Maybe Text)
    , _aAccountId   :: !(Maybe Text)
    , _aName        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aShareData'
--
-- * 'aFingerprint'
--
-- * 'aAccountId'
--
-- * 'aName'
account
    :: Account
account =
    Account
    { _aShareData = Nothing
    , _aFingerprint = Nothing
    , _aAccountId = Nothing
    , _aName = Nothing
    }

-- | Whether the account shares data anonymously with Google and others.
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
                 [("shareData" .=) <$> _aShareData,
                  ("fingerprint" .=) <$> _aFingerprint,
                  ("accountId" .=) <$> _aAccountId,
                  ("name" .=) <$> _aName])

-- | List container versions response.
--
-- /See:/ 'listContainerVersionsResponse' smart constructor.
data ListContainerVersionsResponse = ListContainerVersionsResponse
    { _lcvrContainerVersionHeader :: !(Maybe [Maybe ContainerVersionHeader])
    , _lcvrContainerVersion       :: !(Maybe [Maybe ContainerVersion])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
lcvrContainerVersionHeader :: Lens' ListContainerVersionsResponse [Maybe ContainerVersionHeader]
lcvrContainerVersionHeader
  = lens _lcvrContainerVersionHeader
      (\ s a -> s{_lcvrContainerVersionHeader = a})
      . _Default
      . _Coerce

-- | All versions of a GTM Container.
lcvrContainerVersion :: Lens' ListContainerVersionsResponse [Maybe ContainerVersion]
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
    , _cUsageContext           :: !(Maybe [Text])
    , _cEnabledBuiltInVariable :: !(Maybe [Text])
    , _cContainerId            :: !(Maybe Text)
    , _cFingerprint            :: !(Maybe Text)
    , _cTimeZoneCountryId      :: !(Maybe Text)
    , _cAccountId              :: !(Maybe Text)
    , _cDomainName             :: !(Maybe [Text])
    , _cName                   :: !(Maybe Text)
    , _cNotes                  :: !(Maybe Text)
    , _cTimeZoneId             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
cUsageContext :: Lens' Container [Text]
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
cEnabledBuiltInVariable :: Lens' Container [Text]
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
    { _laurUserAccess :: Maybe [Maybe UserAccess]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
laurUserAccess :: Lens' ListAccountUsersResponse [Maybe UserAccess]
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

-- | List Containers Response.
--
-- /See:/ 'listContainersResponse' smart constructor.
newtype ListContainersResponse = ListContainersResponse
    { _lcrContainers :: Maybe [Maybe Container]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
lcrContainers :: Lens' ListContainersResponse [Maybe Container]
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

--
-- /See:/ 'setupTag' smart constructor.
data SetupTag = SetupTag
    { _stTagName            :: !(Maybe Text)
    , _stStopOnSetupFailure :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Represents a Google Tag Manager Container Version.
--
-- /See:/ 'containerVersion' smart constructor.
data ContainerVersion = ContainerVersion
    { _cvMacro              :: !(Maybe [Maybe MACro])
    , _cvTag                :: !(Maybe [Maybe Tag])
    , _cvContainerId        :: !(Maybe Text)
    , _cvFingerprint        :: !(Maybe Text)
    , _cvContainerVersionId :: !(Maybe Text)
    , _cvRule               :: !(Maybe [Maybe Rule])
    , _cvFolder             :: !(Maybe [Maybe Folder])
    , _cvVariable           :: !(Maybe [Maybe Variable])
    , _cvAccountId          :: !(Maybe Text)
    , _cvName               :: !(Maybe Text)
    , _cvContainer          :: !(Maybe (Maybe Container))
    , _cvDeleted            :: !(Maybe Bool)
    , _cvTrigger            :: !(Maybe [Maybe Trigger])
    , _cvNotes              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
cvMacro :: Lens' ContainerVersion [Maybe MACro]
cvMacro
  = lens _cvMacro (\ s a -> s{_cvMacro = a}) . _Default
      . _Coerce

-- | The tags in the container that this version was taken from.
cvTag :: Lens' ContainerVersion [Maybe Tag]
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
cvRule :: Lens' ContainerVersion [Maybe Rule]
cvRule
  = lens _cvRule (\ s a -> s{_cvRule = a}) . _Default .
      _Coerce

-- | The folders in the container that this version was taken from.
cvFolder :: Lens' ContainerVersion [Maybe Folder]
cvFolder
  = lens _cvFolder (\ s a -> s{_cvFolder = a}) .
      _Default
      . _Coerce

-- | The variables in the container that this version was taken from.
cvVariable :: Lens' ContainerVersion [Maybe Variable]
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
cvContainer :: Lens' ContainerVersion (Maybe (Maybe Container))
cvContainer
  = lens _cvContainer (\ s a -> s{_cvContainer = a})

-- | A value of true indicates this container version has been deleted.
cvDeleted :: Lens' ContainerVersion (Maybe Bool)
cvDeleted
  = lens _cvDeleted (\ s a -> s{_cvDeleted = a})

-- | The triggers in the container that this version was taken from.
cvTrigger :: Lens' ContainerVersion [Maybe Trigger]
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

-- | List Tags Response.
--
-- /See:/ 'listTagsResponse' smart constructor.
newtype ListTagsResponse = ListTagsResponse
    { _ltrTags :: Maybe [Maybe Tag]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
ltrTags :: Lens' ListTagsResponse [Maybe Tag]
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
-- /See:/ 'listMACrosResponse' smart constructor.
newtype ListMACrosResponse = ListMACrosResponse
    { _lmacrMacros :: Maybe [Maybe MACro]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMACrosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmacrMacros'
listMACrosResponse
    :: ListMACrosResponse
listMACrosResponse =
    ListMACrosResponse
    { _lmacrMacros = Nothing
    }

-- | All GTM Macros of a GTM Container.
lmacrMacros :: Lens' ListMACrosResponse [Maybe MACro]
lmacrMacros
  = lens _lmacrMacros (\ s a -> s{_lmacrMacros = a}) .
      _Default
      . _Coerce

instance FromJSON ListMACrosResponse where
        parseJSON
          = withObject "ListMACrosResponse"
              (\ o ->
                 ListMACrosResponse <$> (o .:? "macros" .!= mempty))

instance ToJSON ListMACrosResponse where
        toJSON ListMACrosResponse{..}
          = object (catMaybes [("macros" .=) <$> _lmacrMacros])

-- | Represents a Google Tag Manager Trigger
--
-- /See:/ 'trigger' smart constructor.
data Trigger = Trigger
    { _tCustomEventFilter   :: !(Maybe [Maybe Condition])
    , _tParentFolderId      :: !(Maybe Text)
    , _tContainerId         :: !(Maybe Text)
    , _tTriggerId           :: !(Maybe Text)
    , _tCheckValidation     :: !(Maybe (Maybe Parameter))
    , _tFingerprint         :: !(Maybe Text)
    , _tAutoEventFilter     :: !(Maybe [Maybe Condition])
    , _tUniqueTriggerId     :: !(Maybe (Maybe Parameter))
    , _tAccountId           :: !(Maybe Text)
    , _tName                :: !(Maybe Text)
    , _tInterval            :: !(Maybe (Maybe Parameter))
    , _tEnableAllVideos     :: !(Maybe (Maybe Parameter))
    , _tWaitForTagsTimeout  :: !(Maybe (Maybe Parameter))
    , _tLimit               :: !(Maybe (Maybe Parameter))
    , _tFilter              :: !(Maybe [Maybe Condition])
    , _tType                :: !(Maybe Text)
    , _tVideoPercentageList :: !(Maybe (Maybe Parameter))
    , _tEventName           :: !(Maybe (Maybe Parameter))
    , _tWaitForTags         :: !(Maybe (Maybe Parameter))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Trigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tCustomEventFilter'
--
-- * 'tParentFolderId'
--
-- * 'tContainerId'
--
-- * 'tTriggerId'
--
-- * 'tCheckValidation'
--
-- * 'tFingerprint'
--
-- * 'tAutoEventFilter'
--
-- * 'tUniqueTriggerId'
--
-- * 'tAccountId'
--
-- * 'tName'
--
-- * 'tInterval'
--
-- * 'tEnableAllVideos'
--
-- * 'tWaitForTagsTimeout'
--
-- * 'tLimit'
--
-- * 'tFilter'
--
-- * 'tType'
--
-- * 'tVideoPercentageList'
--
-- * 'tEventName'
--
-- * 'tWaitForTags'
trigger
    :: Trigger
trigger =
    Trigger
    { _tCustomEventFilter = Nothing
    , _tParentFolderId = Nothing
    , _tContainerId = Nothing
    , _tTriggerId = Nothing
    , _tCheckValidation = Nothing
    , _tFingerprint = Nothing
    , _tAutoEventFilter = Nothing
    , _tUniqueTriggerId = Nothing
    , _tAccountId = Nothing
    , _tName = Nothing
    , _tInterval = Nothing
    , _tEnableAllVideos = Nothing
    , _tWaitForTagsTimeout = Nothing
    , _tLimit = Nothing
    , _tFilter = Nothing
    , _tType = Nothing
    , _tVideoPercentageList = Nothing
    , _tEventName = Nothing
    , _tWaitForTags = Nothing
    }

-- | Used in the case of custom event, which is fired iff all Conditions are
-- true.
tCustomEventFilter :: Lens' Trigger [Maybe Condition]
tCustomEventFilter
  = lens _tCustomEventFilter
      (\ s a -> s{_tCustomEventFilter = a})
      . _Default
      . _Coerce

-- | Parent folder id.
tParentFolderId :: Lens' Trigger (Maybe Text)
tParentFolderId
  = lens _tParentFolderId
      (\ s a -> s{_tParentFolderId = a})

-- | GTM Container ID.
tContainerId :: Lens' Trigger (Maybe Text)
tContainerId
  = lens _tContainerId (\ s a -> s{_tContainerId = a})

-- | The Trigger ID uniquely identifies the GTM Trigger.
tTriggerId :: Lens' Trigger (Maybe Text)
tTriggerId
  = lens _tTriggerId (\ s a -> s{_tTriggerId = a})

-- | Whether or not we should only fire tags if the form submit or link click
-- event is not cancelled by some other event handler (e.g. because of
-- validation). Only valid for Form Submission and Link Click triggers.
tCheckValidation :: Lens' Trigger (Maybe (Maybe Parameter))
tCheckValidation
  = lens _tCheckValidation
      (\ s a -> s{_tCheckValidation = a})

-- | The fingerprint of the GTM Trigger as computed at storage time. This
-- value is recomputed whenever the trigger is modified.
tFingerprint :: Lens' Trigger (Maybe Text)
tFingerprint
  = lens _tFingerprint (\ s a -> s{_tFingerprint = a})

-- | Used in the case of auto event tracking.
tAutoEventFilter :: Lens' Trigger [Maybe Condition]
tAutoEventFilter
  = lens _tAutoEventFilter
      (\ s a -> s{_tAutoEventFilter = a})
      . _Default
      . _Coerce

-- | Globally unique id of the trigger that auto-generates this (a Form
-- Submit, Link Click or Timer listener) if any. Used to make incompatible
-- auto-events work together with trigger filtering based on trigger ids.
-- This value is populated during output generation since the tags implied
-- by triggers don\'t exist until then. Only valid for Form Submit, Link
-- Click and Timer triggers.
tUniqueTriggerId :: Lens' Trigger (Maybe (Maybe Parameter))
tUniqueTriggerId
  = lens _tUniqueTriggerId
      (\ s a -> s{_tUniqueTriggerId = a})

-- | GTM Account ID.
tAccountId :: Lens' Trigger (Maybe Text)
tAccountId
  = lens _tAccountId (\ s a -> s{_tAccountId = a})

-- | Trigger display name.
tName :: Lens' Trigger (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | Time between triggering recurring Timer Events (in milliseconds). Only
-- valid for Timer triggers.
tInterval :: Lens' Trigger (Maybe (Maybe Parameter))
tInterval
  = lens _tInterval (\ s a -> s{_tInterval = a})

-- | Reloads the videos in the page that don\'t already have the YT API
-- enabled. If false, only capture events from videos that already have the
-- API enabled. Only valid for YouTube triggers.
tEnableAllVideos :: Lens' Trigger (Maybe (Maybe Parameter))
tEnableAllVideos
  = lens _tEnableAllVideos
      (\ s a -> s{_tEnableAllVideos = a})

-- | How long to wait (in milliseconds) for tags to fire when
-- \'waits_for_tags\' above evaluates to true. Only valid for Form
-- Submission and Link Click triggers.
tWaitForTagsTimeout :: Lens' Trigger (Maybe (Maybe Parameter))
tWaitForTagsTimeout
  = lens _tWaitForTagsTimeout
      (\ s a -> s{_tWaitForTagsTimeout = a})

-- | Limit of the number of GTM events this Timer Trigger will fire. If no
-- limit is set, we will continue to fire GTM events until the user leaves
-- the page. Only valid for Timer triggers.
tLimit :: Lens' Trigger (Maybe (Maybe Parameter))
tLimit = lens _tLimit (\ s a -> s{_tLimit = a})

-- | The trigger will only fire iff all Conditions are true.
tFilter :: Lens' Trigger [Maybe Condition]
tFilter
  = lens _tFilter (\ s a -> s{_tFilter = a}) . _Default
      . _Coerce

-- | Defines the data layer event that causes this trigger.
tType :: Lens' Trigger (Maybe Text)
tType = lens _tType (\ s a -> s{_tType = a})

-- | List of integer percentage values. The trigger will fire as each
-- percentage is reached in any instrumented videos. Only valid for YouTube
-- triggers.
tVideoPercentageList :: Lens' Trigger (Maybe (Maybe Parameter))
tVideoPercentageList
  = lens _tVideoPercentageList
      (\ s a -> s{_tVideoPercentageList = a})

-- | Name of the GTM event that is fired. Only valid for Timer triggers.
tEventName :: Lens' Trigger (Maybe (Maybe Parameter))
tEventName
  = lens _tEventName (\ s a -> s{_tEventName = a})

-- | Whether or not we should delay the form submissions or link opening
-- until all of the tags have fired (by preventing the default action and
-- later simulating the default action). Only valid for Form Submission and
-- Link Click triggers.
tWaitForTags :: Lens' Trigger (Maybe (Maybe Parameter))
tWaitForTags
  = lens _tWaitForTags (\ s a -> s{_tWaitForTags = a})

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
                 [("customEventFilter" .=) <$> _tCustomEventFilter,
                  ("parentFolderId" .=) <$> _tParentFolderId,
                  ("containerId" .=) <$> _tContainerId,
                  ("triggerId" .=) <$> _tTriggerId,
                  ("checkValidation" .=) <$> _tCheckValidation,
                  ("fingerprint" .=) <$> _tFingerprint,
                  ("autoEventFilter" .=) <$> _tAutoEventFilter,
                  ("uniqueTriggerId" .=) <$> _tUniqueTriggerId,
                  ("accountId" .=) <$> _tAccountId,
                  ("name" .=) <$> _tName,
                  ("interval" .=) <$> _tInterval,
                  ("enableAllVideos" .=) <$> _tEnableAllVideos,
                  ("waitForTagsTimeout" .=) <$> _tWaitForTagsTimeout,
                  ("limit" .=) <$> _tLimit, ("filter" .=) <$> _tFilter,
                  ("type" .=) <$> _tType,
                  ("videoPercentageList" .=) <$> _tVideoPercentageList,
                  ("eventName" .=) <$> _tEventName,
                  ("waitForTags" .=) <$> _tWaitForTags])

-- | Represents a predicate.
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition
    { _cType      :: !(Maybe Text)
    , _cParameter :: !(Maybe [Maybe Parameter])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
cType :: Lens' Condition (Maybe Text)
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
cParameter :: Lens' Condition [Maybe Parameter]
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

-- | Represents a Google Tag Manager Folder\'s contents.
--
-- /See:/ 'folderEntities' smart constructor.
data FolderEntities = FolderEntities
    { _feTag      :: !(Maybe [Maybe Tag])
    , _feVariable :: !(Maybe [Maybe Variable])
    , _feTrigger  :: !(Maybe [Maybe Trigger])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
feTag :: Lens' FolderEntities [Maybe Tag]
feTag
  = lens _feTag (\ s a -> s{_feTag = a}) . _Default .
      _Coerce

-- | The list of variables inside the folder.
feVariable :: Lens' FolderEntities [Maybe Variable]
feVariable
  = lens _feVariable (\ s a -> s{_feVariable = a}) .
      _Default
      . _Coerce

-- | The list of triggers inside the folder.
feTrigger :: Lens' FolderEntities [Maybe Trigger]
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

-- | Defines the Google Tag Manager Container access permissions.
--
-- /See:/ 'containerAccess' smart constructor.
data ContainerAccess = ContainerAccess
    { _caContainerId :: !(Maybe Text)
    , _caPermission  :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
caPermission :: Lens' ContainerAccess [Text]
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
    { _pList  :: !(Maybe [Maybe Parameter])
    , _pValue :: !(Maybe Text)
    , _pMap   :: !(Maybe [Maybe Parameter])
    , _pKey   :: !(Maybe Text)
    , _pType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pList :: Lens' Parameter [Maybe Parameter]
pList
  = lens _pList (\ s a -> s{_pList = a}) . _Default .
      _Coerce

-- | A parameter\'s value (may contain macro references such as
-- \"{{myMacro}}\") as appropriate to the specified type.
pValue :: Lens' Parameter (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | This map parameter\'s parameters (must have keys; keys must be unique).
pMap :: Lens' Parameter [Maybe Parameter]
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
pType :: Lens' Parameter (Maybe Text)
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

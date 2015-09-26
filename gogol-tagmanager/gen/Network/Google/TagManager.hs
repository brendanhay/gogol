-- |
-- Module      : Network.Google.TagManager
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for accessing Tag Manager accounts and containers.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference>
module Network.Google.TagManager
    (
    -- * API Definition
      TagManager



    -- * Types

    -- ** Account
    , Account
    , account
    , aShareData
    , aFingerprint
    , aAccountId
    , aName

    -- ** AccountAccess
    , AccountAccess
    , accountAccess
    , aaPermission

    -- ** AccountAccessItemPermission
    , AccountAccessItemPermission (..)

    -- ** Condition
    , Condition
    , condition
    , cType
    , cParameter

    -- ** ConditionType
    , ConditionType (..)

    -- ** Container
    , Container
    , container
    , cPublicId
    , cUsageContext
    , cEnabledBuiltInVariable
    , cContainerId
    , cFingerprint
    , cTimeZoneCountryId
    , cAccountId
    , cDomainName
    , cName
    , cNotes
    , cTimeZoneId

    -- ** ContainerAccess
    , ContainerAccess
    , containerAccess
    , caContainerId
    , caPermission

    -- ** ContainerAccessItemPermission
    , ContainerAccessItemPermission (..)

    -- ** ContainerItemEnabledBuiltInVariable
    , ContainerItemEnabledBuiltInVariable (..)

    -- ** ContainerItemUsageContext
    , ContainerItemUsageContext (..)

    -- ** ContainerVersion
    , ContainerVersion
    , containerVersion
    , cvMacro
    , cvTag
    , cvContainerId
    , cvFingerprint
    , cvContainerVersionId
    , cvRule
    , cvFolder
    , cvVariable
    , cvAccountId
    , cvName
    , cvContainer
    , cvDeleted
    , cvTrigger
    , cvNotes

    -- ** ContainerVersionHeader
    , ContainerVersionHeader
    , containerVersionHeader
    , cvhNumTags
    , cvhNumMacros
    , cvhContainerId
    , cvhContainerVersionId
    , cvhAccountId
    , cvhName
    , cvhNumTriggers
    , cvhDeleted
    , cvhNumRules
    , cvhNumVariables

    -- ** CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoQuickPreview
    , ccvrvoNotes

    -- ** CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrContainerVersion

    -- ** Folder
    , Folder
    , folder
    , fContainerId
    , fFingerprint
    , fFolderId
    , fAccountId
    , fName

    -- ** FolderEntities
    , FolderEntities
    , folderEntities
    , feTag
    , feVariable
    , feTrigger

    -- ** ListAccountUsersResponse
    , ListAccountUsersResponse
    , listAccountUsersResponse
    , laurUserAccess

    -- ** ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larAccounts

    -- ** ListContainerVersionsResponse
    , ListContainerVersionsResponse
    , listContainerVersionsResponse
    , lcvrContainerVersionHeader
    , lcvrContainerVersion

    -- ** ListContainersResponse
    , ListContainersResponse
    , listContainersResponse
    , lcrContainers

    -- ** ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrFolders

    -- ** ListMacrosResponse
    , ListMacrosResponse
    , listMacrosResponse
    , lmrMacros

    -- ** ListRulesResponse
    , ListRulesResponse
    , listRulesResponse
    , lrrRules

    -- ** ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , ltrTags

    -- ** ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , ltrTriggers

    -- ** ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrVariables

    -- ** Macro
    , Macro
    , macro
    , macScheduleEndMs
    , macParentFolderId
    , macContainerId
    , macDisablingRuleId
    , macFingerprint
    , macAccountId
    , macName
    , macEnablingRuleId
    , macMacroId
    , macType
    , macScheduleStartMs
    , macNotes
    , macParameter

    -- ** Parameter
    , Parameter
    , parameter
    , pList
    , pValue
    , pMap
    , pKey
    , pType

    -- ** ParameterType
    , ParameterType (..)

    -- ** PublishContainerVersionResponse
    , PublishContainerVersionResponse
    , publishContainerVersionResponse
    , pcvrCompilerError
    , pcvrContainerVersion

    -- ** Rule
    , Rule
    , rule
    , rContainerId
    , rFingerprint
    , rRuleId
    , rAccountId
    , rName
    , rNotes
    , rCondition

    -- ** SetupTag
    , SetupTag
    , setupTag
    , stTagName
    , stStopOnSetupFailure

    -- ** Tag
    , Tag
    , tag
    , tagBlockingTriggerId
    , tagScheduleEndMs
    , tagParentFolderId
    , tagLiveOnly
    , tagContainerId
    , tagPriority
    , tagTeardownTag
    , tagFingerprint
    , tagTagFiringOption
    , tagAccountId
    , tagTagId
    , tagName
    , tagBlockingRuleId
    , tagSetupTag
    , tagFiringTriggerId
    , tagType
    , tagScheduleStartMs
    , tagNotes
    , tagFiringRuleId
    , tagParameter

    -- ** TagTagFiringOption
    , TagTagFiringOption (..)

    -- ** TeardownTag
    , TeardownTag
    , teardownTag
    , ttStopTeardownOnFailure
    , ttTagName

    -- ** Trigger
    , Trigger
    , trigger
    , tCustomEventFilter
    , tParentFolderId
    , tContainerId
    , tTriggerId
    , tCheckValidation
    , tFingerprint
    , tAutoEventFilter
    , tUniqueTriggerId
    , tAccountId
    , tName
    , tInterval
    , tEnableAllVideos
    , tWaitForTagsTimeout
    , tLimit
    , tFilter
    , tType
    , tVideoPercentageList
    , tEventName
    , tWaitForTags

    -- ** TriggerType
    , TriggerType (..)

    -- ** UserAccess
    , UserAccess
    , userAccess
    , uaAccountAccess
    , uaAccountId
    , uaEmailAddress
    , uaContainerAccess
    , uaPermissionId

    -- ** Variable
    , Variable
    , variable
    , vScheduleEndMs
    , vParentFolderId
    , vContainerId
    , vFingerprint
    , vVariableId
    , vAccountId
    , vDisablingTriggerId
    , vName
    , vType
    , vScheduleStartMs
    , vNotes
    , vEnablingTriggerId
    , vParameter
    ) where

import           Network.Google.TagManager.Types

{- $resources
TODO
-}

type TagManager = ()

tagManager :: Proxy TagManager
tagManager = Proxy





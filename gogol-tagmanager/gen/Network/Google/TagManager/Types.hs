{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TagManager.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TagManager.Types
    (
    -- * Service URL
      tagManagerURL

    -- * ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrFolders

    -- * ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrVariables

    -- * ListRulesResponse
    , ListRulesResponse
    , listRulesResponse
    , lrrRules

    -- * PublishContainerVersionResponse
    , PublishContainerVersionResponse
    , publishContainerVersionResponse
    , pcvrCompilerError
    , pcvrContainerVersion

    -- * MACro
    , MACro
    , mACro
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

    -- * Tag
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

    -- * TeardownTag
    , TeardownTag
    , teardownTag
    , ttStopTeardownOnFailure
    , ttTagName

    -- * CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrContainerVersion

    -- * ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , ltrTriggers

    -- * CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoQuickPreview
    , ccvrvoNotes

    -- * ContainerVersionHeader
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

    -- * AccountAccess
    , AccountAccess
    , accountAccess
    , aaPermission

    -- * UserAccess
    , UserAccess
    , userAccess
    , uaAccountAccess
    , uaAccountId
    , uaEmailAddress
    , uaContainerAccess
    , uaPermissionId

    -- * ContainerAccessPermission
    , ContainerAccessPermission (..)

    -- * TriggerType
    , TriggerType (..)

    -- * ConditionType
    , ConditionType (..)

    -- * ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larAccounts

    -- * Variable
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

    -- * TagTagFiringOption
    , TagTagFiringOption (..)

    -- * AccountAccessPermission
    , AccountAccessPermission (..)

    -- * Rule
    , Rule
    , rule
    , rContainerId
    , rFingerprint
    , rRuleId
    , rAccountId
    , rName
    , rNotes
    , rCondition

    -- * Folder
    , Folder
    , folder
    , fContainerId
    , fFingerprint
    , fFolderId
    , fAccountId
    , fName

    -- * ParameterType
    , ParameterType (..)

    -- * Account
    , Account
    , account
    , aaShareData
    , aaFingerprint
    , aaAccountId
    , aaName

    -- * ListContainerVersionsResponse
    , ListContainerVersionsResponse
    , listContainerVersionsResponse
    , lcvrContainerVersionHeader
    , lcvrContainerVersion

    -- * Container
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

    -- * ListAccountUsersResponse
    , ListAccountUsersResponse
    , listAccountUsersResponse
    , laurUserAccess

    -- * ListContainersResponse
    , ListContainersResponse
    , listContainersResponse
    , lcrContainers

    -- * ContainerEnabledBuiltInVariable
    , ContainerEnabledBuiltInVariable (..)

    -- * SetupTag
    , SetupTag
    , setupTag
    , stTagName
    , stStopOnSetupFailure

    -- * ContainerUsageContext
    , ContainerUsageContext (..)

    -- * ContainerVersion
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

    -- * ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , ltrTags

    -- * ListMACrosResponse
    , ListMACrosResponse
    , listMACrosResponse
    , lmacrMacros

    -- * Trigger
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

    -- * Condition
    , Condition
    , condition
    , cType
    , cParameter

    -- * FolderEntities
    , FolderEntities
    , folderEntities
    , feTag
    , feVariable
    , feTrigger

    -- * ContainerAccess
    , ContainerAccess
    , containerAccess
    , caContainerId
    , caPermission

    -- * Parameter
    , Parameter
    , parameter
    , pList
    , pValue
    , pMap
    , pKey
    , pType

    -- * Alt
    , Alt (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types.Product
import           Network.Google.TagManager.Types.Sum

-- | URL referring to version 'v1' of the Tag Manager API.
tagManagerURL :: BaseUrl
tagManagerURL
  = BaseUrl Https
      "https://www.googleapis.com/tagmanager/v1/"
      443

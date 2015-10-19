{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      tagManagerService

    -- * OAuth Scopes
    , tagmanagerReadonlyScope
    , tagmanagerEditContainersScope
    , tagmanagerManageAccountsScope
    , tagmanagerDeleteContainersScope
    , tagmanagerManageUsersScope
    , tagmanagerPublishScope
    , tagmanagerEditContainerversionsScope

    -- * ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrVariables

    -- * ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrFolders

    -- * PublishContainerVersionResponse
    , PublishContainerVersionResponse
    , publishContainerVersionResponse
    , pcvrCompilerError
    , pcvrContainerVersion

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

    -- * TeardownTag
    , TeardownTag
    , teardownTag
    , ttStopTeardownOnFailure
    , ttTagName

    -- * ListTriggersResponse
    , ListTriggersResponse
    , listTriggersResponse
    , ltrTriggers

    -- * Macro
    , Macro
    , macro
    , mScheduleEndMs
    , mParentFolderId
    , mContainerId
    , mDisablingRuleId
    , mFingerprint
    , mAccountId
    , mName
    , mEnablingRuleId
    , mMacroId
    , mType
    , mScheduleStartMs
    , mNotes
    , mParameter

    -- * Tag
    , Tag
    , tag
    , tBlockingTriggerId
    , tScheduleEndMs
    , tParentFolderId
    , tLiveOnly
    , tContainerId
    , tPriority
    , tTeardownTag
    , tFingerprint
    , tTagFiringOption
    , tAccountId
    , tTagId
    , tName
    , tBlockingRuleId
    , tSetupTag
    , tFiringTriggerId
    , tType
    , tScheduleStartMs
    , tNotes
    , tFiringRuleId
    , tParameter

    -- * CreateContainerVersionResponse
    , CreateContainerVersionResponse
    , createContainerVersionResponse
    , ccvrCompilerError
    , ccvrContainerVersion

    -- * CreateContainerVersionRequestVersionOptions
    , CreateContainerVersionRequestVersionOptions
    , createContainerVersionRequestVersionOptions
    , ccvrvoName
    , ccvrvoQuickPreview
    , ccvrvoNotes

    -- * UserAccess
    , UserAccess
    , userAccess
    , uaAccountAccess
    , uaAccountId
    , uaEmailAddress
    , uaContainerAccess
    , uaPermissionId

    -- * AccountAccess
    , AccountAccess
    , accountAccess
    , aaPermission

    -- * TriggerType
    , TriggerType (..)

    -- * ContainerEnabledBuiltInVariableItem
    , ContainerEnabledBuiltInVariableItem (..)

    -- * ContainerUsageContextItem
    , ContainerUsageContextItem (..)

    -- * ConditionType
    , ConditionType (..)

    -- * ListAccountsResponse
    , ListAccountsResponse
    , listAccountsResponse
    , larAccounts

    -- * AccountAccessPermissionItem
    , AccountAccessPermissionItem (..)

    -- * TagTagFiringOption
    , TagTagFiringOption (..)

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

    -- * ContainerAccessPermissionItem
    , ContainerAccessPermissionItem (..)

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

    -- * SetupTag
    , SetupTag
    , setupTag
    , stTagName
    , stStopOnSetupFailure

    -- * ListContainersResponse
    , ListContainersResponse
    , listContainersResponse
    , lcrContainers

    -- * Trigger
    , Trigger
    , trigger
    , triCustomEventFilter
    , triParentFolderId
    , triContainerId
    , triTriggerId
    , triCheckValidation
    , triFingerprint
    , triAutoEventFilter
    , triUniqueTriggerId
    , triAccountId
    , triName
    , triInterval
    , triEnableAllVideos
    , triWaitForTagsTimeout
    , triLimit
    , triFilter
    , triType
    , triVideoPercentageList
    , triEventName
    , triWaitForTags

    -- * ListTagsResponse
    , ListTagsResponse
    , listTagsResponse
    , ltrTags

    -- * FolderEntities
    , FolderEntities
    , folderEntities
    , feTag
    , feVariable
    , feTrigger

    -- * Condition
    , Condition
    , condition
    , cType
    , cParameter

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
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types.Product
import           Network.Google.TagManager.Types.Sum

-- | Default request referring to version 'v1' of the Tag Manager API. This contains the host and root path used as a starting point for constructing service requests.
tagManagerService :: Service
tagManagerService
  = defaultService (ServiceId "tagmanager:v1")
      "www.googleapis.com"
      "tagmanager/v1/"

-- | View your Google Tag Manager containers
tagmanagerReadonlyScope :: OAuthScope
tagmanagerReadonlyScope = "https://www.googleapis.com/auth/tagmanager.readonly";

-- | Manage your Google Tag Manager containers
tagmanagerEditContainersScope :: OAuthScope
tagmanagerEditContainersScope = "https://www.googleapis.com/auth/tagmanager.edit.containers";

-- | Manage your Google Tag Manager accounts
tagmanagerManageAccountsScope :: OAuthScope
tagmanagerManageAccountsScope = "https://www.googleapis.com/auth/tagmanager.manage.accounts";

-- | Delete your Google Tag Manager containers
tagmanagerDeleteContainersScope :: OAuthScope
tagmanagerDeleteContainersScope = "https://www.googleapis.com/auth/tagmanager.delete.containers";

-- | Manage user permissions of your Google Tag Manager data
tagmanagerManageUsersScope :: OAuthScope
tagmanagerManageUsersScope = "https://www.googleapis.com/auth/tagmanager.manage.users";

-- | Publish your Google Tag Manager containers
tagmanagerPublishScope :: OAuthScope
tagmanagerPublishScope = "https://www.googleapis.com/auth/tagmanager.publish";

-- | Manage your Google Tag Manager container versions
tagmanagerEditContainerversionsScope :: OAuthScope
tagmanagerEditContainerversionsScope = "https://www.googleapis.com/auth/tagmanager.edit.containerversions";

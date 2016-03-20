{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TagManager.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , authTagmanagerReadonlyScope
    , authTagmanagerEditContainersScope
    , authTagmanagerManageAccountsScope
    , authTagmanagerDeleteContainersScope
    , authTagmanagerManageUsersScope
    , authTagmanagerPublishScope
    , authTagmanagerEditContainerversionsScope

    -- * ListVariablesResponse
    , ListVariablesResponse
    , listVariablesResponse
    , lvrVariables

    -- * ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrFolders

    -- * ListEnvironmentsResponse
    , ListEnvironmentsResponse
    , listEnvironmentsResponse
    , lerEnvironments

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

    -- * Environment
    , Environment
    , environment
    , eContainerId
    , eFingerprint
    , eContainerVersionId
    , eURL
    , eAuthorizationCode
    , eAccountId
    , eName
    , eEnableDebug
    , eEnvironmentId
    , eType
    , eAuthorizationTimestampMs
    , eDescription

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

    -- * EnvironmentType
    , EnvironmentType (..)

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
tagManagerService :: ServiceConfig
tagManagerService
  = defaultService (ServiceId "tagmanager:v1")
      "www.googleapis.com"

-- | View your Google Tag Manager containers
authTagmanagerReadonlyScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.readonly"]
authTagmanagerReadonlyScope = Proxy;

-- | Manage your Google Tag Manager containers
authTagmanagerEditContainersScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
authTagmanagerEditContainersScope = Proxy;

-- | Manage your Google Tag Manager accounts
authTagmanagerManageAccountsScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.manage.accounts"]
authTagmanagerManageAccountsScope = Proxy;

-- | Delete your Google Tag Manager containers
authTagmanagerDeleteContainersScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.delete.containers"]
authTagmanagerDeleteContainersScope = Proxy;

-- | Manage user permissions of your Google Tag Manager data
authTagmanagerManageUsersScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.manage.users"]
authTagmanagerManageUsersScope = Proxy;

-- | Publish your Google Tag Manager containers
authTagmanagerPublishScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.publish"]
authTagmanagerPublishScope = Proxy;

-- | Manage your Google Tag Manager container versions
authTagmanagerEditContainerversionsScope :: Proxy '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
authTagmanagerEditContainerversionsScope = Proxy;

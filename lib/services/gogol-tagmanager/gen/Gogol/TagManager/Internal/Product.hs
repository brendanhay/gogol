{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TagManager.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.TagManager.Internal.Product
  (

    -- * Account
    Account (..),
    newAccount,

    -- * AccountAccess
    AccountAccess (..),
    newAccountAccess,

    -- * AccountFeatures
    AccountFeatures (..),
    newAccountFeatures,

    -- * BuiltInVariable
    BuiltInVariable (..),
    newBuiltInVariable,

    -- * Client
    Client (..),
    newClient,

    -- * Condition
    Condition (..),
    newCondition,

    -- * Container
    Container (..),
    newContainer,

    -- * ContainerAccess
    ContainerAccess (..),
    newContainerAccess,

    -- * ContainerFeatures
    ContainerFeatures (..),
    newContainerFeatures,

    -- * ContainerVersion
    ContainerVersion (..),
    newContainerVersion,

    -- * ContainerVersionHeader
    ContainerVersionHeader (..),
    newContainerVersionHeader,

    -- * CreateBuiltInVariableResponse
    CreateBuiltInVariableResponse (..),
    newCreateBuiltInVariableResponse,

    -- * CreateContainerVersionRequestVersionOptions
    CreateContainerVersionRequestVersionOptions (..),
    newCreateContainerVersionRequestVersionOptions,

    -- * CreateContainerVersionResponse
    CreateContainerVersionResponse (..),
    newCreateContainerVersionResponse,

    -- * CustomTemplate
    CustomTemplate (..),
    newCustomTemplate,

    -- * Destination
    Destination (..),
    newDestination,

    -- * Entity
    Entity (..),
    newEntity,

    -- * Environment
    Environment (..),
    newEnvironment,

    -- * Folder
    Folder (..),
    newFolder,

    -- * FolderEntities
    FolderEntities (..),
    newFolderEntities,

    -- * GalleryReference
    GalleryReference (..),
    newGalleryReference,

    -- * GetContainerSnippetResponse
    GetContainerSnippetResponse (..),
    newGetContainerSnippetResponse,

    -- * GetWorkspaceStatusResponse
    GetWorkspaceStatusResponse (..),
    newGetWorkspaceStatusResponse,

    -- * GtagConfig
    GtagConfig (..),
    newGtagConfig,

    -- * ListAccountsResponse
    ListAccountsResponse (..),
    newListAccountsResponse,

    -- * ListClientsResponse
    ListClientsResponse (..),
    newListClientsResponse,

    -- * ListContainerVersionsResponse
    ListContainerVersionsResponse (..),
    newListContainerVersionsResponse,

    -- * ListContainersResponse
    ListContainersResponse (..),
    newListContainersResponse,

    -- * ListDestinationsResponse
    ListDestinationsResponse (..),
    newListDestinationsResponse,

    -- * ListEnabledBuiltInVariablesResponse
    ListEnabledBuiltInVariablesResponse (..),
    newListEnabledBuiltInVariablesResponse,

    -- * ListEnvironmentsResponse
    ListEnvironmentsResponse (..),
    newListEnvironmentsResponse,

    -- * ListFoldersResponse
    ListFoldersResponse (..),
    newListFoldersResponse,

    -- * ListGtagConfigResponse
    ListGtagConfigResponse (..),
    newListGtagConfigResponse,

    -- * ListTagsResponse
    ListTagsResponse (..),
    newListTagsResponse,

    -- * ListTemplatesResponse
    ListTemplatesResponse (..),
    newListTemplatesResponse,

    -- * ListTransformationsResponse
    ListTransformationsResponse (..),
    newListTransformationsResponse,

    -- * ListTriggersResponse
    ListTriggersResponse (..),
    newListTriggersResponse,

    -- * ListUserPermissionsResponse
    ListUserPermissionsResponse (..),
    newListUserPermissionsResponse,

    -- * ListVariablesResponse
    ListVariablesResponse (..),
    newListVariablesResponse,

    -- * ListWorkspacesResponse
    ListWorkspacesResponse (..),
    newListWorkspacesResponse,

    -- * ListZonesResponse
    ListZonesResponse (..),
    newListZonesResponse,

    -- * MergeConflict
    MergeConflict (..),
    newMergeConflict,

    -- * Parameter
    Parameter (..),
    newParameter,

    -- * PublishContainerVersionResponse
    PublishContainerVersionResponse (..),
    newPublishContainerVersionResponse,

    -- * QuickPreviewResponse
    QuickPreviewResponse (..),
    newQuickPreviewResponse,

    -- * RevertBuiltInVariableResponse
    RevertBuiltInVariableResponse (..),
    newRevertBuiltInVariableResponse,

    -- * RevertClientResponse
    RevertClientResponse (..),
    newRevertClientResponse,

    -- * RevertFolderResponse
    RevertFolderResponse (..),
    newRevertFolderResponse,

    -- * RevertTagResponse
    RevertTagResponse (..),
    newRevertTagResponse,

    -- * RevertTemplateResponse
    RevertTemplateResponse (..),
    newRevertTemplateResponse,

    -- * RevertTransformationResponse
    RevertTransformationResponse (..),
    newRevertTransformationResponse,

    -- * RevertTriggerResponse
    RevertTriggerResponse (..),
    newRevertTriggerResponse,

    -- * RevertVariableResponse
    RevertVariableResponse (..),
    newRevertVariableResponse,

    -- * RevertZoneResponse
    RevertZoneResponse (..),
    newRevertZoneResponse,

    -- * SetupTag
    SetupTag (..),
    newSetupTag,

    -- * SyncStatus
    SyncStatus (..),
    newSyncStatus,

    -- * SyncWorkspaceResponse
    SyncWorkspaceResponse (..),
    newSyncWorkspaceResponse,

    -- * Tag
    Tag (..),
    newTag,

    -- * TagConsentSetting
    TagConsentSetting (..),
    newTagConsentSetting,

    -- * TeardownTag
    TeardownTag (..),
    newTeardownTag,

    -- * Transformation
    Transformation (..),
    newTransformation,

    -- * Trigger
    Trigger (..),
    newTrigger,

    -- * UserPermission
    UserPermission (..),
    newUserPermission,

    -- * Variable
    Variable (..),
    newVariable,

    -- * VariableFormatValue
    VariableFormatValue (..),
    newVariableFormatValue,

    -- * Workspace
    Workspace (..),
    newWorkspace,

    -- * Zone
    Zone (..),
    newZone,

    -- * ZoneBoundary
    ZoneBoundary (..),
    newZoneBoundary,

    -- * ZoneChildContainer
    ZoneChildContainer (..),
    newZoneChildContainer,

    -- * ZoneTypeRestriction
    ZoneTypeRestriction (..),
    newZoneTypeRestriction,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Internal.Sum

-- | Represents a Google Tag Manager Account.
--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
    {
      -- | The Account ID uniquely identifies the GTM Account.
      accountId :: (Core.Maybe Core.Text)
      -- | Read-only Account feature set
    , features :: (Core.Maybe AccountFeatures)
      -- | The fingerprint of the GTM Account as computed at storage time. This value is recomputed whenever the account is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Account display name. \@mutable tagmanager.accounts.create \@mutable tagmanager.accounts.update
    , name :: (Core.Maybe Core.Text)
      -- | GTM Account\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Whether the account shares data anonymously with Google and others. This flag enables benchmarking by sharing your data in an anonymous form. Google will remove all identifiable information about your website, combine the data with hundreds of other anonymous sites and report aggregate trends in the benchmarking service. \@mutable tagmanager.accounts.create \@mutable tagmanager.accounts.update
    , shareData :: (Core.Maybe Core.Bool)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount 
    ::  Account
newAccount =
  Account
    { accountId = Core.Nothing
    , features = Core.Nothing
    , fingerprint = Core.Nothing
    , name = Core.Nothing
    , path = Core.Nothing
    , shareData = Core.Nothing
    , tagManagerUrl = Core.Nothing
    }

instance Core.FromJSON Account where
        parseJSON
          = Core.withObject "Account"
              (\ o ->
                 Account Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "features")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "shareData")
                     Core.<*> (o Core..:? "tagManagerUrl"))

instance Core.ToJSON Account where
        toJSON Account{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("features" Core..=) Core.<$> features,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path,
                  ("shareData" Core..=) Core.<$> shareData,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl])


-- | Defines the Google Tag Manager Account access permissions.
--
-- /See:/ 'newAccountAccess' smart constructor.
newtype AccountAccess = AccountAccess
    {
      -- | Whether the user has no access, user access, or admin access to an account. \@mutable tagmanager.accounts.permissions.create \@mutable tagmanager.accounts.permissions.update
      permission :: (Core.Maybe AccountAccess_Permission)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountAccess' with the minimum fields required to make a request.
newAccountAccess 
    ::  AccountAccess
newAccountAccess = AccountAccess {permission = Core.Nothing}

instance Core.FromJSON AccountAccess where
        parseJSON
          = Core.withObject "AccountAccess"
              (\ o ->
                 AccountAccess Core.<$> (o Core..:? "permission"))

instance Core.ToJSON AccountAccess where
        toJSON AccountAccess{..}
          = Core.object
              (Core.catMaybes
                 [("permission" Core..=) Core.<$> permission])


--
-- /See:/ 'newAccountFeatures' smart constructor.
data AccountFeatures = AccountFeatures
    {
      -- | Whether this Account supports multiple Containers.
      supportMultipleContainers :: (Core.Maybe Core.Bool)
      -- | Whether this Account supports user permissions managed by GTM.
    , supportUserPermissions :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccountFeatures' with the minimum fields required to make a request.
newAccountFeatures 
    ::  AccountFeatures
newAccountFeatures =
  AccountFeatures
    { supportMultipleContainers = Core.Nothing
    , supportUserPermissions = Core.Nothing
    }

instance Core.FromJSON AccountFeatures where
        parseJSON
          = Core.withObject "AccountFeatures"
              (\ o ->
                 AccountFeatures Core.<$>
                   (o Core..:? "supportMultipleContainers") Core.<*>
                     (o Core..:? "supportUserPermissions"))

instance Core.ToJSON AccountFeatures where
        toJSON AccountFeatures{..}
          = Core.object
              (Core.catMaybes
                 [("supportMultipleContainers" Core..=) Core.<$>
                    supportMultipleContainers,
                  ("supportUserPermissions" Core..=) Core.<$>
                    supportUserPermissions])


-- | Built-in variables are a special category of variables that are pre-created and non-customizable. They provide common functionality like accessing properties of the gtm data layer, monitoring clicks, or accessing elements of a page URL.
--
-- /See:/ 'newBuiltInVariable' smart constructor.
data BuiltInVariable = BuiltInVariable
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | Name of the built-in variable to be used to refer to the built-in variable.
    , name :: (Core.Maybe Core.Text)
      -- | GTM BuiltInVariable\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Type of built-in variable. \@required.tagmanager.accounts.containers.workspaces.built/in/variable.update \@mutable tagmanager.accounts.containers.workspaces.built/in/variable.update
    , type' :: (Core.Maybe BuiltInVariable_Type)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuiltInVariable' with the minimum fields required to make a request.
newBuiltInVariable 
    ::  BuiltInVariable
newBuiltInVariable =
  BuiltInVariable
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , name = Core.Nothing
    , path = Core.Nothing
    , type' = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON BuiltInVariable where
        parseJSON
          = Core.withObject "BuiltInVariable"
              (\ o ->
                 BuiltInVariable Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON BuiltInVariable where
        toJSON BuiltInVariable{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path,
                  ("type" Core..=) Core.<$> type',
                  ("workspaceId" Core..=) Core.<$> workspaceId])


--
-- /See:/ 'newClient' smart constructor.
data Client = Client
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | The Client ID uniquely identifies the GTM client.
    , clientId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM Client as computed at storage time. This value is recomputed whenever the client is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Client display name. \@mutable tagmanager.accounts.containers.workspaces.clients.create \@mutable tagmanager.accounts.containers.workspaces.clients.update
    , name :: (Core.Maybe Core.Text)
      -- | User notes on how to apply this tag in the container. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , notes :: (Core.Maybe Core.Text)
      -- | The client\'s parameters. \@mutable tagmanager.accounts.containers.workspaces.clients.create \@mutable tagmanager.accounts.containers.workspaces.clients.update
    , parameter :: (Core.Maybe [Parameter])
      -- | Parent folder id.
    , parentFolderId :: (Core.Maybe Core.Text)
      -- | GTM client\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Priority determines relative firing order. \@mutable tagmanager.accounts.containers.workspaces.clients.create \@mutable tagmanager.accounts.containers.workspaces.clients.update
    , priority :: (Core.Maybe Core.Int32)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | Client type. \@mutable tagmanager.accounts.containers.workspaces.clients.create \@mutable tagmanager.accounts.containers.workspaces.clients.update
    , type' :: (Core.Maybe Core.Text)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Client' with the minimum fields required to make a request.
newClient 
    ::  Client
newClient =
  Client
    { accountId = Core.Nothing
    , clientId = Core.Nothing
    , containerId = Core.Nothing
    , fingerprint = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , parameter = Core.Nothing
    , parentFolderId = Core.Nothing
    , path = Core.Nothing
    , priority = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , type' = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON Client where
        parseJSON
          = Core.withObject "Client"
              (\ o ->
                 Client Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "clientId")
                     Core.<*> (o Core..:? "containerId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "parameter")
                     Core.<*> (o Core..:? "parentFolderId")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "priority")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON Client where
        toJSON Client{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("clientId" Core..=) Core.<$> clientId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("parameter" Core..=) Core.<$> parameter,
                  ("parentFolderId" Core..=) Core.<$> parentFolderId,
                  ("path" Core..=) Core.<$> path,
                  ("priority" Core..=) Core.<$> priority,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("type" Core..=) Core.<$> type',
                  ("workspaceId" Core..=) Core.<$> workspaceId])


-- | Represents a predicate.
--
-- /See:/ 'newCondition' smart constructor.
data Condition = Condition
    {
      -- | A list of named parameters (key\/value), depending on the condition\'s type. Notes: - For binary operators, include parameters named arg0 and arg1 for specifying the left and right operands, respectively. - At this time, the left operand (arg0) must be a reference to a variable. - For case-insensitive Regex matching, include a boolean parameter named ignore_case that is set to true. If not specified or set to any other value, the matching will be case sensitive. - To negate an operator, include a boolean parameter named negate boolean parameter that is set to true. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
      parameter :: (Core.Maybe [Parameter])
      -- | The type of operator for this condition. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , type' :: (Core.Maybe Condition_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
newCondition 
    ::  Condition
newCondition = Condition {parameter = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Condition where
        parseJSON
          = Core.withObject "Condition"
              (\ o ->
                 Condition Core.<$>
                   (o Core..:? "parameter") Core.<*>
                     (o Core..:? "type"))

instance Core.ToJSON Condition where
        toJSON Condition{..}
          = Core.object
              (Core.catMaybes
                 [("parameter" Core..=) Core.<$> parameter,
                  ("type" Core..=) Core.<$> type'])


-- | Represents a Google Tag Manager Container, which specifies the platform tags will run on, manages workspaces, and retains container versions.
--
-- /See:/ 'newContainer' smart constructor.
data Container = Container
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | The Container ID uniquely identifies the GTM Container.
    , containerId :: (Core.Maybe Core.Text)
      -- | List of domain names associated with the Container. \@mutable tagmanager.accounts.containers.create \@mutable tagmanager.accounts.containers.update
    , domainName :: (Core.Maybe [Core.Text])
      -- | Read-only Container feature set.
    , features :: (Core.Maybe ContainerFeatures)
      -- | The fingerprint of the GTM Container as computed at storage time. This value is recomputed whenever the account is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Container display name. \@mutable tagmanager.accounts.containers.create \@mutable tagmanager.accounts.containers.update
    , name :: (Core.Maybe Core.Text)
      -- | Container Notes. \@mutable tagmanager.accounts.containers.create \@mutable tagmanager.accounts.containers.update
    , notes :: (Core.Maybe Core.Text)
      -- | GTM Container\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Container Public ID.
    , publicId :: (Core.Maybe Core.Text)
      -- | All Tag IDs that refer to this Container.
    , tagIds :: (Core.Maybe [Core.Text])
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | List of server-side container URLs for the Container. If multiple URLs are provided, all URL paths must match. \@mutable tagmanager.accounts.containers.create \@mutable tagmanager.accounts.containers.update
    , taggingServerUrls :: (Core.Maybe [Core.Text])
      -- | List of Usage Contexts for the Container. Valid values include: web, android, or ios. \@mutable tagmanager.accounts.containers.create \@mutable tagmanager.accounts.containers.update
    , usageContext :: (Core.Maybe [Container_UsageContextItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Container' with the minimum fields required to make a request.
newContainer 
    ::  Container
newContainer =
  Container
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , domainName = Core.Nothing
    , features = Core.Nothing
    , fingerprint = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , path = Core.Nothing
    , publicId = Core.Nothing
    , tagIds = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , taggingServerUrls = Core.Nothing
    , usageContext = Core.Nothing
    }

instance Core.FromJSON Container where
        parseJSON
          = Core.withObject "Container"
              (\ o ->
                 Container Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "domainName")
                     Core.<*> (o Core..:? "features")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "publicId")
                     Core.<*> (o Core..:? "tagIds")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "taggingServerUrls")
                     Core.<*> (o Core..:? "usageContext"))

instance Core.ToJSON Container where
        toJSON Container{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("domainName" Core..=) Core.<$> domainName,
                  ("features" Core..=) Core.<$> features,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("path" Core..=) Core.<$> path,
                  ("publicId" Core..=) Core.<$> publicId,
                  ("tagIds" Core..=) Core.<$> tagIds,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("taggingServerUrls" Core..=) Core.<$>
                    taggingServerUrls,
                  ("usageContext" Core..=) Core.<$> usageContext])


-- | Defines the Google Tag Manager Container access permissions.
--
-- /See:/ 'newContainerAccess' smart constructor.
data ContainerAccess = ContainerAccess
    {
      -- | GTM Container ID. \@mutable tagmanager.accounts.permissions.create \@mutable tagmanager.accounts.permissions.update
      containerId :: (Core.Maybe Core.Text)
      -- | List of Container permissions. \@mutable tagmanager.accounts.permissions.create \@mutable tagmanager.accounts.permissions.update
    , permission :: (Core.Maybe ContainerAccess_Permission)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAccess' with the minimum fields required to make a request.
newContainerAccess 
    ::  ContainerAccess
newContainerAccess =
  ContainerAccess {containerId = Core.Nothing, permission = Core.Nothing}

instance Core.FromJSON ContainerAccess where
        parseJSON
          = Core.withObject "ContainerAccess"
              (\ o ->
                 ContainerAccess Core.<$>
                   (o Core..:? "containerId") Core.<*>
                     (o Core..:? "permission"))

instance Core.ToJSON ContainerAccess where
        toJSON ContainerAccess{..}
          = Core.object
              (Core.catMaybes
                 [("containerId" Core..=) Core.<$> containerId,
                  ("permission" Core..=) Core.<$> permission])


--
-- /See:/ 'newContainerFeatures' smart constructor.
data ContainerFeatures = ContainerFeatures
    {
      -- | Whether this Container supports built-in variables
      supportBuiltInVariables :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports clients.
    , supportClients :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports environments.
    , supportEnvironments :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports folders.
    , supportFolders :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports Google tag config.
    , supportGtagConfigs :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports tags.
    , supportTags :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports templates.
    , supportTemplates :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports transformations.
    , supportTransformations :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports triggers.
    , supportTriggers :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports user permissions managed by GTM.
    , supportUserPermissions :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports variables.
    , supportVariables :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports Container versions.
    , supportVersions :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports workspaces.
    , supportWorkspaces :: (Core.Maybe Core.Bool)
      -- | Whether this Container supports zones.
    , supportZones :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerFeatures' with the minimum fields required to make a request.
newContainerFeatures 
    ::  ContainerFeatures
newContainerFeatures =
  ContainerFeatures
    { supportBuiltInVariables = Core.Nothing
    , supportClients = Core.Nothing
    , supportEnvironments = Core.Nothing
    , supportFolders = Core.Nothing
    , supportGtagConfigs = Core.Nothing
    , supportTags = Core.Nothing
    , supportTemplates = Core.Nothing
    , supportTransformations = Core.Nothing
    , supportTriggers = Core.Nothing
    , supportUserPermissions = Core.Nothing
    , supportVariables = Core.Nothing
    , supportVersions = Core.Nothing
    , supportWorkspaces = Core.Nothing
    , supportZones = Core.Nothing
    }

instance Core.FromJSON ContainerFeatures where
        parseJSON
          = Core.withObject "ContainerFeatures"
              (\ o ->
                 ContainerFeatures Core.<$>
                   (o Core..:? "supportBuiltInVariables") Core.<*>
                     (o Core..:? "supportClients")
                     Core.<*> (o Core..:? "supportEnvironments")
                     Core.<*> (o Core..:? "supportFolders")
                     Core.<*> (o Core..:? "supportGtagConfigs")
                     Core.<*> (o Core..:? "supportTags")
                     Core.<*> (o Core..:? "supportTemplates")
                     Core.<*> (o Core..:? "supportTransformations")
                     Core.<*> (o Core..:? "supportTriggers")
                     Core.<*> (o Core..:? "supportUserPermissions")
                     Core.<*> (o Core..:? "supportVariables")
                     Core.<*> (o Core..:? "supportVersions")
                     Core.<*> (o Core..:? "supportWorkspaces")
                     Core.<*> (o Core..:? "supportZones"))

instance Core.ToJSON ContainerFeatures where
        toJSON ContainerFeatures{..}
          = Core.object
              (Core.catMaybes
                 [("supportBuiltInVariables" Core..=) Core.<$>
                    supportBuiltInVariables,
                  ("supportClients" Core..=) Core.<$> supportClients,
                  ("supportEnvironments" Core..=) Core.<$>
                    supportEnvironments,
                  ("supportFolders" Core..=) Core.<$> supportFolders,
                  ("supportGtagConfigs" Core..=) Core.<$>
                    supportGtagConfigs,
                  ("supportTags" Core..=) Core.<$> supportTags,
                  ("supportTemplates" Core..=) Core.<$>
                    supportTemplates,
                  ("supportTransformations" Core..=) Core.<$>
                    supportTransformations,
                  ("supportTriggers" Core..=) Core.<$> supportTriggers,
                  ("supportUserPermissions" Core..=) Core.<$>
                    supportUserPermissions,
                  ("supportVariables" Core..=) Core.<$>
                    supportVariables,
                  ("supportVersions" Core..=) Core.<$> supportVersions,
                  ("supportWorkspaces" Core..=) Core.<$>
                    supportWorkspaces,
                  ("supportZones" Core..=) Core.<$> supportZones])


-- | Represents a Google Tag Manager Container Version.
--
-- /See:/ 'newContainerVersion' smart constructor.
data ContainerVersion = ContainerVersion
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | The built-in variables in the container that this version was taken from.
    , builtInVariable :: (Core.Maybe [BuiltInVariable])
      -- | The clients in the container that this version was taken from.
    , client :: (Core.Maybe [Client])
      -- | The container that this version was taken from.
    , container :: (Core.Maybe Container)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The Container Version ID uniquely identifies the GTM Container Version.
    , containerVersionId :: (Core.Maybe Core.Text)
      -- | The custom templates in the container that this version was taken from.
    , customTemplate :: (Core.Maybe [CustomTemplate])
      -- | A value of true indicates this container version has been deleted.
    , deleted :: (Core.Maybe Core.Bool)
      -- | Container version description. \@mutable tagmanager.accounts.containers.versions.update
    , description :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM Container Version as computed at storage time. This value is recomputed whenever the container version is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | The folders in the container that this version was taken from.
    , folder :: (Core.Maybe [Folder])
      -- | The Google tag configs in the container that this version was taken from.
    , gtagConfig :: (Core.Maybe [GtagConfig])
      -- | Container version display name. \@mutable tagmanager.accounts.containers.versions.update
    , name :: (Core.Maybe Core.Text)
      -- | GTM Container Version\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | The tags in the container that this version was taken from.
    , tag :: (Core.Maybe [Tag])
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | The transformations in the container that this version was taken from.
    , transformation :: (Core.Maybe [Transformation])
      -- | The triggers in the container that this version was taken from.
    , trigger :: (Core.Maybe [Trigger])
      -- | The variables in the container that this version was taken from.
    , variable :: (Core.Maybe [Variable])
      -- | The zones in the container that this version was taken from.
    , zone :: (Core.Maybe [Zone])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerVersion' with the minimum fields required to make a request.
newContainerVersion 
    ::  ContainerVersion
newContainerVersion =
  ContainerVersion
    { accountId = Core.Nothing
    , builtInVariable = Core.Nothing
    , client = Core.Nothing
    , container = Core.Nothing
    , containerId = Core.Nothing
    , containerVersionId = Core.Nothing
    , customTemplate = Core.Nothing
    , deleted = Core.Nothing
    , description = Core.Nothing
    , fingerprint = Core.Nothing
    , folder = Core.Nothing
    , gtagConfig = Core.Nothing
    , name = Core.Nothing
    , path = Core.Nothing
    , tag = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , transformation = Core.Nothing
    , trigger = Core.Nothing
    , variable = Core.Nothing
    , zone = Core.Nothing
    }

instance Core.FromJSON ContainerVersion where
        parseJSON
          = Core.withObject "ContainerVersion"
              (\ o ->
                 ContainerVersion Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "builtInVariable")
                     Core.<*> (o Core..:? "client")
                     Core.<*> (o Core..:? "container")
                     Core.<*> (o Core..:? "containerId")
                     Core.<*> (o Core..:? "containerVersionId")
                     Core.<*> (o Core..:? "customTemplate")
                     Core.<*> (o Core..:? "deleted")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "folder")
                     Core.<*> (o Core..:? "gtagConfig")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tag")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "transformation")
                     Core.<*> (o Core..:? "trigger")
                     Core.<*> (o Core..:? "variable")
                     Core.<*> (o Core..:? "zone"))

instance Core.ToJSON ContainerVersion where
        toJSON ContainerVersion{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("builtInVariable" Core..=) Core.<$> builtInVariable,
                  ("client" Core..=) Core.<$> client,
                  ("container" Core..=) Core.<$> container,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("containerVersionId" Core..=) Core.<$>
                    containerVersionId,
                  ("customTemplate" Core..=) Core.<$> customTemplate,
                  ("deleted" Core..=) Core.<$> deleted,
                  ("description" Core..=) Core.<$> description,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("folder" Core..=) Core.<$> folder,
                  ("gtagConfig" Core..=) Core.<$> gtagConfig,
                  ("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path,
                  ("tag" Core..=) Core.<$> tag,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("transformation" Core..=) Core.<$> transformation,
                  ("trigger" Core..=) Core.<$> trigger,
                  ("variable" Core..=) Core.<$> variable,
                  ("zone" Core..=) Core.<$> zone])


-- | Represents a Google Tag Manager Container Version Header.
--
-- /See:/ 'newContainerVersionHeader' smart constructor.
data ContainerVersionHeader = ContainerVersionHeader
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The Container Version ID uniquely identifies the GTM Container Version.
    , containerVersionId :: (Core.Maybe Core.Text)
      -- | A value of true indicates this container version has been deleted.
    , deleted :: (Core.Maybe Core.Bool)
      -- | Container version display name.
    , name :: (Core.Maybe Core.Text)
      -- | Number of clients in the container version.
    , numClients :: (Core.Maybe Core.Text)
      -- | Number of custom templates in the container version.
    , numCustomTemplates :: (Core.Maybe Core.Text)
      -- | Number of Google tag configs in the container version.
    , numGtagConfigs :: (Core.Maybe Core.Text)
      -- | Number of macros in the container version.
    , numMacros :: (Core.Maybe Core.Text)
      -- | Number of rules in the container version.
    , numRules :: (Core.Maybe Core.Text)
      -- | Number of tags in the container version.
    , numTags :: (Core.Maybe Core.Text)
      -- | Number of transformations in the container version.
    , numTransformations :: (Core.Maybe Core.Text)
      -- | Number of triggers in the container version.
    , numTriggers :: (Core.Maybe Core.Text)
      -- | Number of variables in the container version.
    , numVariables :: (Core.Maybe Core.Text)
      -- | Number of zones in the container version.
    , numZones :: (Core.Maybe Core.Text)
      -- | GTM Container Version\'s API relative path.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerVersionHeader' with the minimum fields required to make a request.
newContainerVersionHeader 
    ::  ContainerVersionHeader
newContainerVersionHeader =
  ContainerVersionHeader
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , containerVersionId = Core.Nothing
    , deleted = Core.Nothing
    , name = Core.Nothing
    , numClients = Core.Nothing
    , numCustomTemplates = Core.Nothing
    , numGtagConfigs = Core.Nothing
    , numMacros = Core.Nothing
    , numRules = Core.Nothing
    , numTags = Core.Nothing
    , numTransformations = Core.Nothing
    , numTriggers = Core.Nothing
    , numVariables = Core.Nothing
    , numZones = Core.Nothing
    , path = Core.Nothing
    }

instance Core.FromJSON ContainerVersionHeader where
        parseJSON
          = Core.withObject "ContainerVersionHeader"
              (\ o ->
                 ContainerVersionHeader Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "containerVersionId")
                     Core.<*> (o Core..:? "deleted")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "numClients")
                     Core.<*> (o Core..:? "numCustomTemplates")
                     Core.<*> (o Core..:? "numGtagConfigs")
                     Core.<*> (o Core..:? "numMacros")
                     Core.<*> (o Core..:? "numRules")
                     Core.<*> (o Core..:? "numTags")
                     Core.<*> (o Core..:? "numTransformations")
                     Core.<*> (o Core..:? "numTriggers")
                     Core.<*> (o Core..:? "numVariables")
                     Core.<*> (o Core..:? "numZones")
                     Core.<*> (o Core..:? "path"))

instance Core.ToJSON ContainerVersionHeader where
        toJSON ContainerVersionHeader{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("containerVersionId" Core..=) Core.<$>
                    containerVersionId,
                  ("deleted" Core..=) Core.<$> deleted,
                  ("name" Core..=) Core.<$> name,
                  ("numClients" Core..=) Core.<$> numClients,
                  ("numCustomTemplates" Core..=) Core.<$>
                    numCustomTemplates,
                  ("numGtagConfigs" Core..=) Core.<$> numGtagConfigs,
                  ("numMacros" Core..=) Core.<$> numMacros,
                  ("numRules" Core..=) Core.<$> numRules,
                  ("numTags" Core..=) Core.<$> numTags,
                  ("numTransformations" Core..=) Core.<$>
                    numTransformations,
                  ("numTriggers" Core..=) Core.<$> numTriggers,
                  ("numVariables" Core..=) Core.<$> numVariables,
                  ("numZones" Core..=) Core.<$> numZones,
                  ("path" Core..=) Core.<$> path])


--
-- /See:/ 'newCreateBuiltInVariableResponse' smart constructor.
newtype CreateBuiltInVariableResponse = CreateBuiltInVariableResponse
    {
      -- | List of created built-in variables.
      builtInVariable :: (Core.Maybe [BuiltInVariable])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateBuiltInVariableResponse' with the minimum fields required to make a request.
newCreateBuiltInVariableResponse 
    ::  CreateBuiltInVariableResponse
newCreateBuiltInVariableResponse =
  CreateBuiltInVariableResponse {builtInVariable = Core.Nothing}

instance Core.FromJSON CreateBuiltInVariableResponse
         where
        parseJSON
          = Core.withObject "CreateBuiltInVariableResponse"
              (\ o ->
                 CreateBuiltInVariableResponse Core.<$>
                   (o Core..:? "builtInVariable"))

instance Core.ToJSON CreateBuiltInVariableResponse
         where
        toJSON CreateBuiltInVariableResponse{..}
          = Core.object
              (Core.catMaybes
                 [("builtInVariable" Core..=) Core.<$>
                    builtInVariable])


-- | Options for new container versions.
--
-- /See:/ 'newCreateContainerVersionRequestVersionOptions' smart constructor.
data CreateContainerVersionRequestVersionOptions = CreateContainerVersionRequestVersionOptions
    {
      -- | The name of the container version to be created.
      name :: (Core.Maybe Core.Text)
      -- | The notes of the container version to be created.
    , notes :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateContainerVersionRequestVersionOptions' with the minimum fields required to make a request.
newCreateContainerVersionRequestVersionOptions 
    ::  CreateContainerVersionRequestVersionOptions
newCreateContainerVersionRequestVersionOptions =
  CreateContainerVersionRequestVersionOptions
    {name = Core.Nothing, notes = Core.Nothing}

instance Core.FromJSON
           CreateContainerVersionRequestVersionOptions
         where
        parseJSON
          = Core.withObject
              "CreateContainerVersionRequestVersionOptions"
              (\ o ->
                 CreateContainerVersionRequestVersionOptions Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "notes"))

instance Core.ToJSON
           CreateContainerVersionRequestVersionOptions
         where
        toJSON
          CreateContainerVersionRequestVersionOptions{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes])


-- | Create container versions response.
--
-- /See:/ 'newCreateContainerVersionResponse' smart constructor.
data CreateContainerVersionResponse = CreateContainerVersionResponse
    {
      -- | Compiler errors or not.
      compilerError :: (Core.Maybe Core.Bool)
      -- | The container version created.
    , containerVersion :: (Core.Maybe ContainerVersion)
      -- | Auto generated workspace path created as a result of version creation. This field should only be populated if the created version was not a quick preview.
    , newWorkspacePath' :: (Core.Maybe Core.Text)
      -- | Whether version creation failed when syncing the workspace to the latest container version.
    , syncStatus :: (Core.Maybe SyncStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateContainerVersionResponse' with the minimum fields required to make a request.
newCreateContainerVersionResponse 
    ::  CreateContainerVersionResponse
newCreateContainerVersionResponse =
  CreateContainerVersionResponse
    { compilerError = Core.Nothing
    , containerVersion = Core.Nothing
    , newWorkspacePath' = Core.Nothing
    , syncStatus = Core.Nothing
    }

instance Core.FromJSON CreateContainerVersionResponse
         where
        parseJSON
          = Core.withObject "CreateContainerVersionResponse"
              (\ o ->
                 CreateContainerVersionResponse Core.<$>
                   (o Core..:? "compilerError") Core.<*>
                     (o Core..:? "containerVersion")
                     Core.<*> (o Core..:? "newWorkspacePath")
                     Core.<*> (o Core..:? "syncStatus"))

instance Core.ToJSON CreateContainerVersionResponse
         where
        toJSON CreateContainerVersionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("compilerError" Core..=) Core.<$> compilerError,
                  ("containerVersion" Core..=) Core.<$>
                    containerVersion,
                  ("newWorkspacePath" Core..=) Core.<$>
                    newWorkspacePath',
                  ("syncStatus" Core..=) Core.<$> syncStatus])


-- | Represents a Google Tag Manager Custom Template\'s contents.
--
-- /See:/ 'newCustomTemplate' smart constructor.
data CustomTemplate = CustomTemplate
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM Custom Template as computed at storage time. This value is recomputed whenever the template is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | A reference to the Community Template Gallery entry.
    , galleryReference :: (Core.Maybe GalleryReference)
      -- | Custom Template display name.
    , name :: (Core.Maybe Core.Text)
      -- | GTM Custom Template\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | The custom template in text format.
    , templateData :: (Core.Maybe Core.Text)
      -- | The Custom Template ID uniquely identifies the GTM custom template.
    , templateId :: (Core.Maybe Core.Text)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomTemplate' with the minimum fields required to make a request.
newCustomTemplate 
    ::  CustomTemplate
newCustomTemplate =
  CustomTemplate
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , fingerprint = Core.Nothing
    , galleryReference = Core.Nothing
    , name = Core.Nothing
    , path = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , templateData = Core.Nothing
    , templateId = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON CustomTemplate where
        parseJSON
          = Core.withObject "CustomTemplate"
              (\ o ->
                 CustomTemplate Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "galleryReference")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "templateData")
                     Core.<*> (o Core..:? "templateId")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON CustomTemplate where
        toJSON CustomTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("galleryReference" Core..=) Core.<$>
                    galleryReference,
                  ("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("templateData" Core..=) Core.<$> templateData,
                  ("templateId" Core..=) Core.<$> templateId,
                  ("workspaceId" Core..=) Core.<$> workspaceId])


-- | Represents a Google Tag Destination.
--
-- /See:/ 'newDestination' smart constructor.
data Destination = Destination
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | Destination ID.
    , destinationId :: (Core.Maybe Core.Text)
      -- | The Destination link ID uniquely identifies the Destination.
    , destinationLinkId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the Google Tag Destination as computed at storage time. This value is recomputed whenever the destination is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Destination display name.
    , name :: (Core.Maybe Core.Text)
      -- | Destination\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI.
    , tagManagerUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Destination' with the minimum fields required to make a request.
newDestination 
    ::  Destination
newDestination =
  Destination
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , destinationId = Core.Nothing
    , destinationLinkId = Core.Nothing
    , fingerprint = Core.Nothing
    , name = Core.Nothing
    , path = Core.Nothing
    , tagManagerUrl = Core.Nothing
    }

instance Core.FromJSON Destination where
        parseJSON
          = Core.withObject "Destination"
              (\ o ->
                 Destination Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "destinationId")
                     Core.<*> (o Core..:? "destinationLinkId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tagManagerUrl"))

instance Core.ToJSON Destination where
        toJSON Destination{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("destinationId" Core..=) Core.<$> destinationId,
                  ("destinationLinkId" Core..=) Core.<$>
                    destinationLinkId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl])


-- | A workspace entity that may represent a tag, trigger, variable, or folder in addition to its status in the workspace.
--
-- /See:/ 'newEntity' smart constructor.
data Entity = Entity
    {
      -- | The built in variable being represented by the entity.
      builtInVariable :: (Core.Maybe BuiltInVariable)
      -- | Represents how the entity has been changed in the workspace.
    , changeStatus :: (Core.Maybe Entity_ChangeStatus)
      -- | The client being represented by the entity.
    , client :: (Core.Maybe Client)
      -- | The custom template being represented by the entity.
    , customTemplate :: (Core.Maybe CustomTemplate)
      -- | The folder being represented by the entity.
    , folder :: (Core.Maybe Folder)
      -- | The gtag config being represented by the entity.
    , gtagConfig :: (Core.Maybe GtagConfig)
      -- | The tag being represented by the entity.
    , tag :: (Core.Maybe Tag)
      -- | The transformation being represented by the entity.
    , transformation :: (Core.Maybe Transformation)
      -- | The trigger being represented by the entity.
    , trigger :: (Core.Maybe Trigger)
      -- | The variable being represented by the entity.
    , variable :: (Core.Maybe Variable)
      -- | The zone being represented by the entity.
    , zone :: (Core.Maybe Zone)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
newEntity 
    ::  Entity
newEntity =
  Entity
    { builtInVariable = Core.Nothing
    , changeStatus = Core.Nothing
    , client = Core.Nothing
    , customTemplate = Core.Nothing
    , folder = Core.Nothing
    , gtagConfig = Core.Nothing
    , tag = Core.Nothing
    , transformation = Core.Nothing
    , trigger = Core.Nothing
    , variable = Core.Nothing
    , zone = Core.Nothing
    }

instance Core.FromJSON Entity where
        parseJSON
          = Core.withObject "Entity"
              (\ o ->
                 Entity Core.<$>
                   (o Core..:? "builtInVariable") Core.<*>
                     (o Core..:? "changeStatus")
                     Core.<*> (o Core..:? "client")
                     Core.<*> (o Core..:? "customTemplate")
                     Core.<*> (o Core..:? "folder")
                     Core.<*> (o Core..:? "gtagConfig")
                     Core.<*> (o Core..:? "tag")
                     Core.<*> (o Core..:? "transformation")
                     Core.<*> (o Core..:? "trigger")
                     Core.<*> (o Core..:? "variable")
                     Core.<*> (o Core..:? "zone"))

instance Core.ToJSON Entity where
        toJSON Entity{..}
          = Core.object
              (Core.catMaybes
                 [("builtInVariable" Core..=) Core.<$>
                    builtInVariable,
                  ("changeStatus" Core..=) Core.<$> changeStatus,
                  ("client" Core..=) Core.<$> client,
                  ("customTemplate" Core..=) Core.<$> customTemplate,
                  ("folder" Core..=) Core.<$> folder,
                  ("gtagConfig" Core..=) Core.<$> gtagConfig,
                  ("tag" Core..=) Core.<$> tag,
                  ("transformation" Core..=) Core.<$> transformation,
                  ("trigger" Core..=) Core.<$> trigger,
                  ("variable" Core..=) Core.<$> variable,
                  ("zone" Core..=) Core.<$> zone])


-- | Represents a Google Tag Manager Environment. Note that a user can create, delete and update environments of type USER, but can only update the enable_debug and url fields of environments of other types.
--
-- /See:/ 'newEnvironment' smart constructor.
data Environment = Environment
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | The environment authorization code.
    , authorizationCode :: (Core.Maybe Core.Text)
      -- | The last update time-stamp for the authorization code.
    , authorizationTimestamp :: (Core.Maybe Core.DateTime)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | Represents a link to a container version.
    , containerVersionId :: (Core.Maybe Core.Text)
      -- | The environment description. Can be set or changed only on USER type environments. \@mutable tagmanager.accounts.containers.environments.create \@mutable tagmanager.accounts.containers.environments.update
    , description :: (Core.Maybe Core.Text)
      -- | Whether or not to enable debug by default for the environment. \@mutable tagmanager.accounts.containers.environments.create \@mutable tagmanager.accounts.containers.environments.update
    , enableDebug :: (Core.Maybe Core.Bool)
      -- | GTM Environment ID uniquely identifies the GTM Environment.
    , environmentId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM environment as computed at storage time. This value is recomputed whenever the environment is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | The environment display name. Can be set or changed only on USER type environments. \@mutable tagmanager.accounts.containers.environments.create \@mutable tagmanager.accounts.containers.environments.update
    , name :: (Core.Maybe Core.Text)
      -- | GTM Environment\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | The type of this environment.
    , type' :: (Core.Maybe Environment_Type)
      -- | Default preview page url for the environment. \@mutable tagmanager.accounts.containers.environments.create \@mutable tagmanager.accounts.containers.environments.update
    , url :: (Core.Maybe Core.Text)
      -- | Represents a link to a quick preview of a workspace.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
newEnvironment 
    ::  Environment
newEnvironment =
  Environment
    { accountId = Core.Nothing
    , authorizationCode = Core.Nothing
    , authorizationTimestamp = Core.Nothing
    , containerId = Core.Nothing
    , containerVersionId = Core.Nothing
    , description = Core.Nothing
    , enableDebug = Core.Nothing
    , environmentId = Core.Nothing
    , fingerprint = Core.Nothing
    , name = Core.Nothing
    , path = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , type' = Core.Nothing
    , url = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON Environment where
        parseJSON
          = Core.withObject "Environment"
              (\ o ->
                 Environment Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "authorizationCode")
                     Core.<*> (o Core..:? "authorizationTimestamp")
                     Core.<*> (o Core..:? "containerId")
                     Core.<*> (o Core..:? "containerVersionId")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "enableDebug")
                     Core.<*> (o Core..:? "environmentId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON Environment where
        toJSON Environment{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("authorizationCode" Core..=) Core.<$>
                    authorizationCode,
                  ("authorizationTimestamp" Core..=) Core.<$>
                    authorizationTimestamp,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("containerVersionId" Core..=) Core.<$>
                    containerVersionId,
                  ("description" Core..=) Core.<$> description,
                  ("enableDebug" Core..=) Core.<$> enableDebug,
                  ("environmentId" Core..=) Core.<$> environmentId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("type" Core..=) Core.<$> type',
                  ("url" Core..=) Core.<$> url,
                  ("workspaceId" Core..=) Core.<$> workspaceId])


-- | Represents a Google Tag Manager Folder.
--
-- /See:/ 'newFolder' smart constructor.
data Folder = Folder
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM Folder as computed at storage time. This value is recomputed whenever the folder is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | The Folder ID uniquely identifies the GTM Folder.
    , folderId :: (Core.Maybe Core.Text)
      -- | Folder display name. \@mutable tagmanager.accounts.containers.workspaces.folders.create \@mutable tagmanager.accounts.containers.workspaces.folders.update
    , name :: (Core.Maybe Core.Text)
      -- | User notes on how to apply this folder in the container. \@mutable tagmanager.accounts.containers.workspaces.folders.create \@mutable tagmanager.accounts.containers.workspaces.folders.update
    , notes :: (Core.Maybe Core.Text)
      -- | GTM Folder\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Folder' with the minimum fields required to make a request.
newFolder 
    ::  Folder
newFolder =
  Folder
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , fingerprint = Core.Nothing
    , folderId = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , path = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON Folder where
        parseJSON
          = Core.withObject "Folder"
              (\ o ->
                 Folder Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "folderId")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON Folder where
        toJSON Folder{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("folderId" Core..=) Core.<$> folderId,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("path" Core..=) Core.<$> path,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("workspaceId" Core..=) Core.<$> workspaceId])


-- | Represents a Google Tag Manager Folder\'s contents.
--
-- /See:/ 'newFolderEntities' smart constructor.
data FolderEntities = FolderEntities
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of tags inside the folder.
    , tag :: (Core.Maybe [Tag])
      -- | The list of triggers inside the folder.
    , trigger :: (Core.Maybe [Trigger])
      -- | The list of variables inside the folder.
    , variable :: (Core.Maybe [Variable])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FolderEntities' with the minimum fields required to make a request.
newFolderEntities 
    ::  FolderEntities
newFolderEntities =
  FolderEntities
    { nextPageToken = Core.Nothing
    , tag = Core.Nothing
    , trigger = Core.Nothing
    , variable = Core.Nothing
    }

instance Core.FromJSON FolderEntities where
        parseJSON
          = Core.withObject "FolderEntities"
              (\ o ->
                 FolderEntities Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "tag")
                     Core.<*> (o Core..:? "trigger")
                     Core.<*> (o Core..:? "variable"))

instance Core.ToJSON FolderEntities where
        toJSON FolderEntities{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("tag" Core..=) Core.<$> tag,
                  ("trigger" Core..=) Core.<$> trigger,
                  ("variable" Core..=) Core.<$> variable])


-- | Represents the link between a custom template and an entry on the Community Template Gallery site.
--
-- /See:/ 'newGalleryReference' smart constructor.
data GalleryReference = GalleryReference
    {
      -- | The name of the host for the community gallery template.
      host :: (Core.Maybe Core.Text)
      -- | If a user has manually edited the community gallery template.
    , isModified :: (Core.Maybe Core.Bool)
      -- | The name of the owner for the community gallery template.
    , owner :: (Core.Maybe Core.Text)
      -- | The name of the repository for the community gallery template.
    , repository :: (Core.Maybe Core.Text)
      -- | The signature of the community gallery template as computed at import time. This value is recomputed whenever the template is updated from the gallery.
    , signature :: (Core.Maybe Core.Text)
      -- | The developer id of the community gallery template. This value is set whenever the template is created from the gallery.
    , templateDeveloperId :: (Core.Maybe Core.Text)
      -- | The version of the community gallery template.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GalleryReference' with the minimum fields required to make a request.
newGalleryReference 
    ::  GalleryReference
newGalleryReference =
  GalleryReference
    { host = Core.Nothing
    , isModified = Core.Nothing
    , owner = Core.Nothing
    , repository = Core.Nothing
    , signature = Core.Nothing
    , templateDeveloperId = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON GalleryReference where
        parseJSON
          = Core.withObject "GalleryReference"
              (\ o ->
                 GalleryReference Core.<$>
                   (o Core..:? "host") Core.<*>
                     (o Core..:? "isModified")
                     Core.<*> (o Core..:? "owner")
                     Core.<*> (o Core..:? "repository")
                     Core.<*> (o Core..:? "signature")
                     Core.<*> (o Core..:? "templateDeveloperId")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON GalleryReference where
        toJSON GalleryReference{..}
          = Core.object
              (Core.catMaybes
                 [("host" Core..=) Core.<$> host,
                  ("isModified" Core..=) Core.<$> isModified,
                  ("owner" Core..=) Core.<$> owner,
                  ("repository" Core..=) Core.<$> repository,
                  ("signature" Core..=) Core.<$> signature,
                  ("templateDeveloperId" Core..=) Core.<$>
                    templateDeveloperId,
                  ("version" Core..=) Core.<$> version])


--
-- /See:/ 'newGetContainerSnippetResponse' smart constructor.
newtype GetContainerSnippetResponse = GetContainerSnippetResponse
    {
      -- | Tagging snippet for a Container.
      snippet :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetContainerSnippetResponse' with the minimum fields required to make a request.
newGetContainerSnippetResponse 
    ::  GetContainerSnippetResponse
newGetContainerSnippetResponse =
  GetContainerSnippetResponse {snippet = Core.Nothing}

instance Core.FromJSON GetContainerSnippetResponse
         where
        parseJSON
          = Core.withObject "GetContainerSnippetResponse"
              (\ o ->
                 GetContainerSnippetResponse Core.<$>
                   (o Core..:? "snippet"))

instance Core.ToJSON GetContainerSnippetResponse
         where
        toJSON GetContainerSnippetResponse{..}
          = Core.object
              (Core.catMaybes
                 [("snippet" Core..=) Core.<$> snippet])


-- | The changes that have occurred in the workspace since the base container version.
--
-- /See:/ 'newGetWorkspaceStatusResponse' smart constructor.
data GetWorkspaceStatusResponse = GetWorkspaceStatusResponse
    {
      -- | The merge conflict after sync.
      mergeConflict :: (Core.Maybe [MergeConflict])
      -- | Entities that have been changed in the workspace.
    , workspaceChange :: (Core.Maybe [Entity])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetWorkspaceStatusResponse' with the minimum fields required to make a request.
newGetWorkspaceStatusResponse 
    ::  GetWorkspaceStatusResponse
newGetWorkspaceStatusResponse =
  GetWorkspaceStatusResponse
    {mergeConflict = Core.Nothing, workspaceChange = Core.Nothing}

instance Core.FromJSON GetWorkspaceStatusResponse
         where
        parseJSON
          = Core.withObject "GetWorkspaceStatusResponse"
              (\ o ->
                 GetWorkspaceStatusResponse Core.<$>
                   (o Core..:? "mergeConflict") Core.<*>
                     (o Core..:? "workspaceChange"))

instance Core.ToJSON GetWorkspaceStatusResponse where
        toJSON GetWorkspaceStatusResponse{..}
          = Core.object
              (Core.catMaybes
                 [("mergeConflict" Core..=) Core.<$> mergeConflict,
                  ("workspaceChange" Core..=) Core.<$>
                    workspaceChange])


-- | Represents a Google tag configuration.
--
-- /See:/ 'newGtagConfig' smart constructor.
data GtagConfig = GtagConfig
    {
      -- | Google tag account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | Google tag container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the Google tag config as computed at storage time. This value is recomputed whenever the config is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | The ID uniquely identifies the Google tag config.
    , gtagConfigId :: (Core.Maybe Core.Text)
      -- | The Google tag config\'s parameters. \@mutable tagmanager.accounts.containers.workspaces.gtag/config.create \@mutable tagmanager.accounts.containers.workspaces.gtag/config.update
    , parameter :: (Core.Maybe [Parameter])
      -- | Google tag config\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | Google tag config type. \@required tagmanager.accounts.containers.workspaces.gtag/config.create \@required tagmanager.accounts.containers.workspaces.gtag/config.update \@mutable tagmanager.accounts.containers.workspaces.gtag/config.create \@mutable tagmanager.accounts.containers.workspaces.gtag/config.update
    , type' :: (Core.Maybe Core.Text)
      -- | Google tag workspace ID. Only used by GTM containers. Set to 0 otherwise.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GtagConfig' with the minimum fields required to make a request.
newGtagConfig 
    ::  GtagConfig
newGtagConfig =
  GtagConfig
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , fingerprint = Core.Nothing
    , gtagConfigId = Core.Nothing
    , parameter = Core.Nothing
    , path = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , type' = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON GtagConfig where
        parseJSON
          = Core.withObject "GtagConfig"
              (\ o ->
                 GtagConfig Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "gtagConfigId")
                     Core.<*> (o Core..:? "parameter")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON GtagConfig where
        toJSON GtagConfig{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("gtagConfigId" Core..=) Core.<$> gtagConfigId,
                  ("parameter" Core..=) Core.<$> parameter,
                  ("path" Core..=) Core.<$> path,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("type" Core..=) Core.<$> type',
                  ("workspaceId" Core..=) Core.<$> workspaceId])


-- | List Accounts Response.
--
-- /See:/ 'newListAccountsResponse' smart constructor.
data ListAccountsResponse = ListAccountsResponse
    {
      -- | List of GTM Accounts that a user has access to.
      account :: (Core.Maybe [Account])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccountsResponse' with the minimum fields required to make a request.
newListAccountsResponse 
    ::  ListAccountsResponse
newListAccountsResponse =
  ListAccountsResponse {account = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAccountsResponse where
        parseJSON
          = Core.withObject "ListAccountsResponse"
              (\ o ->
                 ListAccountsResponse Core.<$>
                   (o Core..:? "account") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAccountsResponse where
        toJSON ListAccountsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("account" Core..=) Core.<$> account,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


--
-- /See:/ 'newListClientsResponse' smart constructor.
data ListClientsResponse = ListClientsResponse
    {
      -- | All GTM Clients of a GTM Container.
      client :: (Core.Maybe [Client])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClientsResponse' with the minimum fields required to make a request.
newListClientsResponse 
    ::  ListClientsResponse
newListClientsResponse =
  ListClientsResponse {client = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListClientsResponse where
        parseJSON
          = Core.withObject "ListClientsResponse"
              (\ o ->
                 ListClientsResponse Core.<$>
                   (o Core..:? "client") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListClientsResponse where
        toJSON ListClientsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("client" Core..=) Core.<$> client,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | List container versions response.
--
-- /See:/ 'newListContainerVersionsResponse' smart constructor.
data ListContainerVersionsResponse = ListContainerVersionsResponse
    {
      -- | All container version headers of a GTM Container.
      containerVersionHeader :: (Core.Maybe [ContainerVersionHeader])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListContainerVersionsResponse' with the minimum fields required to make a request.
newListContainerVersionsResponse 
    ::  ListContainerVersionsResponse
newListContainerVersionsResponse =
  ListContainerVersionsResponse
    {containerVersionHeader = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListContainerVersionsResponse
         where
        parseJSON
          = Core.withObject "ListContainerVersionsResponse"
              (\ o ->
                 ListContainerVersionsResponse Core.<$>
                   (o Core..:? "containerVersionHeader") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListContainerVersionsResponse
         where
        toJSON ListContainerVersionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("containerVersionHeader" Core..=) Core.<$>
                    containerVersionHeader,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | List Containers Response.
--
-- /See:/ 'newListContainersResponse' smart constructor.
data ListContainersResponse = ListContainersResponse
    {
      -- | All Containers of a GTM Account.
      container :: (Core.Maybe [Container])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListContainersResponse' with the minimum fields required to make a request.
newListContainersResponse 
    ::  ListContainersResponse
newListContainersResponse =
  ListContainersResponse
    {container = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListContainersResponse where
        parseJSON
          = Core.withObject "ListContainersResponse"
              (\ o ->
                 ListContainersResponse Core.<$>
                   (o Core..:? "container") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListContainersResponse where
        toJSON ListContainersResponse{..}
          = Core.object
              (Core.catMaybes
                 [("container" Core..=) Core.<$> container,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


--
-- /See:/ 'newListDestinationsResponse' smart constructor.
data ListDestinationsResponse = ListDestinationsResponse
    {
      -- | All Destinations linked to a GTM Container.
      destination :: (Core.Maybe [Destination])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDestinationsResponse' with the minimum fields required to make a request.
newListDestinationsResponse 
    ::  ListDestinationsResponse
newListDestinationsResponse =
  ListDestinationsResponse
    {destination = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListDestinationsResponse where
        parseJSON
          = Core.withObject "ListDestinationsResponse"
              (\ o ->
                 ListDestinationsResponse Core.<$>
                   (o Core..:? "destination") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListDestinationsResponse where
        toJSON ListDestinationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("destination" Core..=) Core.<$> destination,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A list of enabled built-in variables.
--
-- /See:/ 'newListEnabledBuiltInVariablesResponse' smart constructor.
data ListEnabledBuiltInVariablesResponse = ListEnabledBuiltInVariablesResponse
    {
      -- | All GTM BuiltInVariables of a GTM container.
      builtInVariable :: (Core.Maybe [BuiltInVariable])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListEnabledBuiltInVariablesResponse' with the minimum fields required to make a request.
newListEnabledBuiltInVariablesResponse 
    ::  ListEnabledBuiltInVariablesResponse
newListEnabledBuiltInVariablesResponse =
  ListEnabledBuiltInVariablesResponse
    {builtInVariable = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           ListEnabledBuiltInVariablesResponse
         where
        parseJSON
          = Core.withObject
              "ListEnabledBuiltInVariablesResponse"
              (\ o ->
                 ListEnabledBuiltInVariablesResponse Core.<$>
                   (o Core..:? "builtInVariable") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           ListEnabledBuiltInVariablesResponse
         where
        toJSON ListEnabledBuiltInVariablesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("builtInVariable" Core..=) Core.<$>
                    builtInVariable,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | List Environments Response.
--
-- /See:/ 'newListEnvironmentsResponse' smart constructor.
data ListEnvironmentsResponse = ListEnvironmentsResponse
    {
      -- | All Environments of a GTM Container.
      environment :: (Core.Maybe [Environment])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListEnvironmentsResponse' with the minimum fields required to make a request.
newListEnvironmentsResponse 
    ::  ListEnvironmentsResponse
newListEnvironmentsResponse =
  ListEnvironmentsResponse
    {environment = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListEnvironmentsResponse where
        parseJSON
          = Core.withObject "ListEnvironmentsResponse"
              (\ o ->
                 ListEnvironmentsResponse Core.<$>
                   (o Core..:? "environment") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListEnvironmentsResponse where
        toJSON ListEnvironmentsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("environment" Core..=) Core.<$> environment,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | List Folders Response.
--
-- /See:/ 'newListFoldersResponse' smart constructor.
data ListFoldersResponse = ListFoldersResponse
    {
      -- | All GTM Folders of a GTM Container.
      folder :: (Core.Maybe [Folder])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFoldersResponse' with the minimum fields required to make a request.
newListFoldersResponse 
    ::  ListFoldersResponse
newListFoldersResponse =
  ListFoldersResponse {folder = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListFoldersResponse where
        parseJSON
          = Core.withObject "ListFoldersResponse"
              (\ o ->
                 ListFoldersResponse Core.<$>
                   (o Core..:? "folder") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListFoldersResponse where
        toJSON ListFoldersResponse{..}
          = Core.object
              (Core.catMaybes
                 [("folder" Core..=) Core.<$> folder,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


--
-- /See:/ 'newListGtagConfigResponse' smart constructor.
data ListGtagConfigResponse = ListGtagConfigResponse
    {
      -- | All Google tag configs in a Container.
      gtagConfig :: (Core.Maybe [GtagConfig])
      -- | Continuation token for fetching the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGtagConfigResponse' with the minimum fields required to make a request.
newListGtagConfigResponse 
    ::  ListGtagConfigResponse
newListGtagConfigResponse =
  ListGtagConfigResponse
    {gtagConfig = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListGtagConfigResponse where
        parseJSON
          = Core.withObject "ListGtagConfigResponse"
              (\ o ->
                 ListGtagConfigResponse Core.<$>
                   (o Core..:? "gtagConfig") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListGtagConfigResponse where
        toJSON ListGtagConfigResponse{..}
          = Core.object
              (Core.catMaybes
                 [("gtagConfig" Core..=) Core.<$> gtagConfig,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | List Tags Response.
--
-- /See:/ 'newListTagsResponse' smart constructor.
data ListTagsResponse = ListTagsResponse
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | All GTM Tags of a GTM Container.
    , tag :: (Core.Maybe [Tag])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTagsResponse' with the minimum fields required to make a request.
newListTagsResponse 
    ::  ListTagsResponse
newListTagsResponse =
  ListTagsResponse {nextPageToken = Core.Nothing, tag = Core.Nothing}

instance Core.FromJSON ListTagsResponse where
        parseJSON
          = Core.withObject "ListTagsResponse"
              (\ o ->
                 ListTagsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "tag"))

instance Core.ToJSON ListTagsResponse where
        toJSON ListTagsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("tag" Core..=) Core.<$> tag])


--
-- /See:/ 'newListTemplatesResponse' smart constructor.
data ListTemplatesResponse = ListTemplatesResponse
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | All GTM Custom Templates of a GTM Container.
    , template :: (Core.Maybe [CustomTemplate])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTemplatesResponse' with the minimum fields required to make a request.
newListTemplatesResponse 
    ::  ListTemplatesResponse
newListTemplatesResponse =
  ListTemplatesResponse {nextPageToken = Core.Nothing, template = Core.Nothing}

instance Core.FromJSON ListTemplatesResponse where
        parseJSON
          = Core.withObject "ListTemplatesResponse"
              (\ o ->
                 ListTemplatesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "template"))

instance Core.ToJSON ListTemplatesResponse where
        toJSON ListTemplatesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("template" Core..=) Core.<$> template])


--
-- /See:/ 'newListTransformationsResponse' smart constructor.
data ListTransformationsResponse = ListTransformationsResponse
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | All GTM Transformations of a GTM Container.
    , transformation :: (Core.Maybe [Transformation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTransformationsResponse' with the minimum fields required to make a request.
newListTransformationsResponse 
    ::  ListTransformationsResponse
newListTransformationsResponse =
  ListTransformationsResponse
    {nextPageToken = Core.Nothing, transformation = Core.Nothing}

instance Core.FromJSON ListTransformationsResponse
         where
        parseJSON
          = Core.withObject "ListTransformationsResponse"
              (\ o ->
                 ListTransformationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "transformation"))

instance Core.ToJSON ListTransformationsResponse
         where
        toJSON ListTransformationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("transformation" Core..=) Core.<$> transformation])


-- | List triggers response.
--
-- /See:/ 'newListTriggersResponse' smart constructor.
data ListTriggersResponse = ListTriggersResponse
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | All GTM Triggers of a GTM Container.
    , trigger :: (Core.Maybe [Trigger])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTriggersResponse' with the minimum fields required to make a request.
newListTriggersResponse 
    ::  ListTriggersResponse
newListTriggersResponse =
  ListTriggersResponse {nextPageToken = Core.Nothing, trigger = Core.Nothing}

instance Core.FromJSON ListTriggersResponse where
        parseJSON
          = Core.withObject "ListTriggersResponse"
              (\ o ->
                 ListTriggersResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "trigger"))

instance Core.ToJSON ListTriggersResponse where
        toJSON ListTriggersResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("trigger" Core..=) Core.<$> trigger])


-- | List user permissions response.
--
-- /See:/ 'newListUserPermissionsResponse' smart constructor.
data ListUserPermissionsResponse = ListUserPermissionsResponse
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | All GTM UserPermissions of a GTM Account.
    , userPermission :: (Core.Maybe [UserPermission])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUserPermissionsResponse' with the minimum fields required to make a request.
newListUserPermissionsResponse 
    ::  ListUserPermissionsResponse
newListUserPermissionsResponse =
  ListUserPermissionsResponse
    {nextPageToken = Core.Nothing, userPermission = Core.Nothing}

instance Core.FromJSON ListUserPermissionsResponse
         where
        parseJSON
          = Core.withObject "ListUserPermissionsResponse"
              (\ o ->
                 ListUserPermissionsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "userPermission"))

instance Core.ToJSON ListUserPermissionsResponse
         where
        toJSON ListUserPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("userPermission" Core..=) Core.<$> userPermission])


-- | List Variables Response.
--
-- /See:/ 'newListVariablesResponse' smart constructor.
data ListVariablesResponse = ListVariablesResponse
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | All GTM Variables of a GTM Container.
    , variable :: (Core.Maybe [Variable])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListVariablesResponse' with the minimum fields required to make a request.
newListVariablesResponse 
    ::  ListVariablesResponse
newListVariablesResponse =
  ListVariablesResponse {nextPageToken = Core.Nothing, variable = Core.Nothing}

instance Core.FromJSON ListVariablesResponse where
        parseJSON
          = Core.withObject "ListVariablesResponse"
              (\ o ->
                 ListVariablesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "variable"))

instance Core.ToJSON ListVariablesResponse where
        toJSON ListVariablesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("variable" Core..=) Core.<$> variable])


-- | A list of workspaces in a container.
--
-- /See:/ 'newListWorkspacesResponse' smart constructor.
data ListWorkspacesResponse = ListWorkspacesResponse
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | All Workspaces of a GTM Container.
    , workspace :: (Core.Maybe [Workspace])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListWorkspacesResponse' with the minimum fields required to make a request.
newListWorkspacesResponse 
    ::  ListWorkspacesResponse
newListWorkspacesResponse =
  ListWorkspacesResponse
    {nextPageToken = Core.Nothing, workspace = Core.Nothing}

instance Core.FromJSON ListWorkspacesResponse where
        parseJSON
          = Core.withObject "ListWorkspacesResponse"
              (\ o ->
                 ListWorkspacesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "workspace"))

instance Core.ToJSON ListWorkspacesResponse where
        toJSON ListWorkspacesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("workspace" Core..=) Core.<$> workspace])


--
-- /See:/ 'newListZonesResponse' smart constructor.
data ListZonesResponse = ListZonesResponse
    {
      -- | Continuation token for fetching the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | All GTM Zones of a GTM Container.
    , zone :: (Core.Maybe [Zone])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListZonesResponse' with the minimum fields required to make a request.
newListZonesResponse 
    ::  ListZonesResponse
newListZonesResponse =
  ListZonesResponse {nextPageToken = Core.Nothing, zone = Core.Nothing}

instance Core.FromJSON ListZonesResponse where
        parseJSON
          = Core.withObject "ListZonesResponse"
              (\ o ->
                 ListZonesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "zone"))

instance Core.ToJSON ListZonesResponse where
        toJSON ListZonesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("zone" Core..=) Core.<$> zone])


-- | Represents a merge conflict.
--
-- /See:/ 'newMergeConflict' smart constructor.
data MergeConflict = MergeConflict
    {
      -- | The base version entity (since the latest sync operation) that has conflicting changes compared to the workspace. If this field is missing, it means the workspace entity is deleted from the base version.
      entityInBaseVersion :: (Core.Maybe Entity)
      -- | The workspace entity that has conflicting changes compared to the base version. If an entity is deleted in a workspace, it will still appear with a deleted change status.
    , entityInWorkspace :: (Core.Maybe Entity)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MergeConflict' with the minimum fields required to make a request.
newMergeConflict 
    ::  MergeConflict
newMergeConflict =
  MergeConflict
    {entityInBaseVersion = Core.Nothing, entityInWorkspace = Core.Nothing}

instance Core.FromJSON MergeConflict where
        parseJSON
          = Core.withObject "MergeConflict"
              (\ o ->
                 MergeConflict Core.<$>
                   (o Core..:? "entityInBaseVersion") Core.<*>
                     (o Core..:? "entityInWorkspace"))

instance Core.ToJSON MergeConflict where
        toJSON MergeConflict{..}
          = Core.object
              (Core.catMaybes
                 [("entityInBaseVersion" Core..=) Core.<$>
                    entityInBaseVersion,
                  ("entityInWorkspace" Core..=) Core.<$>
                    entityInWorkspace])


-- | Represents a Google Tag Manager Parameter.
--
-- /See:/ 'newParameter' smart constructor.
data Parameter = Parameter
    {
      -- | Whether or not a reference type parameter is strongly or weakly referenced. Only used by Transformations. \@mutable tagmanager.accounts.containers.workspaces.transformations.create \@mutable tagmanager.accounts.containers.workspaces.transformations.update
      isWeakReference :: (Core.Maybe Core.Bool)
      -- | The named key that uniquely identifies a parameter. Required for top-level parameters, as well as map values. Ignored for list values. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , key :: (Core.Maybe Core.Text)
      -- | This list parameter\'s parameters (keys will be ignored). \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , list :: (Core.Maybe [Parameter])
      -- | This map parameter\'s parameters (must have keys; keys must be unique). \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , map :: (Core.Maybe [Parameter])
      -- | The parameter type. Valid values are: - boolean: The value represents a boolean, represented as \'true\' or \'false\' - integer: The value represents a 64-bit signed integer value, in base 10 - list: A list of parameters should be specified - map: A map of parameters should be specified - template: The value represents any text; this can include variable references (even variable references that might return non-string types) - trigger/reference: The value represents a trigger, represented as the trigger id - tag/reference: The value represents a tag, represented as the tag name \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , type' :: (Core.Maybe Parameter_Type)
      -- | A parameter\'s value (may contain variable references such as \"{{myVariable}}\") as appropriate to the specified type. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
newParameter 
    ::  Parameter
newParameter =
  Parameter
    { isWeakReference = Core.Nothing
    , key = Core.Nothing
    , list = Core.Nothing
    , map = Core.Nothing
    , type' = Core.Nothing
    , value = Core.Nothing
    }

instance Core.FromJSON Parameter where
        parseJSON
          = Core.withObject "Parameter"
              (\ o ->
                 Parameter Core.<$>
                   (o Core..:? "isWeakReference") Core.<*>
                     (o Core..:? "key")
                     Core.<*> (o Core..:? "list")
                     Core.<*> (o Core..:? "map")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON Parameter where
        toJSON Parameter{..}
          = Core.object
              (Core.catMaybes
                 [("isWeakReference" Core..=) Core.<$>
                    isWeakReference,
                  ("key" Core..=) Core.<$> key,
                  ("list" Core..=) Core.<$> list,
                  ("map" Core..=) Core.<$> map,
                  ("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


-- | Publish container version response.
--
-- /See:/ 'newPublishContainerVersionResponse' smart constructor.
data PublishContainerVersionResponse = PublishContainerVersionResponse
    {
      -- | Compiler errors or not.
      compilerError :: (Core.Maybe Core.Bool)
      -- | The container version created.
    , containerVersion :: (Core.Maybe ContainerVersion)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublishContainerVersionResponse' with the minimum fields required to make a request.
newPublishContainerVersionResponse 
    ::  PublishContainerVersionResponse
newPublishContainerVersionResponse =
  PublishContainerVersionResponse
    {compilerError = Core.Nothing, containerVersion = Core.Nothing}

instance Core.FromJSON
           PublishContainerVersionResponse
         where
        parseJSON
          = Core.withObject "PublishContainerVersionResponse"
              (\ o ->
                 PublishContainerVersionResponse Core.<$>
                   (o Core..:? "compilerError") Core.<*>
                     (o Core..:? "containerVersion"))

instance Core.ToJSON PublishContainerVersionResponse
         where
        toJSON PublishContainerVersionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("compilerError" Core..=) Core.<$> compilerError,
                  ("containerVersion" Core..=) Core.<$>
                    containerVersion])


-- | Response to quick previewing a workspace.
--
-- /See:/ 'newQuickPreviewResponse' smart constructor.
data QuickPreviewResponse = QuickPreviewResponse
    {
      -- | Were there compiler errors or not.
      compilerError :: (Core.Maybe Core.Bool)
      -- | The quick previewed container version.
    , containerVersion :: (Core.Maybe ContainerVersion)
      -- | Whether quick previewing failed when syncing the workspace to the latest container version.
    , syncStatus :: (Core.Maybe SyncStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QuickPreviewResponse' with the minimum fields required to make a request.
newQuickPreviewResponse 
    ::  QuickPreviewResponse
newQuickPreviewResponse =
  QuickPreviewResponse
    { compilerError = Core.Nothing
    , containerVersion = Core.Nothing
    , syncStatus = Core.Nothing
    }

instance Core.FromJSON QuickPreviewResponse where
        parseJSON
          = Core.withObject "QuickPreviewResponse"
              (\ o ->
                 QuickPreviewResponse Core.<$>
                   (o Core..:? "compilerError") Core.<*>
                     (o Core..:? "containerVersion")
                     Core.<*> (o Core..:? "syncStatus"))

instance Core.ToJSON QuickPreviewResponse where
        toJSON QuickPreviewResponse{..}
          = Core.object
              (Core.catMaybes
                 [("compilerError" Core..=) Core.<$> compilerError,
                  ("containerVersion" Core..=) Core.<$>
                    containerVersion,
                  ("syncStatus" Core..=) Core.<$> syncStatus])


-- | The result of reverting a built-in variable in a workspace.
--
-- /See:/ 'newRevertBuiltInVariableResponse' smart constructor.
newtype RevertBuiltInVariableResponse = RevertBuiltInVariableResponse
    {
      -- | Whether the built-in variable is enabled after reversion.
      enabled :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertBuiltInVariableResponse' with the minimum fields required to make a request.
newRevertBuiltInVariableResponse 
    ::  RevertBuiltInVariableResponse
newRevertBuiltInVariableResponse =
  RevertBuiltInVariableResponse {enabled = Core.Nothing}

instance Core.FromJSON RevertBuiltInVariableResponse
         where
        parseJSON
          = Core.withObject "RevertBuiltInVariableResponse"
              (\ o ->
                 RevertBuiltInVariableResponse Core.<$>
                   (o Core..:? "enabled"))

instance Core.ToJSON RevertBuiltInVariableResponse
         where
        toJSON RevertBuiltInVariableResponse{..}
          = Core.object
              (Core.catMaybes
                 [("enabled" Core..=) Core.<$> enabled])


-- | The result of reverting a client in a workspace.
--
-- /See:/ 'newRevertClientResponse' smart constructor.
newtype RevertClientResponse = RevertClientResponse
    {
      -- | Client as it appears in the latest container version since the last workspace synchronization operation. If no client is present, that means the client was deleted in the latest container version.
      client :: (Core.Maybe Client)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertClientResponse' with the minimum fields required to make a request.
newRevertClientResponse 
    ::  RevertClientResponse
newRevertClientResponse = RevertClientResponse {client = Core.Nothing}

instance Core.FromJSON RevertClientResponse where
        parseJSON
          = Core.withObject "RevertClientResponse"
              (\ o ->
                 RevertClientResponse Core.<$> (o Core..:? "client"))

instance Core.ToJSON RevertClientResponse where
        toJSON RevertClientResponse{..}
          = Core.object
              (Core.catMaybes [("client" Core..=) Core.<$> client])


-- | The result of reverting folder changes in a workspace.
--
-- /See:/ 'newRevertFolderResponse' smart constructor.
newtype RevertFolderResponse = RevertFolderResponse
    {
      -- | Folder as it appears in the latest container version since the last workspace synchronization operation. If no folder is present, that means the folder was deleted in the latest container version.
      folder :: (Core.Maybe Folder)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertFolderResponse' with the minimum fields required to make a request.
newRevertFolderResponse 
    ::  RevertFolderResponse
newRevertFolderResponse = RevertFolderResponse {folder = Core.Nothing}

instance Core.FromJSON RevertFolderResponse where
        parseJSON
          = Core.withObject "RevertFolderResponse"
              (\ o ->
                 RevertFolderResponse Core.<$> (o Core..:? "folder"))

instance Core.ToJSON RevertFolderResponse where
        toJSON RevertFolderResponse{..}
          = Core.object
              (Core.catMaybes [("folder" Core..=) Core.<$> folder])


-- | The result of reverting a tag in a workspace.
--
-- /See:/ 'newRevertTagResponse' smart constructor.
newtype RevertTagResponse = RevertTagResponse
    {
      -- | Tag as it appears in the latest container version since the last workspace synchronization operation. If no tag is present, that means the tag was deleted in the latest container version.
      tag :: (Core.Maybe Tag)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertTagResponse' with the minimum fields required to make a request.
newRevertTagResponse 
    ::  RevertTagResponse
newRevertTagResponse = RevertTagResponse {tag = Core.Nothing}

instance Core.FromJSON RevertTagResponse where
        parseJSON
          = Core.withObject "RevertTagResponse"
              (\ o ->
                 RevertTagResponse Core.<$> (o Core..:? "tag"))

instance Core.ToJSON RevertTagResponse where
        toJSON RevertTagResponse{..}
          = Core.object
              (Core.catMaybes [("tag" Core..=) Core.<$> tag])


-- | The result of reverting a template in a workspace.
--
-- /See:/ 'newRevertTemplateResponse' smart constructor.
newtype RevertTemplateResponse = RevertTemplateResponse
    {
      -- | Template as it appears in the latest container version since the last workspace synchronization operation. If no template is present, that means the template was deleted in the latest container version.
      template :: (Core.Maybe CustomTemplate)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertTemplateResponse' with the minimum fields required to make a request.
newRevertTemplateResponse 
    ::  RevertTemplateResponse
newRevertTemplateResponse = RevertTemplateResponse {template = Core.Nothing}

instance Core.FromJSON RevertTemplateResponse where
        parseJSON
          = Core.withObject "RevertTemplateResponse"
              (\ o ->
                 RevertTemplateResponse Core.<$>
                   (o Core..:? "template"))

instance Core.ToJSON RevertTemplateResponse where
        toJSON RevertTemplateResponse{..}
          = Core.object
              (Core.catMaybes
                 [("template" Core..=) Core.<$> template])


-- | The result of reverting a transformation in a workspace.
--
-- /See:/ 'newRevertTransformationResponse' smart constructor.
newtype RevertTransformationResponse = RevertTransformationResponse
    {
      -- | Transformation as it appears in the latest container version since the last workspace synchronization operation. If no transformation is present, that means the transformation was deleted in the latest container version.
      transformation :: (Core.Maybe Transformation)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertTransformationResponse' with the minimum fields required to make a request.
newRevertTransformationResponse 
    ::  RevertTransformationResponse
newRevertTransformationResponse =
  RevertTransformationResponse {transformation = Core.Nothing}

instance Core.FromJSON RevertTransformationResponse
         where
        parseJSON
          = Core.withObject "RevertTransformationResponse"
              (\ o ->
                 RevertTransformationResponse Core.<$>
                   (o Core..:? "transformation"))

instance Core.ToJSON RevertTransformationResponse
         where
        toJSON RevertTransformationResponse{..}
          = Core.object
              (Core.catMaybes
                 [("transformation" Core..=) Core.<$> transformation])


-- | The result of reverting a trigger in a workspace.
--
-- /See:/ 'newRevertTriggerResponse' smart constructor.
newtype RevertTriggerResponse = RevertTriggerResponse
    {
      -- | Trigger as it appears in the latest container version since the last workspace synchronization operation. If no trigger is present, that means the trigger was deleted in the latest container version.
      trigger :: (Core.Maybe Trigger)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertTriggerResponse' with the minimum fields required to make a request.
newRevertTriggerResponse 
    ::  RevertTriggerResponse
newRevertTriggerResponse = RevertTriggerResponse {trigger = Core.Nothing}

instance Core.FromJSON RevertTriggerResponse where
        parseJSON
          = Core.withObject "RevertTriggerResponse"
              (\ o ->
                 RevertTriggerResponse Core.<$>
                   (o Core..:? "trigger"))

instance Core.ToJSON RevertTriggerResponse where
        toJSON RevertTriggerResponse{..}
          = Core.object
              (Core.catMaybes
                 [("trigger" Core..=) Core.<$> trigger])


-- | The result of reverting a variable in a workspace.
--
-- /See:/ 'newRevertVariableResponse' smart constructor.
newtype RevertVariableResponse = RevertVariableResponse
    {
      -- | Variable as it appears in the latest container version since the last workspace synchronization operation. If no variable is present, that means the variable was deleted in the latest container version.
      variable :: (Core.Maybe Variable)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertVariableResponse' with the minimum fields required to make a request.
newRevertVariableResponse 
    ::  RevertVariableResponse
newRevertVariableResponse = RevertVariableResponse {variable = Core.Nothing}

instance Core.FromJSON RevertVariableResponse where
        parseJSON
          = Core.withObject "RevertVariableResponse"
              (\ o ->
                 RevertVariableResponse Core.<$>
                   (o Core..:? "variable"))

instance Core.ToJSON RevertVariableResponse where
        toJSON RevertVariableResponse{..}
          = Core.object
              (Core.catMaybes
                 [("variable" Core..=) Core.<$> variable])


-- | The result of reverting a zone in a workspace.
--
-- /See:/ 'newRevertZoneResponse' smart constructor.
newtype RevertZoneResponse = RevertZoneResponse
    {
      -- | Zone as it appears in the latest container version since the last workspace synchronization operation. If no zone is present, that means the zone was deleted in the latest container version.
      zone :: (Core.Maybe Zone)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevertZoneResponse' with the minimum fields required to make a request.
newRevertZoneResponse 
    ::  RevertZoneResponse
newRevertZoneResponse = RevertZoneResponse {zone = Core.Nothing}

instance Core.FromJSON RevertZoneResponse where
        parseJSON
          = Core.withObject "RevertZoneResponse"
              (\ o ->
                 RevertZoneResponse Core.<$> (o Core..:? "zone"))

instance Core.ToJSON RevertZoneResponse where
        toJSON RevertZoneResponse{..}
          = Core.object
              (Core.catMaybes [("zone" Core..=) Core.<$> zone])


-- | Represents a reference to atag that fires before another tag in order to set up dependencies.
--
-- /See:/ 'newSetupTag' smart constructor.
data SetupTag = SetupTag
    {
      -- | If true, fire the main tag if and only if the setup tag fires successfully. If false, fire the main tag regardless of setup tag firing status.
      stopOnSetupFailure :: (Core.Maybe Core.Bool)
      -- | The name of the setup tag.
    , tagName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetupTag' with the minimum fields required to make a request.
newSetupTag 
    ::  SetupTag
newSetupTag =
  SetupTag {stopOnSetupFailure = Core.Nothing, tagName = Core.Nothing}

instance Core.FromJSON SetupTag where
        parseJSON
          = Core.withObject "SetupTag"
              (\ o ->
                 SetupTag Core.<$>
                   (o Core..:? "stopOnSetupFailure") Core.<*>
                     (o Core..:? "tagName"))

instance Core.ToJSON SetupTag where
        toJSON SetupTag{..}
          = Core.object
              (Core.catMaybes
                 [("stopOnSetupFailure" Core..=) Core.<$>
                    stopOnSetupFailure,
                  ("tagName" Core..=) Core.<$> tagName])


-- | The status of a workspace after synchronization.
--
-- /See:/ 'newSyncStatus' smart constructor.
data SyncStatus = SyncStatus
    {
      -- | Synchornization operation detected a merge conflict.
      mergeConflict :: (Core.Maybe Core.Bool)
      -- | An error occurred during the synchronization operation.
    , syncError :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SyncStatus' with the minimum fields required to make a request.
newSyncStatus 
    ::  SyncStatus
newSyncStatus =
  SyncStatus {mergeConflict = Core.Nothing, syncError = Core.Nothing}

instance Core.FromJSON SyncStatus where
        parseJSON
          = Core.withObject "SyncStatus"
              (\ o ->
                 SyncStatus Core.<$>
                   (o Core..:? "mergeConflict") Core.<*>
                     (o Core..:? "syncError"))

instance Core.ToJSON SyncStatus where
        toJSON SyncStatus{..}
          = Core.object
              (Core.catMaybes
                 [("mergeConflict" Core..=) Core.<$> mergeConflict,
                  ("syncError" Core..=) Core.<$> syncError])


-- | A response after synchronizing the workspace to the latest container version.
--
-- /See:/ 'newSyncWorkspaceResponse' smart constructor.
data SyncWorkspaceResponse = SyncWorkspaceResponse
    {
      -- | The merge conflict after sync. If this field is not empty, the sync is still treated as successful. But a version cannot be created until all conflicts are resolved.
      mergeConflict :: (Core.Maybe [MergeConflict])
      -- | Indicates whether synchronization caused a merge conflict or sync error.
    , syncStatus :: (Core.Maybe SyncStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SyncWorkspaceResponse' with the minimum fields required to make a request.
newSyncWorkspaceResponse 
    ::  SyncWorkspaceResponse
newSyncWorkspaceResponse =
  SyncWorkspaceResponse
    {mergeConflict = Core.Nothing, syncStatus = Core.Nothing}

instance Core.FromJSON SyncWorkspaceResponse where
        parseJSON
          = Core.withObject "SyncWorkspaceResponse"
              (\ o ->
                 SyncWorkspaceResponse Core.<$>
                   (o Core..:? "mergeConflict") Core.<*>
                     (o Core..:? "syncStatus"))

instance Core.ToJSON SyncWorkspaceResponse where
        toJSON SyncWorkspaceResponse{..}
          = Core.object
              (Core.catMaybes
                 [("mergeConflict" Core..=) Core.<$> mergeConflict,
                  ("syncStatus" Core..=) Core.<$> syncStatus])


-- | Represents a Google Tag Manager Tag.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | Blocking rule IDs. If any of the listed rules evaluate to true, the tag will not fire. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , blockingRuleId :: (Core.Maybe [Core.Text])
      -- | Blocking trigger IDs. If any of the listed triggers evaluate to true, the tag will not fire. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , blockingTriggerId :: (Core.Maybe [Core.Text])
      -- | Consent settings of a tag. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , consentSettings :: (Core.Maybe TagConsentSetting)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM Tag as computed at storage time. This value is recomputed whenever the tag is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Firing rule IDs. A tag will fire when any of the listed rules are true and all of its blockingRuleIds (if any specified) are false. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , firingRuleId :: (Core.Maybe [Core.Text])
      -- | Firing trigger IDs. A tag will fire when any of the listed triggers are true and all of its blockingTriggerIds (if any specified) are false. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , firingTriggerId :: (Core.Maybe [Core.Text])
      -- | If set to true, this tag will only fire in the live environment (e.g. not in preview or debug mode). \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , liveOnly :: (Core.Maybe Core.Bool)
      -- | A map of key-value pairs of tag metadata to be included in the event data for tag monitoring. Notes: - This parameter must be type MAP. - Each parameter in the map are type TEMPLATE, however cannot contain variable references. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , monitoringMetadata :: (Core.Maybe Parameter)
      -- | If non-empty, then the tag display name will be included in the monitoring metadata map using the key specified. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , monitoringMetadataTagNameKey :: (Core.Maybe Core.Text)
      -- | Tag display name. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , name :: (Core.Maybe Core.Text)
      -- | User notes on how to apply this tag in the container. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , notes :: (Core.Maybe Core.Text)
      -- | The tag\'s parameters. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , parameter :: (Core.Maybe [Parameter])
      -- | Parent folder id.
    , parentFolderId :: (Core.Maybe Core.Text)
      -- | GTM Tag\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Indicates whether the tag is paused, which prevents the tag from firing. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , paused :: (Core.Maybe Core.Bool)
      -- | User defined numeric priority of the tag. Tags are fired asynchronously in order of priority. Tags with higher numeric value fire first. A tag\'s priority can be a positive or negative value. The default value is 0. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , priority :: (Core.Maybe Parameter)
      -- | The end timestamp in milliseconds to schedule a tag. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , scheduleEndMs :: (Core.Maybe Core.Int64)
      -- | The start timestamp in milliseconds to schedule a tag. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , scheduleStartMs :: (Core.Maybe Core.Int64)
      -- | The list of setup tags. Currently we only allow one.
    , setupTag :: (Core.Maybe [SetupTag])
      -- | Option to fire this tag.
    , tagFiringOption :: (Core.Maybe Tag_TagFiringOption)
      -- | The Tag ID uniquely identifies the GTM Tag.
    , tagId :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | The list of teardown tags. Currently we only allow one.
    , teardownTag :: (Core.Maybe [TeardownTag])
      -- | GTM Tag Type. \@mutable tagmanager.accounts.containers.workspaces.tags.create \@mutable tagmanager.accounts.containers.workspaces.tags.update
    , type' :: (Core.Maybe Core.Text)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tag' with the minimum fields required to make a request.
newTag 
    ::  Tag
newTag =
  Tag
    { accountId = Core.Nothing
    , blockingRuleId = Core.Nothing
    , blockingTriggerId = Core.Nothing
    , consentSettings = Core.Nothing
    , containerId = Core.Nothing
    , fingerprint = Core.Nothing
    , firingRuleId = Core.Nothing
    , firingTriggerId = Core.Nothing
    , liveOnly = Core.Nothing
    , monitoringMetadata = Core.Nothing
    , monitoringMetadataTagNameKey = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , parameter = Core.Nothing
    , parentFolderId = Core.Nothing
    , path = Core.Nothing
    , paused = Core.Nothing
    , priority = Core.Nothing
    , scheduleEndMs = Core.Nothing
    , scheduleStartMs = Core.Nothing
    , setupTag = Core.Nothing
    , tagFiringOption = Core.Nothing
    , tagId = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , teardownTag = Core.Nothing
    , type' = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON Tag where
        parseJSON
          = Core.withObject "Tag"
              (\ o ->
                 Tag Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "blockingRuleId")
                     Core.<*> (o Core..:? "blockingTriggerId")
                     Core.<*> (o Core..:? "consentSettings")
                     Core.<*> (o Core..:? "containerId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "firingRuleId")
                     Core.<*> (o Core..:? "firingTriggerId")
                     Core.<*> (o Core..:? "liveOnly")
                     Core.<*> (o Core..:? "monitoringMetadata")
                     Core.<*> (o Core..:? "monitoringMetadataTagNameKey")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "parameter")
                     Core.<*> (o Core..:? "parentFolderId")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "paused")
                     Core.<*> (o Core..:? "priority")
                     Core.<*>
                     (o Core..:? "scheduleEndMs" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "scheduleStartMs" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "setupTag")
                     Core.<*> (o Core..:? "tagFiringOption")
                     Core.<*> (o Core..:? "tagId")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "teardownTag")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON Tag where
        toJSON Tag{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("blockingRuleId" Core..=) Core.<$> blockingRuleId,
                  ("blockingTriggerId" Core..=) Core.<$>
                    blockingTriggerId,
                  ("consentSettings" Core..=) Core.<$> consentSettings,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("firingRuleId" Core..=) Core.<$> firingRuleId,
                  ("firingTriggerId" Core..=) Core.<$> firingTriggerId,
                  ("liveOnly" Core..=) Core.<$> liveOnly,
                  ("monitoringMetadata" Core..=) Core.<$>
                    monitoringMetadata,
                  ("monitoringMetadataTagNameKey" Core..=) Core.<$>
                    monitoringMetadataTagNameKey,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("parameter" Core..=) Core.<$> parameter,
                  ("parentFolderId" Core..=) Core.<$> parentFolderId,
                  ("path" Core..=) Core.<$> path,
                  ("paused" Core..=) Core.<$> paused,
                  ("priority" Core..=) Core.<$> priority,
                  ("scheduleEndMs" Core..=) Core.. Core.AsText Core.<$>
                    scheduleEndMs,
                  ("scheduleStartMs" Core..=) Core.. Core.AsText
                    Core.<$> scheduleStartMs,
                  ("setupTag" Core..=) Core.<$> setupTag,
                  ("tagFiringOption" Core..=) Core.<$> tagFiringOption,
                  ("tagId" Core..=) Core.<$> tagId,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("teardownTag" Core..=) Core.<$> teardownTag,
                  ("type" Core..=) Core.<$> type',
                  ("workspaceId" Core..=) Core.<$> workspaceId])


--
-- /See:/ 'newTagConsentSetting' smart constructor.
data TagConsentSetting = TagConsentSetting
    {
      -- | The tag\'s consent status. If set to NEEDED, the runtime will check that the consent types specified by the consent_type field have been granted.
      consentStatus :: (Core.Maybe TagConsentSetting_ConsentStatus)
      -- | The type of consents to check for during tag firing if in the consent NEEDED state. This parameter must be of type LIST where each list item is of type STRING.
    , consentType :: (Core.Maybe Parameter)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagConsentSetting' with the minimum fields required to make a request.
newTagConsentSetting 
    ::  TagConsentSetting
newTagConsentSetting =
  TagConsentSetting {consentStatus = Core.Nothing, consentType = Core.Nothing}

instance Core.FromJSON TagConsentSetting where
        parseJSON
          = Core.withObject "TagConsentSetting"
              (\ o ->
                 TagConsentSetting Core.<$>
                   (o Core..:? "consentStatus") Core.<*>
                     (o Core..:? "consentType"))

instance Core.ToJSON TagConsentSetting where
        toJSON TagConsentSetting{..}
          = Core.object
              (Core.catMaybes
                 [("consentStatus" Core..=) Core.<$> consentStatus,
                  ("consentType" Core..=) Core.<$> consentType])


-- | Represents a tag that fires after another tag in order to tear down dependencies.
--
-- /See:/ 'newTeardownTag' smart constructor.
data TeardownTag = TeardownTag
    {
      -- | If true, fire the teardown tag if and only if the main tag fires successfully. If false, fire the teardown tag regardless of main tag firing status.
      stopTeardownOnFailure :: (Core.Maybe Core.Bool)
      -- | The name of the teardown tag.
    , tagName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeardownTag' with the minimum fields required to make a request.
newTeardownTag 
    ::  TeardownTag
newTeardownTag =
  TeardownTag {stopTeardownOnFailure = Core.Nothing, tagName = Core.Nothing}

instance Core.FromJSON TeardownTag where
        parseJSON
          = Core.withObject "TeardownTag"
              (\ o ->
                 TeardownTag Core.<$>
                   (o Core..:? "stopTeardownOnFailure") Core.<*>
                     (o Core..:? "tagName"))

instance Core.ToJSON TeardownTag where
        toJSON TeardownTag{..}
          = Core.object
              (Core.catMaybes
                 [("stopTeardownOnFailure" Core..=) Core.<$>
                    stopTeardownOnFailure,
                  ("tagName" Core..=) Core.<$> tagName])


-- | Represents a Google Tag Manager Transformation.
--
-- /See:/ 'newTransformation' smart constructor.
data Transformation = Transformation
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM Transformation as computed at storage time. This value is recomputed whenever the transformation is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Transformation display name. \@mutable tagmanager.accounts.containers.workspaces.transformations.create \@mutable tagmanager.accounts.containers.workspaces.transformations.update
    , name :: (Core.Maybe Core.Text)
      -- | User notes on how to apply this transformation in the container. \@mutable tagmanager.accounts.containers.workspaces.transformations.create \@mutable tagmanager.accounts.containers.workspaces.transformations.update
    , notes :: (Core.Maybe Core.Text)
      -- | The transformation\'s parameters. \@mutable tagmanager.accounts.containers.workspaces.transformations.create \@mutable tagmanager.accounts.containers.workspaces.transformations.update
    , parameter :: (Core.Maybe [Parameter])
      -- | Parent folder id.
    , parentFolderId :: (Core.Maybe Core.Text)
      -- | GTM transformation\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | The Transformation ID uniquely identifies the GTM transformation.
    , transformationId :: (Core.Maybe Core.Text)
      -- | Transformation type. \@mutable tagmanager.accounts.containers.workspaces.transformations.create \@mutable tagmanager.accounts.containers.workspaces.transformations.update
    , type' :: (Core.Maybe Core.Text)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Transformation' with the minimum fields required to make a request.
newTransformation 
    ::  Transformation
newTransformation =
  Transformation
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , fingerprint = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , parameter = Core.Nothing
    , parentFolderId = Core.Nothing
    , path = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , transformationId = Core.Nothing
    , type' = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON Transformation where
        parseJSON
          = Core.withObject "Transformation"
              (\ o ->
                 Transformation Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "parameter")
                     Core.<*> (o Core..:? "parentFolderId")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "transformationId")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON Transformation where
        toJSON Transformation{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("parameter" Core..=) Core.<$> parameter,
                  ("parentFolderId" Core..=) Core.<$> parentFolderId,
                  ("path" Core..=) Core.<$> path,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("transformationId" Core..=) Core.<$>
                    transformationId,
                  ("type" Core..=) Core.<$> type',
                  ("workspaceId" Core..=) Core.<$> workspaceId])


-- | Represents a Google Tag Manager Trigger
--
-- /See:/ 'newTrigger' smart constructor.
data Trigger = Trigger
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | Used in the case of auto event tracking. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , autoEventFilter :: (Core.Maybe [Condition])
      -- | Whether or not we should only fire tags if the form submit or link click event is not cancelled by some other event handler (e.g. because of validation). Only valid for Form Submission and Link Click triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , checkValidation :: (Core.Maybe Parameter)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | A visibility trigger minimum continuous visible time (in milliseconds). Only valid for AMP Visibility trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , continuousTimeMinMilliseconds :: (Core.Maybe Parameter)
      -- | Used in the case of custom event, which is fired iff all Conditions are true. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , customEventFilter :: (Core.Maybe [Condition])
      -- | Name of the GTM event that is fired. Only valid for Timer triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , eventName :: (Core.Maybe Parameter)
      -- | The trigger will only fire iff all Conditions are true. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , filter :: (Core.Maybe [Condition])
      -- | The fingerprint of the GTM Trigger as computed at storage time. This value is recomputed whenever the trigger is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | List of integer percentage values for scroll triggers. The trigger will fire when each percentage is reached when the view is scrolled horizontally. Only valid for AMP scroll triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , horizontalScrollPercentageList :: (Core.Maybe Parameter)
      -- | Time between triggering recurring Timer Events (in milliseconds). Only valid for Timer triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , interval :: (Core.Maybe Parameter)
      -- | Time between Timer Events to fire (in seconds). Only valid for AMP Timer trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , intervalSeconds :: (Core.Maybe Parameter)
      -- | Limit of the number of GTM events this Timer Trigger will fire. If no limit is set, we will continue to fire GTM events until the user leaves the page. Only valid for Timer triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , limit :: (Core.Maybe Parameter)
      -- | Max time to fire Timer Events (in seconds). Only valid for AMP Timer trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , maxTimerLengthSeconds :: (Core.Maybe Parameter)
      -- | Trigger display name. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , name :: (Core.Maybe Core.Text)
      -- | User notes on how to apply this trigger in the container. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , notes :: (Core.Maybe Core.Text)
      -- | Additional parameters. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , parameter :: (Core.Maybe [Parameter])
      -- | Parent folder id.
    , parentFolderId :: (Core.Maybe Core.Text)
      -- | GTM Trigger\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | A click trigger CSS selector (i.e. \"a\", \"button\" etc.). Only valid for AMP Click trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , selector :: (Core.Maybe Parameter)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | A visibility trigger minimum total visible time (in milliseconds). Only valid for AMP Visibility trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , totalTimeMinMilliseconds :: (Core.Maybe Parameter)
      -- | The Trigger ID uniquely identifies the GTM Trigger.
    , triggerId :: (Core.Maybe Core.Text)
      -- | Defines the data layer event that causes this trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , type' :: (Core.Maybe Trigger_Type)
      -- | Globally unique id of the trigger that auto-generates this (a Form Submit, Link Click or Timer listener) if any. Used to make incompatible auto-events work together with trigger filtering based on trigger ids. This value is populated during output generation since the tags implied by triggers don\'t exist until then. Only valid for Form Submit, Link Click and Timer triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , uniqueTriggerId :: (Core.Maybe Parameter)
      -- | List of integer percentage values for scroll triggers. The trigger will fire when each percentage is reached when the view is scrolled vertically. Only valid for AMP scroll triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , verticalScrollPercentageList :: (Core.Maybe Parameter)
      -- | A visibility trigger CSS selector (i.e. \"#id\"). Only valid for AMP Visibility trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , visibilitySelector :: (Core.Maybe Parameter)
      -- | A visibility trigger maximum percent visibility. Only valid for AMP Visibility trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , visiblePercentageMax :: (Core.Maybe Parameter)
      -- | A visibility trigger minimum percent visibility. Only valid for AMP Visibility trigger. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , visiblePercentageMin :: (Core.Maybe Parameter)
      -- | Whether or not we should delay the form submissions or link opening until all of the tags have fired (by preventing the default action and later simulating the default action). Only valid for Form Submission and Link Click triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , waitForTags :: (Core.Maybe Parameter)
      -- | How long to wait (in milliseconds) for tags to fire when \'waits/for/tags\' above evaluates to true. Only valid for Form Submission and Link Click triggers. \@mutable tagmanager.accounts.containers.workspaces.triggers.create \@mutable tagmanager.accounts.containers.workspaces.triggers.update
    , waitForTagsTimeout :: (Core.Maybe Parameter)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Trigger' with the minimum fields required to make a request.
newTrigger 
    ::  Trigger
newTrigger =
  Trigger
    { accountId = Core.Nothing
    , autoEventFilter = Core.Nothing
    , checkValidation = Core.Nothing
    , containerId = Core.Nothing
    , continuousTimeMinMilliseconds = Core.Nothing
    , customEventFilter = Core.Nothing
    , eventName = Core.Nothing
    , filter = Core.Nothing
    , fingerprint = Core.Nothing
    , horizontalScrollPercentageList = Core.Nothing
    , interval = Core.Nothing
    , intervalSeconds = Core.Nothing
    , limit = Core.Nothing
    , maxTimerLengthSeconds = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , parameter = Core.Nothing
    , parentFolderId = Core.Nothing
    , path = Core.Nothing
    , selector = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , totalTimeMinMilliseconds = Core.Nothing
    , triggerId = Core.Nothing
    , type' = Core.Nothing
    , uniqueTriggerId = Core.Nothing
    , verticalScrollPercentageList = Core.Nothing
    , visibilitySelector = Core.Nothing
    , visiblePercentageMax = Core.Nothing
    , visiblePercentageMin = Core.Nothing
    , waitForTags = Core.Nothing
    , waitForTagsTimeout = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON Trigger where
        parseJSON
          = Core.withObject "Trigger"
              (\ o ->
                 Trigger Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "autoEventFilter")
                     Core.<*> (o Core..:? "checkValidation")
                     Core.<*> (o Core..:? "containerId")
                     Core.<*> (o Core..:? "continuousTimeMinMilliseconds")
                     Core.<*> (o Core..:? "customEventFilter")
                     Core.<*> (o Core..:? "eventName")
                     Core.<*> (o Core..:? "filter")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*>
                     (o Core..:? "horizontalScrollPercentageList")
                     Core.<*> (o Core..:? "interval")
                     Core.<*> (o Core..:? "intervalSeconds")
                     Core.<*> (o Core..:? "limit")
                     Core.<*> (o Core..:? "maxTimerLengthSeconds")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "parameter")
                     Core.<*> (o Core..:? "parentFolderId")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "selector")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "totalTimeMinMilliseconds")
                     Core.<*> (o Core..:? "triggerId")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "uniqueTriggerId")
                     Core.<*> (o Core..:? "verticalScrollPercentageList")
                     Core.<*> (o Core..:? "visibilitySelector")
                     Core.<*> (o Core..:? "visiblePercentageMax")
                     Core.<*> (o Core..:? "visiblePercentageMin")
                     Core.<*> (o Core..:? "waitForTags")
                     Core.<*> (o Core..:? "waitForTagsTimeout")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON Trigger where
        toJSON Trigger{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("autoEventFilter" Core..=) Core.<$> autoEventFilter,
                  ("checkValidation" Core..=) Core.<$> checkValidation,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("continuousTimeMinMilliseconds" Core..=) Core.<$>
                    continuousTimeMinMilliseconds,
                  ("customEventFilter" Core..=) Core.<$>
                    customEventFilter,
                  ("eventName" Core..=) Core.<$> eventName,
                  ("filter" Core..=) Core.<$> filter,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("horizontalScrollPercentageList" Core..=) Core.<$>
                    horizontalScrollPercentageList,
                  ("interval" Core..=) Core.<$> interval,
                  ("intervalSeconds" Core..=) Core.<$> intervalSeconds,
                  ("limit" Core..=) Core.<$> limit,
                  ("maxTimerLengthSeconds" Core..=) Core.<$>
                    maxTimerLengthSeconds,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("parameter" Core..=) Core.<$> parameter,
                  ("parentFolderId" Core..=) Core.<$> parentFolderId,
                  ("path" Core..=) Core.<$> path,
                  ("selector" Core..=) Core.<$> selector,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("totalTimeMinMilliseconds" Core..=) Core.<$>
                    totalTimeMinMilliseconds,
                  ("triggerId" Core..=) Core.<$> triggerId,
                  ("type" Core..=) Core.<$> type',
                  ("uniqueTriggerId" Core..=) Core.<$> uniqueTriggerId,
                  ("verticalScrollPercentageList" Core..=) Core.<$>
                    verticalScrollPercentageList,
                  ("visibilitySelector" Core..=) Core.<$>
                    visibilitySelector,
                  ("visiblePercentageMax" Core..=) Core.<$>
                    visiblePercentageMax,
                  ("visiblePercentageMin" Core..=) Core.<$>
                    visiblePercentageMin,
                  ("waitForTags" Core..=) Core.<$> waitForTags,
                  ("waitForTagsTimeout" Core..=) Core.<$>
                    waitForTagsTimeout,
                  ("workspaceId" Core..=) Core.<$> workspaceId])


-- | Represents a user\'s permissions to an account and its container.
--
-- /See:/ 'newUserPermission' smart constructor.
data UserPermission = UserPermission
    {
      -- | GTM Account access permissions. \@mutable tagmanager.accounts.permissions.create \@mutable tagmanager.accounts.permissions.update
      accountAccess :: (Core.Maybe AccountAccess)
      -- | The Account ID uniquely identifies the GTM Account.
    , accountId :: (Core.Maybe Core.Text)
      -- | GTM Container access permissions. \@mutable tagmanager.accounts.permissions.create \@mutable tagmanager.accounts.permissions.update
    , containerAccess :: (Core.Maybe [ContainerAccess])
      -- | User\'s email address. \@mutable tagmanager.accounts.permissions.create
    , emailAddress :: (Core.Maybe Core.Text)
      -- | GTM UserPermission\'s API relative path.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserPermission' with the minimum fields required to make a request.
newUserPermission 
    ::  UserPermission
newUserPermission =
  UserPermission
    { accountAccess = Core.Nothing
    , accountId = Core.Nothing
    , containerAccess = Core.Nothing
    , emailAddress = Core.Nothing
    , path = Core.Nothing
    }

instance Core.FromJSON UserPermission where
        parseJSON
          = Core.withObject "UserPermission"
              (\ o ->
                 UserPermission Core.<$>
                   (o Core..:? "accountAccess") Core.<*>
                     (o Core..:? "accountId")
                     Core.<*> (o Core..:? "containerAccess")
                     Core.<*> (o Core..:? "emailAddress")
                     Core.<*> (o Core..:? "path"))

instance Core.ToJSON UserPermission where
        toJSON UserPermission{..}
          = Core.object
              (Core.catMaybes
                 [("accountAccess" Core..=) Core.<$> accountAccess,
                  ("accountId" Core..=) Core.<$> accountId,
                  ("containerAccess" Core..=) Core.<$> containerAccess,
                  ("emailAddress" Core..=) Core.<$> emailAddress,
                  ("path" Core..=) Core.<$> path])


-- | Represents a Google Tag Manager Variable.
--
-- /See:/ 'newVariable' smart constructor.
data Variable = Variable
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | For mobile containers only: A list of trigger IDs for disabling conditional variables; the variable is enabled if one of the enabling trigger is true while all the disabling trigger are false. Treated as an unordered set. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update
    , disablingTriggerId :: (Core.Maybe [Core.Text])
      -- | For mobile containers only: A list of trigger IDs for enabling conditional variables; the variable is enabled if one of the enabling triggers is true while all the disabling triggers are false. Treated as an unordered set. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update
    , enablingTriggerId :: (Core.Maybe [Core.Text])
      -- | The fingerprint of the GTM Variable as computed at storage time. This value is recomputed whenever the variable is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Option to convert a variable value to other value.
    , formatValue :: (Core.Maybe VariableFormatValue)
      -- | Variable display name. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update
    , name :: (Core.Maybe Core.Text)
      -- | User notes on how to apply this variable in the container. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update
    , notes :: (Core.Maybe Core.Text)
      -- | The variable\'s parameters. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update
    , parameter :: (Core.Maybe [Parameter])
      -- | Parent folder id.
    , parentFolderId :: (Core.Maybe Core.Text)
      -- | GTM Variable\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | The end timestamp in milliseconds to schedule a variable. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update
    , scheduleEndMs :: (Core.Maybe Core.Int64)
      -- | The start timestamp in milliseconds to schedule a variable. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update
    , scheduleStartMs :: (Core.Maybe Core.Int64)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | GTM Variable Type. \@mutable tagmanager.accounts.containers.workspaces.variables.create \@mutable tagmanager.accounts.containers.workspaces.variables.update
    , type' :: (Core.Maybe Core.Text)
      -- | The Variable ID uniquely identifies the GTM Variable.
    , variableId :: (Core.Maybe Core.Text)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Variable' with the minimum fields required to make a request.
newVariable 
    ::  Variable
newVariable =
  Variable
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , disablingTriggerId = Core.Nothing
    , enablingTriggerId = Core.Nothing
    , fingerprint = Core.Nothing
    , formatValue = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , parameter = Core.Nothing
    , parentFolderId = Core.Nothing
    , path = Core.Nothing
    , scheduleEndMs = Core.Nothing
    , scheduleStartMs = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , type' = Core.Nothing
    , variableId = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON Variable where
        parseJSON
          = Core.withObject "Variable"
              (\ o ->
                 Variable Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "disablingTriggerId")
                     Core.<*> (o Core..:? "enablingTriggerId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "formatValue")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "parameter")
                     Core.<*> (o Core..:? "parentFolderId")
                     Core.<*> (o Core..:? "path")
                     Core.<*>
                     (o Core..:? "scheduleEndMs" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "scheduleStartMs" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "variableId")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON Variable where
        toJSON Variable{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("disablingTriggerId" Core..=) Core.<$>
                    disablingTriggerId,
                  ("enablingTriggerId" Core..=) Core.<$>
                    enablingTriggerId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("formatValue" Core..=) Core.<$> formatValue,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("parameter" Core..=) Core.<$> parameter,
                  ("parentFolderId" Core..=) Core.<$> parentFolderId,
                  ("path" Core..=) Core.<$> path,
                  ("scheduleEndMs" Core..=) Core.. Core.AsText Core.<$>
                    scheduleEndMs,
                  ("scheduleStartMs" Core..=) Core.. Core.AsText
                    Core.<$> scheduleStartMs,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("type" Core..=) Core.<$> type',
                  ("variableId" Core..=) Core.<$> variableId,
                  ("workspaceId" Core..=) Core.<$> workspaceId])


--
-- /See:/ 'newVariableFormatValue' smart constructor.
data VariableFormatValue = VariableFormatValue
    {
      -- | The option to convert a string-type variable value to either lowercase or uppercase.
      caseConversionType :: (Core.Maybe VariableFormatValue_CaseConversionType)
      -- | The value to convert if a variable value is false.
    , convertFalseToValue :: (Core.Maybe Parameter)
      -- | The value to convert if a variable value is null.
    , convertNullToValue :: (Core.Maybe Parameter)
      -- | The value to convert if a variable value is true.
    , convertTrueToValue :: (Core.Maybe Parameter)
      -- | The value to convert if a variable value is undefined.
    , convertUndefinedToValue :: (Core.Maybe Parameter)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VariableFormatValue' with the minimum fields required to make a request.
newVariableFormatValue 
    ::  VariableFormatValue
newVariableFormatValue =
  VariableFormatValue
    { caseConversionType = Core.Nothing
    , convertFalseToValue = Core.Nothing
    , convertNullToValue = Core.Nothing
    , convertTrueToValue = Core.Nothing
    , convertUndefinedToValue = Core.Nothing
    }

instance Core.FromJSON VariableFormatValue where
        parseJSON
          = Core.withObject "VariableFormatValue"
              (\ o ->
                 VariableFormatValue Core.<$>
                   (o Core..:? "caseConversionType") Core.<*>
                     (o Core..:? "convertFalseToValue")
                     Core.<*> (o Core..:? "convertNullToValue")
                     Core.<*> (o Core..:? "convertTrueToValue")
                     Core.<*> (o Core..:? "convertUndefinedToValue"))

instance Core.ToJSON VariableFormatValue where
        toJSON VariableFormatValue{..}
          = Core.object
              (Core.catMaybes
                 [("caseConversionType" Core..=) Core.<$>
                    caseConversionType,
                  ("convertFalseToValue" Core..=) Core.<$>
                    convertFalseToValue,
                  ("convertNullToValue" Core..=) Core.<$>
                    convertNullToValue,
                  ("convertTrueToValue" Core..=) Core.<$>
                    convertTrueToValue,
                  ("convertUndefinedToValue" Core..=) Core.<$>
                    convertUndefinedToValue])


-- | Represents a Google Tag Manager Container Workspace.
--
-- /See:/ 'newWorkspace' smart constructor.
data Workspace = Workspace
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | Workspace description. \@mutable tagmanager.accounts.containers.workspaces.create \@mutable tagmanager.accounts.containers.workspaces.update
    , description :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM Workspace as computed at storage time. This value is recomputed whenever the workspace is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Workspace display name. \@mutable tagmanager.accounts.containers.workspaces.create \@mutable tagmanager.accounts.containers.workspaces.update
    , name :: (Core.Maybe Core.Text)
      -- | GTM Workspace\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | The Workspace ID uniquely identifies the GTM Workspace.
    , workspaceId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Workspace' with the minimum fields required to make a request.
newWorkspace 
    ::  Workspace
newWorkspace =
  Workspace
    { accountId = Core.Nothing
    , containerId = Core.Nothing
    , description = Core.Nothing
    , fingerprint = Core.Nothing
    , name = Core.Nothing
    , path = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , workspaceId = Core.Nothing
    }

instance Core.FromJSON Workspace where
        parseJSON
          = Core.withObject "Workspace"
              (\ o ->
                 Workspace Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "containerId")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "workspaceId"))

instance Core.ToJSON Workspace where
        toJSON Workspace{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("description" Core..=) Core.<$> description,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("workspaceId" Core..=) Core.<$> workspaceId])


-- | Represents a Google Tag Manager Zone\'s contents.
--
-- /See:/ 'newZone' smart constructor.
data Zone = Zone
    {
      -- | GTM Account ID.
      accountId :: (Core.Maybe Core.Text)
      -- | This Zone\'s boundary.
    , boundary :: (Core.Maybe ZoneBoundary)
      -- | Containers that are children of this Zone.
    , childContainer :: (Core.Maybe [ZoneChildContainer])
      -- | GTM Container ID.
    , containerId :: (Core.Maybe Core.Text)
      -- | The fingerprint of the GTM Zone as computed at storage time. This value is recomputed whenever the zone is modified.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | Zone display name.
    , name :: (Core.Maybe Core.Text)
      -- | User notes on how to apply this zone in the container.
    , notes :: (Core.Maybe Core.Text)
      -- | GTM Zone\'s API relative path.
    , path :: (Core.Maybe Core.Text)
      -- | Auto generated link to the tag manager UI
    , tagManagerUrl :: (Core.Maybe Core.Text)
      -- | This Zone\'s type restrictions.
    , typeRestriction :: (Core.Maybe ZoneTypeRestriction)
      -- | GTM Workspace ID.
    , workspaceId :: (Core.Maybe Core.Text)
      -- | The Zone ID uniquely identifies the GTM Zone.
    , zoneId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Zone' with the minimum fields required to make a request.
newZone 
    ::  Zone
newZone =
  Zone
    { accountId = Core.Nothing
    , boundary = Core.Nothing
    , childContainer = Core.Nothing
    , containerId = Core.Nothing
    , fingerprint = Core.Nothing
    , name = Core.Nothing
    , notes = Core.Nothing
    , path = Core.Nothing
    , tagManagerUrl = Core.Nothing
    , typeRestriction = Core.Nothing
    , workspaceId = Core.Nothing
    , zoneId = Core.Nothing
    }

instance Core.FromJSON Zone where
        parseJSON
          = Core.withObject "Zone"
              (\ o ->
                 Zone Core.<$>
                   (o Core..:? "accountId") Core.<*>
                     (o Core..:? "boundary")
                     Core.<*> (o Core..:? "childContainer")
                     Core.<*> (o Core..:? "containerId")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "notes")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "tagManagerUrl")
                     Core.<*> (o Core..:? "typeRestriction")
                     Core.<*> (o Core..:? "workspaceId")
                     Core.<*> (o Core..:? "zoneId"))

instance Core.ToJSON Zone where
        toJSON Zone{..}
          = Core.object
              (Core.catMaybes
                 [("accountId" Core..=) Core.<$> accountId,
                  ("boundary" Core..=) Core.<$> boundary,
                  ("childContainer" Core..=) Core.<$> childContainer,
                  ("containerId" Core..=) Core.<$> containerId,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("name" Core..=) Core.<$> name,
                  ("notes" Core..=) Core.<$> notes,
                  ("path" Core..=) Core.<$> path,
                  ("tagManagerUrl" Core..=) Core.<$> tagManagerUrl,
                  ("typeRestriction" Core..=) Core.<$> typeRestriction,
                  ("workspaceId" Core..=) Core.<$> workspaceId,
                  ("zoneId" Core..=) Core.<$> zoneId])


-- | Represents a Zone\'s boundaries.
--
-- /See:/ 'newZoneBoundary' smart constructor.
data ZoneBoundary = ZoneBoundary
    {
      -- | The conditions that, when conjoined, make up the boundary.
      condition :: (Core.Maybe [Condition])
      -- | Custom evaluation trigger IDs. A zone will evaluate its boundary conditions when any of the listed triggers are true.
    , customEvaluationTriggerId :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ZoneBoundary' with the minimum fields required to make a request.
newZoneBoundary 
    ::  ZoneBoundary
newZoneBoundary =
  ZoneBoundary
    {condition = Core.Nothing, customEvaluationTriggerId = Core.Nothing}

instance Core.FromJSON ZoneBoundary where
        parseJSON
          = Core.withObject "ZoneBoundary"
              (\ o ->
                 ZoneBoundary Core.<$>
                   (o Core..:? "condition") Core.<*>
                     (o Core..:? "customEvaluationTriggerId"))

instance Core.ToJSON ZoneBoundary where
        toJSON ZoneBoundary{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("customEvaluationTriggerId" Core..=) Core.<$>
                    customEvaluationTriggerId])


-- | Represents a child container of a Zone.
--
-- /See:/ 'newZoneChildContainer' smart constructor.
data ZoneChildContainer = ZoneChildContainer
    {
      -- | The zone\'s nickname for the child container.
      nickname :: (Core.Maybe Core.Text)
      -- | The child container\'s public id.
    , publicId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ZoneChildContainer' with the minimum fields required to make a request.
newZoneChildContainer 
    ::  ZoneChildContainer
newZoneChildContainer =
  ZoneChildContainer {nickname = Core.Nothing, publicId = Core.Nothing}

instance Core.FromJSON ZoneChildContainer where
        parseJSON
          = Core.withObject "ZoneChildContainer"
              (\ o ->
                 ZoneChildContainer Core.<$>
                   (o Core..:? "nickname") Core.<*>
                     (o Core..:? "publicId"))

instance Core.ToJSON ZoneChildContainer where
        toJSON ZoneChildContainer{..}
          = Core.object
              (Core.catMaybes
                 [("nickname" Core..=) Core.<$> nickname,
                  ("publicId" Core..=) Core.<$> publicId])


-- | Represents a Zone\'s type restrictions.
--
-- /See:/ 'newZoneTypeRestriction' smart constructor.
data ZoneTypeRestriction = ZoneTypeRestriction
    {
      -- | True if type restrictions have been enabled for this Zone.
      enable :: (Core.Maybe Core.Bool)
      -- | List of type public ids that have been whitelisted for use in this Zone.
    , whitelistedTypeId :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ZoneTypeRestriction' with the minimum fields required to make a request.
newZoneTypeRestriction 
    ::  ZoneTypeRestriction
newZoneTypeRestriction =
  ZoneTypeRestriction {enable = Core.Nothing, whitelistedTypeId = Core.Nothing}

instance Core.FromJSON ZoneTypeRestriction where
        parseJSON
          = Core.withObject "ZoneTypeRestriction"
              (\ o ->
                 ZoneTypeRestriction Core.<$>
                   (o Core..:? "enable") Core.<*>
                     (o Core..:? "whitelistedTypeId"))

instance Core.ToJSON ZoneTypeRestriction where
        toJSON ZoneTypeRestriction{..}
          = Core.object
              (Core.catMaybes
                 [("enable" Core..=) Core.<$> enable,
                  ("whitelistedTypeId" Core..=) Core.<$>
                    whitelistedTypeId])


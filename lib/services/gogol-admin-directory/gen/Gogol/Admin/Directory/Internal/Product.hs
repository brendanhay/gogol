{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Directory.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Admin.Directory.Internal.Product
  ( -- * Alias
    Alias (..),
    newAlias,

    -- * Aliases
    Aliases (..),
    newAliases,

    -- * Asp
    Asp (..),
    newAsp,

    -- * Asps
    Asps (..),
    newAsps,

    -- * AuxiliaryMessage
    AuxiliaryMessage (..),
    newAuxiliaryMessage,

    -- * BatchCreatePrintersRequest
    BatchCreatePrintersRequest (..),
    newBatchCreatePrintersRequest,

    -- * BatchCreatePrintersResponse
    BatchCreatePrintersResponse (..),
    newBatchCreatePrintersResponse,

    -- * BatchDeletePrintersRequest
    BatchDeletePrintersRequest (..),
    newBatchDeletePrintersRequest,

    -- * BatchDeletePrintersResponse
    BatchDeletePrintersResponse (..),
    newBatchDeletePrintersResponse,

    -- * Building
    Building (..),
    newBuilding,

    -- * BuildingAddress
    BuildingAddress (..),
    newBuildingAddress,

    -- * BuildingCoordinates
    BuildingCoordinates (..),
    newBuildingCoordinates,

    -- * Buildings
    Buildings (..),
    newBuildings,

    -- * CalendarResource
    CalendarResource (..),
    newCalendarResource,

    -- * CalendarResources
    CalendarResources (..),
    newCalendarResources,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- * ChromeOsDevice
    ChromeOsDevice (..),
    newChromeOsDevice,

    -- * ChromeOsDevice_ActiveTimeRangesItem
    ChromeOsDevice_ActiveTimeRangesItem (..),
    newChromeOsDevice_ActiveTimeRangesItem,

    -- * ChromeOsDevice_CpuInfoItem
    ChromeOsDevice_CpuInfoItem (..),
    newChromeOsDevice_CpuInfoItem,

    -- * ChromeOsDevice_CpuInfoItem_LogicalCpusItem
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem (..),
    newChromeOsDevice_CpuInfoItem_LogicalCpusItem,

    -- * ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem (..),
    newChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem,

    -- * ChromeOsDevice_CpuStatusReportsItem
    ChromeOsDevice_CpuStatusReportsItem (..),
    newChromeOsDevice_CpuStatusReportsItem,

    -- * ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
    ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem (..),
    newChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem,

    -- * ChromeOsDevice_DeviceFilesItem
    ChromeOsDevice_DeviceFilesItem (..),
    newChromeOsDevice_DeviceFilesItem,

    -- * ChromeOsDevice_DiskVolumeReportsItem
    ChromeOsDevice_DiskVolumeReportsItem (..),
    newChromeOsDevice_DiskVolumeReportsItem,

    -- * ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
    ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem (..),
    newChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem,

    -- * ChromeOsDevice_LastKnownNetworkItem
    ChromeOsDevice_LastKnownNetworkItem (..),
    newChromeOsDevice_LastKnownNetworkItem,

    -- * ChromeOsDevice_RecentUsersItem
    ChromeOsDevice_RecentUsersItem (..),
    newChromeOsDevice_RecentUsersItem,

    -- * ChromeOsDevice_ScreenshotFilesItem
    ChromeOsDevice_ScreenshotFilesItem (..),
    newChromeOsDevice_ScreenshotFilesItem,

    -- * ChromeOsDevice_SystemRamFreeReportsItem
    ChromeOsDevice_SystemRamFreeReportsItem (..),
    newChromeOsDevice_SystemRamFreeReportsItem,

    -- * ChromeOsDevice_TpmVersionInfo
    ChromeOsDevice_TpmVersionInfo (..),
    newChromeOsDevice_TpmVersionInfo,

    -- * ChromeOsDeviceAction
    ChromeOsDeviceAction (..),
    newChromeOsDeviceAction,

    -- * ChromeOsDevices
    ChromeOsDevices (..),
    newChromeOsDevices,

    -- * ChromeOsMoveDevicesToOu
    ChromeOsMoveDevicesToOu (..),
    newChromeOsMoveDevicesToOu,

    -- * CreatePrinterRequest
    CreatePrinterRequest (..),
    newCreatePrinterRequest,

    -- * Customer
    Customer (..),
    newCustomer,

    -- * CustomerPostalAddress
    CustomerPostalAddress (..),
    newCustomerPostalAddress,

    -- * DirectoryChromeosdevicesCommand
    DirectoryChromeosdevicesCommand (..),
    newDirectoryChromeosdevicesCommand,

    -- * DirectoryChromeosdevicesCommandResult
    DirectoryChromeosdevicesCommandResult (..),
    newDirectoryChromeosdevicesCommandResult,

    -- * DirectoryChromeosdevicesIssueCommandRequest
    DirectoryChromeosdevicesIssueCommandRequest (..),
    newDirectoryChromeosdevicesIssueCommandRequest,

    -- * DirectoryChromeosdevicesIssueCommandResponse
    DirectoryChromeosdevicesIssueCommandResponse (..),
    newDirectoryChromeosdevicesIssueCommandResponse,

    -- * DomainAlias
    DomainAlias (..),
    newDomainAlias,

    -- * DomainAliases
    DomainAliases (..),
    newDomainAliases,

    -- * Domains
    Domains (..),
    newDomains,

    -- * Domains2
    Domains2 (..),
    newDomains2,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FailureInfo
    FailureInfo (..),
    newFailureInfo,

    -- * Feature
    Feature (..),
    newFeature,

    -- * FeatureInstance
    FeatureInstance (..),
    newFeatureInstance,

    -- * FeatureRename
    FeatureRename (..),
    newFeatureRename,

    -- * Features
    Features (..),
    newFeatures,

    -- * Group
    Group (..),
    newGroup,

    -- * Groups
    Groups (..),
    newGroups,

    -- * ListPrinterModelsResponse
    ListPrinterModelsResponse (..),
    newListPrinterModelsResponse,

    -- * ListPrintersResponse
    ListPrintersResponse (..),
    newListPrintersResponse,

    -- * Member
    Member (..),
    newMember,

    -- * Members
    Members (..),
    newMembers,

    -- * MembersHasMember
    MembersHasMember (..),
    newMembersHasMember,

    -- * MobileDevice
    MobileDevice (..),
    newMobileDevice,

    -- * MobileDevice_ApplicationsItem
    MobileDevice_ApplicationsItem (..),
    newMobileDevice_ApplicationsItem,

    -- * MobileDeviceAction
    MobileDeviceAction (..),
    newMobileDeviceAction,

    -- * MobileDevices
    MobileDevices (..),
    newMobileDevices,

    -- * OrgUnit
    OrgUnit (..),
    newOrgUnit,

    -- * OrgUnits
    OrgUnits (..),
    newOrgUnits,

    -- * Printer
    Printer (..),
    newPrinter,

    -- * PrinterModel
    PrinterModel (..),
    newPrinterModel,

    -- * Privilege
    Privilege (..),
    newPrivilege,

    -- * Privileges
    Privileges (..),
    newPrivileges,

    -- * Role
    Role (..),
    newRole,

    -- * Role_RolePrivilegesItem
    Role_RolePrivilegesItem (..),
    newRole_RolePrivilegesItem,

    -- * RoleAssignment
    RoleAssignment (..),
    newRoleAssignment,

    -- * RoleAssignments
    RoleAssignments (..),
    newRoleAssignments,

    -- * Roles
    Roles (..),
    newRoles,

    -- * Schema
    Schema (..),
    newSchema,

    -- * SchemaFieldSpec
    SchemaFieldSpec (..),
    newSchemaFieldSpec,

    -- * SchemaFieldSpec_NumericIndexingSpec
    SchemaFieldSpec_NumericIndexingSpec (..),
    newSchemaFieldSpec_NumericIndexingSpec,

    -- * Schemas
    Schemas (..),
    newSchemas,

    -- * Token
    Token (..),
    newToken,

    -- * Tokens
    Tokens (..),
    newTokens,

    -- * User
    User (..),
    newUser,

    -- * User_CustomSchemas
    User_CustomSchemas (..),
    newUser_CustomSchemas,

    -- * UserAbout
    UserAbout (..),
    newUserAbout,

    -- * UserAddress
    UserAddress (..),
    newUserAddress,

    -- * UserCustomProperties
    UserCustomProperties (..),
    newUserCustomProperties,

    -- * UserEmail
    UserEmail (..),
    newUserEmail,

    -- * UserExternalId
    UserExternalId (..),
    newUserExternalId,

    -- * UserGender
    UserGender (..),
    newUserGender,

    -- * UserIm
    UserIm (..),
    newUserIm,

    -- * UserKeyword
    UserKeyword (..),
    newUserKeyword,

    -- * UserLanguage
    UserLanguage (..),
    newUserLanguage,

    -- * UserLocation
    UserLocation (..),
    newUserLocation,

    -- * UserMakeAdmin
    UserMakeAdmin (..),
    newUserMakeAdmin,

    -- * UserName
    UserName (..),
    newUserName,

    -- * UserOrganization
    UserOrganization (..),
    newUserOrganization,

    -- * UserPhone
    UserPhone (..),
    newUserPhone,

    -- * UserPhoto
    UserPhoto (..),
    newUserPhoto,

    -- * UserPosixAccount
    UserPosixAccount (..),
    newUserPosixAccount,

    -- * UserRelation
    UserRelation (..),
    newUserRelation,

    -- * UserSshPublicKey
    UserSshPublicKey (..),
    newUserSshPublicKey,

    -- * UserUndelete
    UserUndelete (..),
    newUserUndelete,

    -- * UserWebsite
    UserWebsite (..),
    newUserWebsite,

    -- * Users
    Users (..),
    newUsers,

    -- * VerificationCode
    VerificationCode (..),
    newVerificationCode,

    -- * VerificationCodes
    VerificationCodes (..),
    newVerificationCodes,
  )
where

import Gogol.Admin.Directory.Internal.Sum
import qualified Gogol.Prelude as Core

-- | JSON template for Alias object in Directory API.
--
-- /See:/ 'newAlias' smart constructor.
data Alias = Alias
  { -- |
    alias :: (Core.Maybe Core.Text),
    -- |
    etag :: (Core.Maybe Core.Text),
    -- |
    id :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text,
    -- |
    primaryEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Alias' with the minimum fields required to make a request.
newAlias ::
  Alias
newAlias =
  Alias
    { alias = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "admin#directory#alias",
      primaryEmail = Core.Nothing
    }

instance Core.FromJSON Alias where
  parseJSON =
    Core.withObject
      "Alias"
      ( \o ->
          Alias
            Core.<$> (o Core..:? "alias")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#alias")
            Core.<*> (o Core..:? "primaryEmail")
      )

instance Core.ToJSON Alias where
  toJSON Alias {..} =
    Core.object
      ( Core.catMaybes
          [ ("alias" Core..=) Core.<$> alias,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("primaryEmail" Core..=) Core.<$> primaryEmail
          ]
      )

-- | JSON response template to list aliases in Directory API.
--
-- /See:/ 'newAliases' smart constructor.
data Aliases = Aliases
  { -- |
    aliases :: (Core.Maybe [Core.Value]),
    -- |
    etag :: (Core.Maybe Core.Text),
    -- |
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Aliases' with the minimum fields required to make a request.
newAliases ::
  Aliases
newAliases =
  Aliases
    { aliases = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#aliases"
    }

instance Core.FromJSON Aliases where
  parseJSON =
    Core.withObject
      "Aliases"
      ( \o ->
          Aliases
            Core.<$> (o Core..:? "aliases" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#aliases"
                     )
      )

instance Core.ToJSON Aliases where
  toJSON Aliases {..} =
    Core.object
      ( Core.catMaybes
          [ ("aliases" Core..=) Core.<$> aliases,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | An application-specific password (ASP) is used with applications that do not accept a verification code when logging into the application on certain devices. The ASP access code is used instead of the login and password you commonly use when accessing an application through a browser. For more information about ASPs and how to create one, see the <https://support.google.com/a/answer/2537800#asp help center>.
--
-- /See:/ 'newAsp' smart constructor.
data Asp = Asp
  { -- | The unique ID of the ASP.
    codeId :: (Core.Maybe Core.Int32),
    -- | The time when the ASP was created. Expressed in <https://en.wikipedia.org/wiki/Epoch_time Unix time> format.
    creationTime :: (Core.Maybe Core.Int64),
    -- | ETag of the ASP.
    etag :: (Core.Maybe Core.Text),
    -- | The type of the API resource. This is always @admin#directory#asp@.
    kind :: Core.Text,
    -- | The time when the ASP was last used. Expressed in <https://en.wikipedia.org/wiki/Epoch_time Unix time> format.
    lastTimeUsed :: (Core.Maybe Core.Int64),
    -- | The name of the application that the user, represented by their @userId@, entered when the ASP was created.
    name :: (Core.Maybe Core.Text),
    -- | The unique ID of the user who issued the ASP.
    userKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Asp' with the minimum fields required to make a request.
newAsp ::
  Asp
newAsp =
  Asp
    { codeId = Core.Nothing,
      creationTime = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#asp",
      lastTimeUsed = Core.Nothing,
      name = Core.Nothing,
      userKey = Core.Nothing
    }

instance Core.FromJSON Asp where
  parseJSON =
    Core.withObject
      "Asp"
      ( \o ->
          Asp
            Core.<$> (o Core..:? "codeId")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#asp")
            Core.<*> (o Core..:? "lastTimeUsed")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "userKey")
      )

instance Core.ToJSON Asp where
  toJSON Asp {..} =
    Core.object
      ( Core.catMaybes
          [ ("codeId" Core..=) Core.<$> codeId,
            ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("lastTimeUsed" Core..=) Core.. Core.AsText
              Core.<$> lastTimeUsed,
            ("name" Core..=) Core.<$> name,
            ("userKey" Core..=) Core.<$> userKey
          ]
      )

--
-- /See:/ 'newAsps' smart constructor.
data Asps = Asps
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | A list of ASP resources.
    items :: (Core.Maybe [Asp]),
    -- | The type of the API resource. This is always @admin#directory#aspList@.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Asps' with the minimum fields required to make a request.
newAsps ::
  Asps
newAsps =
  Asps
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "admin#directory#aspList"
    }

instance Core.FromJSON Asps where
  parseJSON =
    Core.withObject
      "Asps"
      ( \o ->
          Asps
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#aspList"
                     )
      )

instance Core.ToJSON Asps where
  toJSON Asps {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | Auxiliary message about issues with printers or settings. Example: {message/type:AUXILIARY/MESSAGE/WARNING, field/mask:make/and/model, message:\"Given printer is invalid or no longer supported.\"}
--
-- /See:/ 'newAuxiliaryMessage' smart constructor.
data AuxiliaryMessage = AuxiliaryMessage
  { -- | Human readable message in English. Example: \"Given printer is invalid or no longer supported.\"
    auxiliaryMessage :: (Core.Maybe Core.Text),
    -- | Field that this message concerns.
    fieldMask :: (Core.Maybe Core.GFieldMask),
    -- | Message severity
    severity :: (Core.Maybe AuxiliaryMessage_Severity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuxiliaryMessage' with the minimum fields required to make a request.
newAuxiliaryMessage ::
  AuxiliaryMessage
newAuxiliaryMessage =
  AuxiliaryMessage
    { auxiliaryMessage = Core.Nothing,
      fieldMask = Core.Nothing,
      severity = Core.Nothing
    }

instance Core.FromJSON AuxiliaryMessage where
  parseJSON =
    Core.withObject
      "AuxiliaryMessage"
      ( \o ->
          AuxiliaryMessage
            Core.<$> (o Core..:? "auxiliaryMessage")
            Core.<*> (o Core..:? "fieldMask")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON AuxiliaryMessage where
  toJSON AuxiliaryMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("auxiliaryMessage" Core..=)
              Core.<$> auxiliaryMessage,
            ("fieldMask" Core..=) Core.<$> fieldMask,
            ("severity" Core..=) Core.<$> severity
          ]
      )

-- | Request for adding new printers in batch.
--
-- /See:/ 'newBatchCreatePrintersRequest' smart constructor.
newtype BatchCreatePrintersRequest = BatchCreatePrintersRequest
  { -- | A list of Printers to be created. Max 50 at a time.
    requests :: (Core.Maybe [CreatePrinterRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreatePrintersRequest' with the minimum fields required to make a request.
newBatchCreatePrintersRequest ::
  BatchCreatePrintersRequest
newBatchCreatePrintersRequest =
  BatchCreatePrintersRequest {requests = Core.Nothing}

instance Core.FromJSON BatchCreatePrintersRequest where
  parseJSON =
    Core.withObject
      "BatchCreatePrintersRequest"
      ( \o ->
          BatchCreatePrintersRequest
            Core.<$> (o Core..:? "requests" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchCreatePrintersRequest where
  toJSON BatchCreatePrintersRequest {..} =
    Core.object
      ( Core.catMaybes
          [("requests" Core..=) Core.<$> requests]
      )

-- | Response for adding new printers in batch.
--
-- /See:/ 'newBatchCreatePrintersResponse' smart constructor.
data BatchCreatePrintersResponse = BatchCreatePrintersResponse
  { -- | A list of create failures. Printer IDs are not populated, as printer were not created.
    failures :: (Core.Maybe [FailureInfo]),
    -- | A list of successfully created printers with their IDs populated.
    printers :: (Core.Maybe [Printer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreatePrintersResponse' with the minimum fields required to make a request.
newBatchCreatePrintersResponse ::
  BatchCreatePrintersResponse
newBatchCreatePrintersResponse =
  BatchCreatePrintersResponse {failures = Core.Nothing, printers = Core.Nothing}

instance Core.FromJSON BatchCreatePrintersResponse where
  parseJSON =
    Core.withObject
      "BatchCreatePrintersResponse"
      ( \o ->
          BatchCreatePrintersResponse
            Core.<$> (o Core..:? "failures" Core..!= Core.mempty)
            Core.<*> (o Core..:? "printers" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchCreatePrintersResponse where
  toJSON BatchCreatePrintersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("failures" Core..=) Core.<$> failures,
            ("printers" Core..=) Core.<$> printers
          ]
      )

-- | Request for deleting existing printers in batch.
--
-- /See:/ 'newBatchDeletePrintersRequest' smart constructor.
newtype BatchDeletePrintersRequest = BatchDeletePrintersRequest
  { -- | A list of Printer.id that should be deleted. Max 100 at a time.
    printerIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeletePrintersRequest' with the minimum fields required to make a request.
newBatchDeletePrintersRequest ::
  BatchDeletePrintersRequest
newBatchDeletePrintersRequest =
  BatchDeletePrintersRequest {printerIds = Core.Nothing}

instance Core.FromJSON BatchDeletePrintersRequest where
  parseJSON =
    Core.withObject
      "BatchDeletePrintersRequest"
      ( \o ->
          BatchDeletePrintersRequest
            Core.<$> (o Core..:? "printerIds" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchDeletePrintersRequest where
  toJSON BatchDeletePrintersRequest {..} =
    Core.object
      ( Core.catMaybes
          [("printerIds" Core..=) Core.<$> printerIds]
      )

-- | Response for deleting existing printers in batch.
--
-- /See:/ 'newBatchDeletePrintersResponse' smart constructor.
data BatchDeletePrintersResponse = BatchDeletePrintersResponse
  { -- | A list of update failures.
    failedPrinters :: (Core.Maybe [FailureInfo]),
    -- | A list of Printer.id that were successfully deleted.
    printerIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeletePrintersResponse' with the minimum fields required to make a request.
newBatchDeletePrintersResponse ::
  BatchDeletePrintersResponse
newBatchDeletePrintersResponse =
  BatchDeletePrintersResponse
    { failedPrinters = Core.Nothing,
      printerIds = Core.Nothing
    }

instance Core.FromJSON BatchDeletePrintersResponse where
  parseJSON =
    Core.withObject
      "BatchDeletePrintersResponse"
      ( \o ->
          BatchDeletePrintersResponse
            Core.<$> (o Core..:? "failedPrinters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "printerIds" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchDeletePrintersResponse where
  toJSON BatchDeletePrintersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("failedPrinters" Core..=) Core.<$> failedPrinters,
            ("printerIds" Core..=) Core.<$> printerIds
          ]
      )

-- | Public API: Resources.buildings
--
-- /See:/ 'newBuilding' smart constructor.
data Building = Building
  { -- | The postal address of the building. See </my-business/reference/rest/v4/PostalAddress PostalAddress> for details. Note that only a single address line and region code are required.
    address :: (Core.Maybe BuildingAddress),
    -- | Unique identifier for the building. The maximum length is 100 characters.
    buildingId :: (Core.Maybe Core.Text),
    -- | The building name as seen by users in Calendar. Must be unique for the customer. For example, \"NYC-CHEL\". The maximum length is 100 characters.
    buildingName :: (Core.Maybe Core.Text),
    -- | The geographic coordinates of the center of the building, expressed as latitude and longitude in decimal degrees.
    coordinates :: (Core.Maybe BuildingCoordinates),
    -- | A brief description of the building. For example, \"Chelsea Market\".
    description :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etags :: (Core.Maybe Core.Text),
    -- | The display names for all floors in this building. The floors are expected to be sorted in ascending order, from lowest floor to highest floor. For example, [\"B2\", \"B1\", \"L\", \"1\", \"2\", \"2M\", \"3\", \"PH\"] Must contain at least one entry.
    floorNames :: (Core.Maybe [Core.Text]),
    -- | Kind of resource this is.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Building' with the minimum fields required to make a request.
newBuilding ::
  Building
newBuilding =
  Building
    { address = Core.Nothing,
      buildingId = Core.Nothing,
      buildingName = Core.Nothing,
      coordinates = Core.Nothing,
      description = Core.Nothing,
      etags = Core.Nothing,
      floorNames = Core.Nothing,
      kind = "admin#directory#resources#buildings#Building"
    }

instance Core.FromJSON Building where
  parseJSON =
    Core.withObject
      "Building"
      ( \o ->
          Building
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "buildingId")
            Core.<*> (o Core..:? "buildingName")
            Core.<*> (o Core..:? "coordinates")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etags")
            Core.<*> (o Core..:? "floorNames" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#resources#buildings#Building"
                     )
      )

instance Core.ToJSON Building where
  toJSON Building {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("buildingId" Core..=) Core.<$> buildingId,
            ("buildingName" Core..=) Core.<$> buildingName,
            ("coordinates" Core..=) Core.<$> coordinates,
            ("description" Core..=) Core.<$> description,
            ("etags" Core..=) Core.<$> etags,
            ("floorNames" Core..=) Core.<$> floorNames,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | Public API: Resources.buildings
--
-- /See:/ 'newBuildingAddress' smart constructor.
data BuildingAddress = BuildingAddress
  { -- | Unstructured address lines describing the lower levels of an address.
    addressLines :: (Core.Maybe [Core.Text]),
    -- | Optional. Highest administrative subdivision which is used for postal addresses of a country or region.
    administrativeArea :: (Core.Maybe Core.Text),
    -- | Optional. BCP-47 language code of the contents of this address (if known).
    languageCode :: (Core.Maybe Core.Text),
    -- | Optional. Generally refers to the city\/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines.
    locality :: (Core.Maybe Core.Text),
    -- | Optional. Postal code of the address.
    postalCode :: (Core.Maybe Core.Text),
    -- | Required. CLDR region code of the country\/region of the address.
    regionCode :: (Core.Maybe Core.Text),
    -- | Optional. Sublocality of the address.
    sublocality :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildingAddress' with the minimum fields required to make a request.
newBuildingAddress ::
  BuildingAddress
newBuildingAddress =
  BuildingAddress
    { addressLines = Core.Nothing,
      administrativeArea = Core.Nothing,
      languageCode = Core.Nothing,
      locality = Core.Nothing,
      postalCode = Core.Nothing,
      regionCode = Core.Nothing,
      sublocality = Core.Nothing
    }

instance Core.FromJSON BuildingAddress where
  parseJSON =
    Core.withObject
      "BuildingAddress"
      ( \o ->
          BuildingAddress
            Core.<$> (o Core..:? "addressLines" Core..!= Core.mempty)
            Core.<*> (o Core..:? "administrativeArea")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "sublocality")
      )

instance Core.ToJSON BuildingAddress where
  toJSON BuildingAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("addressLines" Core..=) Core.<$> addressLines,
            ("administrativeArea" Core..=)
              Core.<$> administrativeArea,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("locality" Core..=) Core.<$> locality,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("sublocality" Core..=) Core.<$> sublocality
          ]
      )

-- | Public API: Resources.buildings
--
-- /See:/ 'newBuildingCoordinates' smart constructor.
data BuildingCoordinates = BuildingCoordinates
  { -- | Latitude in decimal degrees.
    latitude :: (Core.Maybe Core.Double),
    -- | Longitude in decimal degrees.
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildingCoordinates' with the minimum fields required to make a request.
newBuildingCoordinates ::
  BuildingCoordinates
newBuildingCoordinates =
  BuildingCoordinates {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON BuildingCoordinates where
  parseJSON =
    Core.withObject
      "BuildingCoordinates"
      ( \o ->
          BuildingCoordinates
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON BuildingCoordinates where
  toJSON BuildingCoordinates {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | Public API: Resources.buildings
--
-- /See:/ 'newBuildings' smart constructor.
data Buildings = Buildings
  { -- | The Buildings in this page of results.
    buildings :: (Core.Maybe [Building]),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Buildings' with the minimum fields required to make a request.
newBuildings ::
  Buildings
newBuildings =
  Buildings
    { buildings = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#resources#buildings#buildingsList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Buildings where
  parseJSON =
    Core.withObject
      "Buildings"
      ( \o ->
          Buildings
            Core.<$> (o Core..:? "buildings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#resources#buildings#buildingsList"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Buildings where
  toJSON Buildings {..} =
    Core.object
      ( Core.catMaybes
          [ ("buildings" Core..=) Core.<$> buildings,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Public API: Resources.calendars
--
-- /See:/ 'newCalendarResource' smart constructor.
data CalendarResource = CalendarResource
  { -- | Unique ID for the building a resource is located in.
    buildingId :: (Core.Maybe Core.Text),
    -- | Capacity of a resource, number of seats in a room.
    capacity :: (Core.Maybe Core.Int32),
    -- | ETag of the resource.
    etags :: (Core.Maybe Core.Text),
    -- | Instances of features for the calendar resource.
    featureInstances :: (Core.Maybe Core.Value),
    -- | Name of the floor a resource is located on.
    floorName :: (Core.Maybe Core.Text),
    -- | Name of the section within a floor a resource is located in.
    floorSection :: (Core.Maybe Core.Text),
    -- | The read-only auto-generated name of the calendar resource which includes metadata about the resource such as building name, floor, capacity, etc. For example, \"NYC-2-Training Room 1A (16)\".
    generatedResourceName :: (Core.Maybe Core.Text),
    -- | The type of the resource. For calendar resources, the value is @admin#directory#resources#calendars#CalendarResource@.
    kind :: Core.Text,
    -- | The category of the calendar resource. Either CONFERENCE/ROOM or OTHER. Legacy data is set to CATEGORY/UNKNOWN.
    resourceCategory :: (Core.Maybe Core.Text),
    -- | Description of the resource, visible only to admins.
    resourceDescription :: (Core.Maybe Core.Text),
    -- | The read-only email for the calendar resource. Generated as part of creating a new calendar resource.
    resourceEmail :: (Core.Maybe Core.Text),
    -- | The unique ID for the calendar resource.
    resourceId :: (Core.Maybe Core.Text),
    -- | The name of the calendar resource. For example, \"Training Room 1A\".
    resourceName :: (Core.Maybe Core.Text),
    -- | The type of the calendar resource, intended for non-room resources.
    resourceType :: (Core.Maybe Core.Text),
    -- | Description of the resource, visible to users and admins.
    userVisibleDescription :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarResource' with the minimum fields required to make a request.
newCalendarResource ::
  CalendarResource
newCalendarResource =
  CalendarResource
    { buildingId = Core.Nothing,
      capacity = Core.Nothing,
      etags = Core.Nothing,
      featureInstances = Core.Nothing,
      floorName = Core.Nothing,
      floorSection = Core.Nothing,
      generatedResourceName = Core.Nothing,
      kind = "admin#directory#resources#calendars#CalendarResource",
      resourceCategory = Core.Nothing,
      resourceDescription = Core.Nothing,
      resourceEmail = Core.Nothing,
      resourceId = Core.Nothing,
      resourceName = Core.Nothing,
      resourceType = Core.Nothing,
      userVisibleDescription = Core.Nothing
    }

instance Core.FromJSON CalendarResource where
  parseJSON =
    Core.withObject
      "CalendarResource"
      ( \o ->
          CalendarResource
            Core.<$> (o Core..:? "buildingId")
            Core.<*> (o Core..:? "capacity")
            Core.<*> (o Core..:? "etags")
            Core.<*> (o Core..:? "featureInstances")
            Core.<*> (o Core..:? "floorName")
            Core.<*> (o Core..:? "floorSection")
            Core.<*> (o Core..:? "generatedResourceName")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#resources#calendars#CalendarResource"
                     )
            Core.<*> (o Core..:? "resourceCategory")
            Core.<*> (o Core..:? "resourceDescription")
            Core.<*> (o Core..:? "resourceEmail")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "resourceType")
            Core.<*> (o Core..:? "userVisibleDescription")
      )

instance Core.ToJSON CalendarResource where
  toJSON CalendarResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("buildingId" Core..=) Core.<$> buildingId,
            ("capacity" Core..=) Core.<$> capacity,
            ("etags" Core..=) Core.<$> etags,
            ("featureInstances" Core..=)
              Core.<$> featureInstances,
            ("floorName" Core..=) Core.<$> floorName,
            ("floorSection" Core..=) Core.<$> floorSection,
            ("generatedResourceName" Core..=)
              Core.<$> generatedResourceName,
            Core.Just ("kind" Core..= kind),
            ("resourceCategory" Core..=)
              Core.<$> resourceCategory,
            ("resourceDescription" Core..=)
              Core.<$> resourceDescription,
            ("resourceEmail" Core..=) Core.<$> resourceEmail,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("resourceType" Core..=) Core.<$> resourceType,
            ("userVisibleDescription" Core..=)
              Core.<$> userVisibleDescription
          ]
      )

-- | Public API: Resources.calendars
--
-- /See:/ 'newCalendarResources' smart constructor.
data CalendarResources = CalendarResources
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The CalendarResources in this page of results.
    items :: (Core.Maybe [CalendarResource]),
    -- | Identifies this as a collection of CalendarResources. This is always @admin#directory#resources#calendars#calendarResourcesList@.
    kind :: Core.Text,
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarResources' with the minimum fields required to make a request.
newCalendarResources ::
  CalendarResources
newCalendarResources =
  CalendarResources
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "admin#directory#resources#calendars#calendarResourcesList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON CalendarResources where
  parseJSON =
    Core.withObject
      "CalendarResources"
      ( \o ->
          CalendarResources
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#resources#calendars#calendarResourcesList"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON CalendarResources where
  toJSON CalendarResources {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
  { -- | The address where notifications are delivered for this channel.
    address :: (Core.Maybe Core.Text),
    -- | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    expiration :: (Core.Maybe Core.Int64),
    -- | A UUID or similar unique string that identifies this channel.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a notification channel used to watch for changes to a resource, which is @api#channel@.
    kind :: Core.Text,
    -- | Additional parameters controlling delivery channel behavior. Optional.
    params :: (Core.Maybe Channel_Params),
    -- | A Boolean value to indicate whether payload is wanted. Optional.
    payload :: (Core.Maybe Core.Bool),
    -- | An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    resourceId :: (Core.Maybe Core.Text),
    -- | A version-specific identifier for the watched resource.
    resourceUri :: (Core.Maybe Core.Text),
    -- | An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    token :: (Core.Maybe Core.Text),
    -- | The type of delivery mechanism used for this channel.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel ::
  Channel
newChannel =
  Channel
    { address = Core.Nothing,
      expiration = Core.Nothing,
      id = Core.Nothing,
      kind = "api#channel",
      params = Core.Nothing,
      payload = Core.Nothing,
      resourceId = Core.Nothing,
      resourceUri = Core.Nothing,
      token = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \o ->
          Channel
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "expiration")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "api#channel")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "resourceUri")
            Core.<*> (o Core..:? "token")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Channel where
  toJSON Channel {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("expiration" Core..=) Core.. Core.AsText
              Core.<$> expiration,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("params" Core..=) Core.<$> params,
            ("payload" Core..=) Core.<$> payload,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("resourceUri" Core..=) Core.<$> resourceUri,
            ("token" Core..=) Core.<$> token,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'newChannel_Params' smart constructor.
newtype Channel_Params = Channel_Params
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel_Params' with the minimum fields required to make a request.
newChannel_Params ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Channel_Params
newChannel_Params addtional = Channel_Params {addtional = addtional}

instance Core.FromJSON Channel_Params where
  parseJSON =
    Core.withObject
      "Channel_Params"
      ( \o ->
          Channel_Params Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Channel_Params where
  toJSON Channel_Params {..} = Core.toJSON addtional

-- | Google Chrome devices run on the <https://support.google.com/chromeos Chrome OS>. For more information about common API tasks, see the </admin-sdk/directory/v1/guides/manage-chrome-devices Developer\'s Guide>.
--
-- /See:/ 'newChromeOsDevice' smart constructor.
data ChromeOsDevice = ChromeOsDevice
  { -- | List of active time ranges (Read-only).
    activeTimeRanges :: (Core.Maybe [ChromeOsDevice_ActiveTimeRangesItem]),
    -- | The asset identifier as noted by an administrator or specified during enrollment.
    annotatedAssetId :: (Core.Maybe Core.Text),
    -- | The address or location of the device as noted by the administrator. Maximum length is @200@ characters. Empty values are allowed.
    annotatedLocation :: (Core.Maybe Core.Text),
    -- | The user of the device as noted by the administrator. Maximum length is 100 characters. Empty values are allowed.
    annotatedUser :: (Core.Maybe Core.Text),
    -- | (Read-only) The timestamp after which the device will stop receiving Chrome updates or support
    autoUpdateExpiration :: (Core.Maybe Core.Int64),
    -- | The boot mode for the device. The possible values are: * @Verified@: The device is running a valid version of the Chrome OS. * @Dev@: The devices\'s developer hardware switch is enabled. When booted, the device has a command line shell. For an example of a developer switch, see the <https://www.chromium.org/chromium-os/developer-information-for-chrome-os-devices/samsung-series-5-chromebook#TOC-Developer-switch Chromebook developer information>.
    bootMode :: (Core.Maybe Core.Text),
    -- | Information regarding CPU specs in the device.
    cpuInfo :: (Core.Maybe [ChromeOsDevice_CpuInfoItem]),
    -- | Reports of CPU utilization and temperature (Read-only)
    cpuStatusReports :: (Core.Maybe [ChromeOsDevice_CpuStatusReportsItem]),
    -- | List of device files to download (Read-only)
    deviceFiles :: (Core.Maybe [ChromeOsDevice_DeviceFilesItem]),
    -- | The unique ID of the Chrome device.
    deviceId :: (Core.Maybe Core.Text),
    -- | Reports of disk space and other info about mounted\/connected volumes.
    diskVolumeReports :: (Core.Maybe [ChromeOsDevice_DiskVolumeReportsItem]),
    -- | (Read-only) Built-in MAC address for the docking station that the device connected to. Factory sets Media access control address (MAC address) assigned for use by a dock. It is reserved specifically for MAC pass through device policy. The format is twelve (12) hexadecimal digits without any delimiter (uppercase letters). This is only relevant for some devices.
    dockMacAddress :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The device\'s MAC address on the ethernet network interface.
    ethernetMacAddress :: (Core.Maybe Core.Text),
    -- | (Read-only) MAC address used by the Chromebook’s internal ethernet port, and for onboard network (ethernet) interface. The format is twelve (12) hexadecimal digits without any delimiter (uppercase letters). This is only relevant for some devices.
    ethernetMacAddress0 :: (Core.Maybe Core.Text),
    -- | The Chrome device\'s firmware version.
    firmwareVersion :: (Core.Maybe Core.Text),
    -- | The type of resource. For the Chromeosdevices resource, the value is @admin#directory#chromeosdevice@.
    kind :: Core.Text,
    -- | Date and time the device was last enrolled (Read-only)
    lastEnrollmentTime :: (Core.Maybe Core.DateTime'),
    -- | Contains last known network (Read-only)
    lastKnownNetwork :: (Core.Maybe [ChromeOsDevice_LastKnownNetworkItem]),
    -- | Date and time the device was last synchronized with the policy settings in the G Suite administrator control panel (Read-only)
    lastSync :: (Core.Maybe Core.DateTime'),
    -- | The device\'s wireless MAC address. If the device does not have this information, it is not included in the response.
    macAddress :: (Core.Maybe Core.Text),
    -- | (Read-only) The date the device was manufactured in yyyy-mm-dd format.
    manufactureDate :: (Core.Maybe Core.Text),
    -- | The Mobile Equipment Identifier (MEID) or the International Mobile Equipment Identity (IMEI) for the 3G mobile card in a mobile device. A MEID\/IMEI is typically used when adding a device to a wireless carrier\'s post-pay service plan. If the device does not have this information, this property is not included in the response. For more information on how to export a MEID\/IMEI list, see the </admin-sdk/directory/v1/guides/manage-chrome-devices.html#export_meid Developer\'s Guide>.
    meid :: (Core.Maybe Core.Text),
    -- | The device\'s model information. If the device does not have this information, this property is not included in the response.
    model :: (Core.Maybe Core.Text),
    -- | Notes about this device added by the administrator. This property can be <https://support.google.com/chrome/a/answer/1698333 searched> with the </admin-sdk/directory/v1/reference/chromeosdevices/list list> method\'s @query@ parameter. Maximum length is 500 characters. Empty values are allowed.
    notes :: (Core.Maybe Core.Text),
    -- | The device\'s order number. Only devices directly purchased from Google have an order number.
    orderNumber :: (Core.Maybe Core.Text),
    -- | The unique ID of the organizational unit. orgUnitPath is the human readable version of orgUnitId. While orgUnitPath may change by renaming an organizational unit within the path, orgUnitId is unchangeable for one organizational unit. This property can be </admin-sdk/directory/v1/guides/manage-chrome-devices#move_chrome_devices_to_ou updated> using the API. For more information about how to create an organizational structure for your device, see the <https://support.google.com/a/answer/182433 administration help center>.
    orgUnitId :: (Core.Maybe Core.Text),
    -- | The full parent path with the organizational unit\'s name associated with the device. Path names are case insensitive. If the parent organizational unit is the top-level organization, it is represented as a forward slash, @\/@. This property can be </admin-sdk/directory/v1/guides/manage-chrome-devices#move_chrome_devices_to_ou updated> using the API. For more information about how to create an organizational structure for your device, see the <https://support.google.com/a/answer/182433 administration help center>.
    orgUnitPath :: (Core.Maybe Core.Text),
    -- | The Chrome device\'s operating system version.
    osVersion :: (Core.Maybe Core.Text),
    -- | The Chrome device\'s platform version.
    platformVersion :: (Core.Maybe Core.Text),
    -- | List of recent device users, in descending order, by last login time.
    recentUsers :: (Core.Maybe [ChromeOsDevice_RecentUsersItem]),
    -- | List of screenshot files to download. Type is always \"SCREENSHOT_FILE\". (Read-only)
    screenshotFiles :: (Core.Maybe [ChromeOsDevice_ScreenshotFilesItem]),
    -- | The Chrome device serial number entered when the device was enabled. This value is the same as the Admin console\'s /Serial Number/ in the /Chrome OS Devices/ tab.
    serialNumber :: (Core.Maybe Core.Text),
    -- | The status of the device.
    status :: (Core.Maybe Core.Text),
    -- | Final date the device will be supported (Read-only)
    supportEndDate :: (Core.Maybe Core.DateTime'),
    -- | Reports of amounts of available RAM memory (Read-only)
    systemRamFreeReports :: (Core.Maybe [ChromeOsDevice_SystemRamFreeReportsItem]),
    -- | Total RAM on the device [in bytes] (Read-only)
    systemRamTotal :: (Core.Maybe Core.Int64),
    -- | Trusted Platform Module (TPM) (Read-only)
    tpmVersionInfo :: (Core.Maybe ChromeOsDevice_TpmVersionInfo),
    -- | Determines if the device will auto renew its support after the support end date. This is a read-only property.
    willAutoRenew :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice' with the minimum fields required to make a request.
newChromeOsDevice ::
  ChromeOsDevice
newChromeOsDevice =
  ChromeOsDevice
    { activeTimeRanges = Core.Nothing,
      annotatedAssetId = Core.Nothing,
      annotatedLocation = Core.Nothing,
      annotatedUser = Core.Nothing,
      autoUpdateExpiration = Core.Nothing,
      bootMode = Core.Nothing,
      cpuInfo = Core.Nothing,
      cpuStatusReports = Core.Nothing,
      deviceFiles = Core.Nothing,
      deviceId = Core.Nothing,
      diskVolumeReports = Core.Nothing,
      dockMacAddress = Core.Nothing,
      etag = Core.Nothing,
      ethernetMacAddress = Core.Nothing,
      ethernetMacAddress0 = Core.Nothing,
      firmwareVersion = Core.Nothing,
      kind = "admin#directory#chromeosdevice",
      lastEnrollmentTime = Core.Nothing,
      lastKnownNetwork = Core.Nothing,
      lastSync = Core.Nothing,
      macAddress = Core.Nothing,
      manufactureDate = Core.Nothing,
      meid = Core.Nothing,
      model = Core.Nothing,
      notes = Core.Nothing,
      orderNumber = Core.Nothing,
      orgUnitId = Core.Nothing,
      orgUnitPath = Core.Nothing,
      osVersion = Core.Nothing,
      platformVersion = Core.Nothing,
      recentUsers = Core.Nothing,
      screenshotFiles = Core.Nothing,
      serialNumber = Core.Nothing,
      status = Core.Nothing,
      supportEndDate = Core.Nothing,
      systemRamFreeReports = Core.Nothing,
      systemRamTotal = Core.Nothing,
      tpmVersionInfo = Core.Nothing,
      willAutoRenew = Core.Nothing
    }

instance Core.FromJSON ChromeOsDevice where
  parseJSON =
    Core.withObject
      "ChromeOsDevice"
      ( \o ->
          ChromeOsDevice
            Core.<$> (o Core..:? "activeTimeRanges" Core..!= Core.mempty)
            Core.<*> (o Core..:? "annotatedAssetId")
            Core.<*> (o Core..:? "annotatedLocation")
            Core.<*> (o Core..:? "annotatedUser")
            Core.<*> (o Core..:? "autoUpdateExpiration")
            Core.<*> (o Core..:? "bootMode")
            Core.<*> (o Core..:? "cpuInfo" Core..!= Core.mempty)
            Core.<*> (o Core..:? "cpuStatusReports" Core..!= Core.mempty)
            Core.<*> (o Core..:? "deviceFiles" Core..!= Core.mempty)
            Core.<*> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "diskVolumeReports" Core..!= Core.mempty)
            Core.<*> (o Core..:? "dockMacAddress")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "ethernetMacAddress")
            Core.<*> (o Core..:? "ethernetMacAddress0")
            Core.<*> (o Core..:? "firmwareVersion")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#chromeosdevice"
                     )
            Core.<*> (o Core..:? "lastEnrollmentTime")
            Core.<*> (o Core..:? "lastKnownNetwork" Core..!= Core.mempty)
            Core.<*> (o Core..:? "lastSync")
            Core.<*> (o Core..:? "macAddress")
            Core.<*> (o Core..:? "manufactureDate")
            Core.<*> (o Core..:? "meid")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "notes")
            Core.<*> (o Core..:? "orderNumber")
            Core.<*> (o Core..:? "orgUnitId")
            Core.<*> (o Core..:? "orgUnitPath")
            Core.<*> (o Core..:? "osVersion")
            Core.<*> (o Core..:? "platformVersion")
            Core.<*> (o Core..:? "recentUsers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "screenshotFiles" Core..!= Core.mempty)
            Core.<*> (o Core..:? "serialNumber")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "supportEndDate")
            Core.<*> ( o Core..:? "systemRamFreeReports"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "systemRamTotal")
            Core.<*> (o Core..:? "tpmVersionInfo")
            Core.<*> (o Core..:? "willAutoRenew")
      )

instance Core.ToJSON ChromeOsDevice where
  toJSON ChromeOsDevice {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeTimeRanges" Core..=)
              Core.<$> activeTimeRanges,
            ("annotatedAssetId" Core..=)
              Core.<$> annotatedAssetId,
            ("annotatedLocation" Core..=)
              Core.<$> annotatedLocation,
            ("annotatedUser" Core..=) Core.<$> annotatedUser,
            ("autoUpdateExpiration" Core..=) Core.. Core.AsText
              Core.<$> autoUpdateExpiration,
            ("bootMode" Core..=) Core.<$> bootMode,
            ("cpuInfo" Core..=) Core.<$> cpuInfo,
            ("cpuStatusReports" Core..=)
              Core.<$> cpuStatusReports,
            ("deviceFiles" Core..=) Core.<$> deviceFiles,
            ("deviceId" Core..=) Core.<$> deviceId,
            ("diskVolumeReports" Core..=)
              Core.<$> diskVolumeReports,
            ("dockMacAddress" Core..=) Core.<$> dockMacAddress,
            ("etag" Core..=) Core.<$> etag,
            ("ethernetMacAddress" Core..=)
              Core.<$> ethernetMacAddress,
            ("ethernetMacAddress0" Core..=)
              Core.<$> ethernetMacAddress0,
            ("firmwareVersion" Core..=) Core.<$> firmwareVersion,
            Core.Just ("kind" Core..= kind),
            ("lastEnrollmentTime" Core..=)
              Core.<$> lastEnrollmentTime,
            ("lastKnownNetwork" Core..=)
              Core.<$> lastKnownNetwork,
            ("lastSync" Core..=) Core.<$> lastSync,
            ("macAddress" Core..=) Core.<$> macAddress,
            ("manufactureDate" Core..=) Core.<$> manufactureDate,
            ("meid" Core..=) Core.<$> meid,
            ("model" Core..=) Core.<$> model,
            ("notes" Core..=) Core.<$> notes,
            ("orderNumber" Core..=) Core.<$> orderNumber,
            ("orgUnitId" Core..=) Core.<$> orgUnitId,
            ("orgUnitPath" Core..=) Core.<$> orgUnitPath,
            ("osVersion" Core..=) Core.<$> osVersion,
            ("platformVersion" Core..=) Core.<$> platformVersion,
            ("recentUsers" Core..=) Core.<$> recentUsers,
            ("screenshotFiles" Core..=) Core.<$> screenshotFiles,
            ("serialNumber" Core..=) Core.<$> serialNumber,
            ("status" Core..=) Core.<$> status,
            ("supportEndDate" Core..=) Core.<$> supportEndDate,
            ("systemRamFreeReports" Core..=)
              Core.<$> systemRamFreeReports,
            ("systemRamTotal" Core..=) Core.. Core.AsText
              Core.<$> systemRamTotal,
            ("tpmVersionInfo" Core..=) Core.<$> tpmVersionInfo,
            ("willAutoRenew" Core..=) Core.<$> willAutoRenew
          ]
      )

--
-- /See:/ 'newChromeOsDevice_ActiveTimeRangesItem' smart constructor.
data ChromeOsDevice_ActiveTimeRangesItem = ChromeOsDevice_ActiveTimeRangesItem
  { -- | Duration of usage in milliseconds.
    activeTime :: (Core.Maybe Core.Int32),
    -- | Date of usage
    date :: (Core.Maybe Core.Date')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_ActiveTimeRangesItem' with the minimum fields required to make a request.
newChromeOsDevice_ActiveTimeRangesItem ::
  ChromeOsDevice_ActiveTimeRangesItem
newChromeOsDevice_ActiveTimeRangesItem =
  ChromeOsDevice_ActiveTimeRangesItem
    { activeTime = Core.Nothing,
      date = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_ActiveTimeRangesItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_ActiveTimeRangesItem"
      ( \o ->
          ChromeOsDevice_ActiveTimeRangesItem
            Core.<$> (o Core..:? "activeTime")
            Core.<*> (o Core..:? "date")
      )

instance
  Core.ToJSON
    ChromeOsDevice_ActiveTimeRangesItem
  where
  toJSON ChromeOsDevice_ActiveTimeRangesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeTime" Core..=) Core.<$> activeTime,
            ("date" Core..=) Core.<$> date
          ]
      )

-- | CPU specs for a CPU.
--
-- /See:/ 'newChromeOsDevice_CpuInfoItem' smart constructor.
data ChromeOsDevice_CpuInfoItem = ChromeOsDevice_CpuInfoItem
  { -- | The CPU architecture.
    architecture :: (Core.Maybe Core.Text),
    -- | Information for the Logical CPUs
    logicalCpus :: (Core.Maybe [ChromeOsDevice_CpuInfoItem_LogicalCpusItem]),
    -- | The max CPU clock speed in kHz.
    maxClockSpeedKhz :: (Core.Maybe Core.Int32),
    -- | The CPU model name.
    model :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_CpuInfoItem' with the minimum fields required to make a request.
newChromeOsDevice_CpuInfoItem ::
  ChromeOsDevice_CpuInfoItem
newChromeOsDevice_CpuInfoItem =
  ChromeOsDevice_CpuInfoItem
    { architecture = Core.Nothing,
      logicalCpus = Core.Nothing,
      maxClockSpeedKhz = Core.Nothing,
      model = Core.Nothing
    }

instance Core.FromJSON ChromeOsDevice_CpuInfoItem where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_CpuInfoItem"
      ( \o ->
          ChromeOsDevice_CpuInfoItem
            Core.<$> (o Core..:? "architecture")
            Core.<*> (o Core..:? "logicalCpus" Core..!= Core.mempty)
            Core.<*> (o Core..:? "maxClockSpeedKhz")
            Core.<*> (o Core..:? "model")
      )

instance Core.ToJSON ChromeOsDevice_CpuInfoItem where
  toJSON ChromeOsDevice_CpuInfoItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("architecture" Core..=) Core.<$> architecture,
            ("logicalCpus" Core..=) Core.<$> logicalCpus,
            ("maxClockSpeedKhz" Core..=)
              Core.<$> maxClockSpeedKhz,
            ("model" Core..=) Core.<$> model
          ]
      )

-- | Status of a single logical CPU.
--
-- /See:/ 'newChromeOsDevice_CpuInfoItem_LogicalCpusItem' smart constructor.
data ChromeOsDevice_CpuInfoItem_LogicalCpusItem = ChromeOsDevice_CpuInfoItem_LogicalCpusItem
  { -- | C-States indicate the power consumption state of the CPU. For more information look at documentation published by the CPU maker.
    cStates ::
      ( Core.Maybe
          [ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem]
      ),
    -- | Current frequency the CPU is running at.
    currentScalingFrequencyKhz :: (Core.Maybe Core.Int32),
    -- | Idle time since last boot.
    idleDuration :: (Core.Maybe Core.GDuration),
    -- | Maximum frequency the CPU is allowed to run at, by policy.
    maxScalingFrequencyKhz :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_CpuInfoItem_LogicalCpusItem' with the minimum fields required to make a request.
newChromeOsDevice_CpuInfoItem_LogicalCpusItem ::
  ChromeOsDevice_CpuInfoItem_LogicalCpusItem
newChromeOsDevice_CpuInfoItem_LogicalCpusItem =
  ChromeOsDevice_CpuInfoItem_LogicalCpusItem
    { cStates = Core.Nothing,
      currentScalingFrequencyKhz = Core.Nothing,
      idleDuration = Core.Nothing,
      maxScalingFrequencyKhz = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_CpuInfoItem_LogicalCpusItem"
      ( \o ->
          ChromeOsDevice_CpuInfoItem_LogicalCpusItem
            Core.<$> (o Core..:? "cStates" Core..!= Core.mempty)
            Core.<*> (o Core..:? "currentScalingFrequencyKhz")
            Core.<*> (o Core..:? "idleDuration")
            Core.<*> (o Core..:? "maxScalingFrequencyKhz")
      )

instance
  Core.ToJSON
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem
  where
  toJSON ChromeOsDevice_CpuInfoItem_LogicalCpusItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("cStates" Core..=) Core.<$> cStates,
            ("currentScalingFrequencyKhz" Core..=)
              Core.<$> currentScalingFrequencyKhz,
            ("idleDuration" Core..=) Core.<$> idleDuration,
            ("maxScalingFrequencyKhz" Core..=)
              Core.<$> maxScalingFrequencyKhz
          ]
      )

-- | Status of a single C-state. C-states are various modes the CPU can transition to in order to use more or less power.
--
-- /See:/ 'newChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem' smart constructor.
data ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem = ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
  { -- | Name of the state.
    displayName :: (Core.Maybe Core.Text),
    -- | Time spent in the state since the last reboot.
    sessionDuration :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem' with the minimum fields required to make a request.
newChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem ::
  ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
newChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem =
  ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
    { displayName = Core.Nothing,
      sessionDuration = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem"
      ( \o ->
          ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
            Core.<$> (o Core..:? "displayName")
              Core.<*> (o Core..:? "sessionDuration")
      )

instance
  Core.ToJSON
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
  where
  toJSON
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("displayName" Core..=) Core.<$> displayName,
              ("sessionDuration" Core..=)
                Core.<$> sessionDuration
            ]
        )

--
-- /See:/ 'newChromeOsDevice_CpuStatusReportsItem' smart constructor.
data ChromeOsDevice_CpuStatusReportsItem = ChromeOsDevice_CpuStatusReportsItem
  { -- | List of CPU temperature samples.
    cpuTemperatureInfo ::
      ( Core.Maybe
          [ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem]
      ),
    -- |
    cpuUtilizationPercentageInfo :: (Core.Maybe [Core.Int32]),
    -- | Date and time the report was received.
    reportTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_CpuStatusReportsItem' with the minimum fields required to make a request.
newChromeOsDevice_CpuStatusReportsItem ::
  ChromeOsDevice_CpuStatusReportsItem
newChromeOsDevice_CpuStatusReportsItem =
  ChromeOsDevice_CpuStatusReportsItem
    { cpuTemperatureInfo = Core.Nothing,
      cpuUtilizationPercentageInfo = Core.Nothing,
      reportTime = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_CpuStatusReportsItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_CpuStatusReportsItem"
      ( \o ->
          ChromeOsDevice_CpuStatusReportsItem
            Core.<$> ( o Core..:? "cpuTemperatureInfo"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "cpuUtilizationPercentageInfo"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "reportTime")
      )

instance
  Core.ToJSON
    ChromeOsDevice_CpuStatusReportsItem
  where
  toJSON ChromeOsDevice_CpuStatusReportsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpuTemperatureInfo" Core..=)
              Core.<$> cpuTemperatureInfo,
            ("cpuUtilizationPercentageInfo" Core..=)
              Core.<$> cpuUtilizationPercentageInfo,
            ("reportTime" Core..=) Core.<$> reportTime
          ]
      )

--
-- /See:/ 'newChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem' smart constructor.
data ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem = ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
  { -- | CPU label
    label :: (Core.Maybe Core.Text),
    -- | Temperature in Celsius degrees.
    temperature :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem' with the minimum fields required to make a request.
newChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem ::
  ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
newChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem =
  ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
    { label = Core.Nothing,
      temperature = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem"
      ( \o ->
          ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
            Core.<$> (o Core..:? "label")
              Core.<*> (o Core..:? "temperature")
      )

instance
  Core.ToJSON
    ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
  where
  toJSON
    ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("label" Core..=) Core.<$> label,
              ("temperature" Core..=) Core.<$> temperature
            ]
        )

--
-- /See:/ 'newChromeOsDevice_DeviceFilesItem' smart constructor.
data ChromeOsDevice_DeviceFilesItem = ChromeOsDevice_DeviceFilesItem
  { -- | Date and time the file was created
    createTime :: (Core.Maybe Core.DateTime'),
    -- | File download URL
    downloadUrl :: (Core.Maybe Core.Text),
    -- | File name
    name :: (Core.Maybe Core.Text),
    -- | File type
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_DeviceFilesItem' with the minimum fields required to make a request.
newChromeOsDevice_DeviceFilesItem ::
  ChromeOsDevice_DeviceFilesItem
newChromeOsDevice_DeviceFilesItem =
  ChromeOsDevice_DeviceFilesItem
    { createTime = Core.Nothing,
      downloadUrl = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ChromeOsDevice_DeviceFilesItem where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_DeviceFilesItem"
      ( \o ->
          ChromeOsDevice_DeviceFilesItem
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "downloadUrl")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ChromeOsDevice_DeviceFilesItem where
  toJSON ChromeOsDevice_DeviceFilesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("downloadUrl" Core..=) Core.<$> downloadUrl,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newChromeOsDevice_DiskVolumeReportsItem' smart constructor.
newtype ChromeOsDevice_DiskVolumeReportsItem = ChromeOsDevice_DiskVolumeReportsItem
  { -- | Disk volumes
    volumeInfo :: (Core.Maybe [ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_DiskVolumeReportsItem' with the minimum fields required to make a request.
newChromeOsDevice_DiskVolumeReportsItem ::
  ChromeOsDevice_DiskVolumeReportsItem
newChromeOsDevice_DiskVolumeReportsItem =
  ChromeOsDevice_DiskVolumeReportsItem {volumeInfo = Core.Nothing}

instance
  Core.FromJSON
    ChromeOsDevice_DiskVolumeReportsItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_DiskVolumeReportsItem"
      ( \o ->
          ChromeOsDevice_DiskVolumeReportsItem
            Core.<$> (o Core..:? "volumeInfo" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    ChromeOsDevice_DiskVolumeReportsItem
  where
  toJSON ChromeOsDevice_DiskVolumeReportsItem {..} =
    Core.object
      ( Core.catMaybes
          [("volumeInfo" Core..=) Core.<$> volumeInfo]
      )

--
-- /See:/ 'newChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem' smart constructor.
data ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem = ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
  { -- | Free disk space [in bytes]
    storageFree :: (Core.Maybe Core.Int64),
    -- | Total disk space [in bytes]
    storageTotal :: (Core.Maybe Core.Int64),
    -- | Volume id
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem' with the minimum fields required to make a request.
newChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem ::
  ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
newChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem =
  ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
    { storageFree = Core.Nothing,
      storageTotal = Core.Nothing,
      volumeId = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem"
      ( \o ->
          ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
            Core.<$> (o Core..:? "storageFree")
              Core.<*> (o Core..:? "storageTotal")
              Core.<*> (o Core..:? "volumeId")
      )

instance
  Core.ToJSON
    ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
  where
  toJSON
    ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("storageFree" Core..=) Core.. Core.AsText
                Core.<$> storageFree,
              ("storageTotal" Core..=) Core.. Core.AsText
                Core.<$> storageTotal,
              ("volumeId" Core..=) Core.<$> volumeId
            ]
        )

-- | Information for an ip address.
--
-- /See:/ 'newChromeOsDevice_LastKnownNetworkItem' smart constructor.
data ChromeOsDevice_LastKnownNetworkItem = ChromeOsDevice_LastKnownNetworkItem
  { -- | The IP address.
    ipAddress :: (Core.Maybe Core.Text),
    -- | The WAN IP address.
    wanIpAddress :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_LastKnownNetworkItem' with the minimum fields required to make a request.
newChromeOsDevice_LastKnownNetworkItem ::
  ChromeOsDevice_LastKnownNetworkItem
newChromeOsDevice_LastKnownNetworkItem =
  ChromeOsDevice_LastKnownNetworkItem
    { ipAddress = Core.Nothing,
      wanIpAddress = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_LastKnownNetworkItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_LastKnownNetworkItem"
      ( \o ->
          ChromeOsDevice_LastKnownNetworkItem
            Core.<$> (o Core..:? "ipAddress")
            Core.<*> (o Core..:? "wanIpAddress")
      )

instance
  Core.ToJSON
    ChromeOsDevice_LastKnownNetworkItem
  where
  toJSON ChromeOsDevice_LastKnownNetworkItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("ipAddress" Core..=) Core.<$> ipAddress,
            ("wanIpAddress" Core..=) Core.<$> wanIpAddress
          ]
      )

-- | List of recent device users, in descending order, by last login time.
--
-- /See:/ 'newChromeOsDevice_RecentUsersItem' smart constructor.
data ChromeOsDevice_RecentUsersItem = ChromeOsDevice_RecentUsersItem
  { -- | The user\'s email address. This is only present if the user type is @USER_TYPE_MANAGED@.
    email :: (Core.Maybe Core.Text),
    -- | The type of the user.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_RecentUsersItem' with the minimum fields required to make a request.
newChromeOsDevice_RecentUsersItem ::
  ChromeOsDevice_RecentUsersItem
newChromeOsDevice_RecentUsersItem =
  ChromeOsDevice_RecentUsersItem {email = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON ChromeOsDevice_RecentUsersItem where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_RecentUsersItem"
      ( \o ->
          ChromeOsDevice_RecentUsersItem
            Core.<$> (o Core..:? "email") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ChromeOsDevice_RecentUsersItem where
  toJSON ChromeOsDevice_RecentUsersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newChromeOsDevice_ScreenshotFilesItem' smart constructor.
data ChromeOsDevice_ScreenshotFilesItem = ChromeOsDevice_ScreenshotFilesItem
  { -- | Date and time the file was created
    createTime :: (Core.Maybe Core.DateTime'),
    -- | File download URL
    downloadUrl :: (Core.Maybe Core.Text),
    -- | File name
    name :: (Core.Maybe Core.Text),
    -- | File type
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_ScreenshotFilesItem' with the minimum fields required to make a request.
newChromeOsDevice_ScreenshotFilesItem ::
  ChromeOsDevice_ScreenshotFilesItem
newChromeOsDevice_ScreenshotFilesItem =
  ChromeOsDevice_ScreenshotFilesItem
    { createTime = Core.Nothing,
      downloadUrl = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_ScreenshotFilesItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_ScreenshotFilesItem"
      ( \o ->
          ChromeOsDevice_ScreenshotFilesItem
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "downloadUrl")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    ChromeOsDevice_ScreenshotFilesItem
  where
  toJSON ChromeOsDevice_ScreenshotFilesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("downloadUrl" Core..=) Core.<$> downloadUrl,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newChromeOsDevice_SystemRamFreeReportsItem' smart constructor.
data ChromeOsDevice_SystemRamFreeReportsItem = ChromeOsDevice_SystemRamFreeReportsItem
  { -- | Date and time the report was received.
    reportTime :: (Core.Maybe Core.DateTime'),
    -- |
    systemRamFreeInfo :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_SystemRamFreeReportsItem' with the minimum fields required to make a request.
newChromeOsDevice_SystemRamFreeReportsItem ::
  ChromeOsDevice_SystemRamFreeReportsItem
newChromeOsDevice_SystemRamFreeReportsItem =
  ChromeOsDevice_SystemRamFreeReportsItem
    { reportTime = Core.Nothing,
      systemRamFreeInfo = Core.Nothing
    }

instance
  Core.FromJSON
    ChromeOsDevice_SystemRamFreeReportsItem
  where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_SystemRamFreeReportsItem"
      ( \o ->
          ChromeOsDevice_SystemRamFreeReportsItem
            Core.<$> (o Core..:? "reportTime")
            Core.<*> ( o Core..:? "systemRamFreeInfo"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    ChromeOsDevice_SystemRamFreeReportsItem
  where
  toJSON ChromeOsDevice_SystemRamFreeReportsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("reportTime" Core..=) Core.<$> reportTime,
            ("systemRamFreeInfo" Core..=)
              Core.<$> systemRamFreeInfo
          ]
      )

-- | Trusted Platform Module (TPM) (Read-only)
--
-- /See:/ 'newChromeOsDevice_TpmVersionInfo' smart constructor.
data ChromeOsDevice_TpmVersionInfo = ChromeOsDevice_TpmVersionInfo
  { -- | TPM family. We use the TPM 2.0 style encoding, e.g.: TPM 1.2: \"1.2\" -> 312e3200 TPM 2.0: \"2.0\" -> 322e3000
    family :: (Core.Maybe Core.Text),
    -- | TPM firmware version.
    firmwareVersion :: (Core.Maybe Core.Text),
    -- | TPM manufacturer code.
    manufacturer :: (Core.Maybe Core.Text),
    -- | TPM specification level. See Library Specification for TPM 2.0 and Main Specification for TPM 1.2.
    specLevel :: (Core.Maybe Core.Text),
    -- | TPM model number.
    tpmModel :: (Core.Maybe Core.Text),
    -- | Vendor-specific information such as Vendor ID.
    vendorSpecific :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevice_TpmVersionInfo' with the minimum fields required to make a request.
newChromeOsDevice_TpmVersionInfo ::
  ChromeOsDevice_TpmVersionInfo
newChromeOsDevice_TpmVersionInfo =
  ChromeOsDevice_TpmVersionInfo
    { family = Core.Nothing,
      firmwareVersion = Core.Nothing,
      manufacturer = Core.Nothing,
      specLevel = Core.Nothing,
      tpmModel = Core.Nothing,
      vendorSpecific = Core.Nothing
    }

instance Core.FromJSON ChromeOsDevice_TpmVersionInfo where
  parseJSON =
    Core.withObject
      "ChromeOsDevice_TpmVersionInfo"
      ( \o ->
          ChromeOsDevice_TpmVersionInfo
            Core.<$> (o Core..:? "family")
            Core.<*> (o Core..:? "firmwareVersion")
            Core.<*> (o Core..:? "manufacturer")
            Core.<*> (o Core..:? "specLevel")
            Core.<*> (o Core..:? "tpmModel")
            Core.<*> (o Core..:? "vendorSpecific")
      )

instance Core.ToJSON ChromeOsDevice_TpmVersionInfo where
  toJSON ChromeOsDevice_TpmVersionInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("family" Core..=) Core.<$> family,
            ("firmwareVersion" Core..=) Core.<$> firmwareVersion,
            ("manufacturer" Core..=) Core.<$> manufacturer,
            ("specLevel" Core..=) Core.<$> specLevel,
            ("tpmModel" Core..=) Core.<$> tpmModel,
            ("vendorSpecific" Core..=) Core.<$> vendorSpecific
          ]
      )

--
-- /See:/ 'newChromeOsDeviceAction' smart constructor.
data ChromeOsDeviceAction = ChromeOsDeviceAction
  { -- | Action to be taken on the Chrome OS device.
    action :: (Core.Maybe Core.Text),
    -- | Only used when the action is @deprovision@. With the @deprovision@ action, this field is required. /Note/: The deprovision reason is audited because it might have implications on licenses for perpetual subscription customers.
    deprovisionReason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDeviceAction' with the minimum fields required to make a request.
newChromeOsDeviceAction ::
  ChromeOsDeviceAction
newChromeOsDeviceAction =
  ChromeOsDeviceAction {action = Core.Nothing, deprovisionReason = Core.Nothing}

instance Core.FromJSON ChromeOsDeviceAction where
  parseJSON =
    Core.withObject
      "ChromeOsDeviceAction"
      ( \o ->
          ChromeOsDeviceAction
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "deprovisionReason")
      )

instance Core.ToJSON ChromeOsDeviceAction where
  toJSON ChromeOsDeviceAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("deprovisionReason" Core..=)
              Core.<$> deprovisionReason
          ]
      )

--
-- /See:/ 'newChromeOsDevices' smart constructor.
data ChromeOsDevices = ChromeOsDevices
  { -- | List of Chrome OS Device objects.
    chromeosdevices :: (Core.Maybe [ChromeOsDevice]),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | Token used to access the next page of this result. To access the next page, use this token\'s value in the @pageToken@ query string of this request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsDevices' with the minimum fields required to make a request.
newChromeOsDevices ::
  ChromeOsDevices
newChromeOsDevices =
  ChromeOsDevices
    { chromeosdevices = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#chromeosdevices",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ChromeOsDevices where
  parseJSON =
    Core.withObject
      "ChromeOsDevices"
      ( \o ->
          ChromeOsDevices
            Core.<$> (o Core..:? "chromeosdevices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#chromeosdevices"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ChromeOsDevices where
  toJSON ChromeOsDevices {..} =
    Core.object
      ( Core.catMaybes
          [ ("chromeosdevices" Core..=)
              Core.<$> chromeosdevices,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newChromeOsMoveDevicesToOu' smart constructor.
newtype ChromeOsMoveDevicesToOu = ChromeOsMoveDevicesToOu
  { -- | Chrome OS devices to be moved to OU
    deviceIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChromeOsMoveDevicesToOu' with the minimum fields required to make a request.
newChromeOsMoveDevicesToOu ::
  ChromeOsMoveDevicesToOu
newChromeOsMoveDevicesToOu = ChromeOsMoveDevicesToOu {deviceIds = Core.Nothing}

instance Core.FromJSON ChromeOsMoveDevicesToOu where
  parseJSON =
    Core.withObject
      "ChromeOsMoveDevicesToOu"
      ( \o ->
          ChromeOsMoveDevicesToOu
            Core.<$> (o Core..:? "deviceIds" Core..!= Core.mempty)
      )

instance Core.ToJSON ChromeOsMoveDevicesToOu where
  toJSON ChromeOsMoveDevicesToOu {..} =
    Core.object
      ( Core.catMaybes
          [("deviceIds" Core..=) Core.<$> deviceIds]
      )

-- | Request for adding a new printer.
--
-- /See:/ 'newCreatePrinterRequest' smart constructor.
data CreatePrinterRequest = CreatePrinterRequest
  { -- | Required. The name of the customer. Format: customers\/{customer_id}
    parent :: (Core.Maybe Core.Text),
    -- | Required. A printer to create. If you want to place the printer under particular OU then populate printer.org/unit/id filed. Otherwise the printer will be placed under root OU.
    printer :: (Core.Maybe Printer)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreatePrinterRequest' with the minimum fields required to make a request.
newCreatePrinterRequest ::
  CreatePrinterRequest
newCreatePrinterRequest =
  CreatePrinterRequest {parent = Core.Nothing, printer = Core.Nothing}

instance Core.FromJSON CreatePrinterRequest where
  parseJSON =
    Core.withObject
      "CreatePrinterRequest"
      ( \o ->
          CreatePrinterRequest
            Core.<$> (o Core..:? "parent")
            Core.<*> (o Core..:? "printer")
      )

instance Core.ToJSON CreatePrinterRequest where
  toJSON CreatePrinterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("parent" Core..=) Core.<$> parent,
            ("printer" Core..=) Core.<$> printer
          ]
      )

--
-- /See:/ 'newCustomer' smart constructor.
data Customer = Customer
  { -- | The customer\'s secondary contact email address. This email address cannot be on the same domain as the @customerDomain@
    alternateEmail :: (Core.Maybe Core.Text),
    -- | The customer\'s creation time (Readonly)
    customerCreationTime :: (Core.Maybe Core.DateTime'),
    -- | The customer\'s primary domain name string. Do not include the @www@ prefix when creating a new customer.
    customerDomain :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. (Readonly)
    id :: (Core.Maybe Core.Text),
    -- | Identifies the resource as a customer. Value: @admin#directory#customer@
    kind :: Core.Text,
    -- | The customer\'s ISO 639-2 language code. See the </admin-sdk/directory/v1/languages Language Codes> page for the list of supported codes. Valid language codes outside the supported set will be accepted by the API but may lead to unexpected behavior. The default value is @en@.
    language :: (Core.Maybe Core.Text),
    -- | The customer\'s contact phone number in <https://en.wikipedia.org/wiki/E.164 E.164> format.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | The customer\'s postal address information.
    postalAddress :: (Core.Maybe CustomerPostalAddress)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Customer' with the minimum fields required to make a request.
newCustomer ::
  Customer
newCustomer =
  Customer
    { alternateEmail = Core.Nothing,
      customerCreationTime = Core.Nothing,
      customerDomain = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "admin#directory#customer",
      language = Core.Nothing,
      phoneNumber = Core.Nothing,
      postalAddress = Core.Nothing
    }

instance Core.FromJSON Customer where
  parseJSON =
    Core.withObject
      "Customer"
      ( \o ->
          Customer
            Core.<$> (o Core..:? "alternateEmail")
            Core.<*> (o Core..:? "customerCreationTime")
            Core.<*> (o Core..:? "customerDomain")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#customer"
                     )
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "postalAddress")
      )

instance Core.ToJSON Customer where
  toJSON Customer {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternateEmail" Core..=) Core.<$> alternateEmail,
            ("customerCreationTime" Core..=)
              Core.<$> customerCreationTime,
            ("customerDomain" Core..=) Core.<$> customerDomain,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("language" Core..=) Core.<$> language,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("postalAddress" Core..=) Core.<$> postalAddress
          ]
      )

--
-- /See:/ 'newCustomerPostalAddress' smart constructor.
data CustomerPostalAddress = CustomerPostalAddress
  { -- | A customer\'s physical address. The address can be composed of one to three lines.
    addressLine1 :: (Core.Maybe Core.Text),
    -- | Address line 2 of the address.
    addressLine2 :: (Core.Maybe Core.Text),
    -- | Address line 3 of the address.
    addressLine3 :: (Core.Maybe Core.Text),
    -- | The customer contact\'s name.
    contactName :: (Core.Maybe Core.Text),
    -- | This is a required property. For @countryCode@ information see the <https://www.iso.org/iso/country_codes.htm ISO 3166 country code elements>.
    countryCode :: (Core.Maybe Core.Text),
    -- | Name of the locality. An example of a locality value is the city of @San Francisco@.
    locality :: (Core.Maybe Core.Text),
    -- | The company or company division name.
    organizationName :: (Core.Maybe Core.Text),
    -- | The postal code. A postalCode example is a postal zip code such as @10009@. This is in accordance with - http: \/\/portablecontacts.net\/draft-spec.html#address_element.
    postalCode :: (Core.Maybe Core.Text),
    -- | Name of the region. An example of a region value is @NY@ for the state of New York.
    region :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerPostalAddress' with the minimum fields required to make a request.
newCustomerPostalAddress ::
  CustomerPostalAddress
newCustomerPostalAddress =
  CustomerPostalAddress
    { addressLine1 = Core.Nothing,
      addressLine2 = Core.Nothing,
      addressLine3 = Core.Nothing,
      contactName = Core.Nothing,
      countryCode = Core.Nothing,
      locality = Core.Nothing,
      organizationName = Core.Nothing,
      postalCode = Core.Nothing,
      region = Core.Nothing
    }

instance Core.FromJSON CustomerPostalAddress where
  parseJSON =
    Core.withObject
      "CustomerPostalAddress"
      ( \o ->
          CustomerPostalAddress
            Core.<$> (o Core..:? "addressLine1")
            Core.<*> (o Core..:? "addressLine2")
            Core.<*> (o Core..:? "addressLine3")
            Core.<*> (o Core..:? "contactName")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "organizationName")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "region")
      )

instance Core.ToJSON CustomerPostalAddress where
  toJSON CustomerPostalAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("addressLine1" Core..=) Core.<$> addressLine1,
            ("addressLine2" Core..=) Core.<$> addressLine2,
            ("addressLine3" Core..=) Core.<$> addressLine3,
            ("contactName" Core..=) Core.<$> contactName,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("locality" Core..=) Core.<$> locality,
            ("organizationName" Core..=)
              Core.<$> organizationName,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("region" Core..=) Core.<$> region
          ]
      )

-- | Information regarding a command that was issued to a device.
--
-- /See:/ 'newDirectoryChromeosdevicesCommand' smart constructor.
data DirectoryChromeosdevicesCommand = DirectoryChromeosdevicesCommand
  { -- | The time at which the command will expire. If the device doesn\'t execute the command within this time the command will become expired.
    commandExpireTime :: (Core.Maybe Core.DateTime'),
    -- | Unique ID of a device command.
    commandId :: (Core.Maybe Core.Int64),
    -- | The result of the command execution.
    commandResult :: (Core.Maybe DirectoryChromeosdevicesCommandResult),
    -- | The timestamp when the command was issued by the admin.
    issueTime :: (Core.Maybe Core.DateTime'),
    -- | The payload that the command specified, if any.
    payload :: (Core.Maybe Core.Text),
    -- | Indicates the command state.
    state :: (Core.Maybe DirectoryChromeosdevicesCommand_State),
    -- | The type of the command.
    type' :: (Core.Maybe DirectoryChromeosdevicesCommand_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesCommand' with the minimum fields required to make a request.
newDirectoryChromeosdevicesCommand ::
  DirectoryChromeosdevicesCommand
newDirectoryChromeosdevicesCommand =
  DirectoryChromeosdevicesCommand
    { commandExpireTime = Core.Nothing,
      commandId = Core.Nothing,
      commandResult = Core.Nothing,
      issueTime = Core.Nothing,
      payload = Core.Nothing,
      state = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    DirectoryChromeosdevicesCommand
  where
  parseJSON =
    Core.withObject
      "DirectoryChromeosdevicesCommand"
      ( \o ->
          DirectoryChromeosdevicesCommand
            Core.<$> (o Core..:? "commandExpireTime")
            Core.<*> (o Core..:? "commandId")
            Core.<*> (o Core..:? "commandResult")
            Core.<*> (o Core..:? "issueTime")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON DirectoryChromeosdevicesCommand where
  toJSON DirectoryChromeosdevicesCommand {..} =
    Core.object
      ( Core.catMaybes
          [ ("commandExpireTime" Core..=)
              Core.<$> commandExpireTime,
            ("commandId" Core..=) Core.. Core.AsText
              Core.<$> commandId,
            ("commandResult" Core..=) Core.<$> commandResult,
            ("issueTime" Core..=) Core.<$> issueTime,
            ("payload" Core..=) Core.<$> payload,
            ("state" Core..=) Core.<$> state,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The result of executing a command.
--
-- /See:/ 'newDirectoryChromeosdevicesCommandResult' smart constructor.
data DirectoryChromeosdevicesCommandResult = DirectoryChromeosdevicesCommandResult
  { -- | The error message with a short explanation as to why the command failed. Only present if the command failed.
    errorMessage :: (Core.Maybe Core.Text),
    -- | The time at which the command was executed or failed to execute.
    executeTime :: (Core.Maybe Core.DateTime'),
    -- | The result of the command.
    result :: (Core.Maybe DirectoryChromeosdevicesCommandResult_Result)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesCommandResult' with the minimum fields required to make a request.
newDirectoryChromeosdevicesCommandResult ::
  DirectoryChromeosdevicesCommandResult
newDirectoryChromeosdevicesCommandResult =
  DirectoryChromeosdevicesCommandResult
    { errorMessage = Core.Nothing,
      executeTime = Core.Nothing,
      result = Core.Nothing
    }

instance
  Core.FromJSON
    DirectoryChromeosdevicesCommandResult
  where
  parseJSON =
    Core.withObject
      "DirectoryChromeosdevicesCommandResult"
      ( \o ->
          DirectoryChromeosdevicesCommandResult
            Core.<$> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "executeTime")
            Core.<*> (o Core..:? "result")
      )

instance
  Core.ToJSON
    DirectoryChromeosdevicesCommandResult
  where
  toJSON DirectoryChromeosdevicesCommandResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorMessage" Core..=) Core.<$> errorMessage,
            ("executeTime" Core..=) Core.<$> executeTime,
            ("result" Core..=) Core.<$> result
          ]
      )

-- | A request for issuing a command.
--
-- /See:/ 'newDirectoryChromeosdevicesIssueCommandRequest' smart constructor.
data DirectoryChromeosdevicesIssueCommandRequest = DirectoryChromeosdevicesIssueCommandRequest
  { -- | The type of command.
    commandType ::
      ( Core.Maybe
          DirectoryChromeosdevicesIssueCommandRequest_CommandType
      ),
    -- | The payload for the command, provide it only if command supports it. The following commands support adding payload: - SET_VOLUME: Payload is a stringified JSON object in the form: { \"volume\": 50 }. The volume has to be an integer in the range [0,100].
    payload :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesIssueCommandRequest' with the minimum fields required to make a request.
newDirectoryChromeosdevicesIssueCommandRequest ::
  DirectoryChromeosdevicesIssueCommandRequest
newDirectoryChromeosdevicesIssueCommandRequest =
  DirectoryChromeosdevicesIssueCommandRequest
    { commandType = Core.Nothing,
      payload = Core.Nothing
    }

instance
  Core.FromJSON
    DirectoryChromeosdevicesIssueCommandRequest
  where
  parseJSON =
    Core.withObject
      "DirectoryChromeosdevicesIssueCommandRequest"
      ( \o ->
          DirectoryChromeosdevicesIssueCommandRequest
            Core.<$> (o Core..:? "commandType")
            Core.<*> (o Core..:? "payload")
      )

instance
  Core.ToJSON
    DirectoryChromeosdevicesIssueCommandRequest
  where
  toJSON
    DirectoryChromeosdevicesIssueCommandRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("commandType" Core..=) Core.<$> commandType,
              ("payload" Core..=) Core.<$> payload
            ]
        )

-- | A response for issuing a command.
--
-- /See:/ 'newDirectoryChromeosdevicesIssueCommandResponse' smart constructor.
newtype DirectoryChromeosdevicesIssueCommandResponse = DirectoryChromeosdevicesIssueCommandResponse
  { -- | The unique ID of the issued command, used to retrieve the command status.
    commandId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesIssueCommandResponse' with the minimum fields required to make a request.
newDirectoryChromeosdevicesIssueCommandResponse ::
  DirectoryChromeosdevicesIssueCommandResponse
newDirectoryChromeosdevicesIssueCommandResponse =
  DirectoryChromeosdevicesIssueCommandResponse {commandId = Core.Nothing}

instance
  Core.FromJSON
    DirectoryChromeosdevicesIssueCommandResponse
  where
  parseJSON =
    Core.withObject
      "DirectoryChromeosdevicesIssueCommandResponse"
      ( \o ->
          DirectoryChromeosdevicesIssueCommandResponse
            Core.<$> (o Core..:? "commandId")
      )

instance
  Core.ToJSON
    DirectoryChromeosdevicesIssueCommandResponse
  where
  toJSON
    DirectoryChromeosdevicesIssueCommandResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("commandId" Core..=) Core.. Core.AsText
                Core.<$> commandId
            ]
        )

--
-- /See:/ 'newDomainAlias' smart constructor.
data DomainAlias = DomainAlias
  { -- | The creation time of the domain alias. (Read-only).
    creationTime :: (Core.Maybe Core.Int64),
    -- | The domain alias name.
    domainAliasName :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | The parent domain name that the domain alias is associated with. This can either be a primary or secondary domain name within a customer.
    parentDomainName :: (Core.Maybe Core.Text),
    -- | Indicates the verification state of a domain alias. (Read-only)
    verified :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DomainAlias' with the minimum fields required to make a request.
newDomainAlias ::
  DomainAlias
newDomainAlias =
  DomainAlias
    { creationTime = Core.Nothing,
      domainAliasName = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#domainAlias",
      parentDomainName = Core.Nothing,
      verified = Core.Nothing
    }

instance Core.FromJSON DomainAlias where
  parseJSON =
    Core.withObject
      "DomainAlias"
      ( \o ->
          DomainAlias
            Core.<$> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "domainAliasName")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#domainAlias"
                     )
            Core.<*> (o Core..:? "parentDomainName")
            Core.<*> (o Core..:? "verified")
      )

instance Core.ToJSON DomainAlias where
  toJSON DomainAlias {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("domainAliasName" Core..=) Core.<$> domainAliasName,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("parentDomainName" Core..=)
              Core.<$> parentDomainName,
            ("verified" Core..=) Core.<$> verified
          ]
      )

--
-- /See:/ 'newDomainAliases' smart constructor.
data DomainAliases = DomainAliases
  { -- | List of domain alias objects.
    domainAliases :: (Core.Maybe [DomainAlias]),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DomainAliases' with the minimum fields required to make a request.
newDomainAliases ::
  DomainAliases
newDomainAliases =
  DomainAliases
    { domainAliases = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#domainAliases"
    }

instance Core.FromJSON DomainAliases where
  parseJSON =
    Core.withObject
      "DomainAliases"
      ( \o ->
          DomainAliases
            Core.<$> (o Core..:? "domainAliases" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#domainAliases"
                     )
      )

instance Core.ToJSON DomainAliases where
  toJSON DomainAliases {..} =
    Core.object
      ( Core.catMaybes
          [ ("domainAliases" Core..=) Core.<$> domainAliases,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newDomains' smart constructor.
data Domains = Domains
  { -- | Creation time of the domain. Expressed in <https://en.wikipedia.org/wiki/Epoch_time Unix time> format. (Read-only).
    creationTime :: (Core.Maybe Core.Int64),
    -- | List of domain alias objects. (Read-only)
    domainAliases :: (Core.Maybe [DomainAlias]),
    -- | The domain name of the customer.
    domainName :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Indicates if the domain is a primary domain (Read-only).
    isPrimary :: (Core.Maybe Core.Bool),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | Indicates the verification state of a domain. (Read-only).
    verified :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Domains' with the minimum fields required to make a request.
newDomains ::
  Domains
newDomains =
  Domains
    { creationTime = Core.Nothing,
      domainAliases = Core.Nothing,
      domainName = Core.Nothing,
      etag = Core.Nothing,
      isPrimary = Core.Nothing,
      kind = "admin#directory#domain",
      verified = Core.Nothing
    }

instance Core.FromJSON Domains where
  parseJSON =
    Core.withObject
      "Domains"
      ( \o ->
          Domains
            Core.<$> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "domainAliases" Core..!= Core.mempty)
            Core.<*> (o Core..:? "domainName")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "isPrimary")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#domain")
            Core.<*> (o Core..:? "verified")
      )

instance Core.ToJSON Domains where
  toJSON Domains {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("domainAliases" Core..=) Core.<$> domainAliases,
            ("domainName" Core..=) Core.<$> domainName,
            ("etag" Core..=) Core.<$> etag,
            ("isPrimary" Core..=) Core.<$> isPrimary,
            Core.Just ("kind" Core..= kind),
            ("verified" Core..=) Core.<$> verified
          ]
      )

--
-- /See:/ 'newDomains2' smart constructor.
data Domains2 = Domains2
  { -- | List of domain objects.
    domains :: (Core.Maybe [Domains]),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Domains2' with the minimum fields required to make a request.
newDomains2 ::
  Domains2
newDomains2 =
  Domains2
    { domains = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#domains"
    }

instance Core.FromJSON Domains2 where
  parseJSON =
    Core.withObject
      "Domains2"
      ( \o ->
          Domains2
            Core.<$> (o Core..:? "domains" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#domains"
                     )
      )

instance Core.ToJSON Domains2 where
  toJSON Domains2 {..} =
    Core.object
      ( Core.catMaybes
          [ ("domains" Core..=) Core.<$> domains,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Info about failures
--
-- /See:/ 'newFailureInfo' smart constructor.
data FailureInfo = FailureInfo
  { -- | Canonical code for why the update failed to apply.
    errorCode :: (Core.Maybe FailureInfo_ErrorCode),
    -- | Failure reason message.
    errorMessage :: (Core.Maybe Core.Text),
    -- | Failed printer.
    printer :: (Core.Maybe Printer),
    -- | Id of a failed printer.
    printerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailureInfo' with the minimum fields required to make a request.
newFailureInfo ::
  FailureInfo
newFailureInfo =
  FailureInfo
    { errorCode = Core.Nothing,
      errorMessage = Core.Nothing,
      printer = Core.Nothing,
      printerId = Core.Nothing
    }

instance Core.FromJSON FailureInfo where
  parseJSON =
    Core.withObject
      "FailureInfo"
      ( \o ->
          FailureInfo
            Core.<$> (o Core..:? "errorCode")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "printer")
            Core.<*> (o Core..:? "printerId")
      )

instance Core.ToJSON FailureInfo where
  toJSON FailureInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorCode" Core..=) Core.<$> errorCode,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("printer" Core..=) Core.<$> printer,
            ("printerId" Core..=) Core.<$> printerId
          ]
      )

-- | JSON template for Feature object in Directory API.
--
-- /See:/ 'newFeature' smart constructor.
data Feature = Feature
  { -- | ETag of the resource.
    etags :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | The name of the feature.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Feature' with the minimum fields required to make a request.
newFeature ::
  Feature
newFeature =
  Feature
    { etags = Core.Nothing,
      kind = "admin#directory#resources#features#Feature",
      name = Core.Nothing
    }

instance Core.FromJSON Feature where
  parseJSON =
    Core.withObject
      "Feature"
      ( \o ->
          Feature
            Core.<$> (o Core..:? "etags")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#resources#features#Feature"
                     )
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Feature where
  toJSON Feature {..} =
    Core.object
      ( Core.catMaybes
          [ ("etags" Core..=) Core.<$> etags,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | JSON template for a feature instance.
--
-- /See:/ 'newFeatureInstance' smart constructor.
newtype FeatureInstance = FeatureInstance
  { -- | The feature that this is an instance of. A calendar resource may have multiple instances of a feature.
    feature :: (Core.Maybe Feature)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FeatureInstance' with the minimum fields required to make a request.
newFeatureInstance ::
  FeatureInstance
newFeatureInstance = FeatureInstance {feature = Core.Nothing}

instance Core.FromJSON FeatureInstance where
  parseJSON =
    Core.withObject
      "FeatureInstance"
      ( \o ->
          FeatureInstance Core.<$> (o Core..:? "feature")
      )

instance Core.ToJSON FeatureInstance where
  toJSON FeatureInstance {..} =
    Core.object
      ( Core.catMaybes
          [("feature" Core..=) Core.<$> feature]
      )

--
-- /See:/ 'newFeatureRename' smart constructor.
newtype FeatureRename = FeatureRename
  { -- | New name of the feature.
    newName' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FeatureRename' with the minimum fields required to make a request.
newFeatureRename ::
  FeatureRename
newFeatureRename = FeatureRename {newName' = Core.Nothing}

instance Core.FromJSON FeatureRename where
  parseJSON =
    Core.withObject
      "FeatureRename"
      ( \o ->
          FeatureRename Core.<$> (o Core..:? "newName")
      )

instance Core.ToJSON FeatureRename where
  toJSON FeatureRename {..} =
    Core.object
      ( Core.catMaybes
          [("newName" Core..=) Core.<$> newName']
      )

-- | Public API: Resources.features
--
-- /See:/ 'newFeatures' smart constructor.
data Features = Features
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The Features in this page of results.
    features :: (Core.Maybe [Feature]),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Features' with the minimum fields required to make a request.
newFeatures ::
  Features
newFeatures =
  Features
    { etag = Core.Nothing,
      features = Core.Nothing,
      kind = "admin#directory#resources#features#featuresList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Features where
  parseJSON =
    Core.withObject
      "Features"
      ( \o ->
          Features
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "features" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#resources#features#featuresList"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Features where
  toJSON Features {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("features" Core..=) Core.<$> features,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Google Groups provide your users the ability to send messages to groups of people using the group\'s email address. For more information about common tasks, see the </admin-sdk/directory/v1/guides/manage-groups Developer\'s Guide>.
--
-- /See:/ 'newGroup' smart constructor.
data Group = Group
  { -- | Value is @true@ if this group was created by an administrator rather than a user.
    adminCreated :: (Core.Maybe Core.Bool),
    -- | List of a group\'s alias email addresses.
    aliases :: (Core.Maybe [Core.Text]),
    -- | An extended description to help users determine the purpose of a group. For example, you can include information about who should join the group, the types of messages to send to the group, links to FAQs about the group, or related groups. Maximum length is @4,096@ characters.
    description :: (Core.Maybe Core.Text),
    -- | The number of users that are direct members of the group. If a group is a member (child) of this group (the parent), members of the child group are not counted in the @directMembersCount@ property of the parent group.
    directMembersCount :: (Core.Maybe Core.Int64),
    -- | The group\'s email address. If your account has multiple domains, select the appropriate domain for the email address. The @email@ must be unique. This property is required when creating a group. Group email addresses are subject to the same character usage rules as usernames, see the <https://support.google.com/a/answer/9193374 help center> for details.
    email :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The unique ID of a group. A group @id@ can be used as a group request URI\'s @groupKey@.
    id :: (Core.Maybe Core.Text),
    -- | The type of the API resource. For Groups resources, the value is @admin#directory#group@.
    kind :: Core.Text,
    -- | The group\'s display name.
    name :: (Core.Maybe Core.Text),
    -- | List of the group\'s non-editable alias email addresses that are outside of the account\'s primary domain or subdomains. These are functioning email addresses used by the group. This is a read-only property returned in the API\'s response for a group. If edited in a group\'s POST or PUT request, the edit is ignored by the API service.
    nonEditableAliases :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
newGroup ::
  Group
newGroup =
  Group
    { adminCreated = Core.Nothing,
      aliases = Core.Nothing,
      description = Core.Nothing,
      directMembersCount = Core.Nothing,
      email = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "admin#directory#group",
      name = Core.Nothing,
      nonEditableAliases = Core.Nothing
    }

instance Core.FromJSON Group where
  parseJSON =
    Core.withObject
      "Group"
      ( \o ->
          Group
            Core.<$> (o Core..:? "adminCreated")
            Core.<*> (o Core..:? "aliases" Core..!= Core.mempty)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "directMembersCount")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#group")
            Core.<*> (o Core..:? "name")
            Core.<*> ( o Core..:? "nonEditableAliases"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON Group where
  toJSON Group {..} =
    Core.object
      ( Core.catMaybes
          [ ("adminCreated" Core..=) Core.<$> adminCreated,
            ("aliases" Core..=) Core.<$> aliases,
            ("description" Core..=) Core.<$> description,
            ("directMembersCount" Core..=) Core.. Core.AsText
              Core.<$> directMembersCount,
            ("email" Core..=) Core.<$> email,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("nonEditableAliases" Core..=)
              Core.<$> nonEditableAliases
          ]
      )

--
-- /See:/ 'newGroups' smart constructor.
data Groups = Groups
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | List of group objects.
    groups :: (Core.Maybe [Group]),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | Token used to access next page of this result.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Groups' with the minimum fields required to make a request.
newGroups ::
  Groups
newGroups =
  Groups
    { etag = Core.Nothing,
      groups = Core.Nothing,
      kind = "admin#directory#groups",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Groups where
  parseJSON =
    Core.withObject
      "Groups"
      ( \o ->
          Groups
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "groups" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#groups")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Groups where
  toJSON Groups {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("groups" Core..=) Core.<$> groups,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response for listing allowed printer models.
--
-- /See:/ 'newListPrinterModelsResponse' smart constructor.
data ListPrinterModelsResponse = ListPrinterModelsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Printer models that are currently allowed to be configured for ChromeOs. Some printers may be added or removed over time.
    printerModels :: (Core.Maybe [PrinterModel])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPrinterModelsResponse' with the minimum fields required to make a request.
newListPrinterModelsResponse ::
  ListPrinterModelsResponse
newListPrinterModelsResponse =
  ListPrinterModelsResponse
    { nextPageToken = Core.Nothing,
      printerModels = Core.Nothing
    }

instance Core.FromJSON ListPrinterModelsResponse where
  parseJSON =
    Core.withObject
      "ListPrinterModelsResponse"
      ( \o ->
          ListPrinterModelsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "printerModels" Core..!= Core.mempty)
      )

instance Core.ToJSON ListPrinterModelsResponse where
  toJSON ListPrinterModelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("printerModels" Core..=) Core.<$> printerModels
          ]
      )

-- | Response for listing printers.
--
-- /See:/ 'newListPrintersResponse' smart constructor.
data ListPrintersResponse = ListPrintersResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of printers. If @org_unit_id@ was given in the request, then only printers visible for this OU will be returned. If @org_unit_id@ was not given in the request, then all printers will be returned.
    printers :: (Core.Maybe [Printer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPrintersResponse' with the minimum fields required to make a request.
newListPrintersResponse ::
  ListPrintersResponse
newListPrintersResponse =
  ListPrintersResponse {nextPageToken = Core.Nothing, printers = Core.Nothing}

instance Core.FromJSON ListPrintersResponse where
  parseJSON =
    Core.withObject
      "ListPrintersResponse"
      ( \o ->
          ListPrintersResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "printers" Core..!= Core.mempty)
      )

instance Core.ToJSON ListPrintersResponse where
  toJSON ListPrintersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("printers" Core..=) Core.<$> printers
          ]
      )

-- | A Google Groups member can be a user or another group. This member can be inside or outside of your account\'s domains. For more information about common group member tasks, see the </admin-sdk/directory/v1/guides/manage-group-members Developer\'s Guide>.
--
-- /See:/ 'newMember' smart constructor.
data Member = Member
  { -- | Defines mail delivery preferences of member. This is only supported by create\/update\/get.
    deliverySettings :: (Core.Maybe Core.Text),
    -- | The member\'s email address. A member can be a user or another group. This property is required when adding a member to a group. The @email@ must be unique and cannot be an alias of another group. If the email address is changed, the API automatically reflects the email address changes.
    email :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The unique ID of the group member. A member @id@ can be used as a member request URI\'s @memberKey@.
    id :: (Core.Maybe Core.Text),
    -- | The type of the API resource. For Members resources, the value is @admin#directory#member@.
    kind :: Core.Text,
    -- | The member\'s role in a group. The API returns an error for cycles in group memberships. For example, if @group1@ is a member of @group2@, @group2@ cannot be a member of @group1@. For more information about a member\'s role, see the <https://support.google.com/a/answer/167094 administration help center>.
    role' :: (Core.Maybe Core.Text),
    -- | Status of member (Immutable)
    status :: (Core.Maybe Core.Text),
    -- | The type of group member.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Member' with the minimum fields required to make a request.
newMember ::
  Member
newMember =
  Member
    { deliverySettings = Core.Nothing,
      email = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "admin#directory#member",
      role' = Core.Nothing,
      status = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Member where
  parseJSON =
    Core.withObject
      "Member"
      ( \o ->
          Member
            Core.<$> (o Core..:? "delivery_settings")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#member")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Member where
  toJSON Member {..} =
    Core.object
      ( Core.catMaybes
          [ ("delivery_settings" Core..=)
              Core.<$> deliverySettings,
            ("email" Core..=) Core.<$> email,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("role" Core..=) Core.<$> role',
            ("status" Core..=) Core.<$> status,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newMembers' smart constructor.
data Members = Members
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | List of member objects.
    members :: (Core.Maybe [Member]),
    -- | Token used to access next page of this result.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Members' with the minimum fields required to make a request.
newMembers ::
  Members
newMembers =
  Members
    { etag = Core.Nothing,
      kind = "admin#directory#members",
      members = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Members where
  parseJSON =
    Core.withObject
      "Members"
      ( \o ->
          Members
            Core.<$> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#members"
                     )
            Core.<*> (o Core..:? "members" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Members where
  toJSON Members {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("members" Core..=) Core.<$> members,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | JSON template for Has Member response in Directory API.
--
-- /See:/ 'newMembersHasMember' smart constructor.
newtype MembersHasMember = MembersHasMember
  { -- | Output only. Identifies whether the given user is a member of the group. Membership can be direct or nested.
    isMember :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembersHasMember' with the minimum fields required to make a request.
newMembersHasMember ::
  MembersHasMember
newMembersHasMember = MembersHasMember {isMember = Core.Nothing}

instance Core.FromJSON MembersHasMember where
  parseJSON =
    Core.withObject
      "MembersHasMember"
      ( \o ->
          MembersHasMember Core.<$> (o Core..:? "isMember")
      )

instance Core.ToJSON MembersHasMember where
  toJSON MembersHasMember {..} =
    Core.object
      ( Core.catMaybes
          [("isMember" Core..=) Core.<$> isMember]
      )

-- | Google Workspace Mobile Management includes Android, <https://support.google.com/a/answer/135937 Google Sync>, and iOS devices. For more information about common group mobile device API tasks, see the </admin-sdk/directory/v1/guides/manage-mobile-devices.html Developer\'s Guide>.
--
-- /See:/ 'newMobileDevice' smart constructor.
data MobileDevice = MobileDevice
  { -- | Adb (USB debugging) enabled or disabled on device (Read-only)
    adbStatus :: (Core.Maybe Core.Bool),
    -- | The list of applications installed on an Android mobile device. It is not applicable to Google Sync and iOS devices. The list includes any Android applications that access Google Workspace data. When updating an applications list, it is important to note that updates replace the existing list. If the Android device has two existing applications and the API updates the list with five applications, the is now the updated list of five applications.
    applications :: (Core.Maybe [MobileDevice_ApplicationsItem]),
    -- | The device\'s baseband version.
    basebandVersion :: (Core.Maybe Core.Text),
    -- | Mobile Device Bootloader version (Read-only)
    bootloaderVersion :: (Core.Maybe Core.Text),
    -- | Mobile Device Brand (Read-only)
    brand :: (Core.Maybe Core.Text),
    -- | The device\'s operating system build number.
    buildNumber :: (Core.Maybe Core.Text),
    -- | The default locale used on the device.
    defaultLanguage :: (Core.Maybe Core.Text),
    -- | Developer options enabled or disabled on device (Read-only)
    developerOptionsStatus :: (Core.Maybe Core.Bool),
    -- | The compromised device status.
    deviceCompromisedStatus :: (Core.Maybe Core.Text),
    -- | The serial number for a Google Sync mobile device. For Android and iOS devices, this is a software generated unique identifier.
    deviceId :: (Core.Maybe Core.Text),
    -- | DevicePasswordStatus (Read-only)
    devicePasswordStatus :: (Core.Maybe Core.Text),
    -- | List of owner\'s email addresses. If your application needs the current list of user emails, use the </admin-sdk/directory/v1/reference/mobiledevices/get.html get> method. For additional information, see the </admin-sdk/directory/v1/guides/manage-users#get_user retrieve a user> method.
    email :: (Core.Maybe [Core.Text]),
    -- | Mobile Device Encryption Status (Read-only)
    encryptionStatus :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Date and time the device was first synchronized with the policy settings in the G Suite administrator control panel (Read-only)
    firstSync :: (Core.Maybe Core.DateTime'),
    -- | Mobile Device Hardware (Read-only)
    hardware :: (Core.Maybe Core.Text),
    -- | The IMEI\/MEID unique identifier for Android hardware. It is not applicable to Google Sync devices. When adding an Android mobile device, this is an optional property. When updating one of these devices, this is a read-only property.
    hardwareId :: (Core.Maybe Core.Text),
    -- | The device\'s IMEI number.
    imei :: (Core.Maybe Core.Text),
    -- | The device\'s kernel version.
    kernelVersion :: (Core.Maybe Core.Text),
    -- | The type of the API resource. For Mobiledevices resources, the value is @admin#directory#mobiledevice@.
    kind :: Core.Text,
    -- | Date and time the device was last synchronized with the policy settings in the G Suite administrator control panel (Read-only)
    lastSync :: (Core.Maybe Core.DateTime'),
    -- | Boolean indicating if this account is on owner\/primary profile or not.
    managedAccountIsOnOwnerProfile :: (Core.Maybe Core.Bool),
    -- | Mobile Device manufacturer (Read-only)
    manufacturer :: (Core.Maybe Core.Text),
    -- | The device\'s MEID number.
    meid :: (Core.Maybe Core.Text),
    -- | The mobile device\'s model name, for example Nexus S. This property can be </admin-sdk/directory/v1/reference/mobiledevices/update.html updated>. For more information, see the </admin-sdk/directory/v1/guides/manage-mobile=devices#update_mobile_device Developer\'s Guide>.
    model :: (Core.Maybe Core.Text),
    -- | List of the owner\'s user names. If your application needs the current list of device owner names, use the </admin-sdk/directory/v1/reference/mobiledevices/get.html get> method. For more information about retrieving mobile device user information, see the </admin-sdk/directory/v1/guides/manage-users#get_user Developer\'s Guide>.
    name :: (Core.Maybe [Core.Text]),
    -- | Mobile Device mobile or network operator (if available) (Read-only)
    networkOperator :: (Core.Maybe Core.Text),
    -- | The mobile device\'s operating system, for example IOS 4.3 or Android 2.3.5. This property can be </admin-sdk/directory/v1/reference/mobiledevices/update.html updated>. For more information, see the </admin-sdk/directory/v1/guides/manage-mobile-devices#update_mobile_device Developer\'s Guide>.
    os :: (Core.Maybe Core.Text),
    -- | List of accounts added on device (Read-only)
    otherAccountsInfo :: (Core.Maybe [Core.Text]),
    -- | DMAgentPermission (Read-only)
    privilege :: (Core.Maybe Core.Text),
    -- | Mobile Device release version version (Read-only)
    releaseVersion :: (Core.Maybe Core.Text),
    -- | The unique ID the API service uses to identify the mobile device.
    resourceId :: (Core.Maybe Core.Text),
    -- | Mobile Device Security patch level (Read-only)
    securityPatchLevel :: (Core.Maybe Core.Int64),
    -- | The device\'s serial number.
    serialNumber :: (Core.Maybe Core.Text),
    -- | The device\'s status.
    status :: (Core.Maybe Core.Text),
    -- | Work profile supported on device (Read-only)
    supportsWorkProfile :: (Core.Maybe Core.Bool),
    -- | The type of mobile device.
    type' :: (Core.Maybe Core.Text),
    -- | Unknown sources enabled or disabled on device (Read-only)
    unknownSourcesStatus :: (Core.Maybe Core.Bool),
    -- | Gives information about the device such as @os@ version. This property can be </admin-sdk/directory/v1/reference/mobiledevices/update.html updated>. For more information, see the </admin-sdk/directory/v1/guides/manage-mobile-devices#update_mobile_device Developer\'s Guide>.
    userAgent :: (Core.Maybe Core.Text),
    -- | The device\'s MAC address on Wi-Fi networks.
    wifiMacAddress :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileDevice' with the minimum fields required to make a request.
newMobileDevice ::
  MobileDevice
newMobileDevice =
  MobileDevice
    { adbStatus = Core.Nothing,
      applications = Core.Nothing,
      basebandVersion = Core.Nothing,
      bootloaderVersion = Core.Nothing,
      brand = Core.Nothing,
      buildNumber = Core.Nothing,
      defaultLanguage = Core.Nothing,
      developerOptionsStatus = Core.Nothing,
      deviceCompromisedStatus = Core.Nothing,
      deviceId = Core.Nothing,
      devicePasswordStatus = Core.Nothing,
      email = Core.Nothing,
      encryptionStatus = Core.Nothing,
      etag = Core.Nothing,
      firstSync = Core.Nothing,
      hardware = Core.Nothing,
      hardwareId = Core.Nothing,
      imei = Core.Nothing,
      kernelVersion = Core.Nothing,
      kind = "admin#directory#mobiledevice",
      lastSync = Core.Nothing,
      managedAccountIsOnOwnerProfile = Core.Nothing,
      manufacturer = Core.Nothing,
      meid = Core.Nothing,
      model = Core.Nothing,
      name = Core.Nothing,
      networkOperator = Core.Nothing,
      os = Core.Nothing,
      otherAccountsInfo = Core.Nothing,
      privilege = Core.Nothing,
      releaseVersion = Core.Nothing,
      resourceId = Core.Nothing,
      securityPatchLevel = Core.Nothing,
      serialNumber = Core.Nothing,
      status = Core.Nothing,
      supportsWorkProfile = Core.Nothing,
      type' = Core.Nothing,
      unknownSourcesStatus = Core.Nothing,
      userAgent = Core.Nothing,
      wifiMacAddress = Core.Nothing
    }

instance Core.FromJSON MobileDevice where
  parseJSON =
    Core.withObject
      "MobileDevice"
      ( \o ->
          MobileDevice
            Core.<$> (o Core..:? "adbStatus")
            Core.<*> (o Core..:? "applications" Core..!= Core.mempty)
            Core.<*> (o Core..:? "basebandVersion")
            Core.<*> (o Core..:? "bootloaderVersion")
            Core.<*> (o Core..:? "brand")
            Core.<*> (o Core..:? "buildNumber")
            Core.<*> (o Core..:? "defaultLanguage")
            Core.<*> (o Core..:? "developerOptionsStatus")
            Core.<*> (o Core..:? "deviceCompromisedStatus")
            Core.<*> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "devicePasswordStatus")
            Core.<*> (o Core..:? "email" Core..!= Core.mempty)
            Core.<*> (o Core..:? "encryptionStatus")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "firstSync")
            Core.<*> (o Core..:? "hardware")
            Core.<*> (o Core..:? "hardwareId")
            Core.<*> (o Core..:? "imei")
            Core.<*> (o Core..:? "kernelVersion")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#mobiledevice"
                     )
            Core.<*> (o Core..:? "lastSync")
            Core.<*> (o Core..:? "managedAccountIsOnOwnerProfile")
            Core.<*> (o Core..:? "manufacturer")
            Core.<*> (o Core..:? "meid")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "name" Core..!= Core.mempty)
            Core.<*> (o Core..:? "networkOperator")
            Core.<*> (o Core..:? "os")
            Core.<*> (o Core..:? "otherAccountsInfo" Core..!= Core.mempty)
            Core.<*> (o Core..:? "privilege")
            Core.<*> (o Core..:? "releaseVersion")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "securityPatchLevel")
            Core.<*> (o Core..:? "serialNumber")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "supportsWorkProfile")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "unknownSourcesStatus")
            Core.<*> (o Core..:? "userAgent")
            Core.<*> (o Core..:? "wifiMacAddress")
      )

instance Core.ToJSON MobileDevice where
  toJSON MobileDevice {..} =
    Core.object
      ( Core.catMaybes
          [ ("adbStatus" Core..=) Core.<$> adbStatus,
            ("applications" Core..=) Core.<$> applications,
            ("basebandVersion" Core..=) Core.<$> basebandVersion,
            ("bootloaderVersion" Core..=)
              Core.<$> bootloaderVersion,
            ("brand" Core..=) Core.<$> brand,
            ("buildNumber" Core..=) Core.<$> buildNumber,
            ("defaultLanguage" Core..=) Core.<$> defaultLanguage,
            ("developerOptionsStatus" Core..=)
              Core.<$> developerOptionsStatus,
            ("deviceCompromisedStatus" Core..=)
              Core.<$> deviceCompromisedStatus,
            ("deviceId" Core..=) Core.<$> deviceId,
            ("devicePasswordStatus" Core..=)
              Core.<$> devicePasswordStatus,
            ("email" Core..=) Core.<$> email,
            ("encryptionStatus" Core..=)
              Core.<$> encryptionStatus,
            ("etag" Core..=) Core.<$> etag,
            ("firstSync" Core..=) Core.<$> firstSync,
            ("hardware" Core..=) Core.<$> hardware,
            ("hardwareId" Core..=) Core.<$> hardwareId,
            ("imei" Core..=) Core.<$> imei,
            ("kernelVersion" Core..=) Core.<$> kernelVersion,
            Core.Just ("kind" Core..= kind),
            ("lastSync" Core..=) Core.<$> lastSync,
            ("managedAccountIsOnOwnerProfile" Core..=)
              Core.<$> managedAccountIsOnOwnerProfile,
            ("manufacturer" Core..=) Core.<$> manufacturer,
            ("meid" Core..=) Core.<$> meid,
            ("model" Core..=) Core.<$> model,
            ("name" Core..=) Core.<$> name,
            ("networkOperator" Core..=) Core.<$> networkOperator,
            ("os" Core..=) Core.<$> os,
            ("otherAccountsInfo" Core..=)
              Core.<$> otherAccountsInfo,
            ("privilege" Core..=) Core.<$> privilege,
            ("releaseVersion" Core..=) Core.<$> releaseVersion,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("securityPatchLevel" Core..=) Core.. Core.AsText
              Core.<$> securityPatchLevel,
            ("serialNumber" Core..=) Core.<$> serialNumber,
            ("status" Core..=) Core.<$> status,
            ("supportsWorkProfile" Core..=)
              Core.<$> supportsWorkProfile,
            ("type" Core..=) Core.<$> type',
            ("unknownSourcesStatus" Core..=)
              Core.<$> unknownSourcesStatus,
            ("userAgent" Core..=) Core.<$> userAgent,
            ("wifiMacAddress" Core..=) Core.<$> wifiMacAddress
          ]
      )

--
-- /See:/ 'newMobileDevice_ApplicationsItem' smart constructor.
data MobileDevice_ApplicationsItem = MobileDevice_ApplicationsItem
  { -- | The application\'s display name. An example is @Browser@.
    displayName :: (Core.Maybe Core.Text),
    -- | The application\'s package name. An example is @com.android.browser@.
    packageName :: (Core.Maybe Core.Text),
    -- | The list of permissions of this application. These can be either a standard Android permission or one defined by the application, and are found in an application\'s <https://developer.android.com/guide/topics/manifest/uses-permission-element.html Android manifest>. Examples of a Calendar application\'s permissions are @READ_CALENDAR@, or @MANAGE_ACCOUNTS@.
    permission :: (Core.Maybe [Core.Text]),
    -- | The application\'s version code. An example is @13@.
    versionCode :: (Core.Maybe Core.Int32),
    -- | The application\'s version name. An example is @3.2-140714@.
    versionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileDevice_ApplicationsItem' with the minimum fields required to make a request.
newMobileDevice_ApplicationsItem ::
  MobileDevice_ApplicationsItem
newMobileDevice_ApplicationsItem =
  MobileDevice_ApplicationsItem
    { displayName = Core.Nothing,
      packageName = Core.Nothing,
      permission = Core.Nothing,
      versionCode = Core.Nothing,
      versionName = Core.Nothing
    }

instance Core.FromJSON MobileDevice_ApplicationsItem where
  parseJSON =
    Core.withObject
      "MobileDevice_ApplicationsItem"
      ( \o ->
          MobileDevice_ApplicationsItem
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "permission" Core..!= Core.mempty)
            Core.<*> (o Core..:? "versionCode")
            Core.<*> (o Core..:? "versionName")
      )

instance Core.ToJSON MobileDevice_ApplicationsItem where
  toJSON MobileDevice_ApplicationsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("packageName" Core..=) Core.<$> packageName,
            ("permission" Core..=) Core.<$> permission,
            ("versionCode" Core..=) Core.<$> versionCode,
            ("versionName" Core..=) Core.<$> versionName
          ]
      )

--
-- /See:/ 'newMobileDeviceAction' smart constructor.
newtype MobileDeviceAction = MobileDeviceAction
  { -- | The action to be performed on the device.
    action :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileDeviceAction' with the minimum fields required to make a request.
newMobileDeviceAction ::
  MobileDeviceAction
newMobileDeviceAction = MobileDeviceAction {action = Core.Nothing}

instance Core.FromJSON MobileDeviceAction where
  parseJSON =
    Core.withObject
      "MobileDeviceAction"
      ( \o ->
          MobileDeviceAction Core.<$> (o Core..:? "action")
      )

instance Core.ToJSON MobileDeviceAction where
  toJSON MobileDeviceAction {..} =
    Core.object
      (Core.catMaybes [("action" Core..=) Core.<$> action])

--
-- /See:/ 'newMobileDevices' smart constructor.
data MobileDevices = MobileDevices
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | List of Mobile Device objects.
    mobiledevices :: (Core.Maybe [MobileDevice]),
    -- | Token used to access next page of this result.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileDevices' with the minimum fields required to make a request.
newMobileDevices ::
  MobileDevices
newMobileDevices =
  MobileDevices
    { etag = Core.Nothing,
      kind = "admin#directory#mobiledevices",
      mobiledevices = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON MobileDevices where
  parseJSON =
    Core.withObject
      "MobileDevices"
      ( \o ->
          MobileDevices
            Core.<$> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#mobiledevices"
                     )
            Core.<*> (o Core..:? "mobiledevices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON MobileDevices where
  toJSON MobileDevices {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("mobiledevices" Core..=) Core.<$> mobiledevices,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Managing your account\'s organizational units allows you to configure your users\' access to services and custom settings. For more information about common organizational unit tasks, see the </admin-sdk/directory/v1/guides/manage-org-units.html Developer\'s Guide>. The customer\'s organizational unit hierarchy is limited to 35 levels of depth.
--
-- /See:/ 'newOrgUnit' smart constructor.
data OrgUnit = OrgUnit
  { -- | Determines if a sub-organizational unit can inherit the settings of the parent organization. The default value is @false@, meaning a sub-organizational unit inherits the settings of the nearest parent organizational unit. For more information on inheritance and users in an organization structure, see the <https://support.google.com/a/answer/4352075 administration help center>.
    blockInheritance :: (Core.Maybe Core.Bool),
    -- | Description of the organizational unit.
    description :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The type of the API resource. For Orgunits resources, the value is @admin#directory#orgUnit@.
    kind :: Core.Text,
    -- | The organizational unit\'s path name. For example, an organizational unit\'s name within the \/corp\/support\/sales/support parent path is sales/support. Required.
    name :: (Core.Maybe Core.Text),
    -- | The unique ID of the organizational unit.
    orgUnitId :: (Core.Maybe Core.Text),
    -- | The full path to the organizational unit. The @orgUnitPath@ is a derived property. When listed, it is derived from @parentOrgunitPath@ and organizational unit\'s @name@. For example, for an organizational unit named \'apps\' under parent organization \'\/engineering\', the orgUnitPath is \'\/engineering\/apps\'. In order to edit an @orgUnitPath@, either update the name of the organization or the @parentOrgunitPath@. A user\'s organizational unit determines which Google Workspace services the user has access to. If the user is moved to a new organization, the user\'s access changes. For more information about organization structures, see the <https://support.google.com/a/answer/4352075 administration help center>. For more information about moving a user to a different organization, see </admin-sdk/directory/v1/guides/manage-users.html#update_user Update a user>.
    orgUnitPath :: (Core.Maybe Core.Text),
    -- | The unique ID of the parent organizational unit. Required, unless @parentOrgUnitPath@ is set.
    parentOrgUnitId :: (Core.Maybe Core.Text),
    -- | The organizational unit\'s parent path. For example, \/corp\/sales is the parent path for \/corp\/sales\/sales_support organizational unit. Required, unless @parentOrgUnitId@ is set.
    parentOrgUnitPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrgUnit' with the minimum fields required to make a request.
newOrgUnit ::
  OrgUnit
newOrgUnit =
  OrgUnit
    { blockInheritance = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#orgUnit",
      name = Core.Nothing,
      orgUnitId = Core.Nothing,
      orgUnitPath = Core.Nothing,
      parentOrgUnitId = Core.Nothing,
      parentOrgUnitPath = Core.Nothing
    }

instance Core.FromJSON OrgUnit where
  parseJSON =
    Core.withObject
      "OrgUnit"
      ( \o ->
          OrgUnit
            Core.<$> (o Core..:? "blockInheritance")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#orgUnit"
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgUnitId")
            Core.<*> (o Core..:? "orgUnitPath")
            Core.<*> (o Core..:? "parentOrgUnitId")
            Core.<*> (o Core..:? "parentOrgUnitPath")
      )

instance Core.ToJSON OrgUnit where
  toJSON OrgUnit {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockInheritance" Core..=)
              Core.<$> blockInheritance,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("orgUnitId" Core..=) Core.<$> orgUnitId,
            ("orgUnitPath" Core..=) Core.<$> orgUnitPath,
            ("parentOrgUnitId" Core..=) Core.<$> parentOrgUnitId,
            ("parentOrgUnitPath" Core..=)
              Core.<$> parentOrgUnitPath
          ]
      )

--
-- /See:/ 'newOrgUnits' smart constructor.
data OrgUnits = OrgUnits
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The type of the API resource. For Org Unit resources, the type is @admin#directory#orgUnits@.
    kind :: Core.Text,
    -- | List of organizational unit objects.
    organizationUnits :: (Core.Maybe [OrgUnit])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrgUnits' with the minimum fields required to make a request.
newOrgUnits ::
  OrgUnits
newOrgUnits =
  OrgUnits
    { etag = Core.Nothing,
      kind = "admin#directory#orgUnits",
      organizationUnits = Core.Nothing
    }

instance Core.FromJSON OrgUnits where
  parseJSON =
    Core.withObject
      "OrgUnits"
      ( \o ->
          OrgUnits
            Core.<$> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#orgUnits"
                     )
            Core.<*> ( o Core..:? "organizationUnits"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON OrgUnits where
  toJSON OrgUnits {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("organizationUnits" Core..=)
              Core.<$> organizationUnits
          ]
      )

-- | Printer configuration.
--
-- /See:/ 'newPrinter' smart constructor.
data Printer = Printer
  { -- | Output only. Auxiliary messages about issues with the printer configuration if any.
    auxiliaryMessages :: (Core.Maybe [AuxiliaryMessage]),
    -- | Output only. Time when printer was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Editable. Description of printer.
    description :: (Core.Maybe Core.Text),
    -- | Editable. Name of printer.
    displayName :: (Core.Maybe Core.Text),
    -- | Id of the printer. (During printer creation leave empty)
    id :: (Core.Maybe Core.Text),
    -- | Editable. Make and model of printer. e.g. Lexmark MS610de Value must be in format as seen in ListPrinterModels response.
    makeAndModel :: (Core.Maybe Core.Text),
    -- | The resource name of the Printer object, in the format customers\/{customer-id}\/printers\/{printer-id} (During printer creation leave empty)
    name :: (Core.Maybe Core.Text),
    -- | Organization Unit that owns this printer (Only can be set during Printer creation)
    orgUnitId :: (Core.Maybe Core.Text),
    -- | Editable. Printer URI.
    uri :: (Core.Maybe Core.Text),
    -- | Editable. flag to use driverless configuration or not. If it\'s set to be true, make/and/model can be ignored
    useDriverlessConfig :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Printer' with the minimum fields required to make a request.
newPrinter ::
  Printer
newPrinter =
  Printer
    { auxiliaryMessages = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      id = Core.Nothing,
      makeAndModel = Core.Nothing,
      name = Core.Nothing,
      orgUnitId = Core.Nothing,
      uri = Core.Nothing,
      useDriverlessConfig = Core.Nothing
    }

instance Core.FromJSON Printer where
  parseJSON =
    Core.withObject
      "Printer"
      ( \o ->
          Printer
            Core.<$> (o Core..:? "auxiliaryMessages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "makeAndModel")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgUnitId")
            Core.<*> (o Core..:? "uri")
            Core.<*> (o Core..:? "useDriverlessConfig")
      )

instance Core.ToJSON Printer where
  toJSON Printer {..} =
    Core.object
      ( Core.catMaybes
          [ ("auxiliaryMessages" Core..=)
              Core.<$> auxiliaryMessages,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("makeAndModel" Core..=) Core.<$> makeAndModel,
            ("name" Core..=) Core.<$> name,
            ("orgUnitId" Core..=) Core.<$> orgUnitId,
            ("uri" Core..=) Core.<$> uri,
            ("useDriverlessConfig" Core..=)
              Core.<$> useDriverlessConfig
          ]
      )

-- | Printer manufacturer and model
--
-- /See:/ 'newPrinterModel' smart constructor.
data PrinterModel = PrinterModel
  { -- | Display name. eq. \"Brother MFC-8840D\"
    displayName :: (Core.Maybe Core.Text),
    -- | Make and model as represented in \"make/and/model\" field in Printer object. eq. \"brother mfc-8840d\"
    makeAndModel :: (Core.Maybe Core.Text),
    -- | Manufacturer. eq. \"Brother\"
    manufacturer :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrinterModel' with the minimum fields required to make a request.
newPrinterModel ::
  PrinterModel
newPrinterModel =
  PrinterModel
    { displayName = Core.Nothing,
      makeAndModel = Core.Nothing,
      manufacturer = Core.Nothing
    }

instance Core.FromJSON PrinterModel where
  parseJSON =
    Core.withObject
      "PrinterModel"
      ( \o ->
          PrinterModel
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "makeAndModel")
            Core.<*> (o Core..:? "manufacturer")
      )

instance Core.ToJSON PrinterModel where
  toJSON PrinterModel {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("makeAndModel" Core..=) Core.<$> makeAndModel,
            ("manufacturer" Core..=) Core.<$> manufacturer
          ]
      )

--
-- /See:/ 'newPrivilege' smart constructor.
data Privilege = Privilege
  { -- | A list of child privileges. Privileges for a service form a tree. Each privilege can have a list of child privileges; this list is empty for a leaf privilege.
    childPrivileges :: (Core.Maybe [Privilege]),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | If the privilege can be restricted to an organization unit.
    isOuScopable :: (Core.Maybe Core.Bool),
    -- | The type of the API resource. This is always @admin#directory#privilege@.
    kind :: Core.Text,
    -- | The name of the privilege.
    privilegeName :: (Core.Maybe Core.Text),
    -- | The obfuscated ID of the service this privilege is for. This value is returned with </admin-sdk/directory/v1/reference/privileges/list Privileges.list()>.
    serviceId :: (Core.Maybe Core.Text),
    -- | The name of the service this privilege is for.
    serviceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Privilege' with the minimum fields required to make a request.
newPrivilege ::
  Privilege
newPrivilege =
  Privilege
    { childPrivileges = Core.Nothing,
      etag = Core.Nothing,
      isOuScopable = Core.Nothing,
      kind = "admin#directory#privilege",
      privilegeName = Core.Nothing,
      serviceId = Core.Nothing,
      serviceName = Core.Nothing
    }

instance Core.FromJSON Privilege where
  parseJSON =
    Core.withObject
      "Privilege"
      ( \o ->
          Privilege
            Core.<$> (o Core..:? "childPrivileges" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "isOuScopable")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#privilege"
                     )
            Core.<*> (o Core..:? "privilegeName")
            Core.<*> (o Core..:? "serviceId")
            Core.<*> (o Core..:? "serviceName")
      )

instance Core.ToJSON Privilege where
  toJSON Privilege {..} =
    Core.object
      ( Core.catMaybes
          [ ("childPrivileges" Core..=)
              Core.<$> childPrivileges,
            ("etag" Core..=) Core.<$> etag,
            ("isOuScopable" Core..=) Core.<$> isOuScopable,
            Core.Just ("kind" Core..= kind),
            ("privilegeName" Core..=) Core.<$> privilegeName,
            ("serviceId" Core..=) Core.<$> serviceId,
            ("serviceName" Core..=) Core.<$> serviceName
          ]
      )

--
-- /See:/ 'newPrivileges' smart constructor.
data Privileges = Privileges
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | A list of Privilege resources.
    items :: (Core.Maybe [Privilege]),
    -- | The type of the API resource. This is always @admin#directory#privileges@.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Privileges' with the minimum fields required to make a request.
newPrivileges ::
  Privileges
newPrivileges =
  Privileges
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "admin#directory#privileges"
    }

instance Core.FromJSON Privileges where
  parseJSON =
    Core.withObject
      "Privileges"
      ( \o ->
          Privileges
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#privileges"
                     )
      )

instance Core.ToJSON Privileges where
  toJSON Privileges {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newRole' smart constructor.
data Role = Role
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Returns @true@ if the role is a super admin role.
    isSuperAdminRole :: (Core.Maybe Core.Bool),
    -- | Returns @true@ if this is a pre-defined system role.
    isSystemRole :: (Core.Maybe Core.Bool),
    -- | The type of the API resource. This is always @admin#directory#role@.
    kind :: Core.Text,
    -- | A short description of the role.
    roleDescription :: (Core.Maybe Core.Text),
    -- | ID of the role.
    roleId :: (Core.Maybe Core.Int64),
    -- | Name of the role.
    roleName :: (Core.Maybe Core.Text),
    -- | The set of privileges that are granted to this role.
    rolePrivileges :: (Core.Maybe [Role_RolePrivilegesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Role' with the minimum fields required to make a request.
newRole ::
  Role
newRole =
  Role
    { etag = Core.Nothing,
      isSuperAdminRole = Core.Nothing,
      isSystemRole = Core.Nothing,
      kind = "admin#directory#role",
      roleDescription = Core.Nothing,
      roleId = Core.Nothing,
      roleName = Core.Nothing,
      rolePrivileges = Core.Nothing
    }

instance Core.FromJSON Role where
  parseJSON =
    Core.withObject
      "Role"
      ( \o ->
          Role
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "isSuperAdminRole")
            Core.<*> (o Core..:? "isSystemRole")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#role")
            Core.<*> (o Core..:? "roleDescription")
            Core.<*> (o Core..:? "roleId")
            Core.<*> (o Core..:? "roleName")
            Core.<*> (o Core..:? "rolePrivileges" Core..!= Core.mempty)
      )

instance Core.ToJSON Role where
  toJSON Role {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("isSuperAdminRole" Core..=)
              Core.<$> isSuperAdminRole,
            ("isSystemRole" Core..=) Core.<$> isSystemRole,
            Core.Just ("kind" Core..= kind),
            ("roleDescription" Core..=) Core.<$> roleDescription,
            ("roleId" Core..=) Core.. Core.AsText
              Core.<$> roleId,
            ("roleName" Core..=) Core.<$> roleName,
            ("rolePrivileges" Core..=) Core.<$> rolePrivileges
          ]
      )

--
-- /See:/ 'newRole_RolePrivilegesItem' smart constructor.
data Role_RolePrivilegesItem = Role_RolePrivilegesItem
  { -- | The name of the privilege.
    privilegeName :: (Core.Maybe Core.Text),
    -- | The obfuscated ID of the service this privilege is for. This value is returned with </admin-sdk/directory/v1/reference/privileges/list Privileges.list()>.
    serviceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Role_RolePrivilegesItem' with the minimum fields required to make a request.
newRole_RolePrivilegesItem ::
  Role_RolePrivilegesItem
newRole_RolePrivilegesItem =
  Role_RolePrivilegesItem
    { privilegeName = Core.Nothing,
      serviceId = Core.Nothing
    }

instance Core.FromJSON Role_RolePrivilegesItem where
  parseJSON =
    Core.withObject
      "Role_RolePrivilegesItem"
      ( \o ->
          Role_RolePrivilegesItem
            Core.<$> (o Core..:? "privilegeName")
            Core.<*> (o Core..:? "serviceId")
      )

instance Core.ToJSON Role_RolePrivilegesItem where
  toJSON Role_RolePrivilegesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("privilegeName" Core..=) Core.<$> privilegeName,
            ("serviceId" Core..=) Core.<$> serviceId
          ]
      )

-- | Defines an assignment of a role.
--
-- /See:/ 'newRoleAssignment' smart constructor.
data RoleAssignment = RoleAssignment
  { -- | The unique ID of the user this role is assigned to.
    assignedTo :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The type of the API resource. This is always @admin#directory#roleAssignment@.
    kind :: Core.Text,
    -- | If the role is restricted to an organization unit, this contains the ID for the organization unit the exercise of this role is restricted to.
    orgUnitId :: (Core.Maybe Core.Text),
    -- | ID of this roleAssignment.
    roleAssignmentId :: (Core.Maybe Core.Int64),
    -- | The ID of the role that is assigned.
    roleId :: (Core.Maybe Core.Int64),
    -- | The scope in which this role is assigned.
    scopeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RoleAssignment' with the minimum fields required to make a request.
newRoleAssignment ::
  RoleAssignment
newRoleAssignment =
  RoleAssignment
    { assignedTo = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#roleAssignment",
      orgUnitId = Core.Nothing,
      roleAssignmentId = Core.Nothing,
      roleId = Core.Nothing,
      scopeType = Core.Nothing
    }

instance Core.FromJSON RoleAssignment where
  parseJSON =
    Core.withObject
      "RoleAssignment"
      ( \o ->
          RoleAssignment
            Core.<$> (o Core..:? "assignedTo")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#roleAssignment"
                     )
            Core.<*> (o Core..:? "orgUnitId")
            Core.<*> (o Core..:? "roleAssignmentId")
            Core.<*> (o Core..:? "roleId")
            Core.<*> (o Core..:? "scopeType")
      )

instance Core.ToJSON RoleAssignment where
  toJSON RoleAssignment {..} =
    Core.object
      ( Core.catMaybes
          [ ("assignedTo" Core..=) Core.<$> assignedTo,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("orgUnitId" Core..=) Core.<$> orgUnitId,
            ("roleAssignmentId" Core..=) Core.. Core.AsText
              Core.<$> roleAssignmentId,
            ("roleId" Core..=) Core.. Core.AsText
              Core.<$> roleId,
            ("scopeType" Core..=) Core.<$> scopeType
          ]
      )

--
-- /See:/ 'newRoleAssignments' smart constructor.
data RoleAssignments = RoleAssignments
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | A list of RoleAssignment resources.
    items :: (Core.Maybe [RoleAssignment]),
    -- | The type of the API resource. This is always @admin#directory#roleAssignments@.
    kind :: Core.Text,
    -- |
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RoleAssignments' with the minimum fields required to make a request.
newRoleAssignments ::
  RoleAssignments
newRoleAssignments =
  RoleAssignments
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "admin#directory#roleAssignments",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON RoleAssignments where
  parseJSON =
    Core.withObject
      "RoleAssignments"
      ( \o ->
          RoleAssignments
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#roleAssignments"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON RoleAssignments where
  toJSON RoleAssignments {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newRoles' smart constructor.
data Roles = Roles
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | A list of Role resources.
    items :: (Core.Maybe [Role]),
    -- | The type of the API resource. This is always @admin#directory#roles@.
    kind :: Core.Text,
    -- |
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Roles' with the minimum fields required to make a request.
newRoles ::
  Roles
newRoles =
  Roles
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "admin#directory#roles",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON Roles where
  parseJSON =
    Core.withObject
      "Roles"
      ( \o ->
          Roles
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#roles")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON Roles where
  toJSON Roles {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The type of API resource. For Schema resources, this is always @admin#directory#schema@.
--
-- /See:/ 'newSchema' smart constructor.
data Schema = Schema
  { -- | Display name for the schema.
    displayName :: (Core.Maybe Core.Text),
    -- | The ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | A list of fields in the schema.
    fields :: (Core.Maybe [SchemaFieldSpec]),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | The unique identifier of the schema (Read-only)
    schemaId :: (Core.Maybe Core.Text),
    -- | The schema\'s name. Each @schema_name@ must be unique within a customer. Reusing a name results in a @409: Entity already exists@ error.
    schemaName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Schema' with the minimum fields required to make a request.
newSchema ::
  Schema
newSchema =
  Schema
    { displayName = Core.Nothing,
      etag = Core.Nothing,
      fields = Core.Nothing,
      kind = "admin#directory#schema",
      schemaId = Core.Nothing,
      schemaName = Core.Nothing
    }

instance Core.FromJSON Schema where
  parseJSON =
    Core.withObject
      "Schema"
      ( \o ->
          Schema
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "fields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#schema")
            Core.<*> (o Core..:? "schemaId")
            Core.<*> (o Core..:? "schemaName")
      )

instance Core.ToJSON Schema where
  toJSON Schema {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("etag" Core..=) Core.<$> etag,
            ("fields" Core..=) Core.<$> fields,
            Core.Just ("kind" Core..= kind),
            ("schemaId" Core..=) Core.<$> schemaId,
            ("schemaName" Core..=) Core.<$> schemaName
          ]
      )

-- | You can use schemas to add custom fields to user profiles. You can use these fields to store information such as the projects your users work on, their physical locations, their hire dates, or whatever else fits your business needs. For more information, see </admin-sdk/directory/v1/guides/manage-schemas Custom User Fields>.
--
-- /See:/ 'newSchemaFieldSpec' smart constructor.
data SchemaFieldSpec = SchemaFieldSpec
  { -- | Display Name of the field.
    displayName :: (Core.Maybe Core.Text),
    -- | The ETag of the field.
    etag :: (Core.Maybe Core.Text),
    -- | The unique identifier of the field (Read-only)
    fieldId :: (Core.Maybe Core.Text),
    -- | The name of the field.
    fieldName :: (Core.Maybe Core.Text),
    -- | The type of the field.
    fieldType :: (Core.Maybe Core.Text),
    -- | Boolean specifying whether the field is indexed or not. Default: @true@.
    indexed :: Core.Bool,
    -- | The kind of resource this is. For schema fields this is always @admin#directory#schema#fieldspec@.
    kind :: Core.Text,
    -- | A boolean specifying whether this is a multi-valued field or not. Default: @false@.
    multiValued :: (Core.Maybe Core.Bool),
    -- | Indexing spec for a numeric field. By default, only exact match queries will be supported for numeric fields. Setting the @numericIndexingSpec@ allows range queries to be supported.
    numericIndexingSpec :: (Core.Maybe SchemaFieldSpec_NumericIndexingSpec),
    -- | Specifies who can view values of this field. See </admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin Retrieve users as a non-administrator> for more information. Note: It may take up to 24 hours for changes to this field to be reflected.
    readAccessType :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchemaFieldSpec' with the minimum fields required to make a request.
newSchemaFieldSpec ::
  SchemaFieldSpec
newSchemaFieldSpec =
  SchemaFieldSpec
    { displayName = Core.Nothing,
      etag = Core.Nothing,
      fieldId = Core.Nothing,
      fieldName = Core.Nothing,
      fieldType = Core.Nothing,
      indexed = Core.True,
      kind = "admin#directory#schema#fieldspec",
      multiValued = Core.Nothing,
      numericIndexingSpec = Core.Nothing,
      readAccessType = "ALL_DOMAIN_USERS"
    }

instance Core.FromJSON SchemaFieldSpec where
  parseJSON =
    Core.withObject
      "SchemaFieldSpec"
      ( \o ->
          SchemaFieldSpec
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "fieldId")
            Core.<*> (o Core..:? "fieldName")
            Core.<*> (o Core..:? "fieldType")
            Core.<*> (o Core..:? "indexed" Core..!= Core.True)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#schema#fieldspec"
                     )
            Core.<*> (o Core..:? "multiValued")
            Core.<*> (o Core..:? "numericIndexingSpec")
            Core.<*> ( o Core..:? "readAccessType"
                         Core..!= "ALL_DOMAIN_USERS"
                     )
      )

instance Core.ToJSON SchemaFieldSpec where
  toJSON SchemaFieldSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("etag" Core..=) Core.<$> etag,
            ("fieldId" Core..=) Core.<$> fieldId,
            ("fieldName" Core..=) Core.<$> fieldName,
            ("fieldType" Core..=) Core.<$> fieldType,
            Core.Just ("indexed" Core..= indexed),
            Core.Just ("kind" Core..= kind),
            ("multiValued" Core..=) Core.<$> multiValued,
            ("numericIndexingSpec" Core..=)
              Core.<$> numericIndexingSpec,
            Core.Just ("readAccessType" Core..= readAccessType)
          ]
      )

-- | Indexing spec for a numeric field. By default, only exact match queries will be supported for numeric fields. Setting the @numericIndexingSpec@ allows range queries to be supported.
--
-- /See:/ 'newSchemaFieldSpec_NumericIndexingSpec' smart constructor.
data SchemaFieldSpec_NumericIndexingSpec = SchemaFieldSpec_NumericIndexingSpec
  { -- | Maximum value of this field. This is meant to be indicative rather than enforced. Values outside this range will still be indexed, but search may not be as performant.
    maxValue :: (Core.Maybe Core.Double),
    -- | Minimum value of this field. This is meant to be indicative rather than enforced. Values outside this range will still be indexed, but search may not be as performant.
    minValue :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchemaFieldSpec_NumericIndexingSpec' with the minimum fields required to make a request.
newSchemaFieldSpec_NumericIndexingSpec ::
  SchemaFieldSpec_NumericIndexingSpec
newSchemaFieldSpec_NumericIndexingSpec =
  SchemaFieldSpec_NumericIndexingSpec
    { maxValue = Core.Nothing,
      minValue = Core.Nothing
    }

instance
  Core.FromJSON
    SchemaFieldSpec_NumericIndexingSpec
  where
  parseJSON =
    Core.withObject
      "SchemaFieldSpec_NumericIndexingSpec"
      ( \o ->
          SchemaFieldSpec_NumericIndexingSpec
            Core.<$> (o Core..:? "maxValue")
            Core.<*> (o Core..:? "minValue")
      )

instance
  Core.ToJSON
    SchemaFieldSpec_NumericIndexingSpec
  where
  toJSON SchemaFieldSpec_NumericIndexingSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxValue" Core..=) Core.<$> maxValue,
            ("minValue" Core..=) Core.<$> minValue
          ]
      )

-- | JSON response template for List Schema operation in Directory API.
--
-- /See:/ 'newSchemas' smart constructor.
data Schemas = Schemas
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | List of UserSchema objects.
    schemas :: (Core.Maybe [Schema])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Schemas' with the minimum fields required to make a request.
newSchemas ::
  Schemas
newSchemas =
  Schemas
    { etag = Core.Nothing,
      kind = "admin#directory#schemas",
      schemas = Core.Nothing
    }

instance Core.FromJSON Schemas where
  parseJSON =
    Core.withObject
      "Schemas"
      ( \o ->
          Schemas
            Core.<$> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#schemas"
                     )
            Core.<*> (o Core..:? "schemas" Core..!= Core.mempty)
      )

instance Core.ToJSON Schemas where
  toJSON Schemas {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("schemas" Core..=) Core.<$> schemas
          ]
      )

-- | JSON template for token resource in Directory API.
--
-- /See:/ 'newToken' smart constructor.
data Token = Token
  { -- | Whether the application is registered with Google. The value is @true@ if the application has an anonymous Client ID.
    anonymous :: (Core.Maybe Core.Bool),
    -- | The Client ID of the application the token is issued to.
    clientId :: (Core.Maybe Core.Text),
    -- | The displayable name of the application the token is issued to.
    displayText :: (Core.Maybe Core.Text),
    -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The type of the API resource. This is always @admin#directory#token@.
    kind :: Core.Text,
    -- | Whether the token is issued to an installed application. The value is @true@ if the application is installed to a desktop or mobile device.
    nativeApp :: (Core.Maybe Core.Bool),
    -- | A list of authorization scopes the application is granted.
    scopes :: (Core.Maybe [Core.Text]),
    -- | The unique ID of the user that issued the token.
    userKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Token' with the minimum fields required to make a request.
newToken ::
  Token
newToken =
  Token
    { anonymous = Core.Nothing,
      clientId = Core.Nothing,
      displayText = Core.Nothing,
      etag = Core.Nothing,
      kind = "admin#directory#token",
      nativeApp = Core.Nothing,
      scopes = Core.Nothing,
      userKey = Core.Nothing
    }

instance Core.FromJSON Token where
  parseJSON =
    Core.withObject
      "Token"
      ( \o ->
          Token
            Core.<$> (o Core..:? "anonymous")
            Core.<*> (o Core..:? "clientId")
            Core.<*> (o Core..:? "displayText")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#token")
            Core.<*> (o Core..:? "nativeApp")
            Core.<*> (o Core..:? "scopes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "userKey")
      )

instance Core.ToJSON Token where
  toJSON Token {..} =
    Core.object
      ( Core.catMaybes
          [ ("anonymous" Core..=) Core.<$> anonymous,
            ("clientId" Core..=) Core.<$> clientId,
            ("displayText" Core..=) Core.<$> displayText,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nativeApp" Core..=) Core.<$> nativeApp,
            ("scopes" Core..=) Core.<$> scopes,
            ("userKey" Core..=) Core.<$> userKey
          ]
      )

-- | JSON response template for List tokens operation in Directory API.
--
-- /See:/ 'newTokens' smart constructor.
data Tokens = Tokens
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | A list of Token resources.
    items :: (Core.Maybe [Token]),
    -- | The type of the API resource. This is always @admin#directory#tokenList@.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tokens' with the minimum fields required to make a request.
newTokens ::
  Tokens
newTokens =
  Tokens
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "admin#directory#tokenList"
    }

instance Core.FromJSON Tokens where
  parseJSON =
    Core.withObject
      "Tokens"
      ( \o ->
          Tokens
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#tokenList"
                     )
      )

instance Core.ToJSON Tokens where
  toJSON Tokens {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | The Directory API allows you to create and manage your account\'s users, user aliases, and user Gmail chat profile photos. For more information about common tasks, see the </admin-sdk/directory/v1/guides/manage-users.html User Accounts Developer\'s Guide> and the </admin-sdk/directory/v1/guides/manage-user-aliases.html User Aliases Developer\'s Guide>.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | A list of the user\'s addresses. The maximum allowed data size for this field is 10Kb.
    addresses :: (Core.Maybe Core.Value),
    -- | Output only. This property is @true@ if the user has completed an initial login and accepted the Terms of Service agreement.
    agreedToTerms :: (Core.Maybe Core.Bool),
    -- | Output only. A list of the user\'s alias email addresses.
    aliases :: (Core.Maybe [Core.Text]),
    -- | Indicates if user is archived.
    archived :: (Core.Maybe Core.Bool),
    -- | Indicates if the user is forced to change their password at next login. This setting doesn\'t apply when <https://support.google.com/a/answer/60224 the user signs in via a third-party identity provider>.
    changePasswordAtNextLogin :: (Core.Maybe Core.Bool),
    -- | User\'s G Suite account creation time. (Read-only)
    creationTime :: (Core.Maybe Core.DateTime'),
    -- | Custom fields of the user. The key is a @schema_name@ and its values are @\'field_name\': \'field_value\'@.
    customSchemas :: (Core.Maybe User_CustomSchemas),
    -- | Output only. The customer ID to </admin-sdk/directory/v1/guides/manage-users.html#get_all_users retrieve all account users>. You can use the alias @my_customer@ to represent your account\'s @customerId@. As a reseller administrator, you can use the resold customer account\'s @customerId@. To get a @customerId@, use the account\'s primary domain in the @domain@ parameter of a </admin-sdk/directory/v1/reference/users/list users.list> request.
    customerId :: (Core.Maybe Core.Text),
    -- |
    deletionTime :: (Core.Maybe Core.DateTime'),
    -- | A list of the user\'s email addresses. The maximum allowed data size for this field is 10Kb.
    emails :: (Core.Maybe Core.Value),
    -- | Output only. ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | A list of external IDs for the user, such as an employee or network ID. The maximum allowed data size for this field is 2Kb.
    externalIds :: (Core.Maybe Core.Value),
    -- | The user\'s gender. The maximum allowed data size for this field is 1Kb.
    gender :: (Core.Maybe Core.Value),
    -- | Stores the hash format of the password property. We recommend sending the @password@ property value as a base 16 bit hexadecimal-encoded hash value. The following @hashFunction@ values are allowed: * @DES@ * @MD5@ - hash prefix is @$1$@ * @SHA2-256@ - hash prefix is @$5$@ * @SHA2-512@ - hash prefix is @$6$@ If rounds are specified as part of the prefix, they must be 10,000 or fewer.
    hashFunction :: (Core.Maybe Core.Text),
    -- | The unique ID for the user. A user @id@ can be used as a user request URI\'s @userKey@.
    id :: (Core.Maybe Core.Text),
    -- | The user\'s Instant Messenger (IM) accounts. A user account can have multiple ims properties. But, only one of these ims properties can be the primary IM contact. The maximum allowed data size for this field is 2Kb.
    ims :: (Core.Maybe Core.Value),
    -- | Indicates if the user\'s profile is visible in the Google Workspace global address list when the contact sharing feature is enabled for the domain. For more information about excluding user profiles, see the <https://support.google.com/a/answer/1285988 administration help center>.
    includeInGlobalAddressList :: (Core.Maybe Core.Bool),
    -- | If @true@, the user\'s IP address is <https://support.google.com/a/answer/60752 whitelisted>.
    ipWhitelisted :: (Core.Maybe Core.Bool),
    -- | Output only. Indicates a user with super admininistrator privileges. The @isAdmin@ property can only be edited in the </admin-sdk/directory/v1/guides/manage-users.html#make_admin Make a user an administrator> operation ( </admin-sdk/directory/v1/reference/users/makeAdmin.html makeAdmin> method). If edited in the user </admin-sdk/directory/v1/reference/users/insert.html insert> or </admin-sdk/directory/v1/reference/users/update.html update> methods, the edit is ignored by the API service.
    isAdmin :: (Core.Maybe Core.Bool),
    -- | Output only. Indicates if the user is a delegated administrator. Delegated administrators are supported by the API but cannot create or undelete users, or make users administrators. These requests are ignored by the API service. Roles and privileges for administrators are assigned using the <https://support.google.com/a/answer/33325 Admin console>.
    isDelegatedAdmin :: (Core.Maybe Core.Bool),
    -- | Output only. Is 2-step verification enforced (Read-only)
    isEnforcedIn2Sv :: (Core.Maybe Core.Bool),
    -- | Output only. Is enrolled in 2-step verification (Read-only)
    isEnrolledIn2Sv :: (Core.Maybe Core.Bool),
    -- | Output only. Indicates if the user\'s Google mailbox is created. This property is only applicable if the user has been assigned a Gmail license.
    isMailboxSetup :: (Core.Maybe Core.Bool),
    -- | The user\'s keywords. The maximum allowed data size for this field is 1Kb.
    keywords :: (Core.Maybe Core.Value),
    -- | Output only. The type of the API resource. For Users resources, the value is @admin#directory#user@.
    kind :: Core.Text,
    -- | The user\'s languages. The maximum allowed data size for this field is 1Kb.
    languages :: (Core.Maybe Core.Value),
    -- | User\'s last login time. (Read-only)
    lastLoginTime :: (Core.Maybe Core.DateTime'),
    -- | The user\'s locations. The maximum allowed data size for this field is 10Kb.
    locations :: (Core.Maybe Core.Value),
    -- | Holds the given and family names of the user, and the read-only @fullName@ value. The maximum number of characters in the @givenName@ and in the @familyName@ values is 60. In addition, name values support unicode\/UTF-8 characters, and can contain spaces, letters (a-z), numbers (0-9), dashes (-), forward slashes (\/), and periods (.). For more information about character usage rules, see the <https://support.google.com/a/answer/9193374 administration help center>. Maximum allowed data size for this field is 1Kb.
    name :: (Core.Maybe UserName),
    -- | Output only. List of the user\'s non-editable alias email addresses. These are typically outside the account\'s primary domain or sub-domain.
    nonEditableAliases :: (Core.Maybe [Core.Text]),
    -- | Notes for the user.
    notes :: (Core.Maybe Core.Value),
    -- | The full path of the parent organization associated with the user. If the parent organization is the top-level, it is represented as a forward slash (@\/@).
    orgUnitPath :: (Core.Maybe Core.Text),
    -- | A list of organizations the user belongs to. The maximum allowed data size for this field is 10Kb.
    organizations :: (Core.Maybe Core.Value),
    -- | User\'s password
    password :: (Core.Maybe Core.Text),
    -- | A list of the user\'s phone numbers. The maximum allowed data size for this field is 1Kb.
    phones :: (Core.Maybe Core.Value),
    -- | A list of <https://www.opengroup.org/austin/papers/posix_faq.html POSIX> account information for the user.
    posixAccounts :: (Core.Maybe Core.Value),
    -- | The user\'s primary email address. This property is required in a request to create a user account. The @primaryEmail@ must be unique and cannot be an alias of another user.
    primaryEmail :: (Core.Maybe Core.Text),
    -- | Recovery email of the user.
    recoveryEmail :: (Core.Maybe Core.Text),
    -- | Recovery phone of the user. The phone number must be in the E.164 format, starting with the plus sign (+). Example: /+16506661212/.
    recoveryPhone :: (Core.Maybe Core.Text),
    -- | A list of the user\'s relationships to other users. The maximum allowed data size for this field is 2Kb.
    relations :: (Core.Maybe Core.Value),
    -- | A list of SSH public keys.
    sshPublicKeys :: (Core.Maybe Core.Value),
    -- | Indicates if user is suspended.
    suspended :: (Core.Maybe Core.Bool),
    -- | Output only. Has the reason a user account is suspended either by the administrator or by Google at the time of suspension. The property is returned only if the @suspended@ property is @true@.
    suspensionReason :: (Core.Maybe Core.Text),
    -- | Output only. ETag of the user\'s photo (Read-only)
    thumbnailPhotoEtag :: (Core.Maybe Core.Text),
    -- | Output only. Photo Url of the user (Read-only)
    thumbnailPhotoUrl :: (Core.Maybe Core.Text),
    -- | The user\'s websites. The maximum allowed data size for this field is 2Kb.
    websites :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { addresses = Core.Nothing,
      agreedToTerms = Core.Nothing,
      aliases = Core.Nothing,
      archived = Core.Nothing,
      changePasswordAtNextLogin = Core.Nothing,
      creationTime = Core.Nothing,
      customSchemas = Core.Nothing,
      customerId = Core.Nothing,
      deletionTime = Core.Nothing,
      emails = Core.Nothing,
      etag = Core.Nothing,
      externalIds = Core.Nothing,
      gender = Core.Nothing,
      hashFunction = Core.Nothing,
      id = Core.Nothing,
      ims = Core.Nothing,
      includeInGlobalAddressList = Core.Nothing,
      ipWhitelisted = Core.Nothing,
      isAdmin = Core.Nothing,
      isDelegatedAdmin = Core.Nothing,
      isEnforcedIn2Sv = Core.Nothing,
      isEnrolledIn2Sv = Core.Nothing,
      isMailboxSetup = Core.Nothing,
      keywords = Core.Nothing,
      kind = "admin#directory#user",
      languages = Core.Nothing,
      lastLoginTime = Core.Nothing,
      locations = Core.Nothing,
      name = Core.Nothing,
      nonEditableAliases = Core.Nothing,
      notes = Core.Nothing,
      orgUnitPath = Core.Nothing,
      organizations = Core.Nothing,
      password = Core.Nothing,
      phones = Core.Nothing,
      posixAccounts = Core.Nothing,
      primaryEmail = Core.Nothing,
      recoveryEmail = Core.Nothing,
      recoveryPhone = Core.Nothing,
      relations = Core.Nothing,
      sshPublicKeys = Core.Nothing,
      suspended = Core.Nothing,
      suspensionReason = Core.Nothing,
      thumbnailPhotoEtag = Core.Nothing,
      thumbnailPhotoUrl = Core.Nothing,
      websites = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "addresses")
            Core.<*> (o Core..:? "agreedToTerms")
            Core.<*> (o Core..:? "aliases" Core..!= Core.mempty)
            Core.<*> (o Core..:? "archived")
            Core.<*> (o Core..:? "changePasswordAtNextLogin")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "customSchemas")
            Core.<*> (o Core..:? "customerId")
            Core.<*> (o Core..:? "deletionTime")
            Core.<*> (o Core..:? "emails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "externalIds")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "hashFunction")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "ims")
            Core.<*> (o Core..:? "includeInGlobalAddressList")
            Core.<*> (o Core..:? "ipWhitelisted")
            Core.<*> (o Core..:? "isAdmin")
            Core.<*> (o Core..:? "isDelegatedAdmin")
            Core.<*> (o Core..:? "isEnforcedIn2Sv")
            Core.<*> (o Core..:? "isEnrolledIn2Sv")
            Core.<*> (o Core..:? "isMailboxSetup")
            Core.<*> (o Core..:? "keywords")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#user")
            Core.<*> (o Core..:? "languages")
            Core.<*> (o Core..:? "lastLoginTime")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "name")
            Core.<*> ( o Core..:? "nonEditableAliases"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "notes")
            Core.<*> (o Core..:? "orgUnitPath")
            Core.<*> (o Core..:? "organizations")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "phones")
            Core.<*> (o Core..:? "posixAccounts")
            Core.<*> (o Core..:? "primaryEmail")
            Core.<*> (o Core..:? "recoveryEmail")
            Core.<*> (o Core..:? "recoveryPhone")
            Core.<*> (o Core..:? "relations")
            Core.<*> (o Core..:? "sshPublicKeys")
            Core.<*> (o Core..:? "suspended")
            Core.<*> (o Core..:? "suspensionReason")
            Core.<*> (o Core..:? "thumbnailPhotoEtag")
            Core.<*> (o Core..:? "thumbnailPhotoUrl")
            Core.<*> (o Core..:? "websites")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("addresses" Core..=) Core.<$> addresses,
            ("agreedToTerms" Core..=) Core.<$> agreedToTerms,
            ("aliases" Core..=) Core.<$> aliases,
            ("archived" Core..=) Core.<$> archived,
            ("changePasswordAtNextLogin" Core..=)
              Core.<$> changePasswordAtNextLogin,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("customSchemas" Core..=) Core.<$> customSchemas,
            ("customerId" Core..=) Core.<$> customerId,
            ("deletionTime" Core..=) Core.<$> deletionTime,
            ("emails" Core..=) Core.<$> emails,
            ("etag" Core..=) Core.<$> etag,
            ("externalIds" Core..=) Core.<$> externalIds,
            ("gender" Core..=) Core.<$> gender,
            ("hashFunction" Core..=) Core.<$> hashFunction,
            ("id" Core..=) Core.<$> id,
            ("ims" Core..=) Core.<$> ims,
            ("includeInGlobalAddressList" Core..=)
              Core.<$> includeInGlobalAddressList,
            ("ipWhitelisted" Core..=) Core.<$> ipWhitelisted,
            ("isAdmin" Core..=) Core.<$> isAdmin,
            ("isDelegatedAdmin" Core..=)
              Core.<$> isDelegatedAdmin,
            ("isEnforcedIn2Sv" Core..=) Core.<$> isEnforcedIn2Sv,
            ("isEnrolledIn2Sv" Core..=) Core.<$> isEnrolledIn2Sv,
            ("isMailboxSetup" Core..=) Core.<$> isMailboxSetup,
            ("keywords" Core..=) Core.<$> keywords,
            Core.Just ("kind" Core..= kind),
            ("languages" Core..=) Core.<$> languages,
            ("lastLoginTime" Core..=) Core.<$> lastLoginTime,
            ("locations" Core..=) Core.<$> locations,
            ("name" Core..=) Core.<$> name,
            ("nonEditableAliases" Core..=)
              Core.<$> nonEditableAliases,
            ("notes" Core..=) Core.<$> notes,
            ("orgUnitPath" Core..=) Core.<$> orgUnitPath,
            ("organizations" Core..=) Core.<$> organizations,
            ("password" Core..=) Core.<$> password,
            ("phones" Core..=) Core.<$> phones,
            ("posixAccounts" Core..=) Core.<$> posixAccounts,
            ("primaryEmail" Core..=) Core.<$> primaryEmail,
            ("recoveryEmail" Core..=) Core.<$> recoveryEmail,
            ("recoveryPhone" Core..=) Core.<$> recoveryPhone,
            ("relations" Core..=) Core.<$> relations,
            ("sshPublicKeys" Core..=) Core.<$> sshPublicKeys,
            ("suspended" Core..=) Core.<$> suspended,
            ("suspensionReason" Core..=)
              Core.<$> suspensionReason,
            ("thumbnailPhotoEtag" Core..=)
              Core.<$> thumbnailPhotoEtag,
            ("thumbnailPhotoUrl" Core..=)
              Core.<$> thumbnailPhotoUrl,
            ("websites" Core..=) Core.<$> websites
          ]
      )

-- | Custom fields of the user. The key is a @schema_name@ and its values are @\'field_name\': \'field_value\'@.
--
-- /See:/ 'newUser_CustomSchemas' smart constructor.
newtype User_CustomSchemas = User_CustomSchemas
  { -- |
    addtional :: (Core.HashMap Core.Text UserCustomProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User_CustomSchemas' with the minimum fields required to make a request.
newUser_CustomSchemas ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text UserCustomProperties ->
  User_CustomSchemas
newUser_CustomSchemas addtional = User_CustomSchemas {addtional = addtional}

instance Core.FromJSON User_CustomSchemas where
  parseJSON =
    Core.withObject
      "User_CustomSchemas"
      ( \o ->
          User_CustomSchemas Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON User_CustomSchemas where
  toJSON User_CustomSchemas {..} = Core.toJSON addtional

-- | JSON template for About (notes) of a user in Directory API.
--
-- /See:/ 'newUserAbout' smart constructor.
data UserAbout = UserAbout
  { -- | About entry can have a type which indicates the content type. It can either be plain or html. By default, notes contents are assumed to contain plain text.
    contentType :: (Core.Maybe Core.Text),
    -- | Actual value of notes.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserAbout' with the minimum fields required to make a request.
newUserAbout ::
  UserAbout
newUserAbout = UserAbout {contentType = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON UserAbout where
  parseJSON =
    Core.withObject
      "UserAbout"
      ( \o ->
          UserAbout
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON UserAbout where
  toJSON UserAbout {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | JSON template for address.
--
-- /See:/ 'newUserAddress' smart constructor.
data UserAddress = UserAddress
  { -- | Country.
    country :: (Core.Maybe Core.Text),
    -- | Country code.
    countryCode :: (Core.Maybe Core.Text),
    -- | Custom type.
    customType :: (Core.Maybe Core.Text),
    -- | Extended Address.
    extendedAddress :: (Core.Maybe Core.Text),
    -- | Formatted address.
    formatted :: (Core.Maybe Core.Text),
    -- | Locality.
    locality :: (Core.Maybe Core.Text),
    -- | Other parts of address.
    poBox :: (Core.Maybe Core.Text),
    -- | Postal code.
    postalCode :: (Core.Maybe Core.Text),
    -- | If this is user\'s primary address. Only one entry could be marked as primary.
    primary :: (Core.Maybe Core.Bool),
    -- | Region.
    region :: (Core.Maybe Core.Text),
    -- | User supplied address was structured. Structured addresses are NOT supported at this time. You might be able to write structured addresses but any values will eventually be clobbered.
    sourceIsStructured :: (Core.Maybe Core.Bool),
    -- | Street.
    streetAddress :: (Core.Maybe Core.Text),
    -- | Each entry can have a type which indicates standard values of that entry. For example address could be of home work etc. In addition to the standard type an entry can have a custom type and can take any value. Such type should have the CUSTOM value as type and also have a customType value.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserAddress' with the minimum fields required to make a request.
newUserAddress ::
  UserAddress
newUserAddress =
  UserAddress
    { country = Core.Nothing,
      countryCode = Core.Nothing,
      customType = Core.Nothing,
      extendedAddress = Core.Nothing,
      formatted = Core.Nothing,
      locality = Core.Nothing,
      poBox = Core.Nothing,
      postalCode = Core.Nothing,
      primary = Core.Nothing,
      region = Core.Nothing,
      sourceIsStructured = Core.Nothing,
      streetAddress = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON UserAddress where
  parseJSON =
    Core.withObject
      "UserAddress"
      ( \o ->
          UserAddress
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "customType")
            Core.<*> (o Core..:? "extendedAddress")
            Core.<*> (o Core..:? "formatted")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "poBox")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "sourceIsStructured")
            Core.<*> (o Core..:? "streetAddress")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UserAddress where
  toJSON UserAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("customType" Core..=) Core.<$> customType,
            ("extendedAddress" Core..=) Core.<$> extendedAddress,
            ("formatted" Core..=) Core.<$> formatted,
            ("locality" Core..=) Core.<$> locality,
            ("poBox" Core..=) Core.<$> poBox,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("primary" Core..=) Core.<$> primary,
            ("region" Core..=) Core.<$> region,
            ("sourceIsStructured" Core..=)
              Core.<$> sourceIsStructured,
            ("streetAddress" Core..=) Core.<$> streetAddress,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | JSON template for a set of custom properties (i.e. all fields in a particular schema)
--
-- /See:/ 'newUserCustomProperties' smart constructor.
newtype UserCustomProperties = UserCustomProperties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserCustomProperties' with the minimum fields required to make a request.
newUserCustomProperties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  UserCustomProperties
newUserCustomProperties addtional = UserCustomProperties {addtional = addtional}

instance Core.FromJSON UserCustomProperties where
  parseJSON =
    Core.withObject
      "UserCustomProperties"
      ( \o ->
          UserCustomProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON UserCustomProperties where
  toJSON UserCustomProperties {..} =
    Core.toJSON addtional

-- | JSON template for an email.
--
-- /See:/ 'newUserEmail' smart constructor.
data UserEmail = UserEmail
  { -- | Email id of the user.
    address :: (Core.Maybe Core.Text),
    -- | Custom Type.
    customType :: (Core.Maybe Core.Text),
    -- | If this is user\'s primary email. Only one entry could be marked as primary.
    primary :: (Core.Maybe Core.Bool),
    -- | Each entry can have a type which indicates standard types of that entry. For example email could be of home, work etc. In addition to the standard type, an entry can have a custom type and can take any value Such types should have the CUSTOM value as type and also have a customType value.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserEmail' with the minimum fields required to make a request.
newUserEmail ::
  UserEmail
newUserEmail =
  UserEmail
    { address = Core.Nothing,
      customType = Core.Nothing,
      primary = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON UserEmail where
  parseJSON =
    Core.withObject
      "UserEmail"
      ( \o ->
          UserEmail
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "customType")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UserEmail where
  toJSON UserEmail {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("customType" Core..=) Core.<$> customType,
            ("primary" Core..=) Core.<$> primary,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | JSON template for an externalId entry.
--
-- /See:/ 'newUserExternalId' smart constructor.
data UserExternalId = UserExternalId
  { -- | Custom type.
    customType :: (Core.Maybe Core.Text),
    -- | The type of the Id.
    type' :: (Core.Maybe Core.Text),
    -- | The value of the id.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserExternalId' with the minimum fields required to make a request.
newUserExternalId ::
  UserExternalId
newUserExternalId =
  UserExternalId
    { customType = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON UserExternalId where
  parseJSON =
    Core.withObject
      "UserExternalId"
      ( \o ->
          UserExternalId
            Core.<$> (o Core..:? "customType")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON UserExternalId where
  toJSON UserExternalId {..} =
    Core.object
      ( Core.catMaybes
          [ ("customType" Core..=) Core.<$> customType,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newUserGender' smart constructor.
data UserGender = UserGender
  { -- | AddressMeAs. A human-readable string containing the proper way to refer to the profile owner by humans for example he\/him\/his or they\/them\/their.
    addressMeAs :: (Core.Maybe Core.Text),
    -- | Custom gender.
    customGender :: (Core.Maybe Core.Text),
    -- | Gender.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserGender' with the minimum fields required to make a request.
newUserGender ::
  UserGender
newUserGender =
  UserGender
    { addressMeAs = Core.Nothing,
      customGender = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON UserGender where
  parseJSON =
    Core.withObject
      "UserGender"
      ( \o ->
          UserGender
            Core.<$> (o Core..:? "addressMeAs")
            Core.<*> (o Core..:? "customGender")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UserGender where
  toJSON UserGender {..} =
    Core.object
      ( Core.catMaybes
          [ ("addressMeAs" Core..=) Core.<$> addressMeAs,
            ("customGender" Core..=) Core.<$> customGender,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | JSON template for instant messenger of an user.
--
-- /See:/ 'newUserIm' smart constructor.
data UserIm = UserIm
  { -- | Custom protocol.
    customProtocol :: (Core.Maybe Core.Text),
    -- | Custom type.
    customType :: (Core.Maybe Core.Text),
    -- | Instant messenger id.
    im :: (Core.Maybe Core.Text),
    -- | If this is user\'s primary im. Only one entry could be marked as primary.
    primary :: (Core.Maybe Core.Bool),
    -- | Protocol used in the instant messenger. It should be one of the values from ImProtocolTypes map. Similar to type it can take a CUSTOM value and specify the custom name in customProtocol field.
    protocol :: (Core.Maybe Core.Text),
    -- | Each entry can have a type which indicates standard types of that entry. For example instant messengers could be of home work etc. In addition to the standard type an entry can have a custom type and can take any value. Such types should have the CUSTOM value as type and also have a customType value.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserIm' with the minimum fields required to make a request.
newUserIm ::
  UserIm
newUserIm =
  UserIm
    { customProtocol = Core.Nothing,
      customType = Core.Nothing,
      im = Core.Nothing,
      primary = Core.Nothing,
      protocol = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON UserIm where
  parseJSON =
    Core.withObject
      "UserIm"
      ( \o ->
          UserIm
            Core.<$> (o Core..:? "customProtocol")
            Core.<*> (o Core..:? "customType")
            Core.<*> (o Core..:? "im")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "protocol")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UserIm where
  toJSON UserIm {..} =
    Core.object
      ( Core.catMaybes
          [ ("customProtocol" Core..=) Core.<$> customProtocol,
            ("customType" Core..=) Core.<$> customType,
            ("im" Core..=) Core.<$> im,
            ("primary" Core..=) Core.<$> primary,
            ("protocol" Core..=) Core.<$> protocol,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | JSON template for a keyword entry.
--
-- /See:/ 'newUserKeyword' smart constructor.
data UserKeyword = UserKeyword
  { -- | Custom Type.
    customType :: (Core.Maybe Core.Text),
    -- | Each entry can have a type which indicates standard type of that entry. For example keyword could be of type occupation or outlook. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value.
    type' :: (Core.Maybe Core.Text),
    -- | Keyword.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserKeyword' with the minimum fields required to make a request.
newUserKeyword ::
  UserKeyword
newUserKeyword =
  UserKeyword
    { customType = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON UserKeyword where
  parseJSON =
    Core.withObject
      "UserKeyword"
      ( \o ->
          UserKeyword
            Core.<$> (o Core..:? "customType")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON UserKeyword where
  toJSON UserKeyword {..} =
    Core.object
      ( Core.catMaybes
          [ ("customType" Core..=) Core.<$> customType,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | JSON template for a language entry.
--
-- /See:/ 'newUserLanguage' smart constructor.
data UserLanguage = UserLanguage
  { -- | Other language. User can provide their own language name if there is no corresponding ISO 639 language code. If this is set, @languageCode@ can\'t be set.
    customLanguage :: (Core.Maybe Core.Text),
    -- | ISO 639 string representation of a language. See </admin-sdk/directory/v1/languages Language Codes> for the list of supported codes. Valid language codes outside the supported set will be accepted by the API but may lead to unexpected behavior. Illegal values cause @SchemaException@. If this is set, @customLanguage@ can\'t be set.
    languageCode :: (Core.Maybe Core.Text),
    -- | Optional. If present, controls whether the specified @languageCode@ is the user\'s preferred language. If @customLanguage@ is set, this can\'t be set. Allowed values are @preferred@ and @not_preferred@.
    preference :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserLanguage' with the minimum fields required to make a request.
newUserLanguage ::
  UserLanguage
newUserLanguage =
  UserLanguage
    { customLanguage = Core.Nothing,
      languageCode = Core.Nothing,
      preference = Core.Nothing
    }

instance Core.FromJSON UserLanguage where
  parseJSON =
    Core.withObject
      "UserLanguage"
      ( \o ->
          UserLanguage
            Core.<$> (o Core..:? "customLanguage")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "preference")
      )

instance Core.ToJSON UserLanguage where
  toJSON UserLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("customLanguage" Core..=) Core.<$> customLanguage,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("preference" Core..=) Core.<$> preference
          ]
      )

-- | JSON template for a location entry.
--
-- /See:/ 'newUserLocation' smart constructor.
data UserLocation = UserLocation
  { -- | Textual location. This is most useful for display purposes to concisely describe the location. For example \'Mountain View, CA\', \'Near Seattle\', \'US-NYC-9TH 9A209A.\'\'
    area :: (Core.Maybe Core.Text),
    -- | Building Identifier.
    buildingId :: (Core.Maybe Core.Text),
    -- | Custom Type.
    customType :: (Core.Maybe Core.Text),
    -- | Most specific textual code of individual desk location.
    deskCode :: (Core.Maybe Core.Text),
    -- | Floor name\/number.
    floorName :: (Core.Maybe Core.Text),
    -- | Floor section. More specific location within the floor. For example if a floor is divided into sections \'A\', \'B\' and \'C\' this field would identify one of those values.
    floorSection :: (Core.Maybe Core.Text),
    -- | Each entry can have a type which indicates standard types of that entry. For example location could be of types default and desk. In addition to standard type an entry can have a custom type and can give it any name. Such types should have \'custom\' as type and also have a customType value.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserLocation' with the minimum fields required to make a request.
newUserLocation ::
  UserLocation
newUserLocation =
  UserLocation
    { area = Core.Nothing,
      buildingId = Core.Nothing,
      customType = Core.Nothing,
      deskCode = Core.Nothing,
      floorName = Core.Nothing,
      floorSection = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON UserLocation where
  parseJSON =
    Core.withObject
      "UserLocation"
      ( \o ->
          UserLocation
            Core.<$> (o Core..:? "area")
            Core.<*> (o Core..:? "buildingId")
            Core.<*> (o Core..:? "customType")
            Core.<*> (o Core..:? "deskCode")
            Core.<*> (o Core..:? "floorName")
            Core.<*> (o Core..:? "floorSection")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UserLocation where
  toJSON UserLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("area" Core..=) Core.<$> area,
            ("buildingId" Core..=) Core.<$> buildingId,
            ("customType" Core..=) Core.<$> customType,
            ("deskCode" Core..=) Core.<$> deskCode,
            ("floorName" Core..=) Core.<$> floorName,
            ("floorSection" Core..=) Core.<$> floorSection,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newUserMakeAdmin' smart constructor.
newtype UserMakeAdmin = UserMakeAdmin
  { -- | Indicates the administrator status of the user.
    status :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserMakeAdmin' with the minimum fields required to make a request.
newUserMakeAdmin ::
  UserMakeAdmin
newUserMakeAdmin = UserMakeAdmin {status = Core.Nothing}

instance Core.FromJSON UserMakeAdmin where
  parseJSON =
    Core.withObject
      "UserMakeAdmin"
      (\o -> UserMakeAdmin Core.<$> (o Core..:? "status"))

instance Core.ToJSON UserMakeAdmin where
  toJSON UserMakeAdmin {..} =
    Core.object
      (Core.catMaybes [("status" Core..=) Core.<$> status])

--
-- /See:/ 'newUserName' smart constructor.
data UserName = UserName
  { -- | The user\'s last name. Required when creating a user account.
    familyName :: (Core.Maybe Core.Text),
    -- | The user\'s full name formed by concatenating the first and last name values.
    fullName :: (Core.Maybe Core.Text),
    -- | The user\'s first name. Required when creating a user account.
    givenName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserName' with the minimum fields required to make a request.
newUserName ::
  UserName
newUserName =
  UserName
    { familyName = Core.Nothing,
      fullName = Core.Nothing,
      givenName = Core.Nothing
    }

instance Core.FromJSON UserName where
  parseJSON =
    Core.withObject
      "UserName"
      ( \o ->
          UserName
            Core.<$> (o Core..:? "familyName")
            Core.<*> (o Core..:? "fullName")
            Core.<*> (o Core..:? "givenName")
      )

instance Core.ToJSON UserName where
  toJSON UserName {..} =
    Core.object
      ( Core.catMaybes
          [ ("familyName" Core..=) Core.<$> familyName,
            ("fullName" Core..=) Core.<$> fullName,
            ("givenName" Core..=) Core.<$> givenName
          ]
      )

-- | JSON template for an organization entry.
--
-- /See:/ 'newUserOrganization' smart constructor.
data UserOrganization = UserOrganization
  { -- | The cost center of the users department.
    costCenter :: (Core.Maybe Core.Text),
    -- | Custom type.
    customType :: (Core.Maybe Core.Text),
    -- | Department within the organization.
    department :: (Core.Maybe Core.Text),
    -- | Description of the organization.
    description :: (Core.Maybe Core.Text),
    -- | The domain to which the organization belongs to.
    domain :: (Core.Maybe Core.Text),
    -- | The full-time equivalent millipercent within the organization (100000 = 100%).
    fullTimeEquivalent :: (Core.Maybe Core.Int32),
    -- | Location of the organization. This need not be fully qualified address.
    location :: (Core.Maybe Core.Text),
    -- | Name of the organization
    name :: (Core.Maybe Core.Text),
    -- | If it user\'s primary organization.
    primary :: (Core.Maybe Core.Bool),
    -- | Symbol of the organization.
    symbol :: (Core.Maybe Core.Text),
    -- | Title (designation) of the user in the organization.
    title :: (Core.Maybe Core.Text),
    -- | Each entry can have a type which indicates standard types of that entry. For example organization could be of school work etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a CustomType value.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserOrganization' with the minimum fields required to make a request.
newUserOrganization ::
  UserOrganization
newUserOrganization =
  UserOrganization
    { costCenter = Core.Nothing,
      customType = Core.Nothing,
      department = Core.Nothing,
      description = Core.Nothing,
      domain = Core.Nothing,
      fullTimeEquivalent = Core.Nothing,
      location = Core.Nothing,
      name = Core.Nothing,
      primary = Core.Nothing,
      symbol = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON UserOrganization where
  parseJSON =
    Core.withObject
      "UserOrganization"
      ( \o ->
          UserOrganization
            Core.<$> (o Core..:? "costCenter")
            Core.<*> (o Core..:? "customType")
            Core.<*> (o Core..:? "department")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "fullTimeEquivalent")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "symbol")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON UserOrganization where
  toJSON UserOrganization {..} =
    Core.object
      ( Core.catMaybes
          [ ("costCenter" Core..=) Core.<$> costCenter,
            ("customType" Core..=) Core.<$> customType,
            ("department" Core..=) Core.<$> department,
            ("description" Core..=) Core.<$> description,
            ("domain" Core..=) Core.<$> domain,
            ("fullTimeEquivalent" Core..=)
              Core.<$> fullTimeEquivalent,
            ("location" Core..=) Core.<$> location,
            ("name" Core..=) Core.<$> name,
            ("primary" Core..=) Core.<$> primary,
            ("symbol" Core..=) Core.<$> symbol,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | JSON template for a phone entry.
--
-- /See:/ 'newUserPhone' smart constructor.
data UserPhone = UserPhone
  { -- | Custom Type.
    customType :: (Core.Maybe Core.Text),
    -- | If this is user\'s primary phone or not.
    primary :: (Core.Maybe Core.Bool),
    -- | Each entry can have a type which indicates standard types of that entry. For example phone could be of home_fax work mobile etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value.
    type' :: (Core.Maybe Core.Text),
    -- | Phone number.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserPhone' with the minimum fields required to make a request.
newUserPhone ::
  UserPhone
newUserPhone =
  UserPhone
    { customType = Core.Nothing,
      primary = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON UserPhone where
  parseJSON =
    Core.withObject
      "UserPhone"
      ( \o ->
          UserPhone
            Core.<$> (o Core..:? "customType")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON UserPhone where
  toJSON UserPhone {..} =
    Core.object
      ( Core.catMaybes
          [ ("customType" Core..=) Core.<$> customType,
            ("primary" Core..=) Core.<$> primary,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newUserPhoto' smart constructor.
data UserPhoto = UserPhoto
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Height of the photo in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | The ID the API uses to uniquely identify the user.
    id :: (Core.Maybe Core.Text),
    -- | The type of the API resource. For Photo resources, this is @admin#directory#user#photo@.
    kind :: Core.Text,
    -- | The MIME type of the photo. Allowed values are @JPEG@, @PNG@, @GIF@, @BMP@, @TIFF@, and web-safe base64 encoding.
    mimeType :: (Core.Maybe Core.Text),
    -- | The user photo\'s upload data in <https://en.wikipedia.org/wiki/Base64#URL_applications web-safe Base64> format in bytes. This means: * The slash (\/) character is replaced with the underscore (_) character. * The plus sign (+) character is replaced with the hyphen (-) character. * The equals sign (=) character is replaced with the asterisk (/). / For padding, the period (.) character is used instead of the RFC-4648 baseURL definition which uses the equals sign (=) for padding. This is done to simplify URL-parsing. * Whatever the size of the photo being uploaded, the API downsizes it to 96x96 pixels.
    photoData :: (Core.Maybe Core.Base64),
    -- | The user\'s primary email address.
    primaryEmail :: (Core.Maybe Core.Text),
    -- | Width of the photo in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserPhoto' with the minimum fields required to make a request.
newUserPhoto ::
  UserPhoto
newUserPhoto =
  UserPhoto
    { etag = Core.Nothing,
      height = Core.Nothing,
      id = Core.Nothing,
      kind = "admin#directory#user#photo",
      mimeType = Core.Nothing,
      photoData = Core.Nothing,
      primaryEmail = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON UserPhoto where
  parseJSON =
    Core.withObject
      "UserPhoto"
      ( \o ->
          UserPhoto
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#user#photo"
                     )
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "photoData")
            Core.<*> (o Core..:? "primaryEmail")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON UserPhoto where
  toJSON UserPhoto {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("height" Core..=) Core.<$> height,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("mimeType" Core..=) Core.<$> mimeType,
            ("photoData" Core..=) Core.<$> photoData,
            ("primaryEmail" Core..=) Core.<$> primaryEmail,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | JSON template for a POSIX account entry.
--
-- /See:/ 'newUserPosixAccount' smart constructor.
data UserPosixAccount = UserPosixAccount
  { -- | A POSIX account field identifier.
    accountId :: (Core.Maybe Core.Text),
    -- | The GECOS (user information) for this account.
    gecos :: (Core.Maybe Core.Text),
    -- | The default group ID.
    gid :: (Core.Maybe Core.Word64),
    -- | The path to the home directory for this account.
    homeDirectory :: (Core.Maybe Core.Text),
    -- | The operating system type for this account.
    operatingSystemType :: (Core.Maybe Core.Text),
    -- | If this is user\'s primary account within the SystemId.
    primary :: (Core.Maybe Core.Bool),
    -- | The path to the login shell for this account.
    shell :: (Core.Maybe Core.Text),
    -- | System identifier for which account Username or Uid apply to.
    systemId :: (Core.Maybe Core.Text),
    -- | The POSIX compliant user ID.
    uid :: (Core.Maybe Core.Word64),
    -- | The username of the account.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserPosixAccount' with the minimum fields required to make a request.
newUserPosixAccount ::
  UserPosixAccount
newUserPosixAccount =
  UserPosixAccount
    { accountId = Core.Nothing,
      gecos = Core.Nothing,
      gid = Core.Nothing,
      homeDirectory = Core.Nothing,
      operatingSystemType = Core.Nothing,
      primary = Core.Nothing,
      shell = Core.Nothing,
      systemId = Core.Nothing,
      uid = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON UserPosixAccount where
  parseJSON =
    Core.withObject
      "UserPosixAccount"
      ( \o ->
          UserPosixAccount
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "gecos")
            Core.<*> (o Core..:? "gid")
            Core.<*> (o Core..:? "homeDirectory")
            Core.<*> (o Core..:? "operatingSystemType")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "shell")
            Core.<*> (o Core..:? "systemId")
            Core.<*> (o Core..:? "uid")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON UserPosixAccount where
  toJSON UserPosixAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("gecos" Core..=) Core.<$> gecos,
            ("gid" Core..=) Core.. Core.AsText Core.<$> gid,
            ("homeDirectory" Core..=) Core.<$> homeDirectory,
            ("operatingSystemType" Core..=)
              Core.<$> operatingSystemType,
            ("primary" Core..=) Core.<$> primary,
            ("shell" Core..=) Core.<$> shell,
            ("systemId" Core..=) Core.<$> systemId,
            ("uid" Core..=) Core.. Core.AsText Core.<$> uid,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | JSON template for a relation entry.
--
-- /See:/ 'newUserRelation' smart constructor.
data UserRelation = UserRelation
  { -- | Custom Type.
    customType :: (Core.Maybe Core.Text),
    -- | The relation of the user. Some of the possible values are mother father sister brother manager assistant partner.
    type' :: (Core.Maybe Core.Text),
    -- | The name of the relation.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserRelation' with the minimum fields required to make a request.
newUserRelation ::
  UserRelation
newUserRelation =
  UserRelation
    { customType = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON UserRelation where
  parseJSON =
    Core.withObject
      "UserRelation"
      ( \o ->
          UserRelation
            Core.<$> (o Core..:? "customType")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON UserRelation where
  toJSON UserRelation {..} =
    Core.object
      ( Core.catMaybes
          [ ("customType" Core..=) Core.<$> customType,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | JSON template for a POSIX account entry.
--
-- /See:/ 'newUserSshPublicKey' smart constructor.
data UserSshPublicKey = UserSshPublicKey
  { -- | An expiration time in microseconds since epoch.
    expirationTimeUsec :: (Core.Maybe Core.Int64),
    -- | A SHA-256 fingerprint of the SSH public key. (Read-only)
    fingerprint :: (Core.Maybe Core.Text),
    -- | An SSH public key.
    key :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserSshPublicKey' with the minimum fields required to make a request.
newUserSshPublicKey ::
  UserSshPublicKey
newUserSshPublicKey =
  UserSshPublicKey
    { expirationTimeUsec = Core.Nothing,
      fingerprint = Core.Nothing,
      key = Core.Nothing
    }

instance Core.FromJSON UserSshPublicKey where
  parseJSON =
    Core.withObject
      "UserSshPublicKey"
      ( \o ->
          UserSshPublicKey
            Core.<$> (o Core..:? "expirationTimeUsec")
            Core.<*> (o Core..:? "fingerprint")
            Core.<*> (o Core..:? "key")
      )

instance Core.ToJSON UserSshPublicKey where
  toJSON UserSshPublicKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("expirationTimeUsec" Core..=) Core.. Core.AsText
              Core.<$> expirationTimeUsec,
            ("fingerprint" Core..=) Core.<$> fingerprint,
            ("key" Core..=) Core.<$> key
          ]
      )

--
-- /See:/ 'newUserUndelete' smart constructor.
newtype UserUndelete = UserUndelete
  { -- | OrgUnit of User
    orgUnitPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserUndelete' with the minimum fields required to make a request.
newUserUndelete ::
  UserUndelete
newUserUndelete = UserUndelete {orgUnitPath = Core.Nothing}

instance Core.FromJSON UserUndelete where
  parseJSON =
    Core.withObject
      "UserUndelete"
      ( \o ->
          UserUndelete Core.<$> (o Core..:? "orgUnitPath")
      )

instance Core.ToJSON UserUndelete where
  toJSON UserUndelete {..} =
    Core.object
      ( Core.catMaybes
          [("orgUnitPath" Core..=) Core.<$> orgUnitPath]
      )

-- | JSON template for a website entry.
--
-- /See:/ 'newUserWebsite' smart constructor.
data UserWebsite = UserWebsite
  { -- | Custom Type.
    customType :: (Core.Maybe Core.Text),
    -- | If this is user\'s primary website or not.
    primary :: (Core.Maybe Core.Bool),
    -- | Each entry can have a type which indicates standard types of that entry. For example website could be of home work blog etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value.
    type' :: (Core.Maybe Core.Text),
    -- | Website.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserWebsite' with the minimum fields required to make a request.
newUserWebsite ::
  UserWebsite
newUserWebsite =
  UserWebsite
    { customType = Core.Nothing,
      primary = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON UserWebsite where
  parseJSON =
    Core.withObject
      "UserWebsite"
      ( \o ->
          UserWebsite
            Core.<$> (o Core..:? "customType")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON UserWebsite where
  toJSON UserWebsite {..} =
    Core.object
      ( Core.catMaybes
          [ ("customType" Core..=) Core.<$> customType,
            ("primary" Core..=) Core.<$> primary,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newUsers' smart constructor.
data Users = Users
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | Kind of resource this is.
    kind :: Core.Text,
    -- | Token used to access next page of this result.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Event that triggered this response (only used in case of Push Response)
    triggerEvent :: (Core.Maybe Core.Text),
    -- | List of user objects.
    users :: (Core.Maybe [User])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Users' with the minimum fields required to make a request.
newUsers ::
  Users
newUsers =
  Users
    { etag = Core.Nothing,
      kind = "admin#directory#users",
      nextPageToken = Core.Nothing,
      triggerEvent = Core.Nothing,
      users = Core.Nothing
    }

instance Core.FromJSON Users where
  parseJSON =
    Core.withObject
      "Users"
      ( \o ->
          Users
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "admin#directory#users")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "trigger_event")
            Core.<*> (o Core..:? "users" Core..!= Core.mempty)
      )

instance Core.ToJSON Users where
  toJSON Users {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("trigger_event" Core..=) Core.<$> triggerEvent,
            ("users" Core..=) Core.<$> users
          ]
      )

-- | The Directory API allows you to view, generate, and invalidate backup verification codes for a user.
--
-- /See:/ 'newVerificationCode' smart constructor.
data VerificationCode = VerificationCode
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | The type of the resource. This is always @admin#directory#verificationCode@.
    kind :: Core.Text,
    -- | The obfuscated unique ID of the user.
    userId :: (Core.Maybe Core.Text),
    -- | A current verification code for the user. Invalidated or used verification codes are not returned as part of the result.
    verificationCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerificationCode' with the minimum fields required to make a request.
newVerificationCode ::
  VerificationCode
newVerificationCode =
  VerificationCode
    { etag = Core.Nothing,
      kind = "admin#directory#verificationCode",
      userId = Core.Nothing,
      verificationCode = Core.Nothing
    }

instance Core.FromJSON VerificationCode where
  parseJSON =
    Core.withObject
      "VerificationCode"
      ( \o ->
          VerificationCode
            Core.<$> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#verificationCode"
                     )
            Core.<*> (o Core..:? "userId")
            Core.<*> (o Core..:? "verificationCode")
      )

instance Core.ToJSON VerificationCode where
  toJSON VerificationCode {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("userId" Core..=) Core.<$> userId,
            ("verificationCode" Core..=)
              Core.<$> verificationCode
          ]
      )

-- | JSON response template for List verification codes operation in Directory API.
--
-- /See:/ 'newVerificationCodes' smart constructor.
data VerificationCodes = VerificationCodes
  { -- | ETag of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | A list of verification code resources.
    items :: (Core.Maybe [VerificationCode]),
    -- | The type of the resource. This is always @admin#directory#verificationCodesList@.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerificationCodes' with the minimum fields required to make a request.
newVerificationCodes ::
  VerificationCodes
newVerificationCodes =
  VerificationCodes
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "admin#directory#verificationCodesList"
    }

instance Core.FromJSON VerificationCodes where
  parseJSON =
    Core.withObject
      "VerificationCodes"
      ( \o ->
          VerificationCodes
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "admin#directory#verificationCodesList"
                     )
      )

instance Core.ToJSON VerificationCodes where
  toJSON VerificationCodes {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

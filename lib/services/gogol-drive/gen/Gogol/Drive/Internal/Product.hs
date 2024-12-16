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
-- Module      : Gogol.Drive.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Drive.Internal.Product
  (

    -- * About
    About (..),
    newAbout,

    -- * About_DriveThemesItem
    About_DriveThemesItem (..),
    newAbout_DriveThemesItem,

    -- * About_ExportFormats
    About_ExportFormats (..),
    newAbout_ExportFormats,

    -- * About_ImportFormats
    About_ImportFormats (..),
    newAbout_ImportFormats,

    -- * About_MaxImportSizes
    About_MaxImportSizes (..),
    newAbout_MaxImportSizes,

    -- * About_StorageQuota
    About_StorageQuota (..),
    newAbout_StorageQuota,

    -- * About_TeamDriveThemesItem
    About_TeamDriveThemesItem (..),
    newAbout_TeamDriveThemesItem,

    -- * AccessProposal
    AccessProposal (..),
    newAccessProposal,

    -- * AccessProposalRoleAndView
    AccessProposalRoleAndView (..),
    newAccessProposalRoleAndView,

    -- * App
    App (..),
    newApp,

    -- * AppIcons
    AppIcons (..),
    newAppIcons,

    -- * AppList
    AppList (..),
    newAppList,

    -- * Change
    Change (..),
    newChange,

    -- * ChangeList
    ChangeList (..),
    newChangeList,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- * Comment
    Comment (..),
    newComment,

    -- * Comment_QuotedFileContent
    Comment_QuotedFileContent (..),
    newComment_QuotedFileContent,

    -- * CommentList
    CommentList (..),
    newCommentList,

    -- * ContentRestriction
    ContentRestriction (..),
    newContentRestriction,

    -- * Drive
    Drive (..),
    newDrive,

    -- * Drive_BackgroundImageFile
    Drive_BackgroundImageFile (..),
    newDrive_BackgroundImageFile,

    -- * Drive_Capabilities
    Drive_Capabilities (..),
    newDrive_Capabilities,

    -- * Drive_Restrictions
    Drive_Restrictions (..),
    newDrive_Restrictions,

    -- * DriveList
    DriveList (..),
    newDriveList,

    -- * File
    File (..),
    newFile,

    -- * File_AppProperties
    File_AppProperties (..),
    newFile_AppProperties,

    -- * File_Capabilities
    File_Capabilities (..),
    newFile_Capabilities,

    -- * File_ContentHints
    File_ContentHints (..),
    newFile_ContentHints,

    -- * File_ContentHints_Thumbnail
    File_ContentHints_Thumbnail (..),
    newFile_ContentHints_Thumbnail,

    -- * File_ExportLinks
    File_ExportLinks (..),
    newFile_ExportLinks,

    -- * File_ImageMediaMetadata
    File_ImageMediaMetadata (..),
    newFile_ImageMediaMetadata,

    -- * File_ImageMediaMetadata_Location
    File_ImageMediaMetadata_Location (..),
    newFile_ImageMediaMetadata_Location,

    -- * File_LabelInfo
    File_LabelInfo (..),
    newFile_LabelInfo,

    -- * File_LinkShareMetadata
    File_LinkShareMetadata (..),
    newFile_LinkShareMetadata,

    -- * File_Properties
    File_Properties (..),
    newFile_Properties,

    -- * File_ShortcutDetails
    File_ShortcutDetails (..),
    newFile_ShortcutDetails,

    -- * File_VideoMediaMetadata
    File_VideoMediaMetadata (..),
    newFile_VideoMediaMetadata,

    -- * FileList
    FileList (..),
    newFileList,

    -- * GeneratedIds
    GeneratedIds (..),
    newGeneratedIds,

    -- * Label
    Label (..),
    newLabel,

    -- * Label_Fields
    Label_Fields (..),
    newLabel_Fields,

    -- * LabelField
    LabelField (..),
    newLabelField,

    -- * LabelFieldModification
    LabelFieldModification (..),
    newLabelFieldModification,

    -- * LabelList
    LabelList (..),
    newLabelList,

    -- * LabelModification
    LabelModification (..),
    newLabelModification,

    -- * ListAccessProposalsResponse
    ListAccessProposalsResponse (..),
    newListAccessProposalsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ModifyLabelsRequest
    ModifyLabelsRequest (..),
    newModifyLabelsRequest,

    -- * ModifyLabelsResponse
    ModifyLabelsResponse (..),
    newModifyLabelsResponse,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * Permission
    Permission (..),
    newPermission,

    -- * Permission_PermissionDetailsItem
    Permission_PermissionDetailsItem (..),
    newPermission_PermissionDetailsItem,

    -- * Permission_TeamDrivePermissionDetailsItem
    Permission_TeamDrivePermissionDetailsItem (..),
    newPermission_TeamDrivePermissionDetailsItem,

    -- * PermissionList
    PermissionList (..),
    newPermissionList,

    -- * Reply
    Reply (..),
    newReply,

    -- * ReplyList
    ReplyList (..),
    newReplyList,

    -- * ResolveAccessProposalRequest
    ResolveAccessProposalRequest (..),
    newResolveAccessProposalRequest,

    -- * Revision
    Revision (..),
    newRevision,

    -- * Revision_ExportLinks
    Revision_ExportLinks (..),
    newRevision_ExportLinks,

    -- * RevisionList
    RevisionList (..),
    newRevisionList,

    -- * StartPageToken
    StartPageToken (..),
    newStartPageToken,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TeamDrive
    TeamDrive (..),
    newTeamDrive,

    -- * TeamDrive_BackgroundImageFile
    TeamDrive_BackgroundImageFile (..),
    newTeamDrive_BackgroundImageFile,

    -- * TeamDrive_Capabilities
    TeamDrive_Capabilities (..),
    newTeamDrive_Capabilities,

    -- * TeamDrive_Restrictions
    TeamDrive_Restrictions (..),
    newTeamDrive_Restrictions,

    -- * TeamDriveList
    TeamDriveList (..),
    newTeamDriveList,

    -- * User
    User (..),
    newUser,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Internal.Sum

-- | Information about the user, the user\'s Drive, and system capabilities.
--
-- /See:/ 'newAbout' smart constructor.
data About = About
    {
      -- | Whether the user has installed the requesting app.
      appInstalled :: (Core.Maybe Core.Bool)
      -- | Whether the user can create shared drives.
    , canCreateDrives :: (Core.Maybe Core.Bool)
      -- | Deprecated: Use @canCreateDrives@ instead.
    , canCreateTeamDrives :: (Core.Maybe Core.Bool)
      -- | A list of themes that are supported for shared drives.
    , driveThemes :: (Core.Maybe [About_DriveThemesItem])
      -- | A map of source MIME type to possible targets for all supported exports.
    , exportFormats :: (Core.Maybe About_ExportFormats)
      -- | The currently supported folder colors as RGB hex strings.
    , folderColorPalette :: (Core.Maybe [Core.Text])
      -- | A map of source MIME type to possible targets for all supported imports.
    , importFormats :: (Core.Maybe About_ImportFormats)
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#about\"@.
    , kind :: Core.Text
      -- | A map of maximum import sizes by MIME type, in bytes.
    , maxImportSizes :: (Core.Maybe About_MaxImportSizes)
      -- | The maximum upload size in bytes.
    , maxUploadSize :: (Core.Maybe Core.Int64)
      -- | The user\'s storage quota limits and usage. For users that are part of an organization with pooled storage, information about the limit and usage across all services is for the organization, rather than the individual user. All fields are measured in bytes.
    , storageQuota :: (Core.Maybe About_StorageQuota)
      -- | Deprecated: Use @driveThemes@ instead.
    , teamDriveThemes :: (Core.Maybe [About_TeamDriveThemesItem])
      -- | The authenticated user.
    , user :: (Core.Maybe User)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About' with the minimum fields required to make a request.
newAbout 
    ::  About
newAbout =
  About
    { appInstalled = Core.Nothing
    , canCreateDrives = Core.Nothing
    , canCreateTeamDrives = Core.Nothing
    , driveThemes = Core.Nothing
    , exportFormats = Core.Nothing
    , folderColorPalette = Core.Nothing
    , importFormats = Core.Nothing
    , kind = "drive#about"
    , maxImportSizes = Core.Nothing
    , maxUploadSize = Core.Nothing
    , storageQuota = Core.Nothing
    , teamDriveThemes = Core.Nothing
    , user = Core.Nothing
    }

instance Core.FromJSON About where
        parseJSON
          = Core.withObject "About"
              (\ o ->
                 About Core.<$>
                   (o Core..:? "appInstalled") Core.<*>
                     (o Core..:? "canCreateDrives")
                     Core.<*> (o Core..:? "canCreateTeamDrives")
                     Core.<*> (o Core..:? "driveThemes")
                     Core.<*> (o Core..:? "exportFormats")
                     Core.<*> (o Core..:? "folderColorPalette")
                     Core.<*> (o Core..:? "importFormats")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#about")
                     Core.<*> (o Core..:? "maxImportSizes")
                     Core.<*>
                     (o Core..:? "maxUploadSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "storageQuota")
                     Core.<*> (o Core..:? "teamDriveThemes")
                     Core.<*> (o Core..:? "user"))

instance Core.ToJSON About where
        toJSON About{..}
          = Core.object
              (Core.catMaybes
                 [("appInstalled" Core..=) Core.<$> appInstalled,
                  ("canCreateDrives" Core..=) Core.<$> canCreateDrives,
                  ("canCreateTeamDrives" Core..=) Core.<$>
                    canCreateTeamDrives,
                  ("driveThemes" Core..=) Core.<$> driveThemes,
                  ("exportFormats" Core..=) Core.<$> exportFormats,
                  ("folderColorPalette" Core..=) Core.<$>
                    folderColorPalette,
                  ("importFormats" Core..=) Core.<$> importFormats,
                  Core.Just ("kind" Core..= kind),
                  ("maxImportSizes" Core..=) Core.<$> maxImportSizes,
                  ("maxUploadSize" Core..=) Core.. Core.AsText Core.<$>
                    maxUploadSize,
                  ("storageQuota" Core..=) Core.<$> storageQuota,
                  ("teamDriveThemes" Core..=) Core.<$> teamDriveThemes,
                  ("user" Core..=) Core.<$> user])


--
-- /See:/ 'newAbout_DriveThemesItem' smart constructor.
data About_DriveThemesItem = About_DriveThemesItem
    {
      -- | A link to this theme\'s background image.
      backgroundImageLink :: (Core.Maybe Core.Text)
      -- | The color of this theme as an RGB hex string.
    , colorRgb :: (Core.Maybe Core.Text)
      -- | The ID of the theme.
    , id :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_DriveThemesItem' with the minimum fields required to make a request.
newAbout_DriveThemesItem 
    ::  About_DriveThemesItem
newAbout_DriveThemesItem =
  About_DriveThemesItem
    { backgroundImageLink = Core.Nothing
    , colorRgb = Core.Nothing
    , id = Core.Nothing
    }

instance Core.FromJSON About_DriveThemesItem where
        parseJSON
          = Core.withObject "About_DriveThemesItem"
              (\ o ->
                 About_DriveThemesItem Core.<$>
                   (o Core..:? "backgroundImageLink") Core.<*>
                     (o Core..:? "colorRgb")
                     Core.<*> (o Core..:? "id"))

instance Core.ToJSON About_DriveThemesItem where
        toJSON About_DriveThemesItem{..}
          = Core.object
              (Core.catMaybes
                 [("backgroundImageLink" Core..=) Core.<$>
                    backgroundImageLink,
                  ("colorRgb" Core..=) Core.<$> colorRgb,
                  ("id" Core..=) Core.<$> id])


-- | A map of source MIME type to possible targets for all supported exports.
--
-- /See:/ 'newAbout_ExportFormats' smart constructor.
newtype About_ExportFormats = About_ExportFormats
    {
      -- | 
      additional :: (Core.HashMap Core.Text [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_ExportFormats' with the minimum fields required to make a request.
newAbout_ExportFormats 
    ::  Core.HashMap Core.Text [Core.Text]
       -- ^  See 'additional'.
    -> About_ExportFormats
newAbout_ExportFormats additional =
  About_ExportFormats {additional = additional}

instance Core.FromJSON About_ExportFormats where
        parseJSON
          = Core.withObject "About_ExportFormats"
              (\ o ->
                 About_ExportFormats Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON About_ExportFormats where
        toJSON About_ExportFormats{..}
          = Core.toJSON additional


-- | A map of source MIME type to possible targets for all supported imports.
--
-- /See:/ 'newAbout_ImportFormats' smart constructor.
newtype About_ImportFormats = About_ImportFormats
    {
      -- | 
      additional :: (Core.HashMap Core.Text [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_ImportFormats' with the minimum fields required to make a request.
newAbout_ImportFormats 
    ::  Core.HashMap Core.Text [Core.Text]
       -- ^  See 'additional'.
    -> About_ImportFormats
newAbout_ImportFormats additional =
  About_ImportFormats {additional = additional}

instance Core.FromJSON About_ImportFormats where
        parseJSON
          = Core.withObject "About_ImportFormats"
              (\ o ->
                 About_ImportFormats Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON About_ImportFormats where
        toJSON About_ImportFormats{..}
          = Core.toJSON additional


-- | A map of maximum import sizes by MIME type, in bytes.
--
-- /See:/ 'newAbout_MaxImportSizes' smart constructor.
newtype About_MaxImportSizes = About_MaxImportSizes
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_MaxImportSizes' with the minimum fields required to make a request.
newAbout_MaxImportSizes 
    ::  Core.HashMap Core.Text Core.Int64
       -- ^  See 'additional'.
    -> About_MaxImportSizes
newAbout_MaxImportSizes additional =
  About_MaxImportSizes {additional = additional}

instance Core.FromJSON About_MaxImportSizes where
        parseJSON
          = Core.withObject "About_MaxImportSizes"
              (\ o ->
                 About_MaxImportSizes Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON About_MaxImportSizes where
        toJSON About_MaxImportSizes{..}
          = Core.toJSON additional


-- | The user\'s storage quota limits and usage. For users that are part of an organization with pooled storage, information about the limit and usage across all services is for the organization, rather than the individual user. All fields are measured in bytes.
--
-- /See:/ 'newAbout_StorageQuota' smart constructor.
data About_StorageQuota = About_StorageQuota
    {
      -- | The usage limit, if applicable. This will not be present if the user has unlimited storage. For users that are part of an organization with pooled storage, this is the limit for the organization, rather than the individual user.
      limit :: (Core.Maybe Core.Int64)
      -- | The total usage across all services. For users that are part of an organization with pooled storage, this is the usage across all services for the organization, rather than the individual user.
    , usage :: (Core.Maybe Core.Int64)
      -- | The usage by all files in Google Drive.
    , usageInDrive :: (Core.Maybe Core.Int64)
      -- | The usage by trashed files in Google Drive.
    , usageInDriveTrash :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_StorageQuota' with the minimum fields required to make a request.
newAbout_StorageQuota 
    ::  About_StorageQuota
newAbout_StorageQuota =
  About_StorageQuota
    { limit = Core.Nothing
    , usage = Core.Nothing
    , usageInDrive = Core.Nothing
    , usageInDriveTrash = Core.Nothing
    }

instance Core.FromJSON About_StorageQuota where
        parseJSON
          = Core.withObject "About_StorageQuota"
              (\ o ->
                 About_StorageQuota Core.<$>
                   (o Core..:? "limit" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "usage" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "usageInDrive" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "usageInDriveTrash" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON About_StorageQuota where
        toJSON About_StorageQuota{..}
          = Core.object
              (Core.catMaybes
                 [("limit" Core..=) Core.. Core.AsText Core.<$> limit,
                  ("usage" Core..=) Core.. Core.AsText Core.<$> usage,
                  ("usageInDrive" Core..=) Core.. Core.AsText Core.<$>
                    usageInDrive,
                  ("usageInDriveTrash" Core..=) Core.. Core.AsText
                    Core.<$> usageInDriveTrash])


--
-- /See:/ 'newAbout_TeamDriveThemesItem' smart constructor.
data About_TeamDriveThemesItem = About_TeamDriveThemesItem
    {
      -- | Deprecated: Use @driveThemes\/backgroundImageLink@ instead.
      backgroundImageLink :: (Core.Maybe Core.Text)
      -- | Deprecated: Use @driveThemes\/colorRgb@ instead.
    , colorRgb :: (Core.Maybe Core.Text)
      -- | Deprecated: Use @driveThemes\/id@ instead.
    , id :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_TeamDriveThemesItem' with the minimum fields required to make a request.
newAbout_TeamDriveThemesItem 
    ::  About_TeamDriveThemesItem
newAbout_TeamDriveThemesItem =
  About_TeamDriveThemesItem
    { backgroundImageLink = Core.Nothing
    , colorRgb = Core.Nothing
    , id = Core.Nothing
    }

instance Core.FromJSON About_TeamDriveThemesItem
         where
        parseJSON
          = Core.withObject "About_TeamDriveThemesItem"
              (\ o ->
                 About_TeamDriveThemesItem Core.<$>
                   (o Core..:? "backgroundImageLink") Core.<*>
                     (o Core..:? "colorRgb")
                     Core.<*> (o Core..:? "id"))

instance Core.ToJSON About_TeamDriveThemesItem where
        toJSON About_TeamDriveThemesItem{..}
          = Core.object
              (Core.catMaybes
                 [("backgroundImageLink" Core..=) Core.<$>
                    backgroundImageLink,
                  ("colorRgb" Core..=) Core.<$> colorRgb,
                  ("id" Core..=) Core.<$> id])


-- | The Access Proposal resource for outstanding access proposals on a file
--
-- /See:/ 'newAccessProposal' smart constructor.
data AccessProposal = AccessProposal
    {
      -- | The creation time
      createTime :: (Core.Maybe Core.DateTime)
      -- | The file id that the proposal for access is on
    , fileId :: (Core.Maybe Core.Text)
      -- | The id of the access proposal
    , proposalId :: (Core.Maybe Core.Text)
      -- | The email address of the user that will receive permissions if accepted
    , recipientEmailAddress :: (Core.Maybe Core.Text)
      -- | The message that the requester added to the proposal
    , requestMessage :: (Core.Maybe Core.Text)
      -- | The email address of the requesting user
    , requesterEmailAddress :: (Core.Maybe Core.Text)
      -- | A wrapper for the role and view of an access proposal.
    , rolesAndViews :: (Core.Maybe [AccessProposalRoleAndView])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessProposal' with the minimum fields required to make a request.
newAccessProposal 
    ::  AccessProposal
newAccessProposal =
  AccessProposal
    { createTime = Core.Nothing
    , fileId = Core.Nothing
    , proposalId = Core.Nothing
    , recipientEmailAddress = Core.Nothing
    , requestMessage = Core.Nothing
    , requesterEmailAddress = Core.Nothing
    , rolesAndViews = Core.Nothing
    }

instance Core.FromJSON AccessProposal where
        parseJSON
          = Core.withObject "AccessProposal"
              (\ o ->
                 AccessProposal Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "fileId")
                     Core.<*> (o Core..:? "proposalId")
                     Core.<*> (o Core..:? "recipientEmailAddress")
                     Core.<*> (o Core..:? "requestMessage")
                     Core.<*> (o Core..:? "requesterEmailAddress")
                     Core.<*> (o Core..:? "rolesAndViews"))

instance Core.ToJSON AccessProposal where
        toJSON AccessProposal{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("fileId" Core..=) Core.<$> fileId,
                  ("proposalId" Core..=) Core.<$> proposalId,
                  ("recipientEmailAddress" Core..=) Core.<$>
                    recipientEmailAddress,
                  ("requestMessage" Core..=) Core.<$> requestMessage,
                  ("requesterEmailAddress" Core..=) Core.<$>
                    requesterEmailAddress,
                  ("rolesAndViews" Core..=) Core.<$> rolesAndViews])


-- | A wrapper for the role and view of an access proposal.
--
-- /See:/ 'newAccessProposalRoleAndView' smart constructor.
data AccessProposalRoleAndView = AccessProposalRoleAndView
    {
      -- | The role that was proposed by the requester New values may be added in the future, but the following are currently possible: * @writer@ * @commenter@ * @reader@
      role' :: (Core.Maybe Core.Text)
      -- | Indicates the view for this access proposal. Only populated for proposals that belong to a view. @published@ is the only supported value.
    , view :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessProposalRoleAndView' with the minimum fields required to make a request.
newAccessProposalRoleAndView 
    ::  AccessProposalRoleAndView
newAccessProposalRoleAndView =
  AccessProposalRoleAndView {role' = Core.Nothing, view = Core.Nothing}

instance Core.FromJSON AccessProposalRoleAndView
         where
        parseJSON
          = Core.withObject "AccessProposalRoleAndView"
              (\ o ->
                 AccessProposalRoleAndView Core.<$>
                   (o Core..:? "role") Core.<*> (o Core..:? "view"))

instance Core.ToJSON AccessProposalRoleAndView where
        toJSON AccessProposalRoleAndView{..}
          = Core.object
              (Core.catMaybes
                 [("role" Core..=) Core.<$> role',
                  ("view" Core..=) Core.<$> view])


-- | The @apps@ resource provides a list of apps that a user has installed, with information about each app\'s supported MIME types, file extensions, and other details. Some resource methods (such as @apps.get@) require an @appId@. Use the @apps.list@ method to retrieve the ID for an installed application.
--
-- /See:/ 'newApp' smart constructor.
data App = App
    {
      -- | Whether the app is authorized to access data on the user\'s Drive.
      authorized :: (Core.Maybe Core.Bool)
      -- | The template URL to create a file with this app in a given folder. The template contains the {folderId} to be replaced by the folder ID house the new file.
    , createInFolderTemplate :: (Core.Maybe Core.Text)
      -- | The URL to create a file with this app.
    , createUrl :: (Core.Maybe Core.Text)
      -- | Whether the app has Drive-wide scope. An app with Drive-wide scope can access all files in the user\'s Drive.
    , hasDriveWideScope :: (Core.Maybe Core.Bool)
      -- | The various icons for the app.
    , icons :: (Core.Maybe [AppIcons])
      -- | The ID of the app.
    , id :: (Core.Maybe Core.Text)
      -- | Whether the app is installed.
    , installed :: (Core.Maybe Core.Bool)
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string \"drive#app\".
    , kind :: Core.Text
      -- | A long description of the app.
    , longDescription :: (Core.Maybe Core.Text)
      -- | The name of the app.
    , name :: (Core.Maybe Core.Text)
      -- | The type of object this app creates such as a Chart. If empty, the app name should be used instead.
    , objectType :: (Core.Maybe Core.Text)
      -- | The template URL for opening files with this app. The template contains {ids} or {exportIds} to be replaced by the actual file IDs. For more information, see Open Files for the full documentation.
    , openUrlTemplate :: (Core.Maybe Core.Text)
      -- | The list of primary file extensions.
    , primaryFileExtensions :: (Core.Maybe [Core.Text])
      -- | The list of primary MIME types.
    , primaryMimeTypes :: (Core.Maybe [Core.Text])
      -- | The ID of the product listing for this app.
    , productId :: (Core.Maybe Core.Text)
      -- | A link to the product listing for this app.
    , productUrl :: (Core.Maybe Core.Text)
      -- | The list of secondary file extensions.
    , secondaryFileExtensions :: (Core.Maybe [Core.Text])
      -- | The list of secondary MIME types.
    , secondaryMimeTypes :: (Core.Maybe [Core.Text])
      -- | A short description of the app.
    , shortDescription :: (Core.Maybe Core.Text)
      -- | Whether this app supports creating objects.
    , supportsCreate :: (Core.Maybe Core.Bool)
      -- | Whether this app supports importing from Google Docs.
    , supportsImport :: (Core.Maybe Core.Bool)
      -- | Whether this app supports opening more than one file.
    , supportsMultiOpen :: (Core.Maybe Core.Bool)
      -- | Whether this app supports creating files when offline.
    , supportsOfflineCreate :: (Core.Maybe Core.Bool)
      -- | Whether the app is selected as the default handler for the types it supports.
    , useByDefault :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'App' with the minimum fields required to make a request.
newApp 
    ::  App
newApp =
  App
    { authorized = Core.Nothing
    , createInFolderTemplate = Core.Nothing
    , createUrl = Core.Nothing
    , hasDriveWideScope = Core.Nothing
    , icons = Core.Nothing
    , id = Core.Nothing
    , installed = Core.Nothing
    , kind = "drive#app"
    , longDescription = Core.Nothing
    , name = Core.Nothing
    , objectType = Core.Nothing
    , openUrlTemplate = Core.Nothing
    , primaryFileExtensions = Core.Nothing
    , primaryMimeTypes = Core.Nothing
    , productId = Core.Nothing
    , productUrl = Core.Nothing
    , secondaryFileExtensions = Core.Nothing
    , secondaryMimeTypes = Core.Nothing
    , shortDescription = Core.Nothing
    , supportsCreate = Core.Nothing
    , supportsImport = Core.Nothing
    , supportsMultiOpen = Core.Nothing
    , supportsOfflineCreate = Core.Nothing
    , useByDefault = Core.Nothing
    }

instance Core.FromJSON App where
        parseJSON
          = Core.withObject "App"
              (\ o ->
                 App Core.<$>
                   (o Core..:? "authorized") Core.<*>
                     (o Core..:? "createInFolderTemplate")
                     Core.<*> (o Core..:? "createUrl")
                     Core.<*> (o Core..:? "hasDriveWideScope")
                     Core.<*> (o Core..:? "icons")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "installed")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#app")
                     Core.<*> (o Core..:? "longDescription")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "objectType")
                     Core.<*> (o Core..:? "openUrlTemplate")
                     Core.<*> (o Core..:? "primaryFileExtensions")
                     Core.<*> (o Core..:? "primaryMimeTypes")
                     Core.<*> (o Core..:? "productId")
                     Core.<*> (o Core..:? "productUrl")
                     Core.<*> (o Core..:? "secondaryFileExtensions")
                     Core.<*> (o Core..:? "secondaryMimeTypes")
                     Core.<*> (o Core..:? "shortDescription")
                     Core.<*> (o Core..:? "supportsCreate")
                     Core.<*> (o Core..:? "supportsImport")
                     Core.<*> (o Core..:? "supportsMultiOpen")
                     Core.<*> (o Core..:? "supportsOfflineCreate")
                     Core.<*> (o Core..:? "useByDefault"))

instance Core.ToJSON App where
        toJSON App{..}
          = Core.object
              (Core.catMaybes
                 [("authorized" Core..=) Core.<$> authorized,
                  ("createInFolderTemplate" Core..=) Core.<$>
                    createInFolderTemplate,
                  ("createUrl" Core..=) Core.<$> createUrl,
                  ("hasDriveWideScope" Core..=) Core.<$>
                    hasDriveWideScope,
                  ("icons" Core..=) Core.<$> icons,
                  ("id" Core..=) Core.<$> id,
                  ("installed" Core..=) Core.<$> installed,
                  Core.Just ("kind" Core..= kind),
                  ("longDescription" Core..=) Core.<$> longDescription,
                  ("name" Core..=) Core.<$> name,
                  ("objectType" Core..=) Core.<$> objectType,
                  ("openUrlTemplate" Core..=) Core.<$> openUrlTemplate,
                  ("primaryFileExtensions" Core..=) Core.<$>
                    primaryFileExtensions,
                  ("primaryMimeTypes" Core..=) Core.<$>
                    primaryMimeTypes,
                  ("productId" Core..=) Core.<$> productId,
                  ("productUrl" Core..=) Core.<$> productUrl,
                  ("secondaryFileExtensions" Core..=) Core.<$>
                    secondaryFileExtensions,
                  ("secondaryMimeTypes" Core..=) Core.<$>
                    secondaryMimeTypes,
                  ("shortDescription" Core..=) Core.<$>
                    shortDescription,
                  ("supportsCreate" Core..=) Core.<$> supportsCreate,
                  ("supportsImport" Core..=) Core.<$> supportsImport,
                  ("supportsMultiOpen" Core..=) Core.<$>
                    supportsMultiOpen,
                  ("supportsOfflineCreate" Core..=) Core.<$>
                    supportsOfflineCreate,
                  ("useByDefault" Core..=) Core.<$> useByDefault])


--
-- /See:/ 'newAppIcons' smart constructor.
data AppIcons = AppIcons
    {
      -- | Category of the icon. Allowed values are: * @application@ - The icon for the application. * @document@ - The icon for a file associated with the app. * @documentShared@ - The icon for a shared file associated with the app.
      category :: (Core.Maybe Core.Text)
      -- | URL for the icon.
    , iconUrl :: (Core.Maybe Core.Text)
      -- | Size of the icon. Represented as the maximum of the width and height.
    , size :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppIcons' with the minimum fields required to make a request.
newAppIcons 
    ::  AppIcons
newAppIcons =
  AppIcons
    {category = Core.Nothing, iconUrl = Core.Nothing, size = Core.Nothing}

instance Core.FromJSON AppIcons where
        parseJSON
          = Core.withObject "AppIcons"
              (\ o ->
                 AppIcons Core.<$>
                   (o Core..:? "category") Core.<*>
                     (o Core..:? "iconUrl")
                     Core.<*> (o Core..:? "size"))

instance Core.ToJSON AppIcons where
        toJSON AppIcons{..}
          = Core.object
              (Core.catMaybes
                 [("category" Core..=) Core.<$> category,
                  ("iconUrl" Core..=) Core.<$> iconUrl,
                  ("size" Core..=) Core.<$> size])


-- | A list of third-party applications which the user has installed or given access to Google Drive.
--
-- /See:/ 'newAppList' smart constructor.
data AppList = AppList
    {
      -- | The list of app IDs that the user has specified to use by default. The list is in reverse-priority order (lowest to highest).
      defaultAppIds :: (Core.Maybe [Core.Text])
      -- | The list of apps.
    , items :: (Core.Maybe [App])
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string \"drive#appList\".
    , kind :: Core.Text
      -- | A link back to this list.
    , selfLink :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppList' with the minimum fields required to make a request.
newAppList 
    ::  AppList
newAppList =
  AppList
    { defaultAppIds = Core.Nothing
    , items = Core.Nothing
    , kind = "drive#appList"
    , selfLink = Core.Nothing
    }

instance Core.FromJSON AppList where
        parseJSON
          = Core.withObject "AppList"
              (\ o ->
                 AppList Core.<$>
                   (o Core..:? "defaultAppIds") Core.<*>
                     (o Core..:? "items")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#appList")
                     Core.<*> (o Core..:? "selfLink"))

instance Core.ToJSON AppList where
        toJSON AppList{..}
          = Core.object
              (Core.catMaybes
                 [("defaultAppIds" Core..=) Core.<$> defaultAppIds,
                  ("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("selfLink" Core..=) Core.<$> selfLink])


-- | A change to a file or shared drive.
--
-- /See:/ 'newChange' smart constructor.
data Change = Change
    {
      -- | The type of the change. Possible values are @file@ and @drive@.
      changeType :: (Core.Maybe Core.Text)
      -- | The updated state of the shared drive. Present if the changeType is drive, the user is still a member of the shared drive, and the shared drive has not been deleted.
    , drive :: (Core.Maybe Drive)
      -- | The ID of the shared drive associated with this change.
    , driveId :: (Core.Maybe Core.Text)
      -- | The updated state of the file. Present if the type is file and the file has not been removed from this list of changes.
    , file :: (Core.Maybe File)
      -- | The ID of the file which has changed.
    , fileId :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#change\"@.
    , kind :: Core.Text
      -- | Whether the file or shared drive has been removed from this list of changes, for example by deletion or loss of access.
    , removed :: (Core.Maybe Core.Bool)
      -- | Deprecated: Use @drive@ instead.
    , teamDrive :: (Core.Maybe TeamDrive)
      -- | Deprecated: Use @driveId@ instead.
    , teamDriveId :: (Core.Maybe Core.Text)
      -- | The time of this change (RFC 3339 date-time).
    , time :: (Core.Maybe Core.DateTime)
      -- | Deprecated: Use @changeType@ instead.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Change' with the minimum fields required to make a request.
newChange 
    ::  Change
newChange =
  Change
    { changeType = Core.Nothing
    , drive = Core.Nothing
    , driveId = Core.Nothing
    , file = Core.Nothing
    , fileId = Core.Nothing
    , kind = "drive#change"
    , removed = Core.Nothing
    , teamDrive = Core.Nothing
    , teamDriveId = Core.Nothing
    , time = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Change where
        parseJSON
          = Core.withObject "Change"
              (\ o ->
                 Change Core.<$>
                   (o Core..:? "changeType") Core.<*>
                     (o Core..:? "drive")
                     Core.<*> (o Core..:? "driveId")
                     Core.<*> (o Core..:? "file")
                     Core.<*> (o Core..:? "fileId")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#change")
                     Core.<*> (o Core..:? "removed")
                     Core.<*> (o Core..:? "teamDrive")
                     Core.<*> (o Core..:? "teamDriveId")
                     Core.<*> (o Core..:? "time")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Change where
        toJSON Change{..}
          = Core.object
              (Core.catMaybes
                 [("changeType" Core..=) Core.<$> changeType,
                  ("drive" Core..=) Core.<$> drive,
                  ("driveId" Core..=) Core.<$> driveId,
                  ("file" Core..=) Core.<$> file,
                  ("fileId" Core..=) Core.<$> fileId,
                  Core.Just ("kind" Core..= kind),
                  ("removed" Core..=) Core.<$> removed,
                  ("teamDrive" Core..=) Core.<$> teamDrive,
                  ("teamDriveId" Core..=) Core.<$> teamDriveId,
                  ("time" Core..=) Core.<$> time,
                  ("type" Core..=) Core.<$> type'])


-- | A list of changes for a user.
--
-- /See:/ 'newChangeList' smart constructor.
data ChangeList = ChangeList
    {
      -- | The list of changes. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
      changes :: (Core.Maybe [Change])
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#changeList\"@.
    , kind :: Core.Text
      -- | The starting page token for future changes. This will be present only if the end of the current changes list has been reached. The page token doesn\'t expire.
    , newStartPageToken' :: (Core.Maybe Core.Text)
      -- | The page token for the next page of changes. This will be absent if the end of the changes list has been reached. The page token doesn\'t expire.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChangeList' with the minimum fields required to make a request.
newChangeList 
    ::  ChangeList
newChangeList =
  ChangeList
    { changes = Core.Nothing
    , kind = "drive#changeList"
    , newStartPageToken' = Core.Nothing
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON ChangeList where
        parseJSON
          = Core.withObject "ChangeList"
              (\ o ->
                 ChangeList Core.<$>
                   (o Core..:? "changes") Core.<*>
                     (o Core..:? "kind" Core..!= "drive#changeList")
                     Core.<*> (o Core..:? "newStartPageToken")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ChangeList where
        toJSON ChangeList{..}
          = Core.object
              (Core.catMaybes
                 [("changes" Core..=) Core.<$> changes,
                  Core.Just ("kind" Core..= kind),
                  ("newStartPageToken" Core..=) Core.<$>
                    newStartPageToken',
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A notification channel used to watch for resource changes.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
    {
      -- | The address where notifications are delivered for this channel.
      address :: (Core.Maybe Core.Text)
      -- | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    , expiration :: (Core.Maybe Core.Int64)
      -- | A UUID or similar unique string that identifies this channel.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies this as a notification channel used to watch for changes to a resource, which is @api#channel@.
    , kind :: Core.Text
      -- | Additional parameters controlling delivery channel behavior. Optional.
    , params :: (Core.Maybe Channel_Params)
      -- | A Boolean value to indicate whether payload is wanted. Optional.
    , payload :: (Core.Maybe Core.Bool)
      -- | An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    , resourceId :: (Core.Maybe Core.Text)
      -- | A version-specific identifier for the watched resource.
    , resourceUri :: (Core.Maybe Core.Text)
      -- | An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    , token :: (Core.Maybe Core.Text)
      -- | The type of delivery mechanism used for this channel. Valid values are \"web_hook\" or \"webhook\".
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel 
    ::  Channel
newChannel =
  Channel
    { address = Core.Nothing
    , expiration = Core.Nothing
    , id = Core.Nothing
    , kind = "api#channel"
    , params = Core.Nothing
    , payload = Core.Nothing
    , resourceId = Core.Nothing
    , resourceUri = Core.Nothing
    , token = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Channel where
        parseJSON
          = Core.withObject "Channel"
              (\ o ->
                 Channel Core.<$>
                   (o Core..:? "address") Core.<*>
                     (o Core..:? "expiration" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind" Core..!= "api#channel")
                     Core.<*> (o Core..:? "params")
                     Core.<*> (o Core..:? "payload")
                     Core.<*> (o Core..:? "resourceId")
                     Core.<*> (o Core..:? "resourceUri")
                     Core.<*> (o Core..:? "token")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Channel where
        toJSON Channel{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("expiration" Core..=) Core.. Core.AsText Core.<$>
                    expiration,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("params" Core..=) Core.<$> params,
                  ("payload" Core..=) Core.<$> payload,
                  ("resourceId" Core..=) Core.<$> resourceId,
                  ("resourceUri" Core..=) Core.<$> resourceUri,
                  ("token" Core..=) Core.<$> token,
                  ("type" Core..=) Core.<$> type'])


-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'newChannel_Params' smart constructor.
newtype Channel_Params = Channel_Params
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel_Params' with the minimum fields required to make a request.
newChannel_Params 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Channel_Params
newChannel_Params additional = Channel_Params {additional = additional}

instance Core.FromJSON Channel_Params where
        parseJSON
          = Core.withObject "Channel_Params"
              (\ o ->
                 Channel_Params Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Channel_Params where
        toJSON Channel_Params{..} = Core.toJSON additional


-- | A comment on a file. Some resource methods (such as @comments.update@) require a @commentId@. Use the @comments.list@ method to retrieve the ID for a comment in a file.
--
-- /See:/ 'newComment' smart constructor.
data Comment = Comment
    {
      -- | A region of the document represented as a JSON string. For details on defining anchor properties, refer to <https://developers.google.com/drive/api/v3/manage-comments Manage comments and replies>.
      anchor :: (Core.Maybe Core.Text)
      -- | Output only. The author of the comment. The author\'s email address and permission ID will not be populated.
    , author :: (Core.Maybe User)
      -- | The plain text content of the comment. This field is used for setting the content, while @htmlContent@ should be displayed.
    , content :: (Core.Maybe Core.Text)
      -- | The time at which the comment was created (RFC 3339 date-time).
    , createdTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Whether the comment has been deleted. A deleted comment has no content.
    , deleted :: (Core.Maybe Core.Bool)
      -- | Output only. The content of the comment with HTML formatting.
    , htmlContent :: (Core.Maybe Core.Text)
      -- | Output only. The ID of the comment.
    , id :: (Core.Maybe Core.Text)
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string @\"drive#comment\"@.
    , kind :: Core.Text
      -- | The last time the comment or any of its replies was modified (RFC 3339 date-time).
    , modifiedTime :: (Core.Maybe Core.DateTime)
      -- | The file content to which the comment refers, typically within the anchor region. For a text file, for example, this would be the text at the location of the comment.
    , quotedFileContent :: (Core.Maybe Comment_QuotedFileContent)
      -- | Output only. The full list of replies to the comment in chronological order.
    , replies :: (Core.Maybe [Reply])
      -- | Output only. Whether the comment has been resolved by one of its replies.
    , resolved :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
newComment 
    ::  Comment
newComment =
  Comment
    { anchor = Core.Nothing
    , author = Core.Nothing
    , content = Core.Nothing
    , createdTime = Core.Nothing
    , deleted = Core.Nothing
    , htmlContent = Core.Nothing
    , id = Core.Nothing
    , kind = "drive#comment"
    , modifiedTime = Core.Nothing
    , quotedFileContent = Core.Nothing
    , replies = Core.Nothing
    , resolved = Core.Nothing
    }

instance Core.FromJSON Comment where
        parseJSON
          = Core.withObject "Comment"
              (\ o ->
                 Comment Core.<$>
                   (o Core..:? "anchor") Core.<*> (o Core..:? "author")
                     Core.<*> (o Core..:? "content")
                     Core.<*> (o Core..:? "createdTime")
                     Core.<*> (o Core..:? "deleted")
                     Core.<*> (o Core..:? "htmlContent")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#comment")
                     Core.<*> (o Core..:? "modifiedTime")
                     Core.<*> (o Core..:? "quotedFileContent")
                     Core.<*> (o Core..:? "replies")
                     Core.<*> (o Core..:? "resolved"))

instance Core.ToJSON Comment where
        toJSON Comment{..}
          = Core.object
              (Core.catMaybes
                 [("anchor" Core..=) Core.<$> anchor,
                  ("author" Core..=) Core.<$> author,
                  ("content" Core..=) Core.<$> content,
                  ("createdTime" Core..=) Core.<$> createdTime,
                  ("deleted" Core..=) Core.<$> deleted,
                  ("htmlContent" Core..=) Core.<$> htmlContent,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("modifiedTime" Core..=) Core.<$> modifiedTime,
                  ("quotedFileContent" Core..=) Core.<$>
                    quotedFileContent,
                  ("replies" Core..=) Core.<$> replies,
                  ("resolved" Core..=) Core.<$> resolved])


-- | The file content to which the comment refers, typically within the anchor region. For a text file, for example, this would be the text at the location of the comment.
--
-- /See:/ 'newComment_QuotedFileContent' smart constructor.
data Comment_QuotedFileContent = Comment_QuotedFileContent
    {
      -- | The MIME type of the quoted content.
      mimeType :: (Core.Maybe Core.Text)
      -- | The quoted content itself. This is interpreted as plain text if set through the API.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_QuotedFileContent' with the minimum fields required to make a request.
newComment_QuotedFileContent 
    ::  Comment_QuotedFileContent
newComment_QuotedFileContent =
  Comment_QuotedFileContent {mimeType = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Comment_QuotedFileContent
         where
        parseJSON
          = Core.withObject "Comment_QuotedFileContent"
              (\ o ->
                 Comment_QuotedFileContent Core.<$>
                   (o Core..:? "mimeType") Core.<*>
                     (o Core..:? "value"))

instance Core.ToJSON Comment_QuotedFileContent where
        toJSON Comment_QuotedFileContent{..}
          = Core.object
              (Core.catMaybes
                 [("mimeType" Core..=) Core.<$> mimeType,
                  ("value" Core..=) Core.<$> value])


-- | A list of comments on a file.
--
-- /See:/ 'newCommentList' smart constructor.
data CommentList = CommentList
    {
      -- | The list of comments. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
      comments :: (Core.Maybe [Comment])
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#commentList\"@.
    , kind :: Core.Text
      -- | The page token for the next page of comments. This will be absent if the end of the comments list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentList' with the minimum fields required to make a request.
newCommentList 
    ::  CommentList
newCommentList =
  CommentList
    { comments = Core.Nothing
    , kind = "drive#commentList"
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON CommentList where
        parseJSON
          = Core.withObject "CommentList"
              (\ o ->
                 CommentList Core.<$>
                   (o Core..:? "comments") Core.<*>
                     (o Core..:? "kind" Core..!= "drive#commentList")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON CommentList where
        toJSON CommentList{..}
          = Core.object
              (Core.catMaybes
                 [("comments" Core..=) Core.<$> comments,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A restriction for accessing the content of the file.
--
-- /See:/ 'newContentRestriction' smart constructor.
data ContentRestriction = ContentRestriction
    {
      -- | Whether the content restriction can only be modified or removed by a user who owns the file. For files in shared drives, any user with @organizer@ capabilities can modify or remove this content restriction.
      ownerRestricted :: (Core.Maybe Core.Bool)
      -- | Whether the content of the file is read-only. If a file is read-only, a new revision of the file may not be added, comments may not be added or modified, and the title of the file may not be modified.
    , readOnly :: (Core.Maybe Core.Bool)
      -- | Reason for why the content of the file is restricted. This is only mutable on requests that also set @readOnly=true@.
    , reason :: (Core.Maybe Core.Text)
      -- | Output only. The user who set the content restriction. Only populated if @readOnly@ is true.
    , restrictingUser :: (Core.Maybe User)
      -- | The time at which the content restriction was set (formatted RFC 3339 timestamp). Only populated if readOnly is true.
    , restrictionTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Whether the content restriction was applied by the system, for example due to an esignature. Users cannot modify or remove system restricted content restrictions.
    , systemRestricted :: (Core.Maybe Core.Bool)
      -- | Output only. The type of the content restriction. Currently the only possible value is @globalContentRestriction@.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRestriction' with the minimum fields required to make a request.
newContentRestriction 
    ::  ContentRestriction
newContentRestriction =
  ContentRestriction
    { ownerRestricted = Core.Nothing
    , readOnly = Core.Nothing
    , reason = Core.Nothing
    , restrictingUser = Core.Nothing
    , restrictionTime = Core.Nothing
    , systemRestricted = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON ContentRestriction where
        parseJSON
          = Core.withObject "ContentRestriction"
              (\ o ->
                 ContentRestriction Core.<$>
                   (o Core..:? "ownerRestricted") Core.<*>
                     (o Core..:? "readOnly")
                     Core.<*> (o Core..:? "reason")
                     Core.<*> (o Core..:? "restrictingUser")
                     Core.<*> (o Core..:? "restrictionTime")
                     Core.<*> (o Core..:? "systemRestricted")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON ContentRestriction where
        toJSON ContentRestriction{..}
          = Core.object
              (Core.catMaybes
                 [("ownerRestricted" Core..=) Core.<$>
                    ownerRestricted,
                  ("readOnly" Core..=) Core.<$> readOnly,
                  ("reason" Core..=) Core.<$> reason,
                  ("restrictingUser" Core..=) Core.<$> restrictingUser,
                  ("restrictionTime" Core..=) Core.<$> restrictionTime,
                  ("systemRestricted" Core..=) Core.<$>
                    systemRestricted,
                  ("type" Core..=) Core.<$> type'])


-- | Representation of a shared drive. Some resource methods (such as @drives.update@) require a @driveId@. Use the @drives.list@ method to retrieve the ID for a shared drive.
--
-- /See:/ 'newDrive' smart constructor.
data Drive = Drive
    {
      -- | An image file and cropping parameters from which a background image for this shared drive is set. This is a write only field; it can only be set on @drive.drives.update@ requests that don\'t set @themeId@. When specified, all fields of the @backgroundImageFile@ must be set.
      backgroundImageFile :: (Core.Maybe Drive_BackgroundImageFile)
      -- | Output only. A short-lived link to this shared drive\'s background image.
    , backgroundImageLink :: (Core.Maybe Core.Text)
      -- | Output only. Capabilities the current user has on this shared drive.
    , capabilities :: (Core.Maybe Drive_Capabilities)
      -- | The color of this shared drive as an RGB hex string. It can only be set on a @drive.drives.update@ request that does not set @themeId@.
    , colorRgb :: (Core.Maybe Core.Text)
      -- | The time at which the shared drive was created (RFC 3339 date-time).
    , createdTime :: (Core.Maybe Core.DateTime)
      -- | Whether the shared drive is hidden from default view.
    , hidden :: (Core.Maybe Core.Bool)
      -- | Output only. The ID of this shared drive which is also the ID of the top level folder of this shared drive.
    , id :: (Core.Maybe Core.Text)
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string @\"drive#drive\"@.
    , kind :: Core.Text
      -- | The name of this shared drive.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The organizational unit of this shared drive. This field is only populated on @drives.list@ responses when the @useDomainAdminAccess@ parameter is set to @true@.
    , orgUnitId :: (Core.Maybe Core.Text)
      -- | A set of restrictions that apply to this shared drive or items inside this shared drive. Note that restrictions can\'t be set when creating a shared drive. To add a restriction, first create a shared drive and then use @drives.update@ to add restrictions.
    , restrictions :: (Core.Maybe Drive_Restrictions)
      -- | The ID of the theme from which the background image and color will be set. The set of possible @driveThemes@ can be retrieved from a @drive.about.get@ response. When not specified on a @drive.drives.create@ request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don\'t set @colorRgb@ or @backgroundImageFile@.
    , themeId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive' with the minimum fields required to make a request.
newDrive 
    ::  Drive
newDrive =
  Drive
    { backgroundImageFile = Core.Nothing
    , backgroundImageLink = Core.Nothing
    , capabilities = Core.Nothing
    , colorRgb = Core.Nothing
    , createdTime = Core.Nothing
    , hidden = Core.Nothing
    , id = Core.Nothing
    , kind = "drive#drive"
    , name = Core.Nothing
    , orgUnitId = Core.Nothing
    , restrictions = Core.Nothing
    , themeId = Core.Nothing
    }

instance Core.FromJSON Drive where
        parseJSON
          = Core.withObject "Drive"
              (\ o ->
                 Drive Core.<$>
                   (o Core..:? "backgroundImageFile") Core.<*>
                     (o Core..:? "backgroundImageLink")
                     Core.<*> (o Core..:? "capabilities")
                     Core.<*> (o Core..:? "colorRgb")
                     Core.<*> (o Core..:? "createdTime")
                     Core.<*> (o Core..:? "hidden")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#drive")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "orgUnitId")
                     Core.<*> (o Core..:? "restrictions")
                     Core.<*> (o Core..:? "themeId"))

instance Core.ToJSON Drive where
        toJSON Drive{..}
          = Core.object
              (Core.catMaybes
                 [("backgroundImageFile" Core..=) Core.<$>
                    backgroundImageFile,
                  ("backgroundImageLink" Core..=) Core.<$>
                    backgroundImageLink,
                  ("capabilities" Core..=) Core.<$> capabilities,
                  ("colorRgb" Core..=) Core.<$> colorRgb,
                  ("createdTime" Core..=) Core.<$> createdTime,
                  ("hidden" Core..=) Core.<$> hidden,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("name" Core..=) Core.<$> name,
                  ("orgUnitId" Core..=) Core.<$> orgUnitId,
                  ("restrictions" Core..=) Core.<$> restrictions,
                  ("themeId" Core..=) Core.<$> themeId])


-- | An image file and cropping parameters from which a background image for this shared drive is set. This is a write only field; it can only be set on @drive.drives.update@ requests that don\'t set @themeId@. When specified, all fields of the @backgroundImageFile@ must be set.
--
-- /See:/ 'newDrive_BackgroundImageFile' smart constructor.
data Drive_BackgroundImageFile = Drive_BackgroundImageFile
    {
      -- | The ID of an image file in Google Drive to use for the background image.
      id :: (Core.Maybe Core.Text)
      -- | The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.
    , width :: (Core.Maybe Core.Double)
      -- | The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.
    , xCoordinate :: (Core.Maybe Core.Double)
      -- | The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.
    , yCoordinate :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive_BackgroundImageFile' with the minimum fields required to make a request.
newDrive_BackgroundImageFile 
    ::  Drive_BackgroundImageFile
newDrive_BackgroundImageFile =
  Drive_BackgroundImageFile
    { id = Core.Nothing
    , width = Core.Nothing
    , xCoordinate = Core.Nothing
    , yCoordinate = Core.Nothing
    }

instance Core.FromJSON Drive_BackgroundImageFile
         where
        parseJSON
          = Core.withObject "Drive_BackgroundImageFile"
              (\ o ->
                 Drive_BackgroundImageFile Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "width")
                     Core.<*> (o Core..:? "xCoordinate")
                     Core.<*> (o Core..:? "yCoordinate"))

instance Core.ToJSON Drive_BackgroundImageFile where
        toJSON Drive_BackgroundImageFile{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("width" Core..=) Core.<$> width,
                  ("xCoordinate" Core..=) Core.<$> xCoordinate,
                  ("yCoordinate" Core..=) Core.<$> yCoordinate])


-- | Output only. Capabilities the current user has on this shared drive.
--
-- /See:/ 'newDrive_Capabilities' smart constructor.
data Drive_Capabilities = Drive_Capabilities
    {
      -- | Output only. Whether the current user can add children to folders in this shared drive.
      canAddChildren :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can change the @copyRequiresWriterPermission@ restriction of this shared drive.
    , canChangeCopyRequiresWriterPermissionRestriction :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can change the @domainUsersOnly@ restriction of this shared drive.
    , canChangeDomainUsersOnlyRestriction :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can change the background of this shared drive.
    , canChangeDriveBackground :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can change the @driveMembersOnly@ restriction of this shared drive.
    , canChangeDriveMembersOnlyRestriction :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can change the @sharingFoldersRequiresOrganizerPermission@ restriction of this shared drive.
    , canChangeSharingFoldersRequiresOrganizerPermissionRestriction :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can comment on files in this shared drive.
    , canComment :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can copy files in this shared drive.
    , canCopy :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can delete children from folders in this shared drive.
    , canDeleteChildren :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can delete this shared drive. Attempting to delete the shared drive may still fail if there are untrashed items inside the shared drive.
    , canDeleteDrive :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can download files in this shared drive.
    , canDownload :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can edit files in this shared drive
    , canEdit :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can list the children of folders in this shared drive.
    , canListChildren :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can add members to this shared drive or remove them or change their role.
    , canManageMembers :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can read the revisions resource of files in this shared drive.
    , canReadRevisions :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can rename files or folders in this shared drive.
    , canRename :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can rename this shared drive.
    , canRenameDrive :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can reset the shared drive restrictions to defaults.
    , canResetDriveRestrictions :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can share files or folders in this shared drive.
    , canShare :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can trash children from folders in this shared drive.
    , canTrashChildren :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive_Capabilities' with the minimum fields required to make a request.
newDrive_Capabilities 
    ::  Drive_Capabilities
newDrive_Capabilities =
  Drive_Capabilities
    { canAddChildren = Core.Nothing
    , canChangeCopyRequiresWriterPermissionRestriction = Core.Nothing
    , canChangeDomainUsersOnlyRestriction = Core.Nothing
    , canChangeDriveBackground = Core.Nothing
    , canChangeDriveMembersOnlyRestriction = Core.Nothing
    , canChangeSharingFoldersRequiresOrganizerPermissionRestriction =
        Core.Nothing
    , canComment = Core.Nothing
    , canCopy = Core.Nothing
    , canDeleteChildren = Core.Nothing
    , canDeleteDrive = Core.Nothing
    , canDownload = Core.Nothing
    , canEdit = Core.Nothing
    , canListChildren = Core.Nothing
    , canManageMembers = Core.Nothing
    , canReadRevisions = Core.Nothing
    , canRename = Core.Nothing
    , canRenameDrive = Core.Nothing
    , canResetDriveRestrictions = Core.Nothing
    , canShare = Core.Nothing
    , canTrashChildren = Core.Nothing
    }

instance Core.FromJSON Drive_Capabilities where
        parseJSON
          = Core.withObject "Drive_Capabilities"
              (\ o ->
                 Drive_Capabilities Core.<$>
                   (o Core..:? "canAddChildren") Core.<*>
                     (o Core..:?
                        "canChangeCopyRequiresWriterPermissionRestriction")
                     Core.<*>
                     (o Core..:? "canChangeDomainUsersOnlyRestriction")
                     Core.<*> (o Core..:? "canChangeDriveBackground")
                     Core.<*>
                     (o Core..:? "canChangeDriveMembersOnlyRestriction")
                     Core.<*>
                     (o Core..:?
                        "canChangeSharingFoldersRequiresOrganizerPermissionRestriction")
                     Core.<*> (o Core..:? "canComment")
                     Core.<*> (o Core..:? "canCopy")
                     Core.<*> (o Core..:? "canDeleteChildren")
                     Core.<*> (o Core..:? "canDeleteDrive")
                     Core.<*> (o Core..:? "canDownload")
                     Core.<*> (o Core..:? "canEdit")
                     Core.<*> (o Core..:? "canListChildren")
                     Core.<*> (o Core..:? "canManageMembers")
                     Core.<*> (o Core..:? "canReadRevisions")
                     Core.<*> (o Core..:? "canRename")
                     Core.<*> (o Core..:? "canRenameDrive")
                     Core.<*> (o Core..:? "canResetDriveRestrictions")
                     Core.<*> (o Core..:? "canShare")
                     Core.<*> (o Core..:? "canTrashChildren"))

instance Core.ToJSON Drive_Capabilities where
        toJSON Drive_Capabilities{..}
          = Core.object
              (Core.catMaybes
                 [("canAddChildren" Core..=) Core.<$> canAddChildren,
                  ("canChangeCopyRequiresWriterPermissionRestriction"
                     Core..=)
                    Core.<$>
                    canChangeCopyRequiresWriterPermissionRestriction,
                  ("canChangeDomainUsersOnlyRestriction" Core..=)
                    Core.<$> canChangeDomainUsersOnlyRestriction,
                  ("canChangeDriveBackground" Core..=) Core.<$>
                    canChangeDriveBackground,
                  ("canChangeDriveMembersOnlyRestriction" Core..=)
                    Core.<$> canChangeDriveMembersOnlyRestriction,
                  ("canChangeSharingFoldersRequiresOrganizerPermissionRestriction"
                     Core..=)
                    Core.<$>
                    canChangeSharingFoldersRequiresOrganizerPermissionRestriction,
                  ("canComment" Core..=) Core.<$> canComment,
                  ("canCopy" Core..=) Core.<$> canCopy,
                  ("canDeleteChildren" Core..=) Core.<$>
                    canDeleteChildren,
                  ("canDeleteDrive" Core..=) Core.<$> canDeleteDrive,
                  ("canDownload" Core..=) Core.<$> canDownload,
                  ("canEdit" Core..=) Core.<$> canEdit,
                  ("canListChildren" Core..=) Core.<$> canListChildren,
                  ("canManageMembers" Core..=) Core.<$>
                    canManageMembers,
                  ("canReadRevisions" Core..=) Core.<$>
                    canReadRevisions,
                  ("canRename" Core..=) Core.<$> canRename,
                  ("canRenameDrive" Core..=) Core.<$> canRenameDrive,
                  ("canResetDriveRestrictions" Core..=) Core.<$>
                    canResetDriveRestrictions,
                  ("canShare" Core..=) Core.<$> canShare,
                  ("canTrashChildren" Core..=) Core.<$>
                    canTrashChildren])


-- | A set of restrictions that apply to this shared drive or items inside this shared drive. Note that restrictions can\'t be set when creating a shared drive. To add a restriction, first create a shared drive and then use @drives.update@ to add restrictions.
--
-- /See:/ 'newDrive_Restrictions' smart constructor.
data Drive_Restrictions = Drive_Restrictions
    {
      -- | Whether administrative privileges on this shared drive are required to modify restrictions.
      adminManagedRestrictions :: (Core.Maybe Core.Bool)
      -- | Whether the options to copy, print, or download files inside this shared drive, should be disabled for readers and commenters. When this restriction is set to @true@, it will override the similarly named field to @true@ for any file inside this shared drive.
    , copyRequiresWriterPermission :: (Core.Maybe Core.Bool)
      -- | Whether access to this shared drive and items inside this shared drive is restricted to users of the domain to which this shared drive belongs. This restriction may be overridden by other sharing policies controlled outside of this shared drive.
    , domainUsersOnly :: (Core.Maybe Core.Bool)
      -- | Whether access to items inside this shared drive is restricted to its members.
    , driveMembersOnly :: (Core.Maybe Core.Bool)
      -- | If true, only users with the organizer role can share folders. If false, users with either the organizer role or the file organizer role can share folders.
    , sharingFoldersRequiresOrganizerPermission :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive_Restrictions' with the minimum fields required to make a request.
newDrive_Restrictions 
    ::  Drive_Restrictions
newDrive_Restrictions =
  Drive_Restrictions
    { adminManagedRestrictions = Core.Nothing
    , copyRequiresWriterPermission = Core.Nothing
    , domainUsersOnly = Core.Nothing
    , driveMembersOnly = Core.Nothing
    , sharingFoldersRequiresOrganizerPermission = Core.Nothing
    }

instance Core.FromJSON Drive_Restrictions where
        parseJSON
          = Core.withObject "Drive_Restrictions"
              (\ o ->
                 Drive_Restrictions Core.<$>
                   (o Core..:? "adminManagedRestrictions") Core.<*>
                     (o Core..:? "copyRequiresWriterPermission")
                     Core.<*> (o Core..:? "domainUsersOnly")
                     Core.<*> (o Core..:? "driveMembersOnly")
                     Core.<*>
                     (o Core..:?
                        "sharingFoldersRequiresOrganizerPermission"))

instance Core.ToJSON Drive_Restrictions where
        toJSON Drive_Restrictions{..}
          = Core.object
              (Core.catMaybes
                 [("adminManagedRestrictions" Core..=) Core.<$>
                    adminManagedRestrictions,
                  ("copyRequiresWriterPermission" Core..=) Core.<$>
                    copyRequiresWriterPermission,
                  ("domainUsersOnly" Core..=) Core.<$> domainUsersOnly,
                  ("driveMembersOnly" Core..=) Core.<$>
                    driveMembersOnly,
                  ("sharingFoldersRequiresOrganizerPermission" Core..=)
                    Core.<$> sharingFoldersRequiresOrganizerPermission])


-- | A list of shared drives.
--
-- /See:/ 'newDriveList' smart constructor.
data DriveList = DriveList
    {
      -- | The list of shared drives. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
      drives :: (Core.Maybe [Drive])
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#driveList\"@.
    , kind :: Core.Text
      -- | The page token for the next page of shared drives. This will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveList' with the minimum fields required to make a request.
newDriveList 
    ::  DriveList
newDriveList =
  DriveList
    { drives = Core.Nothing
    , kind = "drive#driveList"
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON DriveList where
        parseJSON
          = Core.withObject "DriveList"
              (\ o ->
                 DriveList Core.<$>
                   (o Core..:? "drives") Core.<*>
                     (o Core..:? "kind" Core..!= "drive#driveList")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON DriveList where
        toJSON DriveList{..}
          = Core.object
              (Core.catMaybes
                 [("drives" Core..=) Core.<$> drives,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The metadata for a file. Some resource methods (such as @files.update@) require a @fileId@. Use the @files.list@ method to retrieve the ID for a file.
--
-- /See:/ 'newFile' smart constructor.
data File = File
    {
      -- | A collection of arbitrary key-value pairs which are private to the requesting app. Entries with null values are cleared in update and copy requests. These properties can only be retrieved using an authenticated request. An authenticated request uses an access token obtained with a OAuth 2 client ID. You cannot use an API key to retrieve private properties.
      appProperties :: (Core.Maybe File_AppProperties)
      -- | Output only. Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.
    , capabilities :: (Core.Maybe File_Capabilities)
      -- | Additional information about the content of the file. These fields are never populated in responses.
    , contentHints :: (Core.Maybe File_ContentHints)
      -- | Restrictions for accessing the content of the file. Only populated if such a restriction exists.
    , contentRestrictions :: (Core.Maybe [ContentRestriction])
      -- | Whether the options to copy, print, or download this file, should be disabled for readers and commenters.
    , copyRequiresWriterPermission :: (Core.Maybe Core.Bool)
      -- | The time at which the file was created (RFC 3339 date-time).
    , createdTime :: (Core.Maybe Core.DateTime)
      -- | A short description of the file.
    , description :: (Core.Maybe Core.Text)
      -- | Output only. ID of the shared drive the file resides in. Only populated for items in shared drives.
    , driveId :: (Core.Maybe Core.Text)
      -- | Output only. Whether the file has been explicitly trashed, as opposed to recursively trashed from a parent folder.
    , explicitlyTrashed :: (Core.Maybe Core.Bool)
      -- | Output only. Links for exporting Docs Editors files to specific formats.
    , exportLinks :: (Core.Maybe File_ExportLinks)
      -- | Output only. The final component of @fullFileExtension@. This is only available for files with binary content in Google Drive.
    , fileExtension :: (Core.Maybe Core.Text)
      -- | The color for a folder or a shortcut to a folder as an RGB hex string. The supported colors are published in the @folderColorPalette@ field of the About resource. If an unsupported color is specified, the closest color in the palette is used instead.
    , folderColorRgb :: (Core.Maybe Core.Text)
      -- | Output only. The full file extension extracted from the @name@ field. May contain multiple concatenated extensions, such as \"tar.gz\". This is only available for files with binary content in Google Drive. This is automatically updated when the @name@ field changes, however it is not cleared if the new name does not contain a valid extension.
    , fullFileExtension :: (Core.Maybe Core.Text)
      -- | Output only. Whether there are permissions directly on this file. This field is only populated for items in shared drives.
    , hasAugmentedPermissions :: (Core.Maybe Core.Bool)
      -- | Output only. Whether this file has a thumbnail. This does not indicate whether the requesting app has access to the thumbnail. To check access, look for the presence of the thumbnailLink field.
    , hasThumbnail :: (Core.Maybe Core.Bool)
      -- | Output only. The ID of the file\'s head revision. This is currently only available for files with binary content in Google Drive.
    , headRevisionId :: (Core.Maybe Core.Text)
      -- | Output only. A static, unauthenticated link to the file\'s icon.
    , iconLink :: (Core.Maybe Core.Text)
      -- | The ID of the file.
    , id :: (Core.Maybe Core.Text)
      -- | Output only. Additional metadata about image media, if available.
    , imageMediaMetadata :: (Core.Maybe File_ImageMediaMetadata)
      -- | Output only. Whether the file was created or opened by the requesting app.
    , isAppAuthorized :: (Core.Maybe Core.Bool)
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string @\"drive#file\"@.
    , kind :: Core.Text
      -- | Output only. An overview of the labels on the file.
    , labelInfo :: (Core.Maybe File_LabelInfo)
      -- | Output only. The last user to modify the file. This field is only populated when the last modification was performed by a signed-in user.
    , lastModifyingUser :: (Core.Maybe User)
      -- | Contains details about the link URLs that clients are using to refer to this item.
    , linkShareMetadata :: (Core.Maybe File_LinkShareMetadata)
      -- | Output only. The MD5 checksum for the content of the file. This is only applicable to files with binary content in Google Drive.
    , md5Checksum :: (Core.Maybe Core.Text)
      -- | The MIME type of the file. Google Drive attempts to automatically detect an appropriate value from uploaded content, if no value is provided. The value cannot be changed unless a new revision is uploaded. If a file is created with a Google Doc MIME type, the uploaded content is imported, if possible. The supported import formats are published in the About resource.
    , mimeType :: (Core.Maybe Core.Text)
      -- | Output only. Whether the file has been modified by this user.
    , modifiedByMe :: (Core.Maybe Core.Bool)
      -- | The last time the file was modified by the user (RFC 3339 date-time).
    , modifiedByMeTime :: (Core.Maybe Core.DateTime)
      -- | he last time the file was modified by anyone (RFC 3339 date-time). Note that setting modifiedTime will also update modifiedByMeTime for the user.
    , modifiedTime :: (Core.Maybe Core.DateTime)
      -- | The name of the file. This is not necessarily unique within a folder. Note that for immutable items such as the top level folders of shared drives, My Drive root folder, and Application Data folder the name is constant.
    , name :: (Core.Maybe Core.Text)
      -- | The original filename of the uploaded content if available, or else the original value of the @name@ field. This is only available for files with binary content in Google Drive.
    , originalFilename :: (Core.Maybe Core.Text)
      -- | Output only. Whether the user owns the file. Not populated for items in shared drives.
    , ownedByMe :: (Core.Maybe Core.Bool)
      -- | Output only. The owner of this file. Only certain legacy files may have more than one owner. This field isn\'t populated for items in shared drives.
    , owners :: (Core.Maybe [User])
      -- | The ID of the parent folder containing the file. A file can only have one parent folder; specifying multiple parents isn\'t supported. If not specified as part of a create request, the file is placed directly in the user\'s My Drive folder. If not specified as part of a copy request, the file inherits any discoverable parent of the source file. Update requests must use the @addParents@ and @removeParents@ parameters to modify the parents list.
    , parents :: (Core.Maybe [Core.Text])
      -- | Output only. List of permission IDs for users with access to this file.
    , permissionIds :: (Core.Maybe [Core.Text])
      -- | Output only. The full list of permissions for the file. This is only available if the requesting user can share the file. Not populated for items in shared drives.
    , permissions :: (Core.Maybe [Permission])
      -- | A collection of arbitrary key-value pairs which are visible to all apps. Entries with null values are cleared in update and copy requests.
    , properties :: (Core.Maybe File_Properties)
      -- | Output only. The number of storage quota bytes used by the file. This includes the head revision as well as previous revisions with @keepForever@ enabled.
    , quotaBytesUsed :: (Core.Maybe Core.Int64)
      -- | Output only. A key needed to access the item via a shared link.
    , resourceKey :: (Core.Maybe Core.Text)
      -- | Output only. The SHA1 checksum associated with this file, if available. This field is only populated for files with content stored in Google Drive; it is not populated for Docs Editors or shortcut files.
    , sha1Checksum :: (Core.Maybe Core.Text)
      -- | Output only. The SHA256 checksum associated with this file, if available. This field is only populated for files with content stored in Google Drive; it is not populated for Docs Editors or shortcut files.
    , sha256Checksum :: (Core.Maybe Core.Text)
      -- | Output only. Whether the file has been shared. Not populated for items in shared drives.
    , shared :: (Core.Maybe Core.Bool)
      -- | The time at which the file was shared with the user, if applicable (RFC 3339 date-time).
    , sharedWithMeTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The user who shared the file with the requesting user, if applicable.
    , sharingUser :: (Core.Maybe User)
      -- | Shortcut file details. Only populated for shortcut files, which have the mimeType field set to @application\/vnd.google-apps.shortcut@. Can only be set on @files.create@ requests.
    , shortcutDetails :: (Core.Maybe File_ShortcutDetails)
      -- | Output only. Size in bytes of blobs and first party editor files. Won\'t be populated for files that have no size, like shortcuts and folders.
    , size :: (Core.Maybe Core.Int64)
      -- | Output only. The list of spaces which contain the file. The currently supported values are \'drive\', \'appDataFolder\' and \'photos\'.
    , spaces :: (Core.Maybe [Core.Text])
      -- | Whether the user has starred the file.
    , starred :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @driveId@ instead.
    , teamDriveId :: (Core.Maybe Core.Text)
      -- | Output only. A short-lived link to the file\'s thumbnail, if available. Typically lasts on the order of hours. Not intended for direct usage on web applications due to <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS Cross-Origin Resource Sharing (CORS)> policies, consider using a proxy server. Only populated when the requesting app can access the file\'s content. If the file isn\'t shared publicly, the URL returned in @Files.thumbnailLink@ must be fetched using a credentialed request.
    , thumbnailLink :: (Core.Maybe Core.Text)
      -- | Output only. The thumbnail version for use in thumbnail cache invalidation.
    , thumbnailVersion :: (Core.Maybe Core.Int64)
      -- | Whether the file has been trashed, either explicitly or from a trashed parent folder. Only the owner may trash a file, and other users cannot see files in the owner\'s trash.
    , trashed :: (Core.Maybe Core.Bool)
      -- | The time that the item was trashed (RFC 3339 date-time). Only populated for items in shared drives.
    , trashedTime :: (Core.Maybe Core.DateTime)
      -- | Output only. If the file has been explicitly trashed, the user who trashed it. Only populated for items in shared drives.
    , trashingUser :: (Core.Maybe User)
      -- | Output only. A monotonically increasing version number for the file. This reflects every change made to the file on the server, even those not visible to the user.
    , version :: (Core.Maybe Core.Int64)
      -- | Output only. Additional metadata about video media. This may not be available immediately upon upload.
    , videoMediaMetadata :: (Core.Maybe File_VideoMediaMetadata)
      -- | Output only. Whether the file has been viewed by this user.
    , viewedByMe :: (Core.Maybe Core.Bool)
      -- | The last time the file was viewed by the user (RFC 3339 date-time).
    , viewedByMeTime :: (Core.Maybe Core.DateTime)
      -- | Deprecated: Use @copyRequiresWriterPermission@ instead.
    , viewersCanCopyContent :: (Core.Maybe Core.Bool)
      -- | Output only. A link for downloading the content of the file in a browser. This is only available for files with binary content in Google Drive.
    , webContentLink :: (Core.Maybe Core.Text)
      -- | Output only. A link for opening the file in a relevant Google editor or viewer in a browser.
    , webViewLink :: (Core.Maybe Core.Text)
      -- | Whether users with only @writer@ permission can modify the file\'s permissions. Not populated for items in shared drives.
    , writersCanShare :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
newFile 
    ::  File
newFile =
  File
    { appProperties = Core.Nothing
    , capabilities = Core.Nothing
    , contentHints = Core.Nothing
    , contentRestrictions = Core.Nothing
    , copyRequiresWriterPermission = Core.Nothing
    , createdTime = Core.Nothing
    , description = Core.Nothing
    , driveId = Core.Nothing
    , explicitlyTrashed = Core.Nothing
    , exportLinks = Core.Nothing
    , fileExtension = Core.Nothing
    , folderColorRgb = Core.Nothing
    , fullFileExtension = Core.Nothing
    , hasAugmentedPermissions = Core.Nothing
    , hasThumbnail = Core.Nothing
    , headRevisionId = Core.Nothing
    , iconLink = Core.Nothing
    , id = Core.Nothing
    , imageMediaMetadata = Core.Nothing
    , isAppAuthorized = Core.Nothing
    , kind = "drive#file"
    , labelInfo = Core.Nothing
    , lastModifyingUser = Core.Nothing
    , linkShareMetadata = Core.Nothing
    , md5Checksum = Core.Nothing
    , mimeType = Core.Nothing
    , modifiedByMe = Core.Nothing
    , modifiedByMeTime = Core.Nothing
    , modifiedTime = Core.Nothing
    , name = Core.Nothing
    , originalFilename = Core.Nothing
    , ownedByMe = Core.Nothing
    , owners = Core.Nothing
    , parents = Core.Nothing
    , permissionIds = Core.Nothing
    , permissions = Core.Nothing
    , properties = Core.Nothing
    , quotaBytesUsed = Core.Nothing
    , resourceKey = Core.Nothing
    , sha1Checksum = Core.Nothing
    , sha256Checksum = Core.Nothing
    , shared = Core.Nothing
    , sharedWithMeTime = Core.Nothing
    , sharingUser = Core.Nothing
    , shortcutDetails = Core.Nothing
    , size = Core.Nothing
    , spaces = Core.Nothing
    , starred = Core.Nothing
    , teamDriveId = Core.Nothing
    , thumbnailLink = Core.Nothing
    , thumbnailVersion = Core.Nothing
    , trashed = Core.Nothing
    , trashedTime = Core.Nothing
    , trashingUser = Core.Nothing
    , version = Core.Nothing
    , videoMediaMetadata = Core.Nothing
    , viewedByMe = Core.Nothing
    , viewedByMeTime = Core.Nothing
    , viewersCanCopyContent = Core.Nothing
    , webContentLink = Core.Nothing
    , webViewLink = Core.Nothing
    , writersCanShare = Core.Nothing
    }

instance Core.FromJSON File where
        parseJSON
          = Core.withObject "File"
              (\ o ->
                 File Core.<$>
                   (o Core..:? "appProperties") Core.<*>
                     (o Core..:? "capabilities")
                     Core.<*> (o Core..:? "contentHints")
                     Core.<*> (o Core..:? "contentRestrictions")
                     Core.<*> (o Core..:? "copyRequiresWriterPermission")
                     Core.<*> (o Core..:? "createdTime")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "driveId")
                     Core.<*> (o Core..:? "explicitlyTrashed")
                     Core.<*> (o Core..:? "exportLinks")
                     Core.<*> (o Core..:? "fileExtension")
                     Core.<*> (o Core..:? "folderColorRgb")
                     Core.<*> (o Core..:? "fullFileExtension")
                     Core.<*> (o Core..:? "hasAugmentedPermissions")
                     Core.<*> (o Core..:? "hasThumbnail")
                     Core.<*> (o Core..:? "headRevisionId")
                     Core.<*> (o Core..:? "iconLink")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "imageMediaMetadata")
                     Core.<*> (o Core..:? "isAppAuthorized")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#file")
                     Core.<*> (o Core..:? "labelInfo")
                     Core.<*> (o Core..:? "lastModifyingUser")
                     Core.<*> (o Core..:? "linkShareMetadata")
                     Core.<*> (o Core..:? "md5Checksum")
                     Core.<*> (o Core..:? "mimeType")
                     Core.<*> (o Core..:? "modifiedByMe")
                     Core.<*> (o Core..:? "modifiedByMeTime")
                     Core.<*> (o Core..:? "modifiedTime")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "originalFilename")
                     Core.<*> (o Core..:? "ownedByMe")
                     Core.<*> (o Core..:? "owners")
                     Core.<*> (o Core..:? "parents")
                     Core.<*> (o Core..:? "permissionIds")
                     Core.<*> (o Core..:? "permissions")
                     Core.<*> (o Core..:? "properties")
                     Core.<*>
                     (o Core..:? "quotaBytesUsed" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "resourceKey")
                     Core.<*> (o Core..:? "sha1Checksum")
                     Core.<*> (o Core..:? "sha256Checksum")
                     Core.<*> (o Core..:? "shared")
                     Core.<*> (o Core..:? "sharedWithMeTime")
                     Core.<*> (o Core..:? "sharingUser")
                     Core.<*> (o Core..:? "shortcutDetails")
                     Core.<*>
                     (o Core..:? "size" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "spaces")
                     Core.<*> (o Core..:? "starred")
                     Core.<*> (o Core..:? "teamDriveId")
                     Core.<*> (o Core..:? "thumbnailLink")
                     Core.<*>
                     (o Core..:? "thumbnailVersion" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "trashed")
                     Core.<*> (o Core..:? "trashedTime")
                     Core.<*> (o Core..:? "trashingUser")
                     Core.<*>
                     (o Core..:? "version" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "videoMediaMetadata")
                     Core.<*> (o Core..:? "viewedByMe")
                     Core.<*> (o Core..:? "viewedByMeTime")
                     Core.<*> (o Core..:? "viewersCanCopyContent")
                     Core.<*> (o Core..:? "webContentLink")
                     Core.<*> (o Core..:? "webViewLink")
                     Core.<*> (o Core..:? "writersCanShare"))

instance Core.ToJSON File where
        toJSON File{..}
          = Core.object
              (Core.catMaybes
                 [("appProperties" Core..=) Core.<$> appProperties,
                  ("capabilities" Core..=) Core.<$> capabilities,
                  ("contentHints" Core..=) Core.<$> contentHints,
                  ("contentRestrictions" Core..=) Core.<$>
                    contentRestrictions,
                  ("copyRequiresWriterPermission" Core..=) Core.<$>
                    copyRequiresWriterPermission,
                  ("createdTime" Core..=) Core.<$> createdTime,
                  ("description" Core..=) Core.<$> description,
                  ("driveId" Core..=) Core.<$> driveId,
                  ("explicitlyTrashed" Core..=) Core.<$>
                    explicitlyTrashed,
                  ("exportLinks" Core..=) Core.<$> exportLinks,
                  ("fileExtension" Core..=) Core.<$> fileExtension,
                  ("folderColorRgb" Core..=) Core.<$> folderColorRgb,
                  ("fullFileExtension" Core..=) Core.<$>
                    fullFileExtension,
                  ("hasAugmentedPermissions" Core..=) Core.<$>
                    hasAugmentedPermissions,
                  ("hasThumbnail" Core..=) Core.<$> hasThumbnail,
                  ("headRevisionId" Core..=) Core.<$> headRevisionId,
                  ("iconLink" Core..=) Core.<$> iconLink,
                  ("id" Core..=) Core.<$> id,
                  ("imageMediaMetadata" Core..=) Core.<$>
                    imageMediaMetadata,
                  ("isAppAuthorized" Core..=) Core.<$> isAppAuthorized,
                  Core.Just ("kind" Core..= kind),
                  ("labelInfo" Core..=) Core.<$> labelInfo,
                  ("lastModifyingUser" Core..=) Core.<$>
                    lastModifyingUser,
                  ("linkShareMetadata" Core..=) Core.<$>
                    linkShareMetadata,
                  ("md5Checksum" Core..=) Core.<$> md5Checksum,
                  ("mimeType" Core..=) Core.<$> mimeType,
                  ("modifiedByMe" Core..=) Core.<$> modifiedByMe,
                  ("modifiedByMeTime" Core..=) Core.<$>
                    modifiedByMeTime,
                  ("modifiedTime" Core..=) Core.<$> modifiedTime,
                  ("name" Core..=) Core.<$> name,
                  ("originalFilename" Core..=) Core.<$>
                    originalFilename,
                  ("ownedByMe" Core..=) Core.<$> ownedByMe,
                  ("owners" Core..=) Core.<$> owners,
                  ("parents" Core..=) Core.<$> parents,
                  ("permissionIds" Core..=) Core.<$> permissionIds,
                  ("permissions" Core..=) Core.<$> permissions,
                  ("properties" Core..=) Core.<$> properties,
                  ("quotaBytesUsed" Core..=) Core.. Core.AsText
                    Core.<$> quotaBytesUsed,
                  ("resourceKey" Core..=) Core.<$> resourceKey,
                  ("sha1Checksum" Core..=) Core.<$> sha1Checksum,
                  ("sha256Checksum" Core..=) Core.<$> sha256Checksum,
                  ("shared" Core..=) Core.<$> shared,
                  ("sharedWithMeTime" Core..=) Core.<$>
                    sharedWithMeTime,
                  ("sharingUser" Core..=) Core.<$> sharingUser,
                  ("shortcutDetails" Core..=) Core.<$> shortcutDetails,
                  ("size" Core..=) Core.. Core.AsText Core.<$> size,
                  ("spaces" Core..=) Core.<$> spaces,
                  ("starred" Core..=) Core.<$> starred,
                  ("teamDriveId" Core..=) Core.<$> teamDriveId,
                  ("thumbnailLink" Core..=) Core.<$> thumbnailLink,
                  ("thumbnailVersion" Core..=) Core.. Core.AsText
                    Core.<$> thumbnailVersion,
                  ("trashed" Core..=) Core.<$> trashed,
                  ("trashedTime" Core..=) Core.<$> trashedTime,
                  ("trashingUser" Core..=) Core.<$> trashingUser,
                  ("version" Core..=) Core.. Core.AsText Core.<$>
                    version,
                  ("videoMediaMetadata" Core..=) Core.<$>
                    videoMediaMetadata,
                  ("viewedByMe" Core..=) Core.<$> viewedByMe,
                  ("viewedByMeTime" Core..=) Core.<$> viewedByMeTime,
                  ("viewersCanCopyContent" Core..=) Core.<$>
                    viewersCanCopyContent,
                  ("webContentLink" Core..=) Core.<$> webContentLink,
                  ("webViewLink" Core..=) Core.<$> webViewLink,
                  ("writersCanShare" Core..=) Core.<$>
                    writersCanShare])


-- | A collection of arbitrary key-value pairs which are private to the requesting app. Entries with null values are cleared in update and copy requests. These properties can only be retrieved using an authenticated request. An authenticated request uses an access token obtained with a OAuth 2 client ID. You cannot use an API key to retrieve private properties.
--
-- /See:/ 'newFile_AppProperties' smart constructor.
newtype File_AppProperties = File_AppProperties
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_AppProperties' with the minimum fields required to make a request.
newFile_AppProperties 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> File_AppProperties
newFile_AppProperties additional = File_AppProperties {additional = additional}

instance Core.FromJSON File_AppProperties where
        parseJSON
          = Core.withObject "File_AppProperties"
              (\ o ->
                 File_AppProperties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON File_AppProperties where
        toJSON File_AppProperties{..}
          = Core.toJSON additional


-- | Output only. Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.
--
-- /See:/ 'newFile_Capabilities' smart constructor.
data File_Capabilities = File_Capabilities
    {
      -- | Output only. Whether the current user is the pending owner of the file. Not populated for shared drive files.
      canAcceptOwnership :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can add children to this folder. This is always false when the item is not a folder.
    , canAddChildren :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can add a folder from another drive (different shared drive or My Drive) to this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    , canAddFolderFromAnotherDrive :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can add a parent for the item without removing an existing parent in the same request. Not populated for shared drive files.
    , canAddMyDriveParent :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can change the @copyRequiresWriterPermission@ restriction of this file.
    , canChangeCopyRequiresWriterPermission :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can change the securityUpdateEnabled field on link share metadata.
    , canChangeSecurityUpdateEnabled :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only.
    , canChangeViewersCanCopyContent :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can comment on this file.
    , canComment :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can copy this file. For an item in a shared drive, whether the current user can copy non-folder descendants of this item, or this item itself if it is not a folder.
    , canCopy :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can delete this file.
    , canDelete :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can delete children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    , canDeleteChildren :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can download this file.
    , canDownload :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can edit this file. Other factors may limit the type of changes a user can make to a file. For example, see @canChangeCopyRequiresWriterPermission@ or @canModifyContent@.
    , canEdit :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can list the children of this folder. This is always false when the item is not a folder.
    , canListChildren :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can modify the content of this file.
    , canModifyContent :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use one of @canModifyEditorContentRestriction@, @canModifyOwnerContentRestriction@ or @canRemoveContentRestriction@.
    , canModifyContentRestriction :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can add or modify content restrictions on the file which are editor restricted.
    , canModifyEditorContentRestriction :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can modify the labels on the file.
    , canModifyLabels :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can add or modify content restrictions which are owner restricted.
    , canModifyOwnerContentRestriction :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can move children of this folder outside of the shared drive. This is false when the item is not a folder. Only populated for items in shared drives.
    , canMoveChildrenOutOfDrive :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @canMoveChildrenOutOfDrive@ instead.
    , canMoveChildrenOutOfTeamDrive :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can move children of this folder within this drive. This is false when the item is not a folder. Note that a request to move the child may still fail depending on the current user\'s access to the child and to the destination folder.
    , canMoveChildrenWithinDrive :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @canMoveChildrenWithinDrive@ instead.
    , canMoveChildrenWithinTeamDrive :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @canMoveItemOutOfDrive@ instead.
    , canMoveItemIntoTeamDrive :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can move this item outside of this drive by changing its parent. Note that a request to change the parent of the item may still fail depending on the new parent that is being added.
    , canMoveItemOutOfDrive :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @canMoveItemOutOfDrive@ instead.
    , canMoveItemOutOfTeamDrive :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can move this item within this drive. Note that a request to change the parent of the item may still fail depending on the new parent that is being added and the parent that is being removed.
    , canMoveItemWithinDrive :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @canMoveItemWithinDrive@ instead.
    , canMoveItemWithinTeamDrive :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @canMoveItemWithinDrive@ or @canMoveItemOutOfDrive@ instead.
    , canMoveTeamDriveItem :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can read the shared drive to which this file belongs. Only populated for items in shared drives.
    , canReadDrive :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can read the labels on the file.
    , canReadLabels :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can read the revisions resource of this file. For a shared drive item, whether revisions of non-folder descendants of this item, or this item itself if it is not a folder, can be read.
    , canReadRevisions :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @canReadDrive@ instead.
    , canReadTeamDrive :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can remove children from this folder. This is always false when the item is not a folder. For a folder in a shared drive, use @canDeleteChildren@ or @canTrashChildren@ instead.
    , canRemoveChildren :: (Core.Maybe Core.Bool)
      -- | Output only. Whether there is a content restriction on the file that can be removed by the current user.
    , canRemoveContentRestriction :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can remove a parent from the item without adding another parent in the same request. Not populated for shared drive files.
    , canRemoveMyDriveParent :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can rename this file.
    , canRename :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can modify the sharing settings for this file.
    , canShare :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can move this file to trash.
    , canTrash :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can trash children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    , canTrashChildren :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the current user can restore this file from trash.
    , canUntrash :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_Capabilities' with the minimum fields required to make a request.
newFile_Capabilities 
    ::  File_Capabilities
newFile_Capabilities =
  File_Capabilities
    { canAcceptOwnership = Core.Nothing
    , canAddChildren = Core.Nothing
    , canAddFolderFromAnotherDrive = Core.Nothing
    , canAddMyDriveParent = Core.Nothing
    , canChangeCopyRequiresWriterPermission = Core.Nothing
    , canChangeSecurityUpdateEnabled = Core.Nothing
    , canChangeViewersCanCopyContent = Core.Nothing
    , canComment = Core.Nothing
    , canCopy = Core.Nothing
    , canDelete = Core.Nothing
    , canDeleteChildren = Core.Nothing
    , canDownload = Core.Nothing
    , canEdit = Core.Nothing
    , canListChildren = Core.Nothing
    , canModifyContent = Core.Nothing
    , canModifyContentRestriction = Core.Nothing
    , canModifyEditorContentRestriction = Core.Nothing
    , canModifyLabels = Core.Nothing
    , canModifyOwnerContentRestriction = Core.Nothing
    , canMoveChildrenOutOfDrive = Core.Nothing
    , canMoveChildrenOutOfTeamDrive = Core.Nothing
    , canMoveChildrenWithinDrive = Core.Nothing
    , canMoveChildrenWithinTeamDrive = Core.Nothing
    , canMoveItemIntoTeamDrive = Core.Nothing
    , canMoveItemOutOfDrive = Core.Nothing
    , canMoveItemOutOfTeamDrive = Core.Nothing
    , canMoveItemWithinDrive = Core.Nothing
    , canMoveItemWithinTeamDrive = Core.Nothing
    , canMoveTeamDriveItem = Core.Nothing
    , canReadDrive = Core.Nothing
    , canReadLabels = Core.Nothing
    , canReadRevisions = Core.Nothing
    , canReadTeamDrive = Core.Nothing
    , canRemoveChildren = Core.Nothing
    , canRemoveContentRestriction = Core.Nothing
    , canRemoveMyDriveParent = Core.Nothing
    , canRename = Core.Nothing
    , canShare = Core.Nothing
    , canTrash = Core.Nothing
    , canTrashChildren = Core.Nothing
    , canUntrash = Core.Nothing
    }

instance Core.FromJSON File_Capabilities where
        parseJSON
          = Core.withObject "File_Capabilities"
              (\ o ->
                 File_Capabilities Core.<$>
                   (o Core..:? "canAcceptOwnership") Core.<*>
                     (o Core..:? "canAddChildren")
                     Core.<*> (o Core..:? "canAddFolderFromAnotherDrive")
                     Core.<*> (o Core..:? "canAddMyDriveParent")
                     Core.<*>
                     (o Core..:? "canChangeCopyRequiresWriterPermission")
                     Core.<*>
                     (o Core..:? "canChangeSecurityUpdateEnabled")
                     Core.<*>
                     (o Core..:? "canChangeViewersCanCopyContent")
                     Core.<*> (o Core..:? "canComment")
                     Core.<*> (o Core..:? "canCopy")
                     Core.<*> (o Core..:? "canDelete")
                     Core.<*> (o Core..:? "canDeleteChildren")
                     Core.<*> (o Core..:? "canDownload")
                     Core.<*> (o Core..:? "canEdit")
                     Core.<*> (o Core..:? "canListChildren")
                     Core.<*> (o Core..:? "canModifyContent")
                     Core.<*> (o Core..:? "canModifyContentRestriction")
                     Core.<*>
                     (o Core..:? "canModifyEditorContentRestriction")
                     Core.<*> (o Core..:? "canModifyLabels")
                     Core.<*>
                     (o Core..:? "canModifyOwnerContentRestriction")
                     Core.<*> (o Core..:? "canMoveChildrenOutOfDrive")
                     Core.<*> (o Core..:? "canMoveChildrenOutOfTeamDrive")
                     Core.<*> (o Core..:? "canMoveChildrenWithinDrive")
                     Core.<*>
                     (o Core..:? "canMoveChildrenWithinTeamDrive")
                     Core.<*> (o Core..:? "canMoveItemIntoTeamDrive")
                     Core.<*> (o Core..:? "canMoveItemOutOfDrive")
                     Core.<*> (o Core..:? "canMoveItemOutOfTeamDrive")
                     Core.<*> (o Core..:? "canMoveItemWithinDrive")
                     Core.<*> (o Core..:? "canMoveItemWithinTeamDrive")
                     Core.<*> (o Core..:? "canMoveTeamDriveItem")
                     Core.<*> (o Core..:? "canReadDrive")
                     Core.<*> (o Core..:? "canReadLabels")
                     Core.<*> (o Core..:? "canReadRevisions")
                     Core.<*> (o Core..:? "canReadTeamDrive")
                     Core.<*> (o Core..:? "canRemoveChildren")
                     Core.<*> (o Core..:? "canRemoveContentRestriction")
                     Core.<*> (o Core..:? "canRemoveMyDriveParent")
                     Core.<*> (o Core..:? "canRename")
                     Core.<*> (o Core..:? "canShare")
                     Core.<*> (o Core..:? "canTrash")
                     Core.<*> (o Core..:? "canTrashChildren")
                     Core.<*> (o Core..:? "canUntrash"))

instance Core.ToJSON File_Capabilities where
        toJSON File_Capabilities{..}
          = Core.object
              (Core.catMaybes
                 [("canAcceptOwnership" Core..=) Core.<$>
                    canAcceptOwnership,
                  ("canAddChildren" Core..=) Core.<$> canAddChildren,
                  ("canAddFolderFromAnotherDrive" Core..=) Core.<$>
                    canAddFolderFromAnotherDrive,
                  ("canAddMyDriveParent" Core..=) Core.<$>
                    canAddMyDriveParent,
                  ("canChangeCopyRequiresWriterPermission" Core..=)
                    Core.<$> canChangeCopyRequiresWriterPermission,
                  ("canChangeSecurityUpdateEnabled" Core..=) Core.<$>
                    canChangeSecurityUpdateEnabled,
                  ("canChangeViewersCanCopyContent" Core..=) Core.<$>
                    canChangeViewersCanCopyContent,
                  ("canComment" Core..=) Core.<$> canComment,
                  ("canCopy" Core..=) Core.<$> canCopy,
                  ("canDelete" Core..=) Core.<$> canDelete,
                  ("canDeleteChildren" Core..=) Core.<$>
                    canDeleteChildren,
                  ("canDownload" Core..=) Core.<$> canDownload,
                  ("canEdit" Core..=) Core.<$> canEdit,
                  ("canListChildren" Core..=) Core.<$> canListChildren,
                  ("canModifyContent" Core..=) Core.<$>
                    canModifyContent,
                  ("canModifyContentRestriction" Core..=) Core.<$>
                    canModifyContentRestriction,
                  ("canModifyEditorContentRestriction" Core..=)
                    Core.<$> canModifyEditorContentRestriction,
                  ("canModifyLabels" Core..=) Core.<$> canModifyLabels,
                  ("canModifyOwnerContentRestriction" Core..=) Core.<$>
                    canModifyOwnerContentRestriction,
                  ("canMoveChildrenOutOfDrive" Core..=) Core.<$>
                    canMoveChildrenOutOfDrive,
                  ("canMoveChildrenOutOfTeamDrive" Core..=) Core.<$>
                    canMoveChildrenOutOfTeamDrive,
                  ("canMoveChildrenWithinDrive" Core..=) Core.<$>
                    canMoveChildrenWithinDrive,
                  ("canMoveChildrenWithinTeamDrive" Core..=) Core.<$>
                    canMoveChildrenWithinTeamDrive,
                  ("canMoveItemIntoTeamDrive" Core..=) Core.<$>
                    canMoveItemIntoTeamDrive,
                  ("canMoveItemOutOfDrive" Core..=) Core.<$>
                    canMoveItemOutOfDrive,
                  ("canMoveItemOutOfTeamDrive" Core..=) Core.<$>
                    canMoveItemOutOfTeamDrive,
                  ("canMoveItemWithinDrive" Core..=) Core.<$>
                    canMoveItemWithinDrive,
                  ("canMoveItemWithinTeamDrive" Core..=) Core.<$>
                    canMoveItemWithinTeamDrive,
                  ("canMoveTeamDriveItem" Core..=) Core.<$>
                    canMoveTeamDriveItem,
                  ("canReadDrive" Core..=) Core.<$> canReadDrive,
                  ("canReadLabels" Core..=) Core.<$> canReadLabels,
                  ("canReadRevisions" Core..=) Core.<$>
                    canReadRevisions,
                  ("canReadTeamDrive" Core..=) Core.<$>
                    canReadTeamDrive,
                  ("canRemoveChildren" Core..=) Core.<$>
                    canRemoveChildren,
                  ("canRemoveContentRestriction" Core..=) Core.<$>
                    canRemoveContentRestriction,
                  ("canRemoveMyDriveParent" Core..=) Core.<$>
                    canRemoveMyDriveParent,
                  ("canRename" Core..=) Core.<$> canRename,
                  ("canShare" Core..=) Core.<$> canShare,
                  ("canTrash" Core..=) Core.<$> canTrash,
                  ("canTrashChildren" Core..=) Core.<$>
                    canTrashChildren,
                  ("canUntrash" Core..=) Core.<$> canUntrash])


-- | Additional information about the content of the file. These fields are never populated in responses.
--
-- /See:/ 'newFile_ContentHints' smart constructor.
data File_ContentHints = File_ContentHints
    {
      -- | Text to be indexed for the file to improve fullText queries. This is limited to 128KB in length and may contain HTML elements.
      indexableText :: (Core.Maybe Core.Text)
      -- | A thumbnail for the file. This will only be used if Google Drive cannot generate a standard thumbnail.
    , thumbnail :: (Core.Maybe File_ContentHints_Thumbnail)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ContentHints' with the minimum fields required to make a request.
newFile_ContentHints 
    ::  File_ContentHints
newFile_ContentHints =
  File_ContentHints {indexableText = Core.Nothing, thumbnail = Core.Nothing}

instance Core.FromJSON File_ContentHints where
        parseJSON
          = Core.withObject "File_ContentHints"
              (\ o ->
                 File_ContentHints Core.<$>
                   (o Core..:? "indexableText") Core.<*>
                     (o Core..:? "thumbnail"))

instance Core.ToJSON File_ContentHints where
        toJSON File_ContentHints{..}
          = Core.object
              (Core.catMaybes
                 [("indexableText" Core..=) Core.<$> indexableText,
                  ("thumbnail" Core..=) Core.<$> thumbnail])


-- | A thumbnail for the file. This will only be used if Google Drive cannot generate a standard thumbnail.
--
-- /See:/ 'newFile_ContentHints_Thumbnail' smart constructor.
data File_ContentHints_Thumbnail = File_ContentHints_Thumbnail
    {
      -- | The thumbnail data encoded with URL-safe Base64 (RFC 4648 section 5).
      image :: (Core.Maybe Core.Base64)
      -- | The MIME type of the thumbnail.
    , mimeType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ContentHints_Thumbnail' with the minimum fields required to make a request.
newFile_ContentHints_Thumbnail 
    ::  File_ContentHints_Thumbnail
newFile_ContentHints_Thumbnail =
  File_ContentHints_Thumbnail {image = Core.Nothing, mimeType = Core.Nothing}

instance Core.FromJSON File_ContentHints_Thumbnail
         where
        parseJSON
          = Core.withObject "File_ContentHints_Thumbnail"
              (\ o ->
                 File_ContentHints_Thumbnail Core.<$>
                   (o Core..:? "image") Core.<*>
                     (o Core..:? "mimeType"))

instance Core.ToJSON File_ContentHints_Thumbnail
         where
        toJSON File_ContentHints_Thumbnail{..}
          = Core.object
              (Core.catMaybes
                 [("image" Core..=) Core.<$> image,
                  ("mimeType" Core..=) Core.<$> mimeType])


-- | Output only. Links for exporting Docs Editors files to specific formats.
--
-- /See:/ 'newFile_ExportLinks' smart constructor.
newtype File_ExportLinks = File_ExportLinks
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ExportLinks' with the minimum fields required to make a request.
newFile_ExportLinks 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> File_ExportLinks
newFile_ExportLinks additional = File_ExportLinks {additional = additional}

instance Core.FromJSON File_ExportLinks where
        parseJSON
          = Core.withObject "File_ExportLinks"
              (\ o ->
                 File_ExportLinks Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON File_ExportLinks where
        toJSON File_ExportLinks{..} = Core.toJSON additional


-- | Output only. Additional metadata about image media, if available.
--
-- /See:/ 'newFile_ImageMediaMetadata' smart constructor.
data File_ImageMediaMetadata = File_ImageMediaMetadata
    {
      -- | Output only. The aperture used to create the photo (f-number).
      aperture :: (Core.Maybe Core.Double)
      -- | Output only. The make of the camera used to create the photo.
    , cameraMake :: (Core.Maybe Core.Text)
      -- | Output only. The model of the camera used to create the photo.
    , cameraModel :: (Core.Maybe Core.Text)
      -- | Output only. The color space of the photo.
    , colorSpace :: (Core.Maybe Core.Text)
      -- | Output only. The exposure bias of the photo (APEX value).
    , exposureBias :: (Core.Maybe Core.Double)
      -- | Output only. The exposure mode used to create the photo.
    , exposureMode :: (Core.Maybe Core.Text)
      -- | Output only. The length of the exposure, in seconds.
    , exposureTime :: (Core.Maybe Core.Double)
      -- | Output only. Whether a flash was used to create the photo.
    , flashUsed :: (Core.Maybe Core.Bool)
      -- | Output only. The focal length used to create the photo, in millimeters.
    , focalLength :: (Core.Maybe Core.Double)
      -- | Output only. The height of the image in pixels.
    , height :: (Core.Maybe Core.Int32)
      -- | Output only. The ISO speed used to create the photo.
    , isoSpeed :: (Core.Maybe Core.Int32)
      -- | Output only. The lens used to create the photo.
    , lens :: (Core.Maybe Core.Text)
      -- | Output only. Geographic location information stored in the image.
    , location :: (Core.Maybe File_ImageMediaMetadata_Location)
      -- | Output only. The smallest f-number of the lens at the focal length used to create the photo (APEX value).
    , maxApertureValue :: (Core.Maybe Core.Double)
      -- | Output only. The metering mode used to create the photo.
    , meteringMode :: (Core.Maybe Core.Text)
      -- | Output only. The number of clockwise 90 degree rotations applied from the image\'s original orientation.
    , rotation :: (Core.Maybe Core.Int32)
      -- | Output only. The type of sensor used to create the photo.
    , sensor :: (Core.Maybe Core.Text)
      -- | Output only. The distance to the subject of the photo, in meters.
    , subjectDistance :: (Core.Maybe Core.Int32)
      -- | Output only. The date and time the photo was taken (EXIF DateTime).
    , time :: (Core.Maybe Core.Text)
      -- | Output only. The white balance mode used to create the photo.
    , whiteBalance :: (Core.Maybe Core.Text)
      -- | Output only. The width of the image in pixels.
    , width :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ImageMediaMetadata' with the minimum fields required to make a request.
newFile_ImageMediaMetadata 
    ::  File_ImageMediaMetadata
newFile_ImageMediaMetadata =
  File_ImageMediaMetadata
    { aperture = Core.Nothing
    , cameraMake = Core.Nothing
    , cameraModel = Core.Nothing
    , colorSpace = Core.Nothing
    , exposureBias = Core.Nothing
    , exposureMode = Core.Nothing
    , exposureTime = Core.Nothing
    , flashUsed = Core.Nothing
    , focalLength = Core.Nothing
    , height = Core.Nothing
    , isoSpeed = Core.Nothing
    , lens = Core.Nothing
    , location = Core.Nothing
    , maxApertureValue = Core.Nothing
    , meteringMode = Core.Nothing
    , rotation = Core.Nothing
    , sensor = Core.Nothing
    , subjectDistance = Core.Nothing
    , time = Core.Nothing
    , whiteBalance = Core.Nothing
    , width = Core.Nothing
    }

instance Core.FromJSON File_ImageMediaMetadata where
        parseJSON
          = Core.withObject "File_ImageMediaMetadata"
              (\ o ->
                 File_ImageMediaMetadata Core.<$>
                   (o Core..:? "aperture") Core.<*>
                     (o Core..:? "cameraMake")
                     Core.<*> (o Core..:? "cameraModel")
                     Core.<*> (o Core..:? "colorSpace")
                     Core.<*> (o Core..:? "exposureBias")
                     Core.<*> (o Core..:? "exposureMode")
                     Core.<*> (o Core..:? "exposureTime")
                     Core.<*> (o Core..:? "flashUsed")
                     Core.<*> (o Core..:? "focalLength")
                     Core.<*> (o Core..:? "height")
                     Core.<*> (o Core..:? "isoSpeed")
                     Core.<*> (o Core..:? "lens")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "maxApertureValue")
                     Core.<*> (o Core..:? "meteringMode")
                     Core.<*> (o Core..:? "rotation")
                     Core.<*> (o Core..:? "sensor")
                     Core.<*> (o Core..:? "subjectDistance")
                     Core.<*> (o Core..:? "time")
                     Core.<*> (o Core..:? "whiteBalance")
                     Core.<*> (o Core..:? "width"))

instance Core.ToJSON File_ImageMediaMetadata where
        toJSON File_ImageMediaMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("aperture" Core..=) Core.<$> aperture,
                  ("cameraMake" Core..=) Core.<$> cameraMake,
                  ("cameraModel" Core..=) Core.<$> cameraModel,
                  ("colorSpace" Core..=) Core.<$> colorSpace,
                  ("exposureBias" Core..=) Core.<$> exposureBias,
                  ("exposureMode" Core..=) Core.<$> exposureMode,
                  ("exposureTime" Core..=) Core.<$> exposureTime,
                  ("flashUsed" Core..=) Core.<$> flashUsed,
                  ("focalLength" Core..=) Core.<$> focalLength,
                  ("height" Core..=) Core.<$> height,
                  ("isoSpeed" Core..=) Core.<$> isoSpeed,
                  ("lens" Core..=) Core.<$> lens,
                  ("location" Core..=) Core.<$> location,
                  ("maxApertureValue" Core..=) Core.<$>
                    maxApertureValue,
                  ("meteringMode" Core..=) Core.<$> meteringMode,
                  ("rotation" Core..=) Core.<$> rotation,
                  ("sensor" Core..=) Core.<$> sensor,
                  ("subjectDistance" Core..=) Core.<$> subjectDistance,
                  ("time" Core..=) Core.<$> time,
                  ("whiteBalance" Core..=) Core.<$> whiteBalance,
                  ("width" Core..=) Core.<$> width])


-- | Output only. Geographic location information stored in the image.
--
-- /See:/ 'newFile_ImageMediaMetadata_Location' smart constructor.
data File_ImageMediaMetadata_Location = File_ImageMediaMetadata_Location
    {
      -- | Output only. The altitude stored in the image.
      altitude :: (Core.Maybe Core.Double)
      -- | Output only. The latitude stored in the image.
    , latitude :: (Core.Maybe Core.Double)
      -- | Output only. The longitude stored in the image.
    , longitude :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ImageMediaMetadata_Location' with the minimum fields required to make a request.
newFile_ImageMediaMetadata_Location 
    ::  File_ImageMediaMetadata_Location
newFile_ImageMediaMetadata_Location =
  File_ImageMediaMetadata_Location
    {altitude = Core.Nothing, latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON
           File_ImageMediaMetadata_Location
         where
        parseJSON
          = Core.withObject "File_ImageMediaMetadata_Location"
              (\ o ->
                 File_ImageMediaMetadata_Location Core.<$>
                   (o Core..:? "altitude") Core.<*>
                     (o Core..:? "latitude")
                     Core.<*> (o Core..:? "longitude"))

instance Core.ToJSON File_ImageMediaMetadata_Location
         where
        toJSON File_ImageMediaMetadata_Location{..}
          = Core.object
              (Core.catMaybes
                 [("altitude" Core..=) Core.<$> altitude,
                  ("latitude" Core..=) Core.<$> latitude,
                  ("longitude" Core..=) Core.<$> longitude])


-- | Output only. An overview of the labels on the file.
--
-- /See:/ 'newFile_LabelInfo' smart constructor.
newtype File_LabelInfo = File_LabelInfo
    {
      -- | Output only. The set of labels on the file as requested by the label IDs in the @includeLabels@ parameter. By default, no labels are returned.
      labels :: (Core.Maybe [Label])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_LabelInfo' with the minimum fields required to make a request.
newFile_LabelInfo 
    ::  File_LabelInfo
newFile_LabelInfo = File_LabelInfo {labels = Core.Nothing}

instance Core.FromJSON File_LabelInfo where
        parseJSON
          = Core.withObject "File_LabelInfo"
              (\ o ->
                 File_LabelInfo Core.<$> (o Core..:? "labels"))

instance Core.ToJSON File_LabelInfo where
        toJSON File_LabelInfo{..}
          = Core.object
              (Core.catMaybes [("labels" Core..=) Core.<$> labels])


-- | Contains details about the link URLs that clients are using to refer to this item.
--
-- /See:/ 'newFile_LinkShareMetadata' smart constructor.
data File_LinkShareMetadata = File_LinkShareMetadata
    {
      -- | Output only. Whether the file is eligible for security update.
      securityUpdateEligible :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the security update is enabled for this file.
    , securityUpdateEnabled :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_LinkShareMetadata' with the minimum fields required to make a request.
newFile_LinkShareMetadata 
    ::  File_LinkShareMetadata
newFile_LinkShareMetadata =
  File_LinkShareMetadata
    { securityUpdateEligible = Core.Nothing
    , securityUpdateEnabled = Core.Nothing
    }

instance Core.FromJSON File_LinkShareMetadata where
        parseJSON
          = Core.withObject "File_LinkShareMetadata"
              (\ o ->
                 File_LinkShareMetadata Core.<$>
                   (o Core..:? "securityUpdateEligible") Core.<*>
                     (o Core..:? "securityUpdateEnabled"))

instance Core.ToJSON File_LinkShareMetadata where
        toJSON File_LinkShareMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("securityUpdateEligible" Core..=) Core.<$>
                    securityUpdateEligible,
                  ("securityUpdateEnabled" Core..=) Core.<$>
                    securityUpdateEnabled])


-- | A collection of arbitrary key-value pairs which are visible to all apps. Entries with null values are cleared in update and copy requests.
--
-- /See:/ 'newFile_Properties' smart constructor.
newtype File_Properties = File_Properties
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_Properties' with the minimum fields required to make a request.
newFile_Properties 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> File_Properties
newFile_Properties additional = File_Properties {additional = additional}

instance Core.FromJSON File_Properties where
        parseJSON
          = Core.withObject "File_Properties"
              (\ o ->
                 File_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON File_Properties where
        toJSON File_Properties{..} = Core.toJSON additional


-- | Shortcut file details. Only populated for shortcut files, which have the mimeType field set to @application\/vnd.google-apps.shortcut@. Can only be set on @files.create@ requests.
--
-- /See:/ 'newFile_ShortcutDetails' smart constructor.
data File_ShortcutDetails = File_ShortcutDetails
    {
      -- | The ID of the file that this shortcut points to. Can only be set on @files.create@ requests.
      targetId :: (Core.Maybe Core.Text)
      -- | Output only. The MIME type of the file that this shortcut points to. The value of this field is a snapshot of the target\'s MIME type, captured when the shortcut is created.
    , targetMimeType :: (Core.Maybe Core.Text)
      -- | Output only. The ResourceKey for the target file.
    , targetResourceKey :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ShortcutDetails' with the minimum fields required to make a request.
newFile_ShortcutDetails 
    ::  File_ShortcutDetails
newFile_ShortcutDetails =
  File_ShortcutDetails
    { targetId = Core.Nothing
    , targetMimeType = Core.Nothing
    , targetResourceKey = Core.Nothing
    }

instance Core.FromJSON File_ShortcutDetails where
        parseJSON
          = Core.withObject "File_ShortcutDetails"
              (\ o ->
                 File_ShortcutDetails Core.<$>
                   (o Core..:? "targetId") Core.<*>
                     (o Core..:? "targetMimeType")
                     Core.<*> (o Core..:? "targetResourceKey"))

instance Core.ToJSON File_ShortcutDetails where
        toJSON File_ShortcutDetails{..}
          = Core.object
              (Core.catMaybes
                 [("targetId" Core..=) Core.<$> targetId,
                  ("targetMimeType" Core..=) Core.<$> targetMimeType,
                  ("targetResourceKey" Core..=) Core.<$>
                    targetResourceKey])


-- | Output only. Additional metadata about video media. This may not be available immediately upon upload.
--
-- /See:/ 'newFile_VideoMediaMetadata' smart constructor.
data File_VideoMediaMetadata = File_VideoMediaMetadata
    {
      -- | Output only. The duration of the video in milliseconds.
      durationMillis :: (Core.Maybe Core.Int64)
      -- | Output only. The height of the video in pixels.
    , height :: (Core.Maybe Core.Int32)
      -- | Output only. The width of the video in pixels.
    , width :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_VideoMediaMetadata' with the minimum fields required to make a request.
newFile_VideoMediaMetadata 
    ::  File_VideoMediaMetadata
newFile_VideoMediaMetadata =
  File_VideoMediaMetadata
    {durationMillis = Core.Nothing, height = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON File_VideoMediaMetadata where
        parseJSON
          = Core.withObject "File_VideoMediaMetadata"
              (\ o ->
                 File_VideoMediaMetadata Core.<$>
                   (o Core..:? "durationMillis" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "height")
                     Core.<*> (o Core..:? "width"))

instance Core.ToJSON File_VideoMediaMetadata where
        toJSON File_VideoMediaMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("durationMillis" Core..=) Core.. Core.AsText
                    Core.<$> durationMillis,
                  ("height" Core..=) Core.<$> height,
                  ("width" Core..=) Core.<$> width])


-- | A list of files.
--
-- /See:/ 'newFileList' smart constructor.
data FileList = FileList
    {
      -- | The list of files. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
      files :: (Core.Maybe [File])
      -- | Whether the search process was incomplete. If true, then some search results might be missing, since all documents were not searched. This can occur when searching multiple drives with the \'allDrives\' corpora, but all corpora couldn\'t be searched. When this happens, it\'s suggested that clients narrow their query by choosing a different corpus such as \'user\' or \'drive\'.
    , incompleteSearch :: (Core.Maybe Core.Bool)
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#fileList\"@.
    , kind :: Core.Text
      -- | The page token for the next page of files. This will be absent if the end of the files list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileList' with the minimum fields required to make a request.
newFileList 
    ::  FileList
newFileList =
  FileList
    { files = Core.Nothing
    , incompleteSearch = Core.Nothing
    , kind = "drive#fileList"
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON FileList where
        parseJSON
          = Core.withObject "FileList"
              (\ o ->
                 FileList Core.<$>
                   (o Core..:? "files") Core.<*>
                     (o Core..:? "incompleteSearch")
                     Core.<*>
                     (o Core..:? "kind" Core..!= "drive#fileList")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON FileList where
        toJSON FileList{..}
          = Core.object
              (Core.catMaybes
                 [("files" Core..=) Core.<$> files,
                  ("incompleteSearch" Core..=) Core.<$>
                    incompleteSearch,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A list of generated file IDs which can be provided in create requests.
--
-- /See:/ 'newGeneratedIds' smart constructor.
data GeneratedIds = GeneratedIds
    {
      -- | The IDs generated for the requesting user in the specified space.
      ids :: (Core.Maybe [Core.Text])
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#generatedIds\"@.
    , kind :: Core.Text
      -- | The type of file that can be created with these IDs.
    , space :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeneratedIds' with the minimum fields required to make a request.
newGeneratedIds 
    ::  GeneratedIds
newGeneratedIds =
  GeneratedIds
    {ids = Core.Nothing, kind = "drive#generatedIds", space = Core.Nothing}

instance Core.FromJSON GeneratedIds where
        parseJSON
          = Core.withObject "GeneratedIds"
              (\ o ->
                 GeneratedIds Core.<$>
                   (o Core..:? "ids") Core.<*>
                     (o Core..:? "kind" Core..!= "drive#generatedIds")
                     Core.<*> (o Core..:? "space"))

instance Core.ToJSON GeneratedIds where
        toJSON GeneratedIds{..}
          = Core.object
              (Core.catMaybes
                 [("ids" Core..=) Core.<$> ids,
                  Core.Just ("kind" Core..= kind),
                  ("space" Core..=) Core.<$> space])


-- | Representation of label and label fields.
--
-- /See:/ 'newLabel' smart constructor.
data Label = Label
    {
      -- | A map of the fields on the label, keyed by the field\'s ID.
      fields :: (Core.Maybe Label_Fields)
      -- | The ID of the label.
    , id :: (Core.Maybe Core.Text)
      -- | This is always drive#label
    , kind :: (Core.Maybe Core.Text)
      -- | The revision ID of the label.
    , revisionId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Label' with the minimum fields required to make a request.
newLabel 
    ::  Label
newLabel =
  Label
    { fields = Core.Nothing
    , id = Core.Nothing
    , kind = Core.Nothing
    , revisionId = Core.Nothing
    }

instance Core.FromJSON Label where
        parseJSON
          = Core.withObject "Label"
              (\ o ->
                 Label Core.<$>
                   (o Core..:? "fields") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "revisionId"))

instance Core.ToJSON Label where
        toJSON Label{..}
          = Core.object
              (Core.catMaybes
                 [("fields" Core..=) Core.<$> fields,
                  ("id" Core..=) Core.<$> id,
                  ("kind" Core..=) Core.<$> kind,
                  ("revisionId" Core..=) Core.<$> revisionId])


-- | A map of the fields on the label, keyed by the field\'s ID.
--
-- /See:/ 'newLabel_Fields' smart constructor.
newtype Label_Fields = Label_Fields
    {
      -- | 
      additional :: (Core.HashMap Core.Text LabelField)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Label_Fields' with the minimum fields required to make a request.
newLabel_Fields 
    ::  Core.HashMap Core.Text LabelField
       -- ^  See 'additional'.
    -> Label_Fields
newLabel_Fields additional = Label_Fields {additional = additional}

instance Core.FromJSON Label_Fields where
        parseJSON
          = Core.withObject "Label_Fields"
              (\ o ->
                 Label_Fields Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Label_Fields where
        toJSON Label_Fields{..} = Core.toJSON additional


-- | Representation of field, which is a typed key-value pair.
--
-- /See:/ 'newLabelField' smart constructor.
data LabelField = LabelField
    {
      -- | Only present if valueType is dateString. RFC 3339 formatted date: YYYY-MM-DD.
      dateString :: (Core.Maybe [Core.Date])
      -- | The identifier of this label field.
    , id :: (Core.Maybe Core.Text)
      -- | Only present if @valueType@ is @integer@.
    , integer :: (Core.Maybe [Core.Int64])
      -- | This is always drive#labelField.
    , kind :: (Core.Maybe Core.Text)
      -- | Only present if @valueType@ is @selection@
    , selection :: (Core.Maybe [Core.Text])
      -- | Only present if @valueType@ is @text@.
    , text :: (Core.Maybe [Core.Text])
      -- | Only present if @valueType@ is @user@.
    , user :: (Core.Maybe [User])
      -- | The field type. While new values may be supported in the future, the following are currently allowed: * @dateString@ * @integer@ * @selection@ * @text@ * @user@
    , valueType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelField' with the minimum fields required to make a request.
newLabelField 
    ::  LabelField
newLabelField =
  LabelField
    { dateString = Core.Nothing
    , id = Core.Nothing
    , integer = Core.Nothing
    , kind = Core.Nothing
    , selection = Core.Nothing
    , text = Core.Nothing
    , user = Core.Nothing
    , valueType = Core.Nothing
    }

instance Core.FromJSON LabelField where
        parseJSON
          = Core.withObject "LabelField"
              (\ o ->
                 LabelField Core.<$>
                   (o Core..:? "dateString") Core.<*> (o Core..:? "id")
                     Core.<*>
                     (o Core..:? "integer" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "selection")
                     Core.<*> (o Core..:? "text")
                     Core.<*> (o Core..:? "user")
                     Core.<*> (o Core..:? "valueType"))

instance Core.ToJSON LabelField where
        toJSON LabelField{..}
          = Core.object
              (Core.catMaybes
                 [("dateString" Core..=) Core.<$> dateString,
                  ("id" Core..=) Core.<$> id,
                  ("integer" Core..=) Core.. Core.fmap Core.AsText
                    Core.<$> integer,
                  ("kind" Core..=) Core.<$> kind,
                  ("selection" Core..=) Core.<$> selection,
                  ("text" Core..=) Core.<$> text,
                  ("user" Core..=) Core.<$> user,
                  ("valueType" Core..=) Core.<$> valueType])


-- | A modification to a label\'s field.
--
-- /See:/ 'newLabelFieldModification' smart constructor.
data LabelFieldModification = LabelFieldModification
    {
      -- | The ID of the field to be modified.
      fieldId :: (Core.Maybe Core.Text)
      -- | This is always drive#labelFieldModification.
    , kind :: (Core.Maybe Core.Text)
      -- | Replaces the value of a dateString Field with these new values. The string must be in the RFC 3339 full-date format: YYYY-MM-DD.
    , setDateValues :: (Core.Maybe [Core.Date])
      -- | Replaces the value of an @integer@ field with these new values.
    , setIntegerValues :: (Core.Maybe [Core.Int64])
      -- | Replaces a @selection@ field with these new values.
    , setSelectionValues :: (Core.Maybe [Core.Text])
      -- | Sets the value of a @text@ field.
    , setTextValues :: (Core.Maybe [Core.Text])
      -- | Replaces a @user@ field with these new values. The values must be valid email addresses.
    , setUserValues :: (Core.Maybe [Core.Text])
      -- | Unsets the values for this field.
    , unsetValues :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelFieldModification' with the minimum fields required to make a request.
newLabelFieldModification 
    ::  LabelFieldModification
newLabelFieldModification =
  LabelFieldModification
    { fieldId = Core.Nothing
    , kind = Core.Nothing
    , setDateValues = Core.Nothing
    , setIntegerValues = Core.Nothing
    , setSelectionValues = Core.Nothing
    , setTextValues = Core.Nothing
    , setUserValues = Core.Nothing
    , unsetValues = Core.Nothing
    }

instance Core.FromJSON LabelFieldModification where
        parseJSON
          = Core.withObject "LabelFieldModification"
              (\ o ->
                 LabelFieldModification Core.<$>
                   (o Core..:? "fieldId") Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "setDateValues")
                     Core.<*>
                     (o Core..:? "setIntegerValues" Core.<&>
                        Core.fmap (Core.fmap Core.fromAsText))
                     Core.<*> (o Core..:? "setSelectionValues")
                     Core.<*> (o Core..:? "setTextValues")
                     Core.<*> (o Core..:? "setUserValues")
                     Core.<*> (o Core..:? "unsetValues"))

instance Core.ToJSON LabelFieldModification where
        toJSON LabelFieldModification{..}
          = Core.object
              (Core.catMaybes
                 [("fieldId" Core..=) Core.<$> fieldId,
                  ("kind" Core..=) Core.<$> kind,
                  ("setDateValues" Core..=) Core.<$> setDateValues,
                  ("setIntegerValues" Core..=) Core..
                    Core.fmap Core.AsText
                    Core.<$> setIntegerValues,
                  ("setSelectionValues" Core..=) Core.<$>
                    setSelectionValues,
                  ("setTextValues" Core..=) Core.<$> setTextValues,
                  ("setUserValues" Core..=) Core.<$> setUserValues,
                  ("unsetValues" Core..=) Core.<$> unsetValues])


-- | A list of labels applied to a file.
--
-- /See:/ 'newLabelList' smart constructor.
data LabelList = LabelList
    {
      -- | This is always drive#labelList
      kind :: (Core.Maybe Core.Text)
      -- | The list of labels.
    , labels :: (Core.Maybe [Label])
      -- | The page token for the next page of labels. This field will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelList' with the minimum fields required to make a request.
newLabelList 
    ::  LabelList
newLabelList =
  LabelList
    {kind = Core.Nothing, labels = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON LabelList where
        parseJSON
          = Core.withObject "LabelList"
              (\ o ->
                 LabelList Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON LabelList where
        toJSON LabelList{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("labels" Core..=) Core.<$> labels,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A modification to a label on a file. A LabelModification can be used to apply a label to a file, update an existing label on a file, or remove a label from a file.
--
-- /See:/ 'newLabelModification' smart constructor.
data LabelModification = LabelModification
    {
      -- | The list of modifications to this label\'s fields.
      fieldModifications :: (Core.Maybe [LabelFieldModification])
      -- | This is always drive#labelModification.
    , kind :: (Core.Maybe Core.Text)
      -- | The ID of the label to modify.
    , labelId :: (Core.Maybe Core.Text)
      -- | If true, the label will be removed from the file.
    , removeLabel :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelModification' with the minimum fields required to make a request.
newLabelModification 
    ::  LabelModification
newLabelModification =
  LabelModification
    { fieldModifications = Core.Nothing
    , kind = Core.Nothing
    , labelId = Core.Nothing
    , removeLabel = Core.Nothing
    }

instance Core.FromJSON LabelModification where
        parseJSON
          = Core.withObject "LabelModification"
              (\ o ->
                 LabelModification Core.<$>
                   (o Core..:? "fieldModifications") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "labelId")
                     Core.<*> (o Core..:? "removeLabel"))

instance Core.ToJSON LabelModification where
        toJSON LabelModification{..}
          = Core.object
              (Core.catMaybes
                 [("fieldModifications" Core..=) Core.<$>
                    fieldModifications,
                  ("kind" Core..=) Core.<$> kind,
                  ("labelId" Core..=) Core.<$> labelId,
                  ("removeLabel" Core..=) Core.<$> removeLabel])


-- | The response to an Access Proposal list request.
--
-- /See:/ 'newListAccessProposalsResponse' smart constructor.
data ListAccessProposalsResponse = ListAccessProposalsResponse
    {
      -- | The list of Access Proposals. This field is only populated in v3 and v3beta.
      accessProposals :: (Core.Maybe [AccessProposal])
      -- | The continuation token for the next page of results. This will be absent if the end of the results list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccessProposalsResponse' with the minimum fields required to make a request.
newListAccessProposalsResponse 
    ::  ListAccessProposalsResponse
newListAccessProposalsResponse =
  ListAccessProposalsResponse
    {accessProposals = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAccessProposalsResponse
         where
        parseJSON
          = Core.withObject "ListAccessProposalsResponse"
              (\ o ->
                 ListAccessProposalsResponse Core.<$>
                   (o Core..:? "accessProposals") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAccessProposalsResponse
         where
        toJSON ListAccessProposalsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("accessProposals" Core..=) Core.<$>
                    accessProposals,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
    {
      -- | The standard List next-page token.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A list of operations that matches the specified filter in the request.
    , operations :: (Core.Maybe [Operation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse 
    ::  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    {nextPageToken = Core.Nothing, operations = Core.Nothing}

instance Core.FromJSON ListOperationsResponse where
        parseJSON
          = Core.withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "operations"))

instance Core.ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("operations" Core..=) Core.<$> operations])


-- | A request to modify the set of labels on a file. This request may contain many modifications that will either all succeed or all fail atomically.
--
-- /See:/ 'newModifyLabelsRequest' smart constructor.
data ModifyLabelsRequest = ModifyLabelsRequest
    {
      -- | This is always drive#modifyLabelsRequest.
      kind :: (Core.Maybe Core.Text)
      -- | The list of modifications to apply to the labels on the file.
    , labelModifications :: (Core.Maybe [LabelModification])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyLabelsRequest' with the minimum fields required to make a request.
newModifyLabelsRequest 
    ::  ModifyLabelsRequest
newModifyLabelsRequest =
  ModifyLabelsRequest {kind = Core.Nothing, labelModifications = Core.Nothing}

instance Core.FromJSON ModifyLabelsRequest where
        parseJSON
          = Core.withObject "ModifyLabelsRequest"
              (\ o ->
                 ModifyLabelsRequest Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "labelModifications"))

instance Core.ToJSON ModifyLabelsRequest where
        toJSON ModifyLabelsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("labelModifications" Core..=) Core.<$>
                    labelModifications])


-- | Response to a ModifyLabels request. This contains only those labels which were added or updated by the request.
--
-- /See:/ 'newModifyLabelsResponse' smart constructor.
data ModifyLabelsResponse = ModifyLabelsResponse
    {
      -- | This is always drive#modifyLabelsResponse
      kind :: (Core.Maybe Core.Text)
      -- | The list of labels which were added or updated by the request.
    , modifiedLabels :: (Core.Maybe [Label])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyLabelsResponse' with the minimum fields required to make a request.
newModifyLabelsResponse 
    ::  ModifyLabelsResponse
newModifyLabelsResponse =
  ModifyLabelsResponse {kind = Core.Nothing, modifiedLabels = Core.Nothing}

instance Core.FromJSON ModifyLabelsResponse where
        parseJSON
          = Core.withObject "ModifyLabelsResponse"
              (\ o ->
                 ModifyLabelsResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "modifiedLabels"))

instance Core.ToJSON ModifyLabelsResponse where
        toJSON ModifyLabelsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("modifiedLabels" Core..=) Core.<$> modifiedLabels])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe Status)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe Operation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe Operation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation 
    ::  Operation
newOperation =
  Operation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON Operation where
        parseJSON
          = Core.withObject "Operation"
              (\ o ->
                 Operation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON Operation where
        toJSON Operation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
        parseJSON
          = Core.withObject "Operation_Metadata"
              (\ o ->
                 Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
        toJSON Operation_Metadata{..}
          = Core.toJSON additional


-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
        parseJSON
          = Core.withObject "Operation_Response"
              (\ o ->
                 Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
        toJSON Operation_Response{..}
          = Core.toJSON additional


-- | A permission for a file. A permission grants a user, group, domain, or the world access to a file or a folder hierarchy. By default, permissions requests only return a subset of fields. Permission kind, ID, type, and role are always returned. To retrieve specific fields, see https:\/\/developers.google.com\/drive\/api\/guides\/fields-parameter. Some resource methods (such as @permissions.update@) require a @permissionId@. Use the @permissions.list@ method to retrieve the ID for a file, folder, or shared drive.
--
-- /See:/ 'newPermission' smart constructor.
data Permission = Permission
    {
      -- | Whether the permission allows the file to be discovered through search. This is only applicable for permissions of type @domain@ or @anyone@.
      allowFileDiscovery :: (Core.Maybe Core.Bool)
      -- | Output only. Whether the account associated with this permission has been deleted. This field only pertains to user and group permissions.
    , deleted :: (Core.Maybe Core.Bool)
      -- | Output only. The \"pretty\" name of the value of the permission. The following is a list of examples for each type of permission: * @user@ - User\'s full name, as defined for their Google account, such as \"Joe Smith.\" * @group@ - Name of the Google Group, such as \"The Company Administrators.\" * @domain@ - String domain name, such as \"thecompany.com.\" * @anyone@ - No @displayName@ is present.
    , displayName :: (Core.Maybe Core.Text)
      -- | The domain to which this permission refers.
    , domain :: (Core.Maybe Core.Text)
      -- | The email address of the user or group to which this permission refers.
    , emailAddress :: (Core.Maybe Core.Text)
      -- | The time at which this permission will expire (RFC 3339 date-time). Expiration times have the following restrictions: - They can only be set on user and group permissions - The time must be in the future - The time cannot be more than a year in the future
    , expirationTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The ID of this permission. This is a unique identifier for the grantee, and is published in User resources as @permissionId@. IDs should be treated as opaque values.
    , id :: (Core.Maybe Core.Text)
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string @\"drive#permission\"@.
    , kind :: Core.Text
      -- | Whether the account associated with this permission is a pending owner. Only populated for @user@ type permissions for files that are not in a shared drive.
    , pendingOwner :: (Core.Maybe Core.Bool)
      -- | Output only. Details of whether the permissions on this shared drive item are inherited or directly on this item. This is an output-only field which is present only for shared drive items.
    , permissionDetails :: (Core.Maybe [Permission_PermissionDetailsItem])
      -- | Output only. A link to the user\'s profile photo, if available.
    , photoLink :: (Core.Maybe Core.Text)
      -- | The role granted by this permission. While new values may be supported in the future, the following are currently allowed: * @owner@ * @organizer@ * @fileOrganizer@ * @writer@ * @commenter@ * @reader@
    , role' :: (Core.Maybe Core.Text)
      -- | Output only. Deprecated: Output only. Use @permissionDetails@ instead.
    , teamDrivePermissionDetails :: (Core.Maybe [Permission_TeamDrivePermissionDetailsItem])
      -- | The type of the grantee. Valid values are: * @user@ * @group@ * @domain@ * @anyone@ When creating a permission, if @type@ is @user@ or @group@, you must provide an @emailAddress@ for the user or group. When @type@ is @domain@, you must provide a @domain@. There isn\'t extra information required for an @anyone@ type.
    , type' :: (Core.Maybe Core.Text)
      -- | Indicates the view for this permission. Only populated for permissions that belong to a view. \'published\' is the only supported value.
    , view :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
newPermission 
    ::  Permission
newPermission =
  Permission
    { allowFileDiscovery = Core.Nothing
    , deleted = Core.Nothing
    , displayName = Core.Nothing
    , domain = Core.Nothing
    , emailAddress = Core.Nothing
    , expirationTime = Core.Nothing
    , id = Core.Nothing
    , kind = "drive#permission"
    , pendingOwner = Core.Nothing
    , permissionDetails = Core.Nothing
    , photoLink = Core.Nothing
    , role' = Core.Nothing
    , teamDrivePermissionDetails = Core.Nothing
    , type' = Core.Nothing
    , view = Core.Nothing
    }

instance Core.FromJSON Permission where
        parseJSON
          = Core.withObject "Permission"
              (\ o ->
                 Permission Core.<$>
                   (o Core..:? "allowFileDiscovery") Core.<*>
                     (o Core..:? "deleted")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "domain")
                     Core.<*> (o Core..:? "emailAddress")
                     Core.<*> (o Core..:? "expirationTime")
                     Core.<*> (o Core..:? "id")
                     Core.<*>
                     (o Core..:? "kind" Core..!= "drive#permission")
                     Core.<*> (o Core..:? "pendingOwner")
                     Core.<*> (o Core..:? "permissionDetails")
                     Core.<*> (o Core..:? "photoLink")
                     Core.<*> (o Core..:? "role")
                     Core.<*> (o Core..:? "teamDrivePermissionDetails")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "view"))

instance Core.ToJSON Permission where
        toJSON Permission{..}
          = Core.object
              (Core.catMaybes
                 [("allowFileDiscovery" Core..=) Core.<$>
                    allowFileDiscovery,
                  ("deleted" Core..=) Core.<$> deleted,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("domain" Core..=) Core.<$> domain,
                  ("emailAddress" Core..=) Core.<$> emailAddress,
                  ("expirationTime" Core..=) Core.<$> expirationTime,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("pendingOwner" Core..=) Core.<$> pendingOwner,
                  ("permissionDetails" Core..=) Core.<$>
                    permissionDetails,
                  ("photoLink" Core..=) Core.<$> photoLink,
                  ("role" Core..=) Core.<$> role',
                  ("teamDrivePermissionDetails" Core..=) Core.<$>
                    teamDrivePermissionDetails,
                  ("type" Core..=) Core.<$> type',
                  ("view" Core..=) Core.<$> view])


--
-- /See:/ 'newPermission_PermissionDetailsItem' smart constructor.
data Permission_PermissionDetailsItem = Permission_PermissionDetailsItem
    {
      -- | Output only. Whether this permission is inherited. This field is always populated. This is an output-only field.
      inherited :: (Core.Maybe Core.Bool)
      -- | Output only. The ID of the item from which this permission is inherited. This is an output-only field.
    , inheritedFrom :: (Core.Maybe Core.Text)
      -- | Output only. The permission type for this user. While new values may be added in future, the following are currently possible: * @file@ * @member@
    , permissionType :: (Core.Maybe Core.Text)
      -- | Output only. The primary role for this user. While new values may be added in the future, the following are currently possible: * @organizer@ * @fileOrganizer@ * @writer@ * @commenter@ * @reader@
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission_PermissionDetailsItem' with the minimum fields required to make a request.
newPermission_PermissionDetailsItem 
    ::  Permission_PermissionDetailsItem
newPermission_PermissionDetailsItem =
  Permission_PermissionDetailsItem
    { inherited = Core.Nothing
    , inheritedFrom = Core.Nothing
    , permissionType = Core.Nothing
    , role' = Core.Nothing
    }

instance Core.FromJSON
           Permission_PermissionDetailsItem
         where
        parseJSON
          = Core.withObject "Permission_PermissionDetailsItem"
              (\ o ->
                 Permission_PermissionDetailsItem Core.<$>
                   (o Core..:? "inherited") Core.<*>
                     (o Core..:? "inheritedFrom")
                     Core.<*> (o Core..:? "permissionType")
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON Permission_PermissionDetailsItem
         where
        toJSON Permission_PermissionDetailsItem{..}
          = Core.object
              (Core.catMaybes
                 [("inherited" Core..=) Core.<$> inherited,
                  ("inheritedFrom" Core..=) Core.<$> inheritedFrom,
                  ("permissionType" Core..=) Core.<$> permissionType,
                  ("role" Core..=) Core.<$> role'])


--
-- /See:/ 'newPermission_TeamDrivePermissionDetailsItem' smart constructor.
data Permission_TeamDrivePermissionDetailsItem = Permission_TeamDrivePermissionDetailsItem
    {
      -- | Deprecated: Output only. Use @permissionDetails\/inherited@ instead.
      inherited :: (Core.Maybe Core.Bool)
      -- | Deprecated: Output only. Use @permissionDetails\/inheritedFrom@ instead.
    , inheritedFrom :: (Core.Maybe Core.Text)
      -- | Deprecated: Output only. Use @permissionDetails\/role@ instead.
    , role' :: (Core.Maybe Core.Text)
      -- | Deprecated: Output only. Use @permissionDetails\/permissionType@ instead.
    , teamDrivePermissionType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission_TeamDrivePermissionDetailsItem' with the minimum fields required to make a request.
newPermission_TeamDrivePermissionDetailsItem 
    ::  Permission_TeamDrivePermissionDetailsItem
newPermission_TeamDrivePermissionDetailsItem =
  Permission_TeamDrivePermissionDetailsItem
    { inherited = Core.Nothing
    , inheritedFrom = Core.Nothing
    , role' = Core.Nothing
    , teamDrivePermissionType = Core.Nothing
    }

instance Core.FromJSON
           Permission_TeamDrivePermissionDetailsItem
         where
        parseJSON
          = Core.withObject
              "Permission_TeamDrivePermissionDetailsItem"
              (\ o ->
                 Permission_TeamDrivePermissionDetailsItem Core.<$>
                   (o Core..:? "inherited") Core.<*>
                     (o Core..:? "inheritedFrom")
                     Core.<*> (o Core..:? "role")
                     Core.<*> (o Core..:? "teamDrivePermissionType"))

instance Core.ToJSON
           Permission_TeamDrivePermissionDetailsItem
         where
        toJSON Permission_TeamDrivePermissionDetailsItem{..}
          = Core.object
              (Core.catMaybes
                 [("inherited" Core..=) Core.<$> inherited,
                  ("inheritedFrom" Core..=) Core.<$> inheritedFrom,
                  ("role" Core..=) Core.<$> role',
                  ("teamDrivePermissionType" Core..=) Core.<$>
                    teamDrivePermissionType])


-- | A list of permissions for a file.
--
-- /See:/ 'newPermissionList' smart constructor.
data PermissionList = PermissionList
    {
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#permissionList\"@.
      kind :: Core.Text
      -- | The page token for the next page of permissions. This field will be absent if the end of the permissions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of permissions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    , permissions :: (Core.Maybe [Permission])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PermissionList' with the minimum fields required to make a request.
newPermissionList 
    ::  PermissionList
newPermissionList =
  PermissionList
    { kind = "drive#permissionList"
    , nextPageToken = Core.Nothing
    , permissions = Core.Nothing
    }

instance Core.FromJSON PermissionList where
        parseJSON
          = Core.withObject "PermissionList"
              (\ o ->
                 PermissionList Core.<$>
                   (o Core..:? "kind" Core..!= "drive#permissionList")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "permissions"))

instance Core.ToJSON PermissionList where
        toJSON PermissionList{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("permissions" Core..=) Core.<$> permissions])


-- | A reply to a comment on a file. Some resource methods (such as @replies.update@) require a @replyId@. Use the @replies.list@ method to retrieve the ID for a reply.
--
-- /See:/ 'newReply' smart constructor.
data Reply = Reply
    {
      -- | The action the reply performed to the parent comment. Valid values are: * @resolve@ * @reopen@
      action :: (Core.Maybe Core.Text)
      -- | Output only. The author of the reply. The author\'s email address and permission ID will not be populated.
    , author :: (Core.Maybe User)
      -- | The plain text content of the reply. This field is used for setting the content, while @htmlContent@ should be displayed. This is required on creates if no @action@ is specified.
    , content :: (Core.Maybe Core.Text)
      -- | The time at which the reply was created (RFC 3339 date-time).
    , createdTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Whether the reply has been deleted. A deleted reply has no content.
    , deleted :: (Core.Maybe Core.Bool)
      -- | Output only. The content of the reply with HTML formatting.
    , htmlContent :: (Core.Maybe Core.Text)
      -- | Output only. The ID of the reply.
    , id :: (Core.Maybe Core.Text)
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string @\"drive#reply\"@.
    , kind :: Core.Text
      -- | The last time the reply was modified (RFC 3339 date-time).
    , modifiedTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Reply' with the minimum fields required to make a request.
newReply 
    ::  Reply
newReply =
  Reply
    { action = Core.Nothing
    , author = Core.Nothing
    , content = Core.Nothing
    , createdTime = Core.Nothing
    , deleted = Core.Nothing
    , htmlContent = Core.Nothing
    , id = Core.Nothing
    , kind = "drive#reply"
    , modifiedTime = Core.Nothing
    }

instance Core.FromJSON Reply where
        parseJSON
          = Core.withObject "Reply"
              (\ o ->
                 Reply Core.<$>
                   (o Core..:? "action") Core.<*> (o Core..:? "author")
                     Core.<*> (o Core..:? "content")
                     Core.<*> (o Core..:? "createdTime")
                     Core.<*> (o Core..:? "deleted")
                     Core.<*> (o Core..:? "htmlContent")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#reply")
                     Core.<*> (o Core..:? "modifiedTime"))

instance Core.ToJSON Reply where
        toJSON Reply{..}
          = Core.object
              (Core.catMaybes
                 [("action" Core..=) Core.<$> action,
                  ("author" Core..=) Core.<$> author,
                  ("content" Core..=) Core.<$> content,
                  ("createdTime" Core..=) Core.<$> createdTime,
                  ("deleted" Core..=) Core.<$> deleted,
                  ("htmlContent" Core..=) Core.<$> htmlContent,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("modifiedTime" Core..=) Core.<$> modifiedTime])


-- | A list of replies to a comment on a file.
--
-- /See:/ 'newReplyList' smart constructor.
data ReplyList = ReplyList
    {
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#replyList\"@.
      kind :: Core.Text
      -- | The page token for the next page of replies. This will be absent if the end of the replies list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of replies. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    , replies :: (Core.Maybe [Reply])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplyList' with the minimum fields required to make a request.
newReplyList 
    ::  ReplyList
newReplyList =
  ReplyList
    { kind = "drive#replyList"
    , nextPageToken = Core.Nothing
    , replies = Core.Nothing
    }

instance Core.FromJSON ReplyList where
        parseJSON
          = Core.withObject "ReplyList"
              (\ o ->
                 ReplyList Core.<$>
                   (o Core..:? "kind" Core..!= "drive#replyList")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "replies"))

instance Core.ToJSON ReplyList where
        toJSON ReplyList{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("replies" Core..=) Core.<$> replies])


-- | Request message for resolving an AccessProposal on a file.
--
-- /See:/ 'newResolveAccessProposalRequest' smart constructor.
data ResolveAccessProposalRequest = ResolveAccessProposalRequest
    {
      -- | Required. The action to take on the AccessProposal.
      action :: (Core.Maybe ResolveAccessProposalRequest_Action)
      -- | Optional. The roles the approver has allowed, if any. Note: This field is required for the @ACCEPT@ action.
    , role' :: (Core.Maybe [Core.Text])
      -- | Optional. Whether to send an email to the requester when the AccessProposal is denied or accepted.
    , sendNotification :: (Core.Maybe Core.Bool)
      -- | Optional. Indicates the view for this access proposal. This should only be set when the proposal belongs to a view. @published@ is the only supported value.
    , view :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResolveAccessProposalRequest' with the minimum fields required to make a request.
newResolveAccessProposalRequest 
    ::  ResolveAccessProposalRequest
newResolveAccessProposalRequest =
  ResolveAccessProposalRequest
    { action = Core.Nothing
    , role' = Core.Nothing
    , sendNotification = Core.Nothing
    , view = Core.Nothing
    }

instance Core.FromJSON ResolveAccessProposalRequest
         where
        parseJSON
          = Core.withObject "ResolveAccessProposalRequest"
              (\ o ->
                 ResolveAccessProposalRequest Core.<$>
                   (o Core..:? "action") Core.<*> (o Core..:? "role")
                     Core.<*> (o Core..:? "sendNotification")
                     Core.<*> (o Core..:? "view"))

instance Core.ToJSON ResolveAccessProposalRequest
         where
        toJSON ResolveAccessProposalRequest{..}
          = Core.object
              (Core.catMaybes
                 [("action" Core..=) Core.<$> action,
                  ("role" Core..=) Core.<$> role',
                  ("sendNotification" Core..=) Core.<$>
                    sendNotification,
                  ("view" Core..=) Core.<$> view])


-- | The metadata for a revision to a file. Some resource methods (such as @revisions.update@) require a @revisionId@. Use the @revisions.list@ method to retrieve the ID for a revision.
--
-- /See:/ 'newRevision' smart constructor.
data Revision = Revision
    {
      -- | Output only. Links for exporting Docs Editors files to specific formats.
      exportLinks :: (Core.Maybe Revision_ExportLinks)
      -- | Output only. The ID of the revision.
    , id :: (Core.Maybe Core.Text)
      -- | Whether to keep this revision forever, even if it is no longer the head revision. If not set, the revision will be automatically purged 30 days after newer content is uploaded. This can be set on a maximum of 200 revisions for a file. This field is only applicable to files with binary content in Drive.
    , keepForever :: (Core.Maybe Core.Bool)
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string @\"drive#revision\"@.
    , kind :: Core.Text
      -- | Output only. The last user to modify this revision. This field is only populated when the last modification was performed by a signed-in user.
    , lastModifyingUser :: (Core.Maybe User)
      -- | Output only. The MD5 checksum of the revision\'s content. This is only applicable to files with binary content in Drive.
    , md5Checksum :: (Core.Maybe Core.Text)
      -- | Output only. The MIME type of the revision.
    , mimeType :: (Core.Maybe Core.Text)
      -- | The last time the revision was modified (RFC 3339 date-time).
    , modifiedTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The original filename used to create this revision. This is only applicable to files with binary content in Drive.
    , originalFilename :: (Core.Maybe Core.Text)
      -- | Whether subsequent revisions will be automatically republished. This is only applicable to Docs Editors files.
    , publishAuto :: (Core.Maybe Core.Bool)
      -- | Whether this revision is published. This is only applicable to Docs Editors files.
    , published :: (Core.Maybe Core.Bool)
      -- | Output only. A link to the published revision. This is only populated for Google Sites files.
    , publishedLink :: (Core.Maybe Core.Text)
      -- | Whether this revision is published outside the domain. This is only applicable to Docs Editors files.
    , publishedOutsideDomain :: (Core.Maybe Core.Bool)
      -- | Output only. The size of the revision\'s content in bytes. This is only applicable to files with binary content in Drive.
    , size :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Revision' with the minimum fields required to make a request.
newRevision 
    ::  Revision
newRevision =
  Revision
    { exportLinks = Core.Nothing
    , id = Core.Nothing
    , keepForever = Core.Nothing
    , kind = "drive#revision"
    , lastModifyingUser = Core.Nothing
    , md5Checksum = Core.Nothing
    , mimeType = Core.Nothing
    , modifiedTime = Core.Nothing
    , originalFilename = Core.Nothing
    , publishAuto = Core.Nothing
    , published = Core.Nothing
    , publishedLink = Core.Nothing
    , publishedOutsideDomain = Core.Nothing
    , size = Core.Nothing
    }

instance Core.FromJSON Revision where
        parseJSON
          = Core.withObject "Revision"
              (\ o ->
                 Revision Core.<$>
                   (o Core..:? "exportLinks") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "keepForever")
                     Core.<*>
                     (o Core..:? "kind" Core..!= "drive#revision")
                     Core.<*> (o Core..:? "lastModifyingUser")
                     Core.<*> (o Core..:? "md5Checksum")
                     Core.<*> (o Core..:? "mimeType")
                     Core.<*> (o Core..:? "modifiedTime")
                     Core.<*> (o Core..:? "originalFilename")
                     Core.<*> (o Core..:? "publishAuto")
                     Core.<*> (o Core..:? "published")
                     Core.<*> (o Core..:? "publishedLink")
                     Core.<*> (o Core..:? "publishedOutsideDomain")
                     Core.<*>
                     (o Core..:? "size" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON Revision where
        toJSON Revision{..}
          = Core.object
              (Core.catMaybes
                 [("exportLinks" Core..=) Core.<$> exportLinks,
                  ("id" Core..=) Core.<$> id,
                  ("keepForever" Core..=) Core.<$> keepForever,
                  Core.Just ("kind" Core..= kind),
                  ("lastModifyingUser" Core..=) Core.<$>
                    lastModifyingUser,
                  ("md5Checksum" Core..=) Core.<$> md5Checksum,
                  ("mimeType" Core..=) Core.<$> mimeType,
                  ("modifiedTime" Core..=) Core.<$> modifiedTime,
                  ("originalFilename" Core..=) Core.<$>
                    originalFilename,
                  ("publishAuto" Core..=) Core.<$> publishAuto,
                  ("published" Core..=) Core.<$> published,
                  ("publishedLink" Core..=) Core.<$> publishedLink,
                  ("publishedOutsideDomain" Core..=) Core.<$>
                    publishedOutsideDomain,
                  ("size" Core..=) Core.. Core.AsText Core.<$> size])


-- | Output only. Links for exporting Docs Editors files to specific formats.
--
-- /See:/ 'newRevision_ExportLinks' smart constructor.
newtype Revision_ExportLinks = Revision_ExportLinks
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Revision_ExportLinks' with the minimum fields required to make a request.
newRevision_ExportLinks 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Revision_ExportLinks
newRevision_ExportLinks additional =
  Revision_ExportLinks {additional = additional}

instance Core.FromJSON Revision_ExportLinks where
        parseJSON
          = Core.withObject "Revision_ExportLinks"
              (\ o ->
                 Revision_ExportLinks Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Revision_ExportLinks where
        toJSON Revision_ExportLinks{..}
          = Core.toJSON additional


-- | A list of revisions of a file.
--
-- /See:/ 'newRevisionList' smart constructor.
data RevisionList = RevisionList
    {
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#revisionList\"@.
      kind :: Core.Text
      -- | The page token for the next page of revisions. This will be absent if the end of the revisions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of revisions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    , revisions :: (Core.Maybe [Revision])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevisionList' with the minimum fields required to make a request.
newRevisionList 
    ::  RevisionList
newRevisionList =
  RevisionList
    { kind = "drive#revisionList"
    , nextPageToken = Core.Nothing
    , revisions = Core.Nothing
    }

instance Core.FromJSON RevisionList where
        parseJSON
          = Core.withObject "RevisionList"
              (\ o ->
                 RevisionList Core.<$>
                   (o Core..:? "kind" Core..!= "drive#revisionList")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "revisions"))

instance Core.ToJSON RevisionList where
        toJSON RevisionList{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("revisions" Core..=) Core.<$> revisions])


--
-- /See:/ 'newStartPageToken' smart constructor.
data StartPageToken = StartPageToken
    {
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#startPageToken\"@.
      kind :: Core.Text
      -- | The starting page token for listing future changes. The page token doesn\'t expire.
    , startPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartPageToken' with the minimum fields required to make a request.
newStartPageToken 
    ::  StartPageToken
newStartPageToken =
  StartPageToken {kind = "drive#startPageToken", startPageToken = Core.Nothing}

instance Core.FromJSON StartPageToken where
        parseJSON
          = Core.withObject "StartPageToken"
              (\ o ->
                 StartPageToken Core.<$>
                   (o Core..:? "kind" Core..!= "drive#startPageToken")
                     Core.<*> (o Core..:? "startPageToken"))

instance Core.ToJSON StartPageToken where
        toJSON StartPageToken{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("kind" Core..= kind),
                  ("startPageToken" Core..=) Core.<$> startPageToken])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | Deprecated: use the drive collection instead.
--
-- /See:/ 'newTeamDrive' smart constructor.
data TeamDrive = TeamDrive
    {
      -- | An image file and cropping parameters from which a background image for this Team Drive is set. This is a write only field; it can only be set on @drive.teamdrives.update@ requests that don\'t set @themeId@. When specified, all fields of the @backgroundImageFile@ must be set.
      backgroundImageFile :: (Core.Maybe TeamDrive_BackgroundImageFile)
      -- | A short-lived link to this Team Drive\'s background image.
    , backgroundImageLink :: (Core.Maybe Core.Text)
      -- | Capabilities the current user has on this Team Drive.
    , capabilities :: (Core.Maybe TeamDrive_Capabilities)
      -- | The color of this Team Drive as an RGB hex string. It can only be set on a @drive.teamdrives.update@ request that does not set @themeId@.
    , colorRgb :: (Core.Maybe Core.Text)
      -- | The time at which the Team Drive was created (RFC 3339 date-time).
    , createdTime :: (Core.Maybe Core.DateTime)
      -- | The ID of this Team Drive which is also the ID of the top level folder of this Team Drive.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#teamDrive\"@.
    , kind :: Core.Text
      -- | The name of this Team Drive.
    , name :: (Core.Maybe Core.Text)
      -- | The organizational unit of this shared drive. This field is only populated on @drives.list@ responses when the @useDomainAdminAccess@ parameter is set to @true@.
    , orgUnitId :: (Core.Maybe Core.Text)
      -- | A set of restrictions that apply to this Team Drive or items inside this Team Drive.
    , restrictions :: (Core.Maybe TeamDrive_Restrictions)
      -- | The ID of the theme from which the background image and color will be set. The set of possible @teamDriveThemes@ can be retrieved from a @drive.about.get@ response. When not specified on a @drive.teamdrives.create@ request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don\'t set @colorRgb@ or @backgroundImageFile@.
    , themeId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive' with the minimum fields required to make a request.
newTeamDrive 
    ::  TeamDrive
newTeamDrive =
  TeamDrive
    { backgroundImageFile = Core.Nothing
    , backgroundImageLink = Core.Nothing
    , capabilities = Core.Nothing
    , colorRgb = Core.Nothing
    , createdTime = Core.Nothing
    , id = Core.Nothing
    , kind = "drive#teamDrive"
    , name = Core.Nothing
    , orgUnitId = Core.Nothing
    , restrictions = Core.Nothing
    , themeId = Core.Nothing
    }

instance Core.FromJSON TeamDrive where
        parseJSON
          = Core.withObject "TeamDrive"
              (\ o ->
                 TeamDrive Core.<$>
                   (o Core..:? "backgroundImageFile") Core.<*>
                     (o Core..:? "backgroundImageLink")
                     Core.<*> (o Core..:? "capabilities")
                     Core.<*> (o Core..:? "colorRgb")
                     Core.<*> (o Core..:? "createdTime")
                     Core.<*> (o Core..:? "id")
                     Core.<*>
                     (o Core..:? "kind" Core..!= "drive#teamDrive")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "orgUnitId")
                     Core.<*> (o Core..:? "restrictions")
                     Core.<*> (o Core..:? "themeId"))

instance Core.ToJSON TeamDrive where
        toJSON TeamDrive{..}
          = Core.object
              (Core.catMaybes
                 [("backgroundImageFile" Core..=) Core.<$>
                    backgroundImageFile,
                  ("backgroundImageLink" Core..=) Core.<$>
                    backgroundImageLink,
                  ("capabilities" Core..=) Core.<$> capabilities,
                  ("colorRgb" Core..=) Core.<$> colorRgb,
                  ("createdTime" Core..=) Core.<$> createdTime,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("name" Core..=) Core.<$> name,
                  ("orgUnitId" Core..=) Core.<$> orgUnitId,
                  ("restrictions" Core..=) Core.<$> restrictions,
                  ("themeId" Core..=) Core.<$> themeId])


-- | An image file and cropping parameters from which a background image for this Team Drive is set. This is a write only field; it can only be set on @drive.teamdrives.update@ requests that don\'t set @themeId@. When specified, all fields of the @backgroundImageFile@ must be set.
--
-- /See:/ 'newTeamDrive_BackgroundImageFile' smart constructor.
data TeamDrive_BackgroundImageFile = TeamDrive_BackgroundImageFile
    {
      -- | The ID of an image file in Drive to use for the background image.
      id :: (Core.Maybe Core.Text)
      -- | The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.
    , width :: (Core.Maybe Core.Double)
      -- | The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.
    , xCoordinate :: (Core.Maybe Core.Double)
      -- | The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.
    , yCoordinate :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive_BackgroundImageFile' with the minimum fields required to make a request.
newTeamDrive_BackgroundImageFile 
    ::  TeamDrive_BackgroundImageFile
newTeamDrive_BackgroundImageFile =
  TeamDrive_BackgroundImageFile
    { id = Core.Nothing
    , width = Core.Nothing
    , xCoordinate = Core.Nothing
    , yCoordinate = Core.Nothing
    }

instance Core.FromJSON TeamDrive_BackgroundImageFile
         where
        parseJSON
          = Core.withObject "TeamDrive_BackgroundImageFile"
              (\ o ->
                 TeamDrive_BackgroundImageFile Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "width")
                     Core.<*> (o Core..:? "xCoordinate")
                     Core.<*> (o Core..:? "yCoordinate"))

instance Core.ToJSON TeamDrive_BackgroundImageFile
         where
        toJSON TeamDrive_BackgroundImageFile{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("width" Core..=) Core.<$> width,
                  ("xCoordinate" Core..=) Core.<$> xCoordinate,
                  ("yCoordinate" Core..=) Core.<$> yCoordinate])


-- | Capabilities the current user has on this Team Drive.
--
-- /See:/ 'newTeamDrive_Capabilities' smart constructor.
data TeamDrive_Capabilities = TeamDrive_Capabilities
    {
      -- | Whether the current user can add children to folders in this Team Drive.
      canAddChildren :: (Core.Maybe Core.Bool)
      -- | Whether the current user can change the @copyRequiresWriterPermission@ restriction of this Team Drive.
    , canChangeCopyRequiresWriterPermissionRestriction :: (Core.Maybe Core.Bool)
      -- | Whether the current user can change the @domainUsersOnly@ restriction of this Team Drive.
    , canChangeDomainUsersOnlyRestriction :: (Core.Maybe Core.Bool)
      -- | Whether the current user can change the @sharingFoldersRequiresOrganizerPermission@ restriction of this Team Drive.
    , canChangeSharingFoldersRequiresOrganizerPermissionRestriction :: (Core.Maybe Core.Bool)
      -- | Whether the current user can change the background of this Team Drive.
    , canChangeTeamDriveBackground :: (Core.Maybe Core.Bool)
      -- | Whether the current user can change the @teamMembersOnly@ restriction of this Team Drive.
    , canChangeTeamMembersOnlyRestriction :: (Core.Maybe Core.Bool)
      -- | Whether the current user can comment on files in this Team Drive.
    , canComment :: (Core.Maybe Core.Bool)
      -- | Whether the current user can copy files in this Team Drive.
    , canCopy :: (Core.Maybe Core.Bool)
      -- | Whether the current user can delete children from folders in this Team Drive.
    , canDeleteChildren :: (Core.Maybe Core.Bool)
      -- | Whether the current user can delete this Team Drive. Attempting to delete the Team Drive may still fail if there are untrashed items inside the Team Drive.
    , canDeleteTeamDrive :: (Core.Maybe Core.Bool)
      -- | Whether the current user can download files in this Team Drive.
    , canDownload :: (Core.Maybe Core.Bool)
      -- | Whether the current user can edit files in this Team Drive
    , canEdit :: (Core.Maybe Core.Bool)
      -- | Whether the current user can list the children of folders in this Team Drive.
    , canListChildren :: (Core.Maybe Core.Bool)
      -- | Whether the current user can add members to this Team Drive or remove them or change their role.
    , canManageMembers :: (Core.Maybe Core.Bool)
      -- | Whether the current user can read the revisions resource of files in this Team Drive.
    , canReadRevisions :: (Core.Maybe Core.Bool)
      -- | Deprecated: Use @canDeleteChildren@ or @canTrashChildren@ instead.
    , canRemoveChildren :: (Core.Maybe Core.Bool)
      -- | Whether the current user can rename files or folders in this Team Drive.
    , canRename :: (Core.Maybe Core.Bool)
      -- | Whether the current user can rename this Team Drive.
    , canRenameTeamDrive :: (Core.Maybe Core.Bool)
      -- | Whether the current user can reset the Team Drive restrictions to defaults.
    , canResetTeamDriveRestrictions :: (Core.Maybe Core.Bool)
      -- | Whether the current user can share files or folders in this Team Drive.
    , canShare :: (Core.Maybe Core.Bool)
      -- | Whether the current user can trash children from folders in this Team Drive.
    , canTrashChildren :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive_Capabilities' with the minimum fields required to make a request.
newTeamDrive_Capabilities 
    ::  TeamDrive_Capabilities
newTeamDrive_Capabilities =
  TeamDrive_Capabilities
    { canAddChildren = Core.Nothing
    , canChangeCopyRequiresWriterPermissionRestriction = Core.Nothing
    , canChangeDomainUsersOnlyRestriction = Core.Nothing
    , canChangeSharingFoldersRequiresOrganizerPermissionRestriction =
        Core.Nothing
    , canChangeTeamDriveBackground = Core.Nothing
    , canChangeTeamMembersOnlyRestriction = Core.Nothing
    , canComment = Core.Nothing
    , canCopy = Core.Nothing
    , canDeleteChildren = Core.Nothing
    , canDeleteTeamDrive = Core.Nothing
    , canDownload = Core.Nothing
    , canEdit = Core.Nothing
    , canListChildren = Core.Nothing
    , canManageMembers = Core.Nothing
    , canReadRevisions = Core.Nothing
    , canRemoveChildren = Core.Nothing
    , canRename = Core.Nothing
    , canRenameTeamDrive = Core.Nothing
    , canResetTeamDriveRestrictions = Core.Nothing
    , canShare = Core.Nothing
    , canTrashChildren = Core.Nothing
    }

instance Core.FromJSON TeamDrive_Capabilities where
        parseJSON
          = Core.withObject "TeamDrive_Capabilities"
              (\ o ->
                 TeamDrive_Capabilities Core.<$>
                   (o Core..:? "canAddChildren") Core.<*>
                     (o Core..:?
                        "canChangeCopyRequiresWriterPermissionRestriction")
                     Core.<*>
                     (o Core..:? "canChangeDomainUsersOnlyRestriction")
                     Core.<*>
                     (o Core..:?
                        "canChangeSharingFoldersRequiresOrganizerPermissionRestriction")
                     Core.<*> (o Core..:? "canChangeTeamDriveBackground")
                     Core.<*>
                     (o Core..:? "canChangeTeamMembersOnlyRestriction")
                     Core.<*> (o Core..:? "canComment")
                     Core.<*> (o Core..:? "canCopy")
                     Core.<*> (o Core..:? "canDeleteChildren")
                     Core.<*> (o Core..:? "canDeleteTeamDrive")
                     Core.<*> (o Core..:? "canDownload")
                     Core.<*> (o Core..:? "canEdit")
                     Core.<*> (o Core..:? "canListChildren")
                     Core.<*> (o Core..:? "canManageMembers")
                     Core.<*> (o Core..:? "canReadRevisions")
                     Core.<*> (o Core..:? "canRemoveChildren")
                     Core.<*> (o Core..:? "canRename")
                     Core.<*> (o Core..:? "canRenameTeamDrive")
                     Core.<*> (o Core..:? "canResetTeamDriveRestrictions")
                     Core.<*> (o Core..:? "canShare")
                     Core.<*> (o Core..:? "canTrashChildren"))

instance Core.ToJSON TeamDrive_Capabilities where
        toJSON TeamDrive_Capabilities{..}
          = Core.object
              (Core.catMaybes
                 [("canAddChildren" Core..=) Core.<$> canAddChildren,
                  ("canChangeCopyRequiresWriterPermissionRestriction"
                     Core..=)
                    Core.<$>
                    canChangeCopyRequiresWriterPermissionRestriction,
                  ("canChangeDomainUsersOnlyRestriction" Core..=)
                    Core.<$> canChangeDomainUsersOnlyRestriction,
                  ("canChangeSharingFoldersRequiresOrganizerPermissionRestriction"
                     Core..=)
                    Core.<$>
                    canChangeSharingFoldersRequiresOrganizerPermissionRestriction,
                  ("canChangeTeamDriveBackground" Core..=) Core.<$>
                    canChangeTeamDriveBackground,
                  ("canChangeTeamMembersOnlyRestriction" Core..=)
                    Core.<$> canChangeTeamMembersOnlyRestriction,
                  ("canComment" Core..=) Core.<$> canComment,
                  ("canCopy" Core..=) Core.<$> canCopy,
                  ("canDeleteChildren" Core..=) Core.<$>
                    canDeleteChildren,
                  ("canDeleteTeamDrive" Core..=) Core.<$>
                    canDeleteTeamDrive,
                  ("canDownload" Core..=) Core.<$> canDownload,
                  ("canEdit" Core..=) Core.<$> canEdit,
                  ("canListChildren" Core..=) Core.<$> canListChildren,
                  ("canManageMembers" Core..=) Core.<$>
                    canManageMembers,
                  ("canReadRevisions" Core..=) Core.<$>
                    canReadRevisions,
                  ("canRemoveChildren" Core..=) Core.<$>
                    canRemoveChildren,
                  ("canRename" Core..=) Core.<$> canRename,
                  ("canRenameTeamDrive" Core..=) Core.<$>
                    canRenameTeamDrive,
                  ("canResetTeamDriveRestrictions" Core..=) Core.<$>
                    canResetTeamDriveRestrictions,
                  ("canShare" Core..=) Core.<$> canShare,
                  ("canTrashChildren" Core..=) Core.<$>
                    canTrashChildren])


-- | A set of restrictions that apply to this Team Drive or items inside this Team Drive.
--
-- /See:/ 'newTeamDrive_Restrictions' smart constructor.
data TeamDrive_Restrictions = TeamDrive_Restrictions
    {
      -- | Whether administrative privileges on this Team Drive are required to modify restrictions.
      adminManagedRestrictions :: (Core.Maybe Core.Bool)
      -- | Whether the options to copy, print, or download files inside this Team Drive, should be disabled for readers and commenters. When this restriction is set to @true@, it will override the similarly named field to @true@ for any file inside this Team Drive.
    , copyRequiresWriterPermission :: (Core.Maybe Core.Bool)
      -- | Whether access to this Team Drive and items inside this Team Drive is restricted to users of the domain to which this Team Drive belongs. This restriction may be overridden by other sharing policies controlled outside of this Team Drive.
    , domainUsersOnly :: (Core.Maybe Core.Bool)
      -- | If true, only users with the organizer role can share folders. If false, users with either the organizer role or the file organizer role can share folders.
    , sharingFoldersRequiresOrganizerPermission :: (Core.Maybe Core.Bool)
      -- | Whether access to items inside this Team Drive is restricted to members of this Team Drive.
    , teamMembersOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive_Restrictions' with the minimum fields required to make a request.
newTeamDrive_Restrictions 
    ::  TeamDrive_Restrictions
newTeamDrive_Restrictions =
  TeamDrive_Restrictions
    { adminManagedRestrictions = Core.Nothing
    , copyRequiresWriterPermission = Core.Nothing
    , domainUsersOnly = Core.Nothing
    , sharingFoldersRequiresOrganizerPermission = Core.Nothing
    , teamMembersOnly = Core.Nothing
    }

instance Core.FromJSON TeamDrive_Restrictions where
        parseJSON
          = Core.withObject "TeamDrive_Restrictions"
              (\ o ->
                 TeamDrive_Restrictions Core.<$>
                   (o Core..:? "adminManagedRestrictions") Core.<*>
                     (o Core..:? "copyRequiresWriterPermission")
                     Core.<*> (o Core..:? "domainUsersOnly")
                     Core.<*>
                     (o Core..:?
                        "sharingFoldersRequiresOrganizerPermission")
                     Core.<*> (o Core..:? "teamMembersOnly"))

instance Core.ToJSON TeamDrive_Restrictions where
        toJSON TeamDrive_Restrictions{..}
          = Core.object
              (Core.catMaybes
                 [("adminManagedRestrictions" Core..=) Core.<$>
                    adminManagedRestrictions,
                  ("copyRequiresWriterPermission" Core..=) Core.<$>
                    copyRequiresWriterPermission,
                  ("domainUsersOnly" Core..=) Core.<$> domainUsersOnly,
                  ("sharingFoldersRequiresOrganizerPermission" Core..=)
                    Core.<$> sharingFoldersRequiresOrganizerPermission,
                  ("teamMembersOnly" Core..=) Core.<$>
                    teamMembersOnly])


-- | A list of Team Drives.
--
-- /See:/ 'newTeamDriveList' smart constructor.
data TeamDriveList = TeamDriveList
    {
      -- | Identifies what kind of resource this is. Value: the fixed string @\"drive#teamDriveList\"@.
      kind :: Core.Text
      -- | The page token for the next page of Team Drives. This will be absent if the end of the Team Drives list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of Team Drives. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    , teamDrives :: (Core.Maybe [TeamDrive])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDriveList' with the minimum fields required to make a request.
newTeamDriveList 
    ::  TeamDriveList
newTeamDriveList =
  TeamDriveList
    { kind = "drive#teamDriveList"
    , nextPageToken = Core.Nothing
    , teamDrives = Core.Nothing
    }

instance Core.FromJSON TeamDriveList where
        parseJSON
          = Core.withObject "TeamDriveList"
              (\ o ->
                 TeamDriveList Core.<$>
                   (o Core..:? "kind" Core..!= "drive#teamDriveList")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "teamDrives"))

instance Core.ToJSON TeamDriveList where
        toJSON TeamDriveList{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("teamDrives" Core..=) Core.<$> teamDrives])


-- | Information about a Drive user.
--
-- /See:/ 'newUser' smart constructor.
data User = User
    {
      -- | Output only. A plain text displayable name for this user.
      displayName :: (Core.Maybe Core.Text)
      -- | Output only. The email address of the user. This may not be present in certain contexts if the user has not made their email address visible to the requester.
    , emailAddress :: (Core.Maybe Core.Text)
      -- | Output only. Identifies what kind of resource this is. Value: the fixed string @\"drive#user\"@.
    , kind :: Core.Text
      -- | Output only. Whether this user is the requesting user.
    , me :: (Core.Maybe Core.Bool)
      -- | Output only. The user\'s ID as visible in Permission resources.
    , permissionId :: (Core.Maybe Core.Text)
      -- | Output only. A link to the user\'s profile photo, if available.
    , photoLink :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser 
    ::  User
newUser =
  User
    { displayName = Core.Nothing
    , emailAddress = Core.Nothing
    , kind = "drive#user"
    , me = Core.Nothing
    , permissionId = Core.Nothing
    , photoLink = Core.Nothing
    }

instance Core.FromJSON User where
        parseJSON
          = Core.withObject "User"
              (\ o ->
                 User Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "emailAddress")
                     Core.<*> (o Core..:? "kind" Core..!= "drive#user")
                     Core.<*> (o Core..:? "me")
                     Core.<*> (o Core..:? "permissionId")
                     Core.<*> (o Core..:? "photoLink"))

instance Core.ToJSON User where
        toJSON User{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("emailAddress" Core..=) Core.<$> emailAddress,
                  Core.Just ("kind" Core..= kind),
                  ("me" Core..=) Core.<$> me,
                  ("permissionId" Core..=) Core.<$> permissionId,
                  ("photoLink" Core..=) Core.<$> photoLink])


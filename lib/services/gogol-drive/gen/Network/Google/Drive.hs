{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Drive
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages files in Drive including uploading, downloading, searching,
-- detecting changes, and updating sharing permissions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference>
module Network.Google.Drive
    (
    -- * Service Configuration
      driveService

    -- * OAuth Scopes
    , driveMetadataReadOnlyScope
    , drivePhotosReadOnlyScope
    , driveAppDataScope
    , driveReadOnlyScope
    , driveScope
    , driveFileScope
    , driveMetadataScope
    , driveScriptsScope

    -- * API Declaration
    , DriveAPI

    -- * Resources

    -- ** drive.about.get
    , module Network.Google.Resource.Drive.About.Get

    -- ** drive.changes.getStartPageToken
    , module Network.Google.Resource.Drive.Changes.GetStartPageToken

    -- ** drive.changes.list
    , module Network.Google.Resource.Drive.Changes.List

    -- ** drive.changes.watch
    , module Network.Google.Resource.Drive.Changes.Watch

    -- ** drive.channels.stop
    , module Network.Google.Resource.Drive.Channels.Stop

    -- ** drive.comments.create
    , module Network.Google.Resource.Drive.Comments.Create

    -- ** drive.comments.delete
    , module Network.Google.Resource.Drive.Comments.Delete

    -- ** drive.comments.get
    , module Network.Google.Resource.Drive.Comments.Get

    -- ** drive.comments.list
    , module Network.Google.Resource.Drive.Comments.List

    -- ** drive.comments.update
    , module Network.Google.Resource.Drive.Comments.Update

    -- ** drive.drives.create
    , module Network.Google.Resource.Drive.Drives.Create

    -- ** drive.drives.delete
    , module Network.Google.Resource.Drive.Drives.Delete

    -- ** drive.drives.get
    , module Network.Google.Resource.Drive.Drives.Get

    -- ** drive.drives.hide
    , module Network.Google.Resource.Drive.Drives.Hide

    -- ** drive.drives.list
    , module Network.Google.Resource.Drive.Drives.List

    -- ** drive.drives.unhide
    , module Network.Google.Resource.Drive.Drives.Unhide

    -- ** drive.drives.update
    , module Network.Google.Resource.Drive.Drives.Update

    -- ** drive.files.copy
    , module Network.Google.Resource.Drive.Files.Copy

    -- ** drive.files.create
    , module Network.Google.Resource.Drive.Files.Create

    -- ** drive.files.delete
    , module Network.Google.Resource.Drive.Files.Delete

    -- ** drive.files.emptyTrash
    , module Network.Google.Resource.Drive.Files.EmptyTrash

    -- ** drive.files.export
    , module Network.Google.Resource.Drive.Files.Export

    -- ** drive.files.generateIds
    , module Network.Google.Resource.Drive.Files.GenerateIds

    -- ** drive.files.get
    , module Network.Google.Resource.Drive.Files.Get

    -- ** drive.files.list
    , module Network.Google.Resource.Drive.Files.List

    -- ** drive.files.update
    , module Network.Google.Resource.Drive.Files.Update

    -- ** drive.files.watch
    , module Network.Google.Resource.Drive.Files.Watch

    -- ** drive.permissions.create
    , module Network.Google.Resource.Drive.Permissions.Create

    -- ** drive.permissions.delete
    , module Network.Google.Resource.Drive.Permissions.Delete

    -- ** drive.permissions.get
    , module Network.Google.Resource.Drive.Permissions.Get

    -- ** drive.permissions.list
    , module Network.Google.Resource.Drive.Permissions.List

    -- ** drive.permissions.update
    , module Network.Google.Resource.Drive.Permissions.Update

    -- ** drive.replies.create
    , module Network.Google.Resource.Drive.Replies.Create

    -- ** drive.replies.delete
    , module Network.Google.Resource.Drive.Replies.Delete

    -- ** drive.replies.get
    , module Network.Google.Resource.Drive.Replies.Get

    -- ** drive.replies.list
    , module Network.Google.Resource.Drive.Replies.List

    -- ** drive.replies.update
    , module Network.Google.Resource.Drive.Replies.Update

    -- ** drive.revisions.delete
    , module Network.Google.Resource.Drive.Revisions.Delete

    -- ** drive.revisions.get
    , module Network.Google.Resource.Drive.Revisions.Get

    -- ** drive.revisions.list
    , module Network.Google.Resource.Drive.Revisions.List

    -- ** drive.revisions.update
    , module Network.Google.Resource.Drive.Revisions.Update

    -- ** drive.teamdrives.create
    , module Network.Google.Resource.Drive.Teamdrives.Create

    -- ** drive.teamdrives.delete
    , module Network.Google.Resource.Drive.Teamdrives.Delete

    -- ** drive.teamdrives.get
    , module Network.Google.Resource.Drive.Teamdrives.Get

    -- ** drive.teamdrives.list
    , module Network.Google.Resource.Drive.Teamdrives.List

    -- ** drive.teamdrives.update
    , module Network.Google.Resource.Drive.Teamdrives.Update

    -- * Types

    -- ** FileList
    , FileList
    , fileList
    , flNextPageToken
    , flIncompleteSearch
    , flKind
    , flFiles

    -- ** FileShortcutDetails
    , FileShortcutDetails
    , fileShortcutDetails
    , fsdTargetId
    , fsdTargetResourceKey
    , fsdTargetMimeType

    -- ** Drive
    , Drive
    , drive
    , dThemeId
    , dBackgRoundImageFile
    , dColorRgb
    , dCreatedTime
    , dKind
    , dBackgRoundImageLink
    , dName
    , dRestrictions
    , dHidden
    , dId
    , dCapabilities

    -- ** TeamDriveCapabilities
    , TeamDriveCapabilities
    , teamDriveCapabilities
    , tdcCanRename
    , tdcCanChangeTeamMembersOnlyRestriction
    , tdcCanComment
    , tdcCanRenameTeamDrive
    , tdcCanChangeTeamDriveBackgRound
    , tdcCanDownload
    , tdcCanChangeDomainUsersOnlyRestriction
    , tdcCanTrashChildren
    , tdcCanAddChildren
    , tdcCanRemoveChildren
    , tdcCanChangeCopyRequiresWriterPermissionRestriction
    , tdcCanDeleteTeamDrive
    , tdcCanListChildren
    , tdcCanEdit
    , tdcCanManageMembers
    , tdcCanReadRevisions
    , tdcCanDeleteChildren
    , tdcCanCopy
    , tdcCanShare

    -- ** PermissionPermissionDetailsItem
    , PermissionPermissionDetailsItem
    , permissionPermissionDetailsItem
    , ppdiInherited
    , ppdiPermissionType
    , ppdiRole
    , ppdiInheritedFrom

    -- ** FilesListCorpus
    , FilesListCorpus (..)

    -- ** CommentQuotedFileContent
    , CommentQuotedFileContent
    , commentQuotedFileContent
    , cqfcValue
    , cqfcMimeType

    -- ** DriveCapabilities
    , DriveCapabilities
    , driveCapabilities
    , dcCanRename
    , dcCanComment
    , dcCanChangeDriveBackgRound
    , dcCanRenameDrive
    , dcCanDownload
    , dcCanChangeDomainUsersOnlyRestriction
    , dcCanTrashChildren
    , dcCanAddChildren
    , dcCanChangeCopyRequiresWriterPermissionRestriction
    , dcCanChangeDriveMembersOnlyRestriction
    , dcCanListChildren
    , dcCanEdit
    , dcCanManageMembers
    , dcCanReadRevisions
    , dcCanDeleteChildren
    , dcCanCopy
    , dcCanDeleteDrive
    , dcCanShare

    -- ** AboutStorageQuota
    , AboutStorageQuota
    , aboutStorageQuota
    , asqUsageInDriveTrash
    , asqLimit
    , asqUsage
    , asqUsageInDrive

    -- ** Reply
    , Reply
    , reply
    , rHTMLContent
    , rModifiedTime
    , rCreatedTime
    , rKind
    , rAction
    , rContent
    , rAuthor
    , rId
    , rDeleted

    -- ** AboutImportFormats
    , AboutImportFormats
    , aboutImportFormats
    , aifAddtional

    -- ** FileCapabilities
    , FileCapabilities
    , fileCapabilities
    , fcCanRename
    , fcCanComment
    , fcCanMoveChildrenWithinDrive
    , fcCanMoveChildrenWithinTeamDrive
    , fcCanModifyContent
    , fcCanDelete
    , fcCanMoveItemIntoTeamDrive
    , fcCanChangeSecurityUpdateEnabled
    , fcCanDownload
    , fcCanTrash
    , fcCanUntrash
    , fcCanTrashChildren
    , fcCanMoveItemOutOfDrive
    , fcCanAddChildren
    , fcCanAddMyDriveParent
    , fcCanRemoveChildren
    , fcCanMoveTeamDriveItem
    , fcCanMoveItemWithinTeamDrive
    , fcCanReadTeamDrive
    , fcCanReadDrive
    , fcCanAddFolderFromAnotherDrive
    , fcCanChangeCopyRequiresWriterPermission
    , fcCanMoveChildrenOutOfDrive
    , fcCanListChildren
    , fcCanMoveChildrenOutOfTeamDrive
    , fcCanEdit
    , fcCanChangeViewersCanCopyContent
    , fcCanReadRevisions
    , fcCanDeleteChildren
    , fcCanMoveItemOutOfTeamDrive
    , fcCanRemoveMyDriveParent
    , fcCanModifyContentRestriction
    , fcCanCopy
    , fcCanMoveItemWithinDrive
    , fcCanShare

    -- ** ReplyList
    , ReplyList
    , replyList
    , rlNextPageToken
    , rlKind
    , rlReplies

    -- ** DriveBackgRoundImageFile
    , DriveBackgRoundImageFile
    , driveBackgRoundImageFile
    , dbrifXCoordinate
    , dbrifYCoordinate
    , dbrifWidth
    , dbrifId

    -- ** FileContentHintsThumbnail
    , FileContentHintsThumbnail
    , fileContentHintsThumbnail
    , fchtImage
    , fchtMimeType

    -- ** TeamDriveList
    , TeamDriveList
    , teamDriveList
    , tdlNextPageToken
    , tdlTeamDrives
    , tdlKind

    -- ** Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- ** AboutTeamDriveThemesItem
    , AboutTeamDriveThemesItem
    , aboutTeamDriveThemesItem
    , atdtiColorRgb
    , atdtiBackgRoundImageLink
    , atdtiId

    -- ** TeamDriveRestrictions
    , TeamDriveRestrictions
    , teamDriveRestrictions
    , tdrTeamMembersOnly
    , tdrAdminManagedRestrictions
    , tdrCopyRequiresWriterPermission
    , tdrDomainUsersOnly

    -- ** TeamDriveBackgRoundImageFile
    , TeamDriveBackgRoundImageFile
    , teamDriveBackgRoundImageFile
    , tdbrifXCoordinate
    , tdbrifYCoordinate
    , tdbrifWidth
    , tdbrifId

    -- ** FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- ** FileAppProperties
    , FileAppProperties
    , fileAppProperties
    , fapAddtional

    -- ** FileLinkShareMetadata
    , FileLinkShareMetadata
    , fileLinkShareMetadata
    , flsmSecurityUpdateEnabled
    , flsmSecurityUpdateEligible

    -- ** Change
    , Change
    , change
    , chaDrive
    , chaRemoved
    , chaTime
    , chaKind
    , chaTeamDrive
    , chaTeamDriveId
    , chaType
    , chaFileId
    , chaFile
    , chaChangeType
    , chaDriveId

    -- ** TeamDrive
    , TeamDrive
    , teamDrive
    , tdThemeId
    , tdBackgRoundImageFile
    , tdColorRgb
    , tdCreatedTime
    , tdKind
    , tdBackgRoundImageLink
    , tdName
    , tdRestrictions
    , tdId
    , tdCapabilities

    -- ** AboutExportFormats
    , AboutExportFormats
    , aboutExportFormats
    , aefAddtional

    -- ** User
    , User
    , user
    , uPhotoLink
    , uMe
    , uKind
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- ** ChangeList
    , ChangeList
    , changeList
    , clNewStartPageToken
    , clNextPageToken
    , clChanges
    , clKind

    -- ** RevisionExportLinks
    , RevisionExportLinks
    , revisionExportLinks
    , relAddtional

    -- ** FileContentHints
    , FileContentHints
    , fileContentHints
    , fchThumbnail
    , fchIndexableText

    -- ** ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- ** FileProperties
    , FileProperties
    , fileProperties
    , fpAddtional

    -- ** AboutMaxImportSizes
    , AboutMaxImportSizes
    , aboutMaxImportSizes
    , amisAddtional

    -- ** About
    , About
    , about
    , aExportFormats
    , aMaxImportSizes
    , aCanCreateTeamDrives
    , aImportFormats
    , aKind
    , aDriveThemes
    , aAppInstalled
    , aUser
    , aStorageQuota
    , aCanCreateDrives
    , aMaxUploadSize
    , aTeamDriveThemes
    , aFolderColorPalette

    -- ** FileImageMediaMetadataLocation
    , FileImageMediaMetadataLocation
    , fileImageMediaMetadataLocation
    , fimmlLatitude
    , fimmlAltitude
    , fimmlLongitude

    -- ** ContentRestriction
    , ContentRestriction
    , contentRestriction
    , crRestrictingUser
    , crRestrictionTime
    , crReason
    , crType
    , crReadOnly

    -- ** StartPageToken
    , StartPageToken
    , startPageToken
    , sptKind
    , sptStartPageToken

    -- ** FileImageMediaMetadata
    , FileImageMediaMetadata
    , fileImageMediaMetadata
    , fimmRotation
    , fimmHeight
    , fimmSubjectDistance
    , fimmMaxApertureValue
    , fimmIsoSpeed
    , fimmTime
    , fimmLocation
    , fimmAperture
    , fimmFocalLength
    , fimmCameraMake
    , fimmWidth
    , fimmExposureTime
    , fimmCameraModel
    , fimmWhiteBalance
    , fimmLens
    , fimmFlashUsed
    , fimmExposureBias
    , fimmMeteringMode
    , fimmExposureMode
    , fimmSensor
    , fimmColorSpace

    -- ** Comment
    , Comment
    , comment
    , comHTMLContent
    , comModifiedTime
    , comCreatedTime
    , comKind
    , comResolved
    , comQuotedFileContent
    , comAnchor
    , comContent
    , comReplies
    , comAuthor
    , comId
    , comDeleted

    -- ** Revision
    , Revision
    , revision
    , revModifiedTime
    , revSize
    , revOriginalFilename
    , revKind
    , revPublishedLink
    , revPublished
    , revLastModifyingUser
    , revPublishAuto
    , revMD5Checksum
    , revKeepForever
    , revMimeType
    , revExportLinks
    , revPublishedOutsideDomain
    , revId

    -- ** Permission
    , Permission
    , permission
    , pPhotoLink
    , pTeamDrivePermissionDetails
    , pKind
    , pDomain
    , pRole
    , pEmailAddress
    , pAllowFileDiscovery
    , pDisplayName
    , pView
    , pId
    , pDeleted
    , pType
    , pExpirationTime
    , pPermissionDetails

    -- ** DriveRestrictions
    , DriveRestrictions
    , driveRestrictions
    , drAdminManagedRestrictions
    , drDriveMembersOnly
    , drCopyRequiresWriterPermission
    , drDomainUsersOnly

    -- ** File
    , File
    , file
    , fOwnedByMe
    , fThumbnailLink
    , fFullFileExtension
    , fModifiedTime
    , fModifiedByMeTime
    , fFileExtension
    , fViewedByMe
    , fShortcutDetails
    , fOwners
    , fViewedByMeTime
    , fModifiedByMe
    , fSize
    , fTrashed
    , fResourceKey
    , fWebViewLink
    , fCreatedTime
    , fTrashedTime
    , fOriginalFilename
    , fKind
    , fLastModifyingUser
    , fIconLink
    , fHasThumbnail
    , fThumbnailVersion
    , fContentRestrictions
    , fImageMediaMetadata
    , fExplicitlyTrashed
    , fShared
    , fMD5Checksum
    , fTeamDriveId
    , fFolderColorRgb
    , fMimeType
    , fIsAppAuthorized
    , fCopyRequiresWriterPermission
    , fName
    , fExportLinks
    , fParents
    , fStarred
    , fSpaces
    , fVersion
    , fHasAugmentedPermissions
    , fWritersCanShare
    , fTrashingUser
    , fId
    , fPermissionIds
    , fPermissions
    , fQuotaBytesUsed
    , fLinkShareMetadata
    , fAppProperties
    , fVideoMediaMetadata
    , fSharedWithMeTime
    , fHeadRevisionId
    , fCapabilities
    , fDescription
    , fViewersCanCopyContent
    , fDriveId
    , fSharingUser
    , fWebContentLink
    , fContentHints
    , fProperties

    -- ** AboutDriveThemesItem
    , AboutDriveThemesItem
    , aboutDriveThemesItem
    , adtiColorRgb
    , adtiBackgRoundImageLink
    , adtiId

    -- ** PermissionTeamDrivePermissionDetailsItem
    , PermissionTeamDrivePermissionDetailsItem
    , permissionTeamDrivePermissionDetailsItem
    , ptdpdiInherited
    , ptdpdiTeamDrivePermissionType
    , ptdpdiRole
    , ptdpdiInheritedFrom

    -- ** DriveList
    , DriveList
    , driveList
    , dlNextPageToken
    , dlKind
    , dlDrives

    -- ** GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- ** FileExportLinks
    , FileExportLinks
    , fileExportLinks
    , felAddtional

    -- ** CommentList
    , CommentList
    , commentList
    , cllNextPageToken
    , cllKind
    , cllComments

    -- ** RevisionList
    , RevisionList
    , revisionList
    , rllNextPageToken
    , rllKind
    , rllRevisions

    -- ** PermissionList
    , PermissionList
    , permissionList
    , plNextPageToken
    , plKind
    , plPermissions
    ) where

import Network.Google.Prelude
import Network.Google.Drive.Types
import Network.Google.Resource.Drive.About.Get
import Network.Google.Resource.Drive.Changes.GetStartPageToken
import Network.Google.Resource.Drive.Changes.List
import Network.Google.Resource.Drive.Changes.Watch
import Network.Google.Resource.Drive.Channels.Stop
import Network.Google.Resource.Drive.Comments.Create
import Network.Google.Resource.Drive.Comments.Delete
import Network.Google.Resource.Drive.Comments.Get
import Network.Google.Resource.Drive.Comments.List
import Network.Google.Resource.Drive.Comments.Update
import Network.Google.Resource.Drive.Drives.Create
import Network.Google.Resource.Drive.Drives.Delete
import Network.Google.Resource.Drive.Drives.Get
import Network.Google.Resource.Drive.Drives.Hide
import Network.Google.Resource.Drive.Drives.List
import Network.Google.Resource.Drive.Drives.Unhide
import Network.Google.Resource.Drive.Drives.Update
import Network.Google.Resource.Drive.Files.Copy
import Network.Google.Resource.Drive.Files.Create
import Network.Google.Resource.Drive.Files.Delete
import Network.Google.Resource.Drive.Files.EmptyTrash
import Network.Google.Resource.Drive.Files.Export
import Network.Google.Resource.Drive.Files.GenerateIds
import Network.Google.Resource.Drive.Files.Get
import Network.Google.Resource.Drive.Files.List
import Network.Google.Resource.Drive.Files.Update
import Network.Google.Resource.Drive.Files.Watch
import Network.Google.Resource.Drive.Permissions.Create
import Network.Google.Resource.Drive.Permissions.Delete
import Network.Google.Resource.Drive.Permissions.Get
import Network.Google.Resource.Drive.Permissions.List
import Network.Google.Resource.Drive.Permissions.Update
import Network.Google.Resource.Drive.Replies.Create
import Network.Google.Resource.Drive.Replies.Delete
import Network.Google.Resource.Drive.Replies.Get
import Network.Google.Resource.Drive.Replies.List
import Network.Google.Resource.Drive.Replies.Update
import Network.Google.Resource.Drive.Revisions.Delete
import Network.Google.Resource.Drive.Revisions.Get
import Network.Google.Resource.Drive.Revisions.List
import Network.Google.Resource.Drive.Revisions.Update
import Network.Google.Resource.Drive.Teamdrives.Create
import Network.Google.Resource.Drive.Teamdrives.Delete
import Network.Google.Resource.Drive.Teamdrives.Get
import Network.Google.Resource.Drive.Teamdrives.List
import Network.Google.Resource.Drive.Teamdrives.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Drive API service.
type DriveAPI =
     TeamdrivesListResource :<|> TeamdrivesGetResource
       :<|> TeamdrivesCreateResource
       :<|> TeamdrivesDeleteResource
       :<|> TeamdrivesUpdateResource
       :<|> ChangesListResource
       :<|> ChangesGetStartPageTokenResource
       :<|> ChangesWatchResource
       :<|> ChannelsStopResource
       :<|> RepliesListResource
       :<|> RepliesGetResource
       :<|> RepliesCreateResource
       :<|> RepliesDeleteResource
       :<|> RepliesUpdateResource
       :<|> DrivesListResource
       :<|> DrivesHideResource
       :<|> DrivesGetResource
       :<|> DrivesCreateResource
       :<|> DrivesUnhideResource
       :<|> DrivesDeleteResource
       :<|> DrivesUpdateResource
       :<|> AboutGetResource
       :<|> FilesExportResource
       :<|> FilesListResource
       :<|> FilesCopyResource
       :<|> FilesGetResource
       :<|> FilesEmptyTrashResource
       :<|> FilesCreateResource
       :<|> FilesGenerateIdsResource
       :<|> FilesDeleteResource
       :<|> FilesUpdateResource
       :<|> FilesWatchResource
       :<|> PermissionsListResource
       :<|> PermissionsGetResource
       :<|> PermissionsCreateResource
       :<|> PermissionsDeleteResource
       :<|> PermissionsUpdateResource
       :<|> CommentsListResource
       :<|> CommentsGetResource
       :<|> CommentsCreateResource
       :<|> CommentsDeleteResource
       :<|> CommentsUpdateResource
       :<|> RevisionsListResource
       :<|> RevisionsGetResource
       :<|> RevisionsDeleteResource
       :<|> RevisionsUpdateResource

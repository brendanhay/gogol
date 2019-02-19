{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Drive.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Drive.Types
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

    -- * FileList
    , FileList
    , fileList
    , flNextPageToken
    , flIncompleteSearch
    , flKind
    , flFiles

    -- * TeamDriveCapabilities
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

    -- * FilesListCorpus
    , FilesListCorpus (..)

    -- * CommentQuotedFileContent
    , CommentQuotedFileContent
    , commentQuotedFileContent
    , cqfcValue
    , cqfcMimeType

    -- * AboutStorageQuota
    , AboutStorageQuota
    , aboutStorageQuota
    , asqUsageInDriveTrash
    , asqLimit
    , asqUsage
    , asqUsageInDrive

    -- * Reply
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

    -- * AboutImportFormats
    , AboutImportFormats
    , aboutImportFormats
    , aifAddtional

    -- * FileCapabilities
    , FileCapabilities
    , fileCapabilities
    , fcCanRename
    , fcCanComment
    , fcCanMoveChildrenWithinTeamDrive
    , fcCanDelete
    , fcCanMoveItemIntoTeamDrive
    , fcCanDownload
    , fcCanTrash
    , fcCanUntrash
    , fcCanTrashChildren
    , fcCanAddChildren
    , fcCanRemoveChildren
    , fcCanMoveTeamDriveItem
    , fcCanMoveItemWithinTeamDrive
    , fcCanReadTeamDrive
    , fcCanChangeCopyRequiresWriterPermission
    , fcCanListChildren
    , fcCanMoveChildrenOutOfTeamDrive
    , fcCanEdit
    , fcCanChangeViewersCanCopyContent
    , fcCanReadRevisions
    , fcCanDeleteChildren
    , fcCanMoveItemOutOfTeamDrive
    , fcCanCopy
    , fcCanShare

    -- * ReplyList
    , ReplyList
    , replyList
    , rlNextPageToken
    , rlKind
    , rlReplies

    -- * FileContentHintsThumbnail
    , FileContentHintsThumbnail
    , fileContentHintsThumbnail
    , fchtImage
    , fchtMimeType

    -- * TeamDriveList
    , TeamDriveList
    , teamDriveList
    , tdlNextPageToken
    , tdlTeamDrives
    , tdlKind

    -- * Channel
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

    -- * AboutTeamDriveThemesItem
    , AboutTeamDriveThemesItem
    , aboutTeamDriveThemesItem
    , atdtiColorRgb
    , atdtiBackgRoundImageLink
    , atdtiId

    -- * TeamDriveRestrictions
    , TeamDriveRestrictions
    , teamDriveRestrictions
    , tdrTeamMembersOnly
    , tdrAdminManagedRestrictions
    , tdrCopyRequiresWriterPermission
    , tdrDomainUsersOnly

    -- * TeamDriveBackgRoundImageFile
    , TeamDriveBackgRoundImageFile
    , teamDriveBackgRoundImageFile
    , tdbrifXCoordinate
    , tdbrifYCoordinate
    , tdbrifWidth
    , tdbrifId

    -- * FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- * FileAppProperties
    , FileAppProperties
    , fileAppProperties
    , fapAddtional

    -- * Change
    , Change
    , change
    , chaRemoved
    , chaTime
    , chaKind
    , chaTeamDrive
    , chaTeamDriveId
    , chaType
    , chaFileId
    , chaFile

    -- * TeamDrive
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

    -- * AboutExportFormats
    , AboutExportFormats
    , aboutExportFormats
    , aefAddtional

    -- * User
    , User
    , user
    , uPhotoLink
    , uMe
    , uKind
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- * ChangeList
    , ChangeList
    , changeList
    , clNewStartPageToken
    , clNextPageToken
    , clChanges
    , clKind

    -- * RevisionExportLinks
    , RevisionExportLinks
    , revisionExportLinks
    , relAddtional

    -- * FileContentHints
    , FileContentHints
    , fileContentHints
    , fchThumbnail
    , fchIndexableText

    -- * ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- * FileProperties
    , FileProperties
    , fileProperties
    , fpAddtional

    -- * AboutMaxImportSizes
    , AboutMaxImportSizes
    , aboutMaxImportSizes
    , amisAddtional

    -- * About
    , About
    , about
    , aExportFormats
    , aMaxImportSizes
    , aCanCreateTeamDrives
    , aImportFormats
    , aKind
    , aAppInstalled
    , aUser
    , aStorageQuota
    , aMaxUploadSize
    , aTeamDriveThemes
    , aFolderColorPalette

    -- * FileImageMediaMetadataLocation
    , FileImageMediaMetadataLocation
    , fileImageMediaMetadataLocation
    , fimmlLatitude
    , fimmlAltitude
    , fimmlLongitude

    -- * StartPageToken
    , StartPageToken
    , startPageToken
    , sptKind
    , sptStartPageToken

    -- * FileImageMediaMetadata
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

    -- * Comment
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

    -- * Revision
    , Revision
    , revision
    , revModifiedTime
    , revSize
    , revOriginalFilename
    , revKind
    , revPublished
    , revLastModifyingUser
    , revPublishAuto
    , revMD5Checksum
    , revKeepForever
    , revMimeType
    , revExportLinks
    , revPublishedOutsideDomain
    , revId

    -- * Permission
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
    , pId
    , pDeleted
    , pType
    , pExpirationTime

    -- * File
    , File
    , file
    , fOwnedByMe
    , fThumbnailLink
    , fFullFileExtension
    , fModifiedTime
    , fModifiedByMeTime
    , fFileExtension
    , fViewedByMe
    , fOwners
    , fViewedByMeTime
    , fModifiedByMe
    , fSize
    , fTrashed
    , fWebViewLink
    , fCreatedTime
    , fTrashedTime
    , fOriginalFilename
    , fKind
    , fLastModifyingUser
    , fIconLink
    , fHasThumbnail
    , fThumbnailVersion
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
    , fAppProperties
    , fVideoMediaMetadata
    , fSharedWithMeTime
    , fHeadRevisionId
    , fCapabilities
    , fDescription
    , fViewersCanCopyContent
    , fSharingUser
    , fWebContentLink
    , fContentHints
    , fProperties

    -- * PermissionTeamDrivePermissionDetailsItem
    , PermissionTeamDrivePermissionDetailsItem
    , permissionTeamDrivePermissionDetailsItem
    , ptdpdiInherited
    , ptdpdiTeamDrivePermissionType
    , ptdpdiRole
    , ptdpdiInheritedFrom

    -- * GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- * FileExportLinks
    , FileExportLinks
    , fileExportLinks
    , felAddtional

    -- * CommentList
    , CommentList
    , commentList
    , cllNextPageToken
    , cllKind
    , cllComments

    -- * RevisionList
    , RevisionList
    , revisionList
    , rllNextPageToken
    , rllKind
    , rllRevisions

    -- * PermissionList
    , PermissionList
    , permissionList
    , plNextPageToken
    , plKind
    , plPermissions
    ) where

import           Network.Google.Drive.Types.Product
import           Network.Google.Drive.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v3' of the Drive API. This contains the host and root path used as a starting point for constructing service requests.
driveService :: ServiceConfig
driveService
  = defaultService (ServiceId "drive:v3")
      "www.googleapis.com"

-- | View metadata for files in your Google Drive
driveMetadataReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/drive.metadata.readonly"]
driveMetadataReadOnlyScope = Proxy

-- | View the photos, videos and albums in your Google Photos
drivePhotosReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/drive.photos.readonly"]
drivePhotosReadOnlyScope = Proxy

-- | View and manage its own configuration data in your Google Drive
driveAppDataScope :: Proxy '["https://www.googleapis.com/auth/drive.appdata"]
driveAppDataScope = Proxy

-- | See and download all your Google Drive files
driveReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/drive.readonly"]
driveReadOnlyScope = Proxy

-- | See, edit, create, and delete all of your Google Drive files
driveScope :: Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Proxy

-- | View and manage Google Drive files and folders that you have opened or
-- created with this app
driveFileScope :: Proxy '["https://www.googleapis.com/auth/drive.file"]
driveFileScope = Proxy

-- | View and manage metadata of files in your Google Drive
driveMetadataScope :: Proxy '["https://www.googleapis.com/auth/drive.metadata"]
driveMetadataScope = Proxy

-- | Modify your Google Apps Script scripts\' behavior
driveScriptsScope :: Proxy '["https://www.googleapis.com/auth/drive.scripts"]
driveScriptsScope = Proxy

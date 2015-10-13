{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Drive.Types
-- Copyright   : (c) 2015 Brendan Hay
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
    , driveMetadataReadonlyScope
    , driveAppsReadonlyScope
    , drivePhotosReadonlyScope
    , driveAppdataScope
    , driveReadonlyScope
    , driveScope
    , driveFileScope
    , driveMetadataScope
    , driveScriptsScope

    -- * CommentContext
    , CommentContext
    , commentContext
    , ccValue
    , ccType

    -- * AppIconsItem
    , AppIconsItem
    , appIconsItem
    , aiiSize
    , aiiCategory
    , aiiIconURL

    -- * FilesInsertVisibility
    , FilesInsertVisibility (..)

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flNextLink
    , flKind
    , flItems
    , flSelfLink

    -- * ParentReference
    , ParentReference
    , parentReference
    , prParentLink
    , prIsRoot
    , prKind
    , prSelfLink
    , prId

    -- * Property
    , Property
    , property
    , pEtag
    , pKind
    , pValue
    , pVisibility
    , pSelfLink
    , pKey

    -- * FilesListCorpus
    , FilesListCorpus (..)

    -- * FileThumbnail
    , FileThumbnail
    , fileThumbnail
    , ftImage
    , ftMimeType

    -- * FilesListProjection
    , FilesListProjection (..)

    -- * UserPicture
    , UserPicture
    , userPicture
    , upURL

    -- * FilesUpdateModifiedDateBehavior
    , FilesUpdateModifiedDateBehavior (..)

    -- * PropertyList
    , PropertyList
    , propertyList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- * ChildList
    , ChildList
    , childList
    , clEtag
    , clNextPageToken
    , clNextLink
    , clKind
    , clItems
    , clSelfLink

    -- * AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

    -- * FileOpenWithLinks
    , FileOpenWithLinks
    , fileOpenWithLinks
    , fowlAddtional

    -- * AboutAdditionalRoleInfoItemRoleSetsItem
    , AboutAdditionalRoleInfoItemRoleSetsItem
    , aboutAdditionalRoleInfoItemRoleSetsItem
    , aariirsiPrimaryRole
    , aariirsiAdditionalRoles

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

    -- * CommentReplyList
    , CommentReplyList
    , commentReplyList
    , crlNextPageToken
    , crlNextLink
    , crlKind
    , crlItems
    , crlSelfLink

    -- * FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- * Change
    , Change
    , change
    , chaKind
    , chaSelfLink
    , chaModificationDate
    , chaId
    , chaDeleted
    , chaFileId
    , chaFile

    -- * App
    , App
    , app
    , aLongDescription
    , aOpenURLTemplate
    , aAuthorized
    , aObjectType
    , aSecondaryMimeTypes
    , aCreateInFolderTemplate
    , aKind
    , aIcons
    , aProductURL
    , aUseByDefault
    , aShortDescription
    , aName
    , aCreateURL
    , aId
    , aPrimaryFileExtensions
    , aInstalled
    , aSupportsCreate
    , aPrimaryMimeTypes
    , aHasDriveWideScope
    , aProductId
    , aSecondaryFileExtensions
    , aSupportsMultiOpen
    , aSupportsImport
    , aSupportsOfflineCreate

    -- * ChildReference
    , ChildReference
    , childReference
    , crChildLink
    , crKind
    , crSelfLink
    , crId

    -- * FilesWatchProjection
    , FilesWatchProjection (..)

    -- * AboutMaxUploadSizesItem
    , AboutMaxUploadSizesItem
    , aboutMaxUploadSizesItem
    , amusiSize
    , amusiType

    -- * CommentReply
    , CommentReply
    , commentReply
    , comHTMLContent
    , comKind
    , comContent
    , comCreatedDate
    , comReplyId
    , comAuthor
    , comModifiedDate
    , comDeleted
    , comVerb

    -- * AboutQuotaBytesByServiceItem
    , AboutQuotaBytesByServiceItem
    , aboutQuotaBytesByServiceItem
    , aqbbsiBytesUsed
    , aqbbsiServiceName

    -- * User
    , User
    , user
    , uIsAuthenticatedUser
    , uKind
    , uPicture
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- * AboutExportFormatsItem
    , AboutExportFormatsItem
    , aboutExportFormatsItem
    , aefiTargets
    , aefiSource

    -- * ChangeList
    , ChangeList
    , changeList
    , cllEtag
    , cllNextPageToken
    , cllNextLink
    , cllKind
    , cllItems
    , cllSelfLink
    , cllLargestChangeId

    -- * RevisionExportLinks
    , RevisionExportLinks
    , revisionExportLinks
    , relAddtional

    -- * FileIndexableText
    , FileIndexableText
    , fileIndexableText
    , fitText

    -- * AboutFeaturesItem
    , AboutFeaturesItem
    , aboutFeaturesItem
    , afiFeatureRate
    , afiFeatureName

    -- * ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- * FilesPatchModifiedDateBehavior
    , FilesPatchModifiedDateBehavior (..)

    -- * About
    , About
    , about
    , aboExportFormats
    , aboRemainingChangeIds
    , aboLanguageCode
    , aboEtag
    , aboImportFormats
    , aboKind
    , aboDomainSharingPolicy
    , aboQuotaBytesUsedInTrash
    , aboQuotaType
    , aboMaxUploadSizes
    , aboUser
    , aboSelfLink
    , aboName
    , aboFeatures
    , aboIsCurrentAppInstalled
    , aboQuotaBytesTotal
    , aboRootFolderId
    , aboQuotaBytesUsed
    , aboAdditionalRoleInfo
    , aboFolderColorPalette
    , aboPermissionId
    , aboQuotaBytesUsedAggregate
    , aboQuotaBytesByService
    , aboLargestChangeId

    -- * FileImageMediaMetadataLocation
    , FileImageMediaMetadataLocation
    , fileImageMediaMetadataLocation
    , fimmlLatitude
    , fimmlAltitude
    , fimmlLongitude

    -- * AboutImportFormatsItem
    , AboutImportFormatsItem
    , aboutImportFormatsItem
    , aifiTargets
    , aifiSource

    -- * FileImageMediaMetadata
    , FileImageMediaMetadata
    , fileImageMediaMetadata
    , fimmRotation
    , fimmHeight
    , fimmSubjectDistance
    , fimmMaxApertureValue
    , fimmIsoSpeed
    , fimmLocation
    , fimmAperture
    , fimmFocalLength
    , fimmCameraMake
    , fimmWidth
    , fimmExposureTime
    , fimmCameraModel
    , fimmWhiteBalance
    , fimmDate
    , fimmLens
    , fimmFlashUsed
    , fimmExposureBias
    , fimmMeteringMode
    , fimmExposureMode
    , fimmSensor
    , fimmColorSpace

    -- * FileLabels
    , FileLabels
    , fileLabels
    , flViewed
    , flTrashed
    , flStarred
    , flHidden
    , flRestricted

    -- * Comment
    , Comment
    , comment
    , ccStatus
    , ccHTMLContent
    , ccContext
    , ccKind
    , ccFileTitle
    , ccAnchor
    , ccContent
    , ccReplies
    , ccCreatedDate
    , ccSelfLink
    , ccAuthor
    , ccModifiedDate
    , ccDeleted
    , ccFileId
    , ccCommentId

    -- * Revision
    , Revision
    , revision
    , rEtag
    , rOriginalFilename
    , rKind
    , rPublishedLink
    , rPinned
    , rPublished
    , rLastModifyingUser
    , rFileSize
    , rPublishAuto
    , rMD5Checksum
    , rMimeType
    , rSelfLink
    , rLastModifyingUserName
    , rDownloadURL
    , rExportLinks
    , rPublishedOutsideDomain
    , rId
    , rModifiedDate

    -- * AboutAdditionalRoleInfoItem
    , AboutAdditionalRoleInfoItem
    , aboutAdditionalRoleInfoItem
    , aariiRoleSets
    , aariiType

    -- * Permission
    , Permission
    , permission
    , perPhotoLink
    , perEtag
    , perWithLink
    , perKind
    , perDomain
    , perValue
    , perAdditionalRoles
    , perRole
    , perSelfLink
    , perName
    , perAuthKey
    , perEmailAddress
    , perId
    , perType

    -- * File
    , File
    , file
    , fOwnedByMe
    , fThumbnailLink
    , fFullFileExtension
    , fThumbnail
    , fMarkedViewedByMeDate
    , fEtag
    , fFileExtension
    , fCanComment
    , fOwners
    , fOwnerNames
    , fOpenWithLinks
    , fWebViewLink
    , fOriginalFilename
    , fKind
    , fLastModifyingUser
    , fIconLink
    , fEmbedLink
    , fFileSize
    , fAppDataContents
    , fImageMediaMetadata
    , fExplicitlyTrashed
    , fEditable
    , fModifiedByMeDate
    , fLastViewedByMeDate
    , fShared
    , fMD5Checksum
    , fFolderColorRgb
    , fMimeType
    , fCreatedDate
    , fSelfLink
    , fLastModifyingUserName
    , fShareable
    , fDownloadURL
    , fExportLinks
    , fCopyable
    , fParents
    , fSharedWithMeDate
    , fSpaces
    , fVersion
    , fUserPermission
    , fWritersCanShare
    , fDefaultOpenWithLink
    , fId
    , fLabels
    , fModifiedDate
    , fPermissions
    , fQuotaBytesUsed
    , fTitle
    , fAlternateLink
    , fVideoMediaMetadata
    , fHeadRevisionId
    , fDescription
    , fSharingUser
    , fWebContentLink
    , fProperties
    , fIndexableText

    -- * PermissionId
    , PermissionId
    , permissionId
    , piKind
    , piId

    -- * FilesCopyVisibility
    , FilesCopyVisibility (..)

    -- * FilesGetProjection
    , FilesGetProjection (..)

    -- * ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

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
    , comoNextPageToken
    , comoNextLink
    , comoKind
    , comoItems
    , comoSelfLink

    -- * RevisionList
    , RevisionList
    , revisionList
    , rlEtag
    , rlKind
    , rlItems
    , rlSelfLink

    -- * PermissionList
    , PermissionList
    , permissionList
    , pllEtag
    , pllKind
    , pllItems
    , pllSelfLink
    ) where

import           Network.Google.Drive.Types.Product
import           Network.Google.Drive.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the Drive API. This contains the host and root path used as a starting point for constructing service requests.
driveService :: Service
driveService
  = defaultService (ServiceId "drive:v2")
      "www.googleapis.com"
      "drive/v2/"

-- | View metadata for files in your Google Drive
driveMetadataReadonlyScope :: OAuthScope
driveMetadataReadonlyScope = OAuthScope "https://www.googleapis.com/auth/drive.metadata.readonly";

-- | View your Google Drive apps
driveAppsReadonlyScope :: OAuthScope
driveAppsReadonlyScope = OAuthScope "https://www.googleapis.com/auth/drive.apps.readonly";

-- | View the photos, videos and albums in your Google Photos
drivePhotosReadonlyScope :: OAuthScope
drivePhotosReadonlyScope = OAuthScope "https://www.googleapis.com/auth/drive.photos.readonly";

-- | View and manage its own configuration data in your Google Drive
driveAppdataScope :: OAuthScope
driveAppdataScope = OAuthScope "https://www.googleapis.com/auth/drive.appdata";

-- | View the files in your Google Drive
driveReadonlyScope :: OAuthScope
driveReadonlyScope = OAuthScope "https://www.googleapis.com/auth/drive.readonly";

-- | View and manage the files in your Google Drive
driveScope :: OAuthScope
driveScope = OAuthScope "https://www.googleapis.com/auth/drive";

-- | View and manage Google Drive files and folders that you have opened or
-- created with this app
driveFileScope :: OAuthScope
driveFileScope = OAuthScope "https://www.googleapis.com/auth/drive.file";

-- | View and manage metadata of files in your Google Drive
driveMetadataScope :: OAuthScope
driveMetadataScope = OAuthScope "https://www.googleapis.com/auth/drive.metadata";

-- | Modify your Google Apps Script scripts\' behavior
driveScriptsScope :: OAuthScope
driveScriptsScope = OAuthScope "https://www.googleapis.com/auth/drive.scripts";

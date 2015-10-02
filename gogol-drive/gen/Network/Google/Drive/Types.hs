{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      driveURL

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flNextLink
    , flKind
    , flItems
    , flSelfLink

    -- * CommentContext
    , CommentContext
    , commentContext
    , ccValue
    , ccType

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

    -- * DriveFilesCopyVisibility
    , DriveFilesCopyVisibility (..)

    -- * DriveFilesGetProjection
    , DriveFilesGetProjection (..)

    -- * AboutFeatures
    , AboutFeatures
    , aboutFeatures
    , afFeatureRate
    , afFeatureName

    -- * FileThumbnail
    , FileThumbnail
    , fileThumbnail
    , ftImage
    , ftMimeType

    -- * DriveFilesWatchProjection
    , DriveFilesWatchProjection (..)

    -- * UserPicture
    , UserPicture
    , userPicture
    , upURL

    -- * PropertyList
    , PropertyList
    , propertyList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- * AboutImportFormats
    , AboutImportFormats
    , aboutImportFormats
    , aifTargets
    , aifSource

    -- * DriveFilesInsertVisibility
    , DriveFilesInsertVisibility (..)

    -- * ChildList
    , ChildList
    , childList
    , clEtag
    , clNextPageToken
    , clNextLink
    , clKind
    , clItems
    , clSelfLink

    -- * AboutAdditionalRoleInfoRoleSets
    , AboutAdditionalRoleInfoRoleSets
    , aboutAdditionalRoleInfoRoleSets
    , aarirsPrimaryRole
    , aarirsAdditionalRoles

    -- * CommentReplyList
    , CommentReplyList
    , commentReplyList
    , crlNextPageToken
    , crlNextLink
    , crlKind
    , crlItems
    , crlSelfLink

    -- * FileOpenWithLinks
    , FileOpenWithLinks
    , fileOpenWithLinks

    -- * DriveFilesListCorpus
    , DriveFilesListCorpus (..)

    -- * Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayLoad
    , cParams
    , cId
    , cType

    -- * AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

    -- * FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- * DriveFilesPatchModifiedDateBehavior
    , DriveFilesPatchModifiedDateBehavior (..)

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

    -- * DriveFilesUpdateModifiedDateBehavior
    , DriveFilesUpdateModifiedDateBehavior (..)

    -- * ChildReference
    , ChildReference
    , childReference
    , crChildLink
    , crKind
    , crSelfLink
    , crId

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

    -- * User
    , User
    , user
    , uIsAuthenticatedUser
    , uKind
    , uPicture
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- * AboutExportFormats
    , AboutExportFormats
    , aboutExportFormats
    , aefTargets
    , aefSource

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

    -- * AboutMaxUploadSizes
    , AboutMaxUploadSizes
    , aboutMaxUploadSizes
    , amusSize
    , amusType

    -- * AboutQuotaBytesByService
    , AboutQuotaBytesByService
    , aboutQuotaBytesByService
    , aqbbsBytesUsed
    , aqbbsServiceName

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

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * FileIndexableText
    , FileIndexableText
    , fileIndexableText
    , fitText

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

    -- * DriveFilesListProjection
    , DriveFilesListProjection (..)

    -- * PermissionId
    , PermissionId
    , permissionId
    , piKind
    , piId

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

    -- * ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

    -- * AboutAdditionalRoleInfo
    , AboutAdditionalRoleInfo
    , aboutAdditionalRoleInfo
    , aariRoleSets
    , aariType

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

    -- * FileExportLinks
    , FileExportLinks
    , fileExportLinks

    -- * GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- * AppIcons
    , AppIcons
    , appIcons
    , aiSize
    , aiCategory
    , aiIconURL

    -- * CommentList
    , CommentList
    , commentList
    , comoNextPageToken
    , comoNextLink
    , comoKind
    , comoItems
    , comoSelfLink
    ) where

import           Network.Google.Drive.Types.Product
import           Network.Google.Drive.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Drive API.
driveURL :: BaseUrl
driveURL
  = BaseUrl Https
      "https://www.googleapis.com/drive/v2/"
      443

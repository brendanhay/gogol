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
    -- * Service Request
      driveRequest

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
driveRequest :: RequestBuilder
driveRequest
  = defaultRequest "https://www.googleapis.com/"
      "drive/v2/"

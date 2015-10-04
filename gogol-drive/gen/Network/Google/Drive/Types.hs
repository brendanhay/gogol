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

    -- * QuotaBytesByServiceItem
    , QuotaBytesByServiceItem
    , quotaBytesByServiceItem
    , qbbsiBytesUsed
    , qbbsiServiceName

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flNextLink
    , flKind
    , flItems
    , flSelfLink

    -- * Thumbnail
    , Thumbnail
    , thumbnail
    , tImage
    , tMimeType

    -- * ParentReference
    , ParentReference
    , parentReference
    , prParentLink
    , prIsRoot
    , prKind
    , prSelfLink
    , prId

    -- * Context
    , Context
    , context
    , cValue
    , cType

    -- * Property
    , Property
    , property
    , pEtag
    , pKind
    , pValue
    , pVisibility
    , pSelfLink
    , pKey

    -- * FeaturesItem
    , FeaturesItem
    , featuresItem
    , fiFeatureRate
    , fiFeatureName

    -- * DriveFilesCopyVisibility
    , DriveFilesCopyVisibility (..)

    -- * DriveFilesGetProjection
    , DriveFilesGetProjection (..)

    -- * DriveFilesWatchProjection
    , DriveFilesWatchProjection (..)

    -- * Location
    , Location
    , location
    , lLatitude
    , lAltitude
    , lLongitude

    -- * PropertyList
    , PropertyList
    , propertyList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- * OpenWithLinks
    , OpenWithLinks
    , openWithLinks

    -- * ChildList
    , ChildList
    , childList
    , clEtag
    , clNextPageToken
    , clNextLink
    , clKind
    , clItems
    , clSelfLink

    -- * CommentReplyList
    , CommentReplyList
    , commentReplyList
    , crlNextPageToken
    , crlNextLink
    , crlKind
    , crlItems
    , crlSelfLink

    -- * Channel
    , Channel
    , channel
    , chaResourceURI
    , chaResourceId
    , chaKind
    , chaExpiration
    , chaToken
    , chaAddress
    , chaPayload
    , chaParams
    , chaId
    , chaType

    -- * AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

    -- * Visibility
    , Visibility (..)

    -- * Change
    , Change
    , change
    , cKind
    , cSelfLink
    , cModificationDate
    , cId
    , cDeleted
    , cFileId
    , cFile

    -- * ImageMediaMetadata
    , ImageMediaMetadata
    , imageMediaMetadata
    , immRotation
    , immHeight
    , immSubjectDistance
    , immMaxApertureValue
    , immIsoSpeed
    , immLocation
    , immAperture
    , immFocalLength
    , immCameraMake
    , immWidth
    , immExposureTime
    , immCameraModel
    , immWhiteBalance
    , immDate
    , immLens
    , immFlashUsed
    , immExposureBias
    , immMeteringMode
    , immExposureMode
    , immSensor
    , immColorSpace

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

    -- * ModifiedDateBehavior
    , ModifiedDateBehavior (..)

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

    -- * Params
    , Params
    , params

    -- * MaxUploadSizesItem
    , MaxUploadSizesItem
    , maxUploadSizesItem
    , musiSize
    , musiType

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

    -- * Picture
    , Picture
    , picture
    , pURL

    -- * ExportLinks
    , ExportLinks
    , exportLinks

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

    -- * Labels
    , Labels
    , labels
    , lViewed
    , lTrashed
    , lStarred
    , lHidden
    , lRestricted

    -- * Projection
    , Projection (..)

    -- * IconsItem
    , IconsItem
    , iconsItem
    , iiSize
    , iiCategory
    , iiIconURL

    -- * Corpus
    , Corpus (..)

    -- * ImportFormatsItem
    , ImportFormatsItem
    , importFormatsItem
    , ifiTargets
    , ifiSource

    -- * VideoMediaMetadata
    , VideoMediaMetadata
    , videoMediaMetadata
    , vmmHeight
    , vmmWidth
    , vmmDurationMillis

    -- * RoleSetsItem
    , RoleSetsItem
    , roleSetsItem
    , rsiPrimaryRole
    , rsiAdditionalRoles

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

    -- * AdditionalRoleInfoItem
    , AdditionalRoleInfoItem
    , additionalRoleInfoItem
    , ariiRoleSets
    , ariiType

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

    -- * ExportFormatsItem
    , ExportFormatsItem
    , exportFormatsItem
    , efiTargets
    , efiSource

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

    -- * CommentList
    , CommentList
    , commentList
    , comoNextPageToken
    , comoNextLink
    , comoKind
    , comoItems
    , comoSelfLink

    -- * IndexableText
    , IndexableText
    , indexableText
    , itText
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

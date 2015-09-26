{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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
    -- * API Definition
      drive


    -- * About
    , About
    , about
    , aExportFormats
    , aRemainingChangeIds
    , aLanguageCode
    , aEtag
    , aImportFormats
    , aKind
    , aDomainSharingPolicy
    , aQuotaBytesUsedInTrash
    , aQuotaType
    , aMaxUploadSizes
    , aUser
    , aSelfLink
    , aName
    , aFeatures
    , aIsCurrentAppInstalled
    , aQuotaBytesTotal
    , aRootFolderId
    , aQuotaBytesUsed
    , aAdditionalRoleInfo
    , aFolderColorPalette
    , aPermissionId
    , aQuotaBytesUsedAggregate
    , aQuotaBytesByService
    , aLargestChangeId

    -- * AboutItemAdditionalRoleInfo
    , AboutItemAdditionalRoleInfo
    , aboutItemAdditionalRoleInfo
    , aiariRoleSets
    , aiariType

    -- * AboutItemExportFormats
    , AboutItemExportFormats
    , aboutItemExportFormats
    , aiefTargets
    , aiefSource

    -- * AboutItemFeatures
    , AboutItemFeatures
    , aboutItemFeatures
    , aifFeatureRate
    , aifFeatureName

    -- * AboutItemImportFormats
    , AboutItemImportFormats
    , aboutItemImportFormats
    , aiifTargets
    , aiifSource

    -- * AboutItemMaxUploadSizes
    , AboutItemMaxUploadSizes
    , aboutItemMaxUploadSizes
    , aimusSize
    , aimusType

    -- * AboutItemQuotaBytesByService
    , AboutItemQuotaBytesByService
    , aboutItemQuotaBytesByService
    , aiqbbsBytesUsed
    , aiqbbsServiceName

    -- * AboutItemRoleSetsItemAdditionalRoleInfo
    , AboutItemRoleSetsItemAdditionalRoleInfo
    , aboutItemRoleSetsItemAdditionalRoleInfo
    , airsiariPrimaryRole
    , airsiariAdditionalRoles

    -- * App
    , App
    , app
    , appLongDescription
    , appOpenUrlTemplate
    , appAuthorized
    , appObjectType
    , appSecondaryMimeTypes
    , appCreateInFolderTemplate
    , appKind
    , appIcons
    , appProductUrl
    , appUseByDefault
    , appShortDescription
    , appName
    , appCreateUrl
    , appId
    , appPrimaryFileExtensions
    , appInstalled
    , appSupportsCreate
    , appPrimaryMimeTypes
    , appHasDriveWideScope
    , appProductId
    , appSecondaryFileExtensions
    , appSupportsMultiOpen
    , appSupportsImport
    , appSupportsOfflineCreate

    -- * AppItemIcons
    , AppItemIcons
    , appItemIcons
    , aiiSize
    , aiiCategory
    , aiiIconUrl

    -- * AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

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

    -- * ChangeList
    , ChangeList
    , changeList
    , clEtag
    , clNextPageToken
    , clNextLink
    , clKind
    , clItems
    , clSelfLink
    , clLargestChangeId

    -- * Channel
    , Channel
    , channel
    , chahResourceUri
    , chahResourceId
    , chahKind
    , chahExpiration
    , chahToken
    , chahAddress
    , chahPayload
    , chahParams
    , chahId
    , chahType

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * ChildList
    , ChildList
    , childList
    , chiEtag
    , chiNextPageToken
    , chiNextLink
    , chiKind
    , chiItems
    , chiSelfLink

    -- * ChildReference
    , ChildReference
    , childReference
    , crChildLink
    , crKind
    , crSelfLink
    , crId

    -- * Comment
    , Comment
    , comment
    , cStatus
    , cHtmlContent
    , cContext
    , cKind
    , cFileTitle
    , cAnchor
    , cContent
    , cReplies
    , cCreatedDate
    , cSelfLink
    , cAuthor
    , cModifiedDate
    , cDeleted
    , cFileId
    , cCommentId

    -- * CommentContext
    , CommentContext
    , commentContext
    , ccValue
    , ccType

    -- * CommentList
    , CommentList
    , commentList
    , comNextPageToken
    , comNextLink
    , comKind
    , comItems
    , comSelfLink

    -- * CommentReply
    , CommentReply
    , commentReply
    , crrHtmlContent
    , crrKind
    , crrContent
    , crrCreatedDate
    , crrReplyId
    , crrAuthor
    , crrModifiedDate
    , crrDeleted
    , crrVerb

    -- * CommentReplyList
    , CommentReplyList
    , commentReplyList
    , crlNextPageToken
    , crlNextLink
    , crlKind
    , crlItems
    , crlSelfLink

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
    , fMd5Checksum
    , fFolderColorRgb
    , fMimeType
    , fCreatedDate
    , fSelfLink
    , fLastModifyingUserName
    , fShareable
    , fDownloadUrl
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

    -- * FileExportLinks
    , FileExportLinks
    , fileExportLinks

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

    -- * FileIndexableText
    , FileIndexableText
    , fileIndexableText
    , fitText

    -- * FileLabels
    , FileLabels
    , fileLabels
    , flViewed
    , flTrashed
    , flStarred
    , flHidden
    , flRestricted

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flNextLink
    , flKind
    , flItems
    , flSelfLink

    -- * FileLocationImageMediaMetadata
    , FileLocationImageMediaMetadata
    , fileLocationImageMediaMetadata
    , flimmLatitude
    , flimmAltitude
    , flimmLongitude

    -- * FileOpenWithLinks
    , FileOpenWithLinks
    , fileOpenWithLinks

    -- * FileThumbnail
    , FileThumbnail
    , fileThumbnail
    , ftImage
    , ftMimeType

    -- * FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- * GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- * ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

    -- * ParentReference
    , ParentReference
    , parentReference
    , prParentLink
    , prIsRoot
    , prKind
    , prSelfLink
    , prId

    -- * Permission
    , Permission
    , permission
    , pPhotoLink
    , pEtag
    , pWithLink
    , pKind
    , pDomain
    , pValue
    , pAdditionalRoles
    , pRole
    , pSelfLink
    , pName
    , pAuthKey
    , pEmailAddress
    , pId
    , pType

    -- * PermissionId
    , PermissionId
    , permissionId
    , piKind
    , piId

    -- * PermissionList
    , PermissionList
    , permissionList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- * Property
    , Property
    , property
    , proEtag
    , proKind
    , proValue
    , proVisibility
    , proSelfLink
    , proKey

    -- * PropertyList
    , PropertyList
    , propertyList
    , pllEtag
    , pllKind
    , pllItems
    , pllSelfLink

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
    , rMd5Checksum
    , rMimeType
    , rSelfLink
    , rLastModifyingUserName
    , rDownloadUrl
    , rExportLinks
    , rPublishedOutsideDomain
    , rId
    , rModifiedDate

    -- * RevisionExportLinks
    , RevisionExportLinks
    , revisionExportLinks

    -- * RevisionList
    , RevisionList
    , revisionList
    , rlEtag
    , rlKind
    , rlItems
    , rlSelfLink

    -- * User
    , User
    , user
    , uIsAuthenticatedUser
    , uKind
    , uPicture
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- * UserPicture
    , UserPicture
    , userPicture
    , upUrl
    ) where

import           Network.Google.Drive.Types.Product
import           Network.Google.Drive.Types.Sum
import           Network.Google.Prelude

drive :: a
drive = error "drive"

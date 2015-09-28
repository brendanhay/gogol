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

    -- * AppItemIcons
    , AppItemIcons
    , appItemIcons
    , aiiSize
    , aiiCategory
    , aiiIconUrl

    -- * FilesGet'Projection
    , FilesGet'Projection (..)

    -- * FilesCopy'Visibility
    , FilesCopy'Visibility (..)

    -- * FileExportLinks
    , FileExportLinks
    , fileExportLinks

    -- * Alt
    , Alt (..)

    -- * FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

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

    -- * FilesWatch'Projection
    , FilesWatch'Projection (..)

    -- * AboutItemRoleSetsItemAdditionalRoleInfo
    , AboutItemRoleSetsItemAdditionalRoleInfo
    , aboutItemRoleSetsItemAdditionalRoleInfo
    , airsiariPrimaryRole
    , airsiariAdditionalRoles

    -- * FileLabels
    , FileLabels
    , fileLabels
    , flViewed
    , flTrashed
    , flStarred
    , flHidden
    , flRestricted

    -- * FileOpenWithLinks
    , FileOpenWithLinks
    , fileOpenWithLinks

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

    -- * FilesList'Corpus
    , FilesList'Corpus (..)

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

    -- * FilesList'Projection
    , FilesList'Projection (..)

    -- * FilesPatch'ModifiedDateBehavior
    , FilesPatch'ModifiedDateBehavior (..)

    -- * UserPicture
    , UserPicture
    , userPicture
    , upUrl

    -- * FileLocationImageMediaMetadata
    , FileLocationImageMediaMetadata
    , fileLocationImageMediaMetadata
    , flimmLatitude
    , flimmAltitude
    , flimmLongitude

    -- * RevisionList
    , RevisionList
    , revisionList
    , rlEtag
    , rlKind
    , rlItems
    , rlSelfLink

    -- * FileThumbnail
    , FileThumbnail
    , fileThumbnail
    , ftImage
    , ftMimeType

    -- * PermissionList
    , PermissionList
    , permissionList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- * GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- * CommentList
    , CommentList
    , commentList
    , comNextPageToken
    , comNextLink
    , comKind
    , comItems
    , comSelfLink

    -- * FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flNextLink
    , flKind
    , flItems
    , flSelfLink

    -- * AboutItemFeatures
    , AboutItemFeatures
    , aboutItemFeatures
    , aifFeatureRate
    , aifFeatureName

    -- * ChannelParams
    , ChannelParams
    , channelParams

    -- * FileIndexableText
    , FileIndexableText
    , fileIndexableText
    , fitText

    -- * AboutItemExportFormats
    , AboutItemExportFormats
    , aboutItemExportFormats
    , aiefTargets
    , aiefSource

    -- * ParentReference
    , ParentReference
    , parentReference
    , prParentLink
    , prIsRoot
    , prKind
    , prSelfLink
    , prId

    -- * CommentContext
    , CommentContext
    , commentContext
    , ccValue
    , ccType

    -- * RevisionExportLinks
    , RevisionExportLinks
    , revisionExportLinks

    -- * Property
    , Property
    , property
    , ppEtag
    , ppKind
    , ppValue
    , ppVisibility
    , ppSelfLink
    , ppKey

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

    -- * PropertyList
    , PropertyList
    , propertyList
    , proEtag
    , proKind
    , proItems
    , proSelfLink

    -- * AboutItemAdditionalRoleInfo
    , AboutItemAdditionalRoleInfo
    , aboutItemAdditionalRoleInfo
    , aiariRoleSets
    , aiariType

    -- * ChildList
    , ChildList
    , childList
    , chiEtag
    , chiNextPageToken
    , chiNextLink
    , chiKind
    , chiItems
    , chiSelfLink

    -- * FilesInsert'Visibility
    , FilesInsert'Visibility (..)

    -- * AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

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

    -- * PermissionId
    , PermissionId
    , permissionId
    , piKind
    , piId

    -- * AboutItemImportFormats
    , AboutItemImportFormats
    , aboutItemImportFormats
    , aiifTargets
    , aiifSource

    -- * ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

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

    -- * FilesUpdate'ModifiedDateBehavior
    , FilesUpdate'ModifiedDateBehavior (..)

    -- * User
    , User
    , user
    , uIsAuthenticatedUser
    , uKind
    , uPicture
    , uEmailAddress
    , uDisplayName
    , uPermissionId

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

{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Drive
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The API to interact with Drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference>
module Network.Google.Drive
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

    -- * API Declaration
    , DriveAPI

    -- * Resources

    -- ** drive.about.get
    , module Network.Google.Resource.Drive.About.Get

    -- ** drive.apps.get
    , module Network.Google.Resource.Drive.Apps.Get

    -- ** drive.apps.list
    , module Network.Google.Resource.Drive.Apps.List

    -- ** drive.changes.get
    , module Network.Google.Resource.Drive.Changes.Get

    -- ** drive.changes.list
    , module Network.Google.Resource.Drive.Changes.List

    -- ** drive.changes.watch
    , module Network.Google.Resource.Drive.Changes.Watch

    -- ** drive.channels.stop
    , module Network.Google.Resource.Drive.Channels.Stop

    -- ** drive.children.delete
    , module Network.Google.Resource.Drive.Children.Delete

    -- ** drive.children.get
    , module Network.Google.Resource.Drive.Children.Get

    -- ** drive.children.insert
    , module Network.Google.Resource.Drive.Children.Insert

    -- ** drive.children.list
    , module Network.Google.Resource.Drive.Children.List

    -- ** drive.comments.delete
    , module Network.Google.Resource.Drive.Comments.Delete

    -- ** drive.comments.get
    , module Network.Google.Resource.Drive.Comments.Get

    -- ** drive.comments.insert
    , module Network.Google.Resource.Drive.Comments.Insert

    -- ** drive.comments.list
    , module Network.Google.Resource.Drive.Comments.List

    -- ** drive.comments.patch
    , module Network.Google.Resource.Drive.Comments.Patch

    -- ** drive.comments.update
    , module Network.Google.Resource.Drive.Comments.Update

    -- ** drive.files.copy
    , module Network.Google.Resource.Drive.Files.Copy

    -- ** drive.files.delete
    , module Network.Google.Resource.Drive.Files.Delete

    -- ** drive.files.emptyTrash
    , module Network.Google.Resource.Drive.Files.EmptyTrash

    -- ** drive.files.generateIds
    , module Network.Google.Resource.Drive.Files.GenerateIds

    -- ** drive.files.get
    , module Network.Google.Resource.Drive.Files.Get

    -- ** drive.files.insert
    , module Network.Google.Resource.Drive.Files.Insert

    -- ** drive.files.list
    , module Network.Google.Resource.Drive.Files.List

    -- ** drive.files.patch
    , module Network.Google.Resource.Drive.Files.Patch

    -- ** drive.files.touch
    , module Network.Google.Resource.Drive.Files.Touch

    -- ** drive.files.trash
    , module Network.Google.Resource.Drive.Files.Trash

    -- ** drive.files.untrash
    , module Network.Google.Resource.Drive.Files.Untrash

    -- ** drive.files.update
    , module Network.Google.Resource.Drive.Files.Update

    -- ** drive.files.watch
    , module Network.Google.Resource.Drive.Files.Watch

    -- ** drive.parents.delete
    , module Network.Google.Resource.Drive.Parents.Delete

    -- ** drive.parents.get
    , module Network.Google.Resource.Drive.Parents.Get

    -- ** drive.parents.insert
    , module Network.Google.Resource.Drive.Parents.Insert

    -- ** drive.parents.list
    , module Network.Google.Resource.Drive.Parents.List

    -- ** drive.permissions.delete
    , module Network.Google.Resource.Drive.Permissions.Delete

    -- ** drive.permissions.get
    , module Network.Google.Resource.Drive.Permissions.Get

    -- ** drive.permissions.getIdForEmail
    , module Network.Google.Resource.Drive.Permissions.GetIdForEmail

    -- ** drive.permissions.insert
    , module Network.Google.Resource.Drive.Permissions.Insert

    -- ** drive.permissions.list
    , module Network.Google.Resource.Drive.Permissions.List

    -- ** drive.permissions.patch
    , module Network.Google.Resource.Drive.Permissions.Patch

    -- ** drive.permissions.update
    , module Network.Google.Resource.Drive.Permissions.Update

    -- ** drive.properties.delete
    , module Network.Google.Resource.Drive.Properties.Delete

    -- ** drive.properties.get
    , module Network.Google.Resource.Drive.Properties.Get

    -- ** drive.properties.insert
    , module Network.Google.Resource.Drive.Properties.Insert

    -- ** drive.properties.list
    , module Network.Google.Resource.Drive.Properties.List

    -- ** drive.properties.patch
    , module Network.Google.Resource.Drive.Properties.Patch

    -- ** drive.properties.update
    , module Network.Google.Resource.Drive.Properties.Update

    -- ** drive.realtime.get
    , module Network.Google.Resource.Drive.Realtime.Get

    -- ** drive.realtime.update
    , module Network.Google.Resource.Drive.Realtime.Update

    -- ** drive.replies.delete
    , module Network.Google.Resource.Drive.Replies.Delete

    -- ** drive.replies.get
    , module Network.Google.Resource.Drive.Replies.Get

    -- ** drive.replies.insert
    , module Network.Google.Resource.Drive.Replies.Insert

    -- ** drive.replies.list
    , module Network.Google.Resource.Drive.Replies.List

    -- ** drive.replies.patch
    , module Network.Google.Resource.Drive.Replies.Patch

    -- ** drive.replies.update
    , module Network.Google.Resource.Drive.Replies.Update

    -- ** drive.revisions.delete
    , module Network.Google.Resource.Drive.Revisions.Delete

    -- ** drive.revisions.get
    , module Network.Google.Resource.Drive.Revisions.Get

    -- ** drive.revisions.list
    , module Network.Google.Resource.Drive.Revisions.List

    -- ** drive.revisions.patch
    , module Network.Google.Resource.Drive.Revisions.Patch

    -- ** drive.revisions.update
    , module Network.Google.Resource.Drive.Revisions.Update

    -- * Types

    -- ** CommentContext
    , CommentContext
    , commentContext
    , ccValue
    , ccType

    -- ** AppIconsItem
    , AppIconsItem
    , appIconsItem
    , aiiSize
    , aiiCategory
    , aiiIconURL

    -- ** FilesInsertVisibility
    , FilesInsertVisibility (..)

    -- ** FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flNextLink
    , flKind
    , flItems
    , flSelfLink

    -- ** ParentReference
    , ParentReference
    , parentReference
    , prParentLink
    , prIsRoot
    , prKind
    , prSelfLink
    , prId

    -- ** Property
    , Property
    , property
    , pEtag
    , pKind
    , pValue
    , pVisibility
    , pSelfLink
    , pKey

    -- ** FilesListCorpus
    , FilesListCorpus (..)

    -- ** FileThumbnail
    , FileThumbnail
    , fileThumbnail
    , ftImage
    , ftMimeType

    -- ** FilesListProjection
    , FilesListProjection (..)

    -- ** UserPicture
    , UserPicture
    , userPicture
    , upURL

    -- ** FilesUpdateModifiedDateBehavior
    , FilesUpdateModifiedDateBehavior (..)

    -- ** PropertyList
    , PropertyList
    , propertyList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- ** ChildList
    , ChildList
    , childList
    , clEtag
    , clNextPageToken
    , clNextLink
    , clKind
    , clItems
    , clSelfLink

    -- ** AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

    -- ** FileOpenWithLinks
    , FileOpenWithLinks
    , fileOpenWithLinks
    , fowlAddtional

    -- ** AboutAdditionalRoleInfoItemRoleSetsItem
    , AboutAdditionalRoleInfoItemRoleSetsItem
    , aboutAdditionalRoleInfoItemRoleSetsItem
    , aariirsiPrimaryRole
    , aariirsiAdditionalRoles

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

    -- ** CommentReplyList
    , CommentReplyList
    , commentReplyList
    , crlNextPageToken
    , crlNextLink
    , crlKind
    , crlItems
    , crlSelfLink

    -- ** FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- ** Change
    , Change
    , change
    , chaKind
    , chaSelfLink
    , chaModificationDate
    , chaId
    , chaDeleted
    , chaFileId
    , chaFile

    -- ** App
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

    -- ** ChildReference
    , ChildReference
    , childReference
    , crChildLink
    , crKind
    , crSelfLink
    , crId

    -- ** FilesWatchProjection
    , FilesWatchProjection (..)

    -- ** AboutMaxUploadSizesItem
    , AboutMaxUploadSizesItem
    , aboutMaxUploadSizesItem
    , amusiSize
    , amusiType

    -- ** CommentReply
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

    -- ** AboutQuotaBytesByServiceItem
    , AboutQuotaBytesByServiceItem
    , aboutQuotaBytesByServiceItem
    , aqbbsiBytesUsed
    , aqbbsiServiceName

    -- ** User
    , User
    , user
    , uIsAuthenticatedUser
    , uKind
    , uPicture
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- ** AboutExportFormatsItem
    , AboutExportFormatsItem
    , aboutExportFormatsItem
    , aefiTargets
    , aefiSource

    -- ** ChangeList
    , ChangeList
    , changeList
    , cllEtag
    , cllNextPageToken
    , cllNextLink
    , cllKind
    , cllItems
    , cllSelfLink
    , cllLargestChangeId

    -- ** RevisionExportLinks
    , RevisionExportLinks
    , revisionExportLinks
    , relAddtional

    -- ** FileIndexableText
    , FileIndexableText
    , fileIndexableText
    , fitText

    -- ** AboutFeaturesItem
    , AboutFeaturesItem
    , aboutFeaturesItem
    , afiFeatureRate
    , afiFeatureName

    -- ** ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- ** FilesPatchModifiedDateBehavior
    , FilesPatchModifiedDateBehavior (..)

    -- ** About
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

    -- ** FileImageMediaMetadataLocation
    , FileImageMediaMetadataLocation
    , fileImageMediaMetadataLocation
    , fimmlLatitude
    , fimmlAltitude
    , fimmlLongitude

    -- ** AboutImportFormatsItem
    , AboutImportFormatsItem
    , aboutImportFormatsItem
    , aifiTargets
    , aifiSource

    -- ** FileImageMediaMetadata
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

    -- ** FileLabels
    , FileLabels
    , fileLabels
    , flViewed
    , flTrashed
    , flStarred
    , flHidden
    , flRestricted

    -- ** Comment
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

    -- ** Revision
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

    -- ** AboutAdditionalRoleInfoItem
    , AboutAdditionalRoleInfoItem
    , aboutAdditionalRoleInfoItem
    , aariiRoleSets
    , aariiType

    -- ** Permission
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

    -- ** File
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

    -- ** PermissionId
    , PermissionId
    , permissionId
    , piKind
    , piId

    -- ** FilesCopyVisibility
    , FilesCopyVisibility (..)

    -- ** FilesGetProjection
    , FilesGetProjection (..)

    -- ** ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

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
    , comoNextPageToken
    , comoNextLink
    , comoKind
    , comoItems
    , comoSelfLink

    -- ** RevisionList
    , RevisionList
    , revisionList
    , rlEtag
    , rlKind
    , rlItems
    , rlSelfLink

    -- ** PermissionList
    , PermissionList
    , permissionList
    , pllEtag
    , pllKind
    , pllItems
    , pllSelfLink
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Drive.About.Get
import           Network.Google.Resource.Drive.Apps.Get
import           Network.Google.Resource.Drive.Apps.List
import           Network.Google.Resource.Drive.Changes.Get
import           Network.Google.Resource.Drive.Changes.List
import           Network.Google.Resource.Drive.Changes.Watch
import           Network.Google.Resource.Drive.Channels.Stop
import           Network.Google.Resource.Drive.Children.Delete
import           Network.Google.Resource.Drive.Children.Get
import           Network.Google.Resource.Drive.Children.Insert
import           Network.Google.Resource.Drive.Children.List
import           Network.Google.Resource.Drive.Comments.Delete
import           Network.Google.Resource.Drive.Comments.Get
import           Network.Google.Resource.Drive.Comments.Insert
import           Network.Google.Resource.Drive.Comments.List
import           Network.Google.Resource.Drive.Comments.Patch
import           Network.Google.Resource.Drive.Comments.Update
import           Network.Google.Resource.Drive.Files.Copy
import           Network.Google.Resource.Drive.Files.Delete
import           Network.Google.Resource.Drive.Files.EmptyTrash
import           Network.Google.Resource.Drive.Files.GenerateIds
import           Network.Google.Resource.Drive.Files.Get
import           Network.Google.Resource.Drive.Files.Insert
import           Network.Google.Resource.Drive.Files.List
import           Network.Google.Resource.Drive.Files.Patch
import           Network.Google.Resource.Drive.Files.Touch
import           Network.Google.Resource.Drive.Files.Trash
import           Network.Google.Resource.Drive.Files.Untrash
import           Network.Google.Resource.Drive.Files.Update
import           Network.Google.Resource.Drive.Files.Watch
import           Network.Google.Resource.Drive.Parents.Delete
import           Network.Google.Resource.Drive.Parents.Get
import           Network.Google.Resource.Drive.Parents.Insert
import           Network.Google.Resource.Drive.Parents.List
import           Network.Google.Resource.Drive.Permissions.Delete
import           Network.Google.Resource.Drive.Permissions.Get
import           Network.Google.Resource.Drive.Permissions.GetIdForEmail
import           Network.Google.Resource.Drive.Permissions.Insert
import           Network.Google.Resource.Drive.Permissions.List
import           Network.Google.Resource.Drive.Permissions.Patch
import           Network.Google.Resource.Drive.Permissions.Update
import           Network.Google.Resource.Drive.Properties.Delete
import           Network.Google.Resource.Drive.Properties.Get
import           Network.Google.Resource.Drive.Properties.Insert
import           Network.Google.Resource.Drive.Properties.List
import           Network.Google.Resource.Drive.Properties.Patch
import           Network.Google.Resource.Drive.Properties.Update
import           Network.Google.Resource.Drive.Realtime.Get
import           Network.Google.Resource.Drive.Realtime.Update
import           Network.Google.Resource.Drive.Replies.Delete
import           Network.Google.Resource.Drive.Replies.Get
import           Network.Google.Resource.Drive.Replies.Insert
import           Network.Google.Resource.Drive.Replies.List
import           Network.Google.Resource.Drive.Replies.Patch
import           Network.Google.Resource.Drive.Replies.Update
import           Network.Google.Resource.Drive.Revisions.Delete
import           Network.Google.Resource.Drive.Revisions.Get
import           Network.Google.Resource.Drive.Revisions.List
import           Network.Google.Resource.Drive.Revisions.Patch
import           Network.Google.Resource.Drive.Revisions.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Drive API service.
type DriveAPI =
     AppsListResource :<|> AppsGetResource :<|>
       ChangesListResource
       :<|> ChangesGetResource
       :<|> ChangesWatchResource
       :<|> ChannelsStopResource
       :<|> ChildrenInsertResource
       :<|> ChildrenListResource
       :<|> ChildrenGetResource
       :<|> ChildrenDeleteResource
       :<|> RepliesInsertResource
       :<|> RepliesListResource
       :<|> RepliesPatchResource
       :<|> RepliesGetResource
       :<|> RepliesDeleteResource
       :<|> RepliesUpdateResource
       :<|> ParentsInsertResource
       :<|> ParentsListResource
       :<|> ParentsGetResource
       :<|> ParentsDeleteResource
       :<|> RealtimeGetResource
       :<|> RealtimeUpdateResource
       :<|> AboutGetResource
       :<|> FilesInsertResource
       :<|> FilesListResource
       :<|> FilesCopyResource
       :<|> FilesPatchResource
       :<|> FilesGetResource
       :<|> FilesEmptyTrashResource
       :<|> FilesTrashResource
       :<|> FilesUntrashResource
       :<|> FilesTouchResource
       :<|> FilesGenerateIdsResource
       :<|> FilesDeleteResource
       :<|> FilesUpdateResource
       :<|> FilesWatchResource
       :<|> PermissionsGetIdForEmailResource
       :<|> PermissionsInsertResource
       :<|> PermissionsListResource
       :<|> PermissionsPatchResource
       :<|> PermissionsGetResource
       :<|> PermissionsDeleteResource
       :<|> PermissionsUpdateResource
       :<|> CommentsInsertResource
       :<|> CommentsListResource
       :<|> CommentsPatchResource
       :<|> CommentsGetResource
       :<|> CommentsDeleteResource
       :<|> CommentsUpdateResource
       :<|> RevisionsListResource
       :<|> RevisionsPatchResource
       :<|> RevisionsGetResource
       :<|> RevisionsDeleteResource
       :<|> RevisionsUpdateResource
       :<|> PropertiesInsertResource
       :<|> PropertiesListResource
       :<|> PropertiesPatchResource
       :<|> PropertiesGetResource
       :<|> PropertiesDeleteResource
       :<|> PropertiesUpdateResource

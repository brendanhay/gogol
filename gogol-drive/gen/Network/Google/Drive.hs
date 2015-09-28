{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | The API to interact with Drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference>
module Network.Google.Drive
    (
    -- * REST Resources

    -- ** Drive API
      Drive
    , drive
    , driveURL

    -- ** drive.about.get
    , module Network.Google.API.Drive.About.Get

    -- ** drive.apps.get
    , module Network.Google.API.Drive.Apps.Get

    -- ** drive.apps.list
    , module Network.Google.API.Drive.Apps.List

    -- ** drive.changes.get
    , module Network.Google.API.Drive.Changes.Get

    -- ** drive.changes.list
    , module Network.Google.API.Drive.Changes.List

    -- ** drive.changes.watch
    , module Network.Google.API.Drive.Changes.Watch

    -- ** drive.channels.stop
    , module Network.Google.API.Drive.Channels.Stop

    -- ** drive.children.delete
    , module Network.Google.API.Drive.Children.Delete

    -- ** drive.children.get
    , module Network.Google.API.Drive.Children.Get

    -- ** drive.children.insert
    , module Network.Google.API.Drive.Children.Insert

    -- ** drive.children.list
    , module Network.Google.API.Drive.Children.List

    -- ** drive.comments.delete
    , module Network.Google.API.Drive.Comments.Delete

    -- ** drive.comments.get
    , module Network.Google.API.Drive.Comments.Get

    -- ** drive.comments.insert
    , module Network.Google.API.Drive.Comments.Insert

    -- ** drive.comments.list
    , module Network.Google.API.Drive.Comments.List

    -- ** drive.comments.patch
    , module Network.Google.API.Drive.Comments.Patch

    -- ** drive.comments.update
    , module Network.Google.API.Drive.Comments.Update

    -- ** drive.files.copy
    , module Network.Google.API.Drive.Files.Copy

    -- ** drive.files.delete
    , module Network.Google.API.Drive.Files.Delete

    -- ** drive.files.emptyTrash
    , module Network.Google.API.Drive.Files.EmptyTrash

    -- ** drive.files.generateIds
    , module Network.Google.API.Drive.Files.GenerateIds

    -- ** drive.files.get
    , module Network.Google.API.Drive.Files.Get

    -- ** drive.files.insert
    , module Network.Google.API.Drive.Files.Insert

    -- ** drive.files.list
    , module Network.Google.API.Drive.Files.List

    -- ** drive.files.patch
    , module Network.Google.API.Drive.Files.Patch

    -- ** drive.files.touch
    , module Network.Google.API.Drive.Files.Touch

    -- ** drive.files.trash
    , module Network.Google.API.Drive.Files.Trash

    -- ** drive.files.untrash
    , module Network.Google.API.Drive.Files.Untrash

    -- ** drive.files.update
    , module Network.Google.API.Drive.Files.Update

    -- ** drive.files.watch
    , module Network.Google.API.Drive.Files.Watch

    -- ** drive.parents.delete
    , module Network.Google.API.Drive.Parents.Delete

    -- ** drive.parents.get
    , module Network.Google.API.Drive.Parents.Get

    -- ** drive.parents.insert
    , module Network.Google.API.Drive.Parents.Insert

    -- ** drive.parents.list
    , module Network.Google.API.Drive.Parents.List

    -- ** drive.permissions.delete
    , module Network.Google.API.Drive.Permissions.Delete

    -- ** drive.permissions.get
    , module Network.Google.API.Drive.Permissions.Get

    -- ** drive.permissions.getIdForEmail
    , module Network.Google.API.Drive.Permissions.GetIdForEmail

    -- ** drive.permissions.insert
    , module Network.Google.API.Drive.Permissions.Insert

    -- ** drive.permissions.list
    , module Network.Google.API.Drive.Permissions.List

    -- ** drive.permissions.patch
    , module Network.Google.API.Drive.Permissions.Patch

    -- ** drive.permissions.update
    , module Network.Google.API.Drive.Permissions.Update

    -- ** drive.properties.delete
    , module Network.Google.API.Drive.Properties.Delete

    -- ** drive.properties.get
    , module Network.Google.API.Drive.Properties.Get

    -- ** drive.properties.insert
    , module Network.Google.API.Drive.Properties.Insert

    -- ** drive.properties.list
    , module Network.Google.API.Drive.Properties.List

    -- ** drive.properties.patch
    , module Network.Google.API.Drive.Properties.Patch

    -- ** drive.properties.update
    , module Network.Google.API.Drive.Properties.Update

    -- ** drive.realtime.get
    , module Network.Google.API.Drive.Realtime.Get

    -- ** drive.realtime.update
    , module Network.Google.API.Drive.Realtime.Update

    -- ** drive.replies.delete
    , module Network.Google.API.Drive.Replies.Delete

    -- ** drive.replies.get
    , module Network.Google.API.Drive.Replies.Get

    -- ** drive.replies.insert
    , module Network.Google.API.Drive.Replies.Insert

    -- ** drive.replies.list
    , module Network.Google.API.Drive.Replies.List

    -- ** drive.replies.patch
    , module Network.Google.API.Drive.Replies.Patch

    -- ** drive.replies.update
    , module Network.Google.API.Drive.Replies.Update

    -- ** drive.revisions.delete
    , module Network.Google.API.Drive.Revisions.Delete

    -- ** drive.revisions.get
    , module Network.Google.API.Drive.Revisions.Get

    -- ** drive.revisions.list
    , module Network.Google.API.Drive.Revisions.List

    -- ** drive.revisions.patch
    , module Network.Google.API.Drive.Revisions.Patch

    -- ** drive.revisions.update
    , module Network.Google.API.Drive.Revisions.Update

    -- * Types

    -- ** ChangeList
    , ChangeList
    , changeList
    , clEtag
    , clNextPageToken
    , clNextLink
    , clKind
    , clItems
    , clSelfLink
    , clLargestChangeId

    -- ** AppItemIcons
    , AppItemIcons
    , appItemIcons
    , aiiSize
    , aiiCategory
    , aiiIconUrl

    -- ** FilesGet'Projection
    , FilesGet'Projection (..)

    -- ** FilesCopy'Visibility
    , FilesCopy'Visibility (..)

    -- ** FileExportLinks
    , FileExportLinks
    , fileExportLinks

    -- ** Alt
    , Alt (..)

    -- ** FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- ** About
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

    -- ** FilesWatch'Projection
    , FilesWatch'Projection (..)

    -- ** AboutItemRoleSetsItemAdditionalRoleInfo
    , AboutItemRoleSetsItemAdditionalRoleInfo
    , aboutItemRoleSetsItemAdditionalRoleInfo
    , airsiariPrimaryRole
    , airsiariAdditionalRoles

    -- ** FileLabels
    , FileLabels
    , fileLabels
    , flViewed
    , flTrashed
    , flStarred
    , flHidden
    , flRestricted

    -- ** FileOpenWithLinks
    , FileOpenWithLinks
    , fileOpenWithLinks

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

    -- ** FilesList'Corpus
    , FilesList'Corpus (..)

    -- ** Comment
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

    -- ** Permission
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
    , rMd5Checksum
    , rMimeType
    , rSelfLink
    , rLastModifyingUserName
    , rDownloadUrl
    , rExportLinks
    , rPublishedOutsideDomain
    , rId
    , rModifiedDate

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

    -- ** FilesList'Projection
    , FilesList'Projection (..)

    -- ** FilesPatch'ModifiedDateBehavior
    , FilesPatch'ModifiedDateBehavior (..)

    -- ** UserPicture
    , UserPicture
    , userPicture
    , upUrl

    -- ** FileLocationImageMediaMetadata
    , FileLocationImageMediaMetadata
    , fileLocationImageMediaMetadata
    , flimmLatitude
    , flimmAltitude
    , flimmLongitude

    -- ** RevisionList
    , RevisionList
    , revisionList
    , rlEtag
    , rlKind
    , rlItems
    , rlSelfLink

    -- ** FileThumbnail
    , FileThumbnail
    , fileThumbnail
    , ftImage
    , ftMimeType

    -- ** PermissionList
    , PermissionList
    , permissionList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- ** GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- ** CommentList
    , CommentList
    , commentList
    , comNextPageToken
    , comNextLink
    , comKind
    , comItems
    , comSelfLink

    -- ** FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flNextLink
    , flKind
    , flItems
    , flSelfLink

    -- ** AboutItemFeatures
    , AboutItemFeatures
    , aboutItemFeatures
    , aifFeatureRate
    , aifFeatureName

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** FileIndexableText
    , FileIndexableText
    , fileIndexableText
    , fitText

    -- ** AboutItemExportFormats
    , AboutItemExportFormats
    , aboutItemExportFormats
    , aiefTargets
    , aiefSource

    -- ** ParentReference
    , ParentReference
    , parentReference
    , prParentLink
    , prIsRoot
    , prKind
    , prSelfLink
    , prId

    -- ** CommentContext
    , CommentContext
    , commentContext
    , ccValue
    , ccType

    -- ** RevisionExportLinks
    , RevisionExportLinks
    , revisionExportLinks

    -- ** Property
    , Property
    , property
    , ppEtag
    , ppKind
    , ppValue
    , ppVisibility
    , ppSelfLink
    , ppKey

    -- ** AboutItemMaxUploadSizes
    , AboutItemMaxUploadSizes
    , aboutItemMaxUploadSizes
    , aimusSize
    , aimusType

    -- ** AboutItemQuotaBytesByService
    , AboutItemQuotaBytesByService
    , aboutItemQuotaBytesByService
    , aiqbbsBytesUsed
    , aiqbbsServiceName

    -- ** PropertyList
    , PropertyList
    , propertyList
    , proEtag
    , proKind
    , proItems
    , proSelfLink

    -- ** AboutItemAdditionalRoleInfo
    , AboutItemAdditionalRoleInfo
    , aboutItemAdditionalRoleInfo
    , aiariRoleSets
    , aiariType

    -- ** ChildList
    , ChildList
    , childList
    , chiEtag
    , chiNextPageToken
    , chiNextLink
    , chiKind
    , chiItems
    , chiSelfLink

    -- ** FilesInsert'Visibility
    , FilesInsert'Visibility (..)

    -- ** AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

    -- ** CommentReplyList
    , CommentReplyList
    , commentReplyList
    , crlNextPageToken
    , crlNextLink
    , crlKind
    , crlItems
    , crlSelfLink

    -- ** Channel
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

    -- ** PermissionId
    , PermissionId
    , permissionId
    , piKind
    , piId

    -- ** AboutItemImportFormats
    , AboutItemImportFormats
    , aboutItemImportFormats
    , aiifTargets
    , aiifSource

    -- ** ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

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

    -- ** FilesUpdate'ModifiedDateBehavior
    , FilesUpdate'ModifiedDateBehavior (..)

    -- ** User
    , User
    , user
    , uIsAuthenticatedUser
    , uKind
    , uPicture
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- ** ChildReference
    , ChildReference
    , childReference
    , crChildLink
    , crKind
    , crSelfLink
    , crId

    -- ** App
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

    -- ** CommentReply
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

import           Network.Google.API.Drive.About.Get
import           Network.Google.API.Drive.Apps.Get
import           Network.Google.API.Drive.Apps.List
import           Network.Google.API.Drive.Changes.Get
import           Network.Google.API.Drive.Changes.List
import           Network.Google.API.Drive.Changes.Watch
import           Network.Google.API.Drive.Channels.Stop
import           Network.Google.API.Drive.Children.Delete
import           Network.Google.API.Drive.Children.Get
import           Network.Google.API.Drive.Children.Insert
import           Network.Google.API.Drive.Children.List
import           Network.Google.API.Drive.Comments.Delete
import           Network.Google.API.Drive.Comments.Get
import           Network.Google.API.Drive.Comments.Insert
import           Network.Google.API.Drive.Comments.List
import           Network.Google.API.Drive.Comments.Patch
import           Network.Google.API.Drive.Comments.Update
import           Network.Google.API.Drive.Files.Copy
import           Network.Google.API.Drive.Files.Delete
import           Network.Google.API.Drive.Files.EmptyTrash
import           Network.Google.API.Drive.Files.GenerateIds
import           Network.Google.API.Drive.Files.Get
import           Network.Google.API.Drive.Files.Insert
import           Network.Google.API.Drive.Files.List
import           Network.Google.API.Drive.Files.Patch
import           Network.Google.API.Drive.Files.Touch
import           Network.Google.API.Drive.Files.Trash
import           Network.Google.API.Drive.Files.Untrash
import           Network.Google.API.Drive.Files.Update
import           Network.Google.API.Drive.Files.Watch
import           Network.Google.API.Drive.Parents.Delete
import           Network.Google.API.Drive.Parents.Get
import           Network.Google.API.Drive.Parents.Insert
import           Network.Google.API.Drive.Parents.List
import           Network.Google.API.Drive.Permissions.Delete
import           Network.Google.API.Drive.Permissions.Get
import           Network.Google.API.Drive.Permissions.GetIdForEmail
import           Network.Google.API.Drive.Permissions.Insert
import           Network.Google.API.Drive.Permissions.List
import           Network.Google.API.Drive.Permissions.Patch
import           Network.Google.API.Drive.Permissions.Update
import           Network.Google.API.Drive.Properties.Delete
import           Network.Google.API.Drive.Properties.Get
import           Network.Google.API.Drive.Properties.Insert
import           Network.Google.API.Drive.Properties.List
import           Network.Google.API.Drive.Properties.Patch
import           Network.Google.API.Drive.Properties.Update
import           Network.Google.API.Drive.Realtime.Get
import           Network.Google.API.Drive.Realtime.Update
import           Network.Google.API.Drive.Replies.Delete
import           Network.Google.API.Drive.Replies.Get
import           Network.Google.API.Drive.Replies.Insert
import           Network.Google.API.Drive.Replies.List
import           Network.Google.API.Drive.Replies.Patch
import           Network.Google.API.Drive.Replies.Update
import           Network.Google.API.Drive.Revisions.Delete
import           Network.Google.API.Drive.Revisions.Get
import           Network.Google.API.Drive.Revisions.List
import           Network.Google.API.Drive.Revisions.Patch
import           Network.Google.API.Drive.Revisions.Update
import           Network.Google.Drive.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Drive =
     RepliesGetAPI :<|> ChildrenDeleteAPI :<|>
       RealtimeUpdateAPI
       :<|> ChangesWatchAPI
       :<|> FilesDeleteAPI
       :<|> RepliesInsertAPI
       :<|> ParentsListAPI
       :<|> RevisionsListAPI
       :<|> CommentsGetAPI
       :<|> RevisionsGetAPI
       :<|> RepliesPatchAPI
       :<|> CommentsListAPI
       :<|> FilesUpdateAPI
       :<|> ParentsDeleteAPI
       :<|> FilesCopyAPI
       :<|> AboutGetAPI
       :<|> PermissionsDeleteAPI
       :<|> FilesListAPI
       :<|> ChildrenListAPI
       :<|> PropertiesGetAPI
       :<|> CommentsPatchAPI
       :<|> RevisionsPatchAPI
       :<|> RepliesListAPI
       :<|> PermissionsGetAPI
       :<|> PropertiesInsertAPI
       :<|> PermissionsGetIdForEmailAPI
       :<|> RepliesUpdateAPI
       :<|> PropertiesListAPI
       :<|> FilesUntrashAPI
       :<|> PropertiesDeleteAPI
       :<|> PermissionsPatchAPI
       :<|> ChangesGetAPI
       :<|> FilesPatchAPI
       :<|> PermissionsListAPI
       :<|> ParentsInsertAPI
       :<|> AppsGetAPI
       :<|> PropertiesUpdateAPI
       :<|> PermissionsUpdateAPI
       :<|> CommentsDeleteAPI
       :<|> ChangesListAPI
       :<|> RevisionsDeleteAPI
       :<|> FilesEmptyTrashAPI
       :<|> FilesInsertAPI
       :<|> ChildrenInsertAPI
       :<|> FilesTouchAPI
       :<|> FilesWatchAPI
       :<|> RealtimeGetAPI
       :<|> ChannelsStopAPI
       :<|> AppsListAPI
       :<|> FilesGetAPI
       :<|> ChildrenGetAPI
       :<|> PermissionsInsertAPI
       :<|> PropertiesPatchAPI
       :<|> FilesGenerateIdsAPI
       :<|> ParentsGetAPI
       :<|> RepliesDeleteAPI
       :<|> FilesTrashAPI
       :<|> CommentsInsertAPI
       :<|> RevisionsUpdateAPI
       :<|> CommentsUpdateAPI

drive :: Proxy Drive
drive = Proxy

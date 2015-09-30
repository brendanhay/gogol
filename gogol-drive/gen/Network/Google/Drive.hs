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
    -- * API
      DriveAPI
    , driveAPI
    , driveURL

    -- * Service Methods

    -- * REST Resources

    -- ** DriveAboutGet
    , module Drive.About.Get

    -- ** DriveAppsGet
    , module Drive.Apps.Get

    -- ** DriveAppsList
    , module Drive.Apps.List

    -- ** DriveChangesGet
    , module Drive.Changes.Get

    -- ** DriveChangesList
    , module Drive.Changes.List

    -- ** DriveChangesWatch
    , module Drive.Changes.Watch

    -- ** DriveChannelsStop
    , module Drive.Channels.Stop

    -- ** DriveChildrenDelete
    , module Drive.Children.Delete

    -- ** DriveChildrenGet
    , module Drive.Children.Get

    -- ** DriveChildrenInsert
    , module Drive.Children.Insert

    -- ** DriveChildrenList
    , module Drive.Children.List

    -- ** DriveCommentsDelete
    , module Drive.Comments.Delete

    -- ** DriveCommentsGet
    , module Drive.Comments.Get

    -- ** DriveCommentsInsert
    , module Drive.Comments.Insert

    -- ** DriveCommentsList
    , module Drive.Comments.List

    -- ** DriveCommentsPatch
    , module Drive.Comments.Patch

    -- ** DriveCommentsUpdate
    , module Drive.Comments.Update

    -- ** DriveFilesCopy
    , module Drive.Files.Copy

    -- ** DriveFilesDelete
    , module Drive.Files.Delete

    -- ** DriveFilesEmptyTrash
    , module Drive.Files.EmptyTrash

    -- ** DriveFilesGenerateIds
    , module Drive.Files.GenerateIds

    -- ** DriveFilesGet
    , module Drive.Files.Get

    -- ** DriveFilesInsert
    , module Drive.Files.Insert

    -- ** DriveFilesList
    , module Drive.Files.List

    -- ** DriveFilesPatch
    , module Drive.Files.Patch

    -- ** DriveFilesTouch
    , module Drive.Files.Touch

    -- ** DriveFilesTrash
    , module Drive.Files.Trash

    -- ** DriveFilesUntrash
    , module Drive.Files.Untrash

    -- ** DriveFilesUpdate
    , module Drive.Files.Update

    -- ** DriveFilesWatch
    , module Drive.Files.Watch

    -- ** DriveParentsDelete
    , module Drive.Parents.Delete

    -- ** DriveParentsGet
    , module Drive.Parents.Get

    -- ** DriveParentsInsert
    , module Drive.Parents.Insert

    -- ** DriveParentsList
    , module Drive.Parents.List

    -- ** DrivePermissionsDelete
    , module Drive.Permissions.Delete

    -- ** DrivePermissionsGet
    , module Drive.Permissions.Get

    -- ** DrivePermissionsGetIdForEmail
    , module Drive.Permissions.GetIdForEmail

    -- ** DrivePermissionsInsert
    , module Drive.Permissions.Insert

    -- ** DrivePermissionsList
    , module Drive.Permissions.List

    -- ** DrivePermissionsPatch
    , module Drive.Permissions.Patch

    -- ** DrivePermissionsUpdate
    , module Drive.Permissions.Update

    -- ** DrivePropertiesDelete
    , module Drive.Properties.Delete

    -- ** DrivePropertiesGet
    , module Drive.Properties.Get

    -- ** DrivePropertiesInsert
    , module Drive.Properties.Insert

    -- ** DrivePropertiesList
    , module Drive.Properties.List

    -- ** DrivePropertiesPatch
    , module Drive.Properties.Patch

    -- ** DrivePropertiesUpdate
    , module Drive.Properties.Update

    -- ** DriveRealtimeGet
    , module Drive.Realtime.Get

    -- ** DriveRealtimeUpdate
    , module Drive.Realtime.Update

    -- ** DriveRepliesDelete
    , module Drive.Replies.Delete

    -- ** DriveRepliesGet
    , module Drive.Replies.Get

    -- ** DriveRepliesInsert
    , module Drive.Replies.Insert

    -- ** DriveRepliesList
    , module Drive.Replies.List

    -- ** DriveRepliesPatch
    , module Drive.Replies.Patch

    -- ** DriveRepliesUpdate
    , module Drive.Replies.Update

    -- ** DriveRevisionsDelete
    , module Drive.Revisions.Delete

    -- ** DriveRevisionsGet
    , module Drive.Revisions.Get

    -- ** DriveRevisionsList
    , module Drive.Revisions.List

    -- ** DriveRevisionsPatch
    , module Drive.Revisions.Patch

    -- ** DriveRevisionsUpdate
    , module Drive.Revisions.Update

    -- * Types

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
    , cResourceUri
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- ** AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

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

    -- ** User
    , User
    , user
    , uIsAuthenticatedUser
    , uKind
    , uPicture
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- ** CommentReply
    , CommentReply
    , commentReply
    , comHtmlContent
    , comKind
    , comContent
    , comCreatedDate
    , comReplyId
    , comAuthor
    , comModifiedDate
    , comDeleted
    , comVerb

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

    -- ** Comment
    , Comment
    , comment
    , ccStatus
    , ccHtmlContent
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

    -- ** PermissionId
    , PermissionId
    , permissionId
    , piKind
    , piId

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

    -- ** ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

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

    -- ** GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- ** CommentList
    , CommentList
    , commentList
    , comoNextPageToken
    , comoNextLink
    , comoKind
    , comoItems
    , comoSelfLink
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

type DriveAPI =
     Apps :<|> Changes :<|> Channels :<|> Children :<|>
       Replies
       :<|> Parents
       :<|> Realtime
       :<|> About
       :<|> Files
       :<|> Permissions
       :<|> Comments
       :<|> Revisions
       :<|> Properties

driveAPI :: Proxy DriveAPI
driveAPI = Proxy

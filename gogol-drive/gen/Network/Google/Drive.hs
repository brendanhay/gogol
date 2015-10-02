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
    , module Network.Google.Resource.Drive.About.Get

    -- ** DriveAppsGet
    , module Network.Google.Resource.Drive.Apps.Get

    -- ** DriveAppsList
    , module Network.Google.Resource.Drive.Apps.List

    -- ** DriveChangesGet
    , module Network.Google.Resource.Drive.Changes.Get

    -- ** DriveChangesList
    , module Network.Google.Resource.Drive.Changes.List

    -- ** DriveChangesWatch
    , module Network.Google.Resource.Drive.Changes.Watch

    -- ** DriveChannelsStop
    , module Network.Google.Resource.Drive.Channels.Stop

    -- ** DriveChildrenDelete
    , module Network.Google.Resource.Drive.Children.Delete

    -- ** DriveChildrenGet
    , module Network.Google.Resource.Drive.Children.Get

    -- ** DriveChildrenInsert
    , module Network.Google.Resource.Drive.Children.Insert

    -- ** DriveChildrenList
    , module Network.Google.Resource.Drive.Children.List

    -- ** DriveCommentsDelete
    , module Network.Google.Resource.Drive.Comments.Delete

    -- ** DriveCommentsGet
    , module Network.Google.Resource.Drive.Comments.Get

    -- ** DriveCommentsInsert
    , module Network.Google.Resource.Drive.Comments.Insert

    -- ** DriveCommentsList
    , module Network.Google.Resource.Drive.Comments.List

    -- ** DriveCommentsPatch
    , module Network.Google.Resource.Drive.Comments.Patch

    -- ** DriveCommentsUpdate
    , module Network.Google.Resource.Drive.Comments.Update

    -- ** DriveFilesCopy
    , module Network.Google.Resource.Drive.Files.Copy

    -- ** DriveFilesDelete
    , module Network.Google.Resource.Drive.Files.Delete

    -- ** DriveFilesEmptyTrash
    , module Network.Google.Resource.Drive.Files.EmptyTrash

    -- ** DriveFilesGenerateIds
    , module Network.Google.Resource.Drive.Files.GenerateIds

    -- ** DriveFilesGet
    , module Network.Google.Resource.Drive.Files.Get

    -- ** DriveFilesInsert
    , module Network.Google.Resource.Drive.Files.Insert

    -- ** DriveFilesList
    , module Network.Google.Resource.Drive.Files.List

    -- ** DriveFilesPatch
    , module Network.Google.Resource.Drive.Files.Patch

    -- ** DriveFilesTouch
    , module Network.Google.Resource.Drive.Files.Touch

    -- ** DriveFilesTrash
    , module Network.Google.Resource.Drive.Files.Trash

    -- ** DriveFilesUntrash
    , module Network.Google.Resource.Drive.Files.Untrash

    -- ** DriveFilesUpdate
    , module Network.Google.Resource.Drive.Files.Update

    -- ** DriveFilesWatch
    , module Network.Google.Resource.Drive.Files.Watch

    -- ** DriveParentsDelete
    , module Network.Google.Resource.Drive.Parents.Delete

    -- ** DriveParentsGet
    , module Network.Google.Resource.Drive.Parents.Get

    -- ** DriveParentsInsert
    , module Network.Google.Resource.Drive.Parents.Insert

    -- ** DriveParentsList
    , module Network.Google.Resource.Drive.Parents.List

    -- ** DrivePermissionsDelete
    , module Network.Google.Resource.Drive.Permissions.Delete

    -- ** DrivePermissionsGet
    , module Network.Google.Resource.Drive.Permissions.Get

    -- ** DrivePermissionsGetIdForEmail
    , module Network.Google.Resource.Drive.Permissions.GetIdForEmail

    -- ** DrivePermissionsInsert
    , module Network.Google.Resource.Drive.Permissions.Insert

    -- ** DrivePermissionsList
    , module Network.Google.Resource.Drive.Permissions.List

    -- ** DrivePermissionsPatch
    , module Network.Google.Resource.Drive.Permissions.Patch

    -- ** DrivePermissionsUpdate
    , module Network.Google.Resource.Drive.Permissions.Update

    -- ** DrivePropertiesDelete
    , module Network.Google.Resource.Drive.Properties.Delete

    -- ** DrivePropertiesGet
    , module Network.Google.Resource.Drive.Properties.Get

    -- ** DrivePropertiesInsert
    , module Network.Google.Resource.Drive.Properties.Insert

    -- ** DrivePropertiesList
    , module Network.Google.Resource.Drive.Properties.List

    -- ** DrivePropertiesPatch
    , module Network.Google.Resource.Drive.Properties.Patch

    -- ** DrivePropertiesUpdate
    , module Network.Google.Resource.Drive.Properties.Update

    -- ** DriveRealtimeGet
    , module Network.Google.Resource.Drive.Realtime.Get

    -- ** DriveRealtimeUpdate
    , module Network.Google.Resource.Drive.Realtime.Update

    -- ** DriveRepliesDelete
    , module Network.Google.Resource.Drive.Replies.Delete

    -- ** DriveRepliesGet
    , module Network.Google.Resource.Drive.Replies.Get

    -- ** DriveRepliesInsert
    , module Network.Google.Resource.Drive.Replies.Insert

    -- ** DriveRepliesList
    , module Network.Google.Resource.Drive.Replies.List

    -- ** DriveRepliesPatch
    , module Network.Google.Resource.Drive.Replies.Patch

    -- ** DriveRepliesUpdate
    , module Network.Google.Resource.Drive.Replies.Update

    -- ** DriveRevisionsDelete
    , module Network.Google.Resource.Drive.Revisions.Delete

    -- ** DriveRevisionsGet
    , module Network.Google.Resource.Drive.Revisions.Get

    -- ** DriveRevisionsList
    , module Network.Google.Resource.Drive.Revisions.List

    -- ** DriveRevisionsPatch
    , module Network.Google.Resource.Drive.Revisions.Patch

    -- ** DriveRevisionsUpdate
    , module Network.Google.Resource.Drive.Revisions.Update

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

    -- ** CommentContext
    , CommentContext
    , commentContext
    , ccValue
    , ccType

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

    -- ** DriveFilesCopyVisibility
    , DriveFilesCopyVisibility (..)

    -- ** DriveFilesGetProjection
    , DriveFilesGetProjection (..)

    -- ** AboutFeatures
    , AboutFeatures
    , aboutFeatures
    , afFeatureRate
    , afFeatureName

    -- ** FileThumbnail
    , FileThumbnail
    , fileThumbnail
    , ftImage
    , ftMimeType

    -- ** DriveFilesWatchProjection
    , DriveFilesWatchProjection (..)

    -- ** UserPicture
    , UserPicture
    , userPicture
    , upURL

    -- ** PropertyList
    , PropertyList
    , propertyList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- ** AboutImportFormats
    , AboutImportFormats
    , aboutImportFormats
    , aifTargets
    , aifSource

    -- ** DriveFilesInsertVisibility
    , DriveFilesInsertVisibility (..)

    -- ** ChildList
    , ChildList
    , childList
    , clEtag
    , clNextPageToken
    , clNextLink
    , clKind
    , clItems
    , clSelfLink

    -- ** AboutAdditionalRoleInfoRoleSets
    , AboutAdditionalRoleInfoRoleSets
    , aboutAdditionalRoleInfoRoleSets
    , aarirsPrimaryRole
    , aarirsAdditionalRoles

    -- ** CommentReplyList
    , CommentReplyList
    , commentReplyList
    , crlNextPageToken
    , crlNextLink
    , crlKind
    , crlItems
    , crlSelfLink

    -- ** FileOpenWithLinks
    , FileOpenWithLinks
    , fileOpenWithLinks

    -- ** DriveFilesListCorpus
    , DriveFilesListCorpus (..)

    -- ** Channel
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

    -- ** AppList
    , AppList
    , appList
    , alDefaultAppIds
    , alEtag
    , alKind
    , alItems
    , alSelfLink

    -- ** FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- ** DriveFilesPatchModifiedDateBehavior
    , DriveFilesPatchModifiedDateBehavior (..)

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

    -- ** DriveFilesUpdateModifiedDateBehavior
    , DriveFilesUpdateModifiedDateBehavior (..)

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
    , appOpenURLTemplate
    , appAuthorized
    , appObjectType
    , appSecondaryMimeTypes
    , appCreateInFolderTemplate
    , appKind
    , appIcons
    , appProductURL
    , appUseByDefault
    , appShortDescription
    , appName
    , appCreateURL
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

    -- ** AboutExportFormats
    , AboutExportFormats
    , aboutExportFormats
    , aefTargets
    , aefSource

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

    -- ** AboutMaxUploadSizes
    , AboutMaxUploadSizes
    , aboutMaxUploadSizes
    , amusSize
    , amusType

    -- ** AboutQuotaBytesByService
    , AboutQuotaBytesByService
    , aboutQuotaBytesByService
    , aqbbsBytesUsed
    , aqbbsServiceName

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

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** FileIndexableText
    , FileIndexableText
    , fileIndexableText
    , fitText

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

    -- ** FileImageMediaMetadataLocation
    , FileImageMediaMetadataLocation
    , fileImageMediaMetadataLocation
    , fimmlLatitude
    , fimmlAltitude
    , fimmlLongitude

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

    -- ** DriveFilesListProjection
    , DriveFilesListProjection (..)

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

    -- ** ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

    -- ** AboutAdditionalRoleInfo
    , AboutAdditionalRoleInfo
    , aboutAdditionalRoleInfo
    , aariRoleSets
    , aariType

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

    -- ** FileExportLinks
    , FileExportLinks
    , fileExportLinks

    -- ** GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- ** AppIcons
    , AppIcons
    , appIcons
    , aiSize
    , aiCategory
    , aiIconURL

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

driveAPI :: Proxy DriveAPI
driveAPI = Proxy

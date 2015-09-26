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
    -- * Resources
      Drive
    , AppsAPI
    , AppsList
    , AppsGet
    , ChangesAPI
    , ChangesList
    , ChangesGet
    , ChangesWatch
    , ChannelsAPI
    , ChannelsStop
    , ChildrenAPI
    , ChildrenInsert
    , ChildrenList
    , ChildrenGet
    , ChildrenDelete
    , RepliesAPI
    , RepliesInsert
    , RepliesList
    , RepliesPatch
    , RepliesGet
    , RepliesDelete
    , RepliesUpdate
    , ParentsAPI
    , ParentsInsert
    , ParentsList
    , ParentsGet
    , ParentsDelete
    , RealtimeAPI
    , RealtimeGet
    , RealtimeUpdate
    , AboutAPI
    , AboutGet
    , FilesAPI
    , FilesInsert
    , FilesList
    , FilesCopy
    , FilesPatch
    , FilesGet
    , FilesEmptyTrash
    , FilesTrash
    , FilesUntrash
    , FilesTouch
    , FilesGenerateIds
    , FilesDelete
    , FilesUpdate
    , FilesWatch
    , PermissionsAPI
    , PermissionsGetIdForEmail
    , PermissionsInsert
    , PermissionsList
    , PermissionsPatch
    , PermissionsGet
    , PermissionsDelete
    , PermissionsUpdate
    , CommentsAPI
    , CommentsInsert
    , CommentsList
    , CommentsPatch
    , CommentsGet
    , CommentsDelete
    , CommentsUpdate
    , RevisionsAPI
    , RevisionsList
    , RevisionsPatch
    , RevisionsGet
    , RevisionsDelete
    , RevisionsUpdate
    , PropertiesAPI
    , PropertiesInsert
    , PropertiesList
    , PropertiesPatch
    , PropertiesGet
    , PropertiesDelete
    , PropertiesUpdate

    -- * Types

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

    -- ** AboutItemAdditionalRoleInfo
    , AboutItemAdditionalRoleInfo
    , aboutItemAdditionalRoleInfo
    , aiariRoleSets
    , aiariType

    -- ** AboutItemExportFormats
    , AboutItemExportFormats
    , aboutItemExportFormats
    , aiefTargets
    , aiefSource

    -- ** AboutItemFeatures
    , AboutItemFeatures
    , aboutItemFeatures
    , aifFeatureRate
    , aifFeatureName

    -- ** AboutItemImportFormats
    , AboutItemImportFormats
    , aboutItemImportFormats
    , aiifTargets
    , aiifSource

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

    -- ** AboutItemRoleSetsItemAdditionalRoleInfo
    , AboutItemRoleSetsItemAdditionalRoleInfo
    , aboutItemRoleSetsItemAdditionalRoleInfo
    , airsiariPrimaryRole
    , airsiariAdditionalRoles

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

    -- ** AppItemIcons
    , AppItemIcons
    , appItemIcons
    , aiiSize
    , aiiCategory
    , aiiIconUrl

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

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** ChildList
    , ChildList
    , childList
    , chiEtag
    , chiNextPageToken
    , chiNextLink
    , chiKind
    , chiItems
    , chiSelfLink

    -- ** ChildReference
    , ChildReference
    , childReference
    , crChildLink
    , crKind
    , crSelfLink
    , crId

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

    -- ** CommentContext
    , CommentContext
    , commentContext
    , ccValue
    , ccType

    -- ** CommentList
    , CommentList
    , commentList
    , comNextPageToken
    , comNextLink
    , comKind
    , comItems
    , comSelfLink

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

    -- ** CommentReplyList
    , CommentReplyList
    , commentReplyList
    , crlNextPageToken
    , crlNextLink
    , crlKind
    , crlItems
    , crlSelfLink

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

    -- ** FileExportLinks
    , FileExportLinks
    , fileExportLinks

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

    -- ** FileIndexableText
    , FileIndexableText
    , fileIndexableText
    , fitText

    -- ** FileLabels
    , FileLabels
    , fileLabels
    , flViewed
    , flTrashed
    , flStarred
    , flHidden
    , flRestricted

    -- ** FileList
    , FileList
    , fileList
    , flEtag
    , flNextPageToken
    , flNextLink
    , flKind
    , flItems
    , flSelfLink

    -- ** FileLocationImageMediaMetadata
    , FileLocationImageMediaMetadata
    , fileLocationImageMediaMetadata
    , flimmLatitude
    , flimmAltitude
    , flimmLongitude

    -- ** FileOpenWithLinks
    , FileOpenWithLinks
    , fileOpenWithLinks

    -- ** FileThumbnail
    , FileThumbnail
    , fileThumbnail
    , ftImage
    , ftMimeType

    -- ** FileVideoMediaMetadata
    , FileVideoMediaMetadata
    , fileVideoMediaMetadata
    , fvmmHeight
    , fvmmWidth
    , fvmmDurationMillis

    -- ** GeneratedIds
    , GeneratedIds
    , generatedIds
    , giSpace
    , giKind
    , giIds

    -- ** ParentList
    , ParentList
    , parentList
    , parEtag
    , parKind
    , parItems
    , parSelfLink

    -- ** ParentReference
    , ParentReference
    , parentReference
    , prParentLink
    , prIsRoot
    , prKind
    , prSelfLink
    , prId

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

    -- ** PermissionId
    , PermissionId
    , permissionId
    , piKind
    , piId

    -- ** PermissionList
    , PermissionList
    , permissionList
    , plEtag
    , plKind
    , plItems
    , plSelfLink

    -- ** Property
    , Property
    , property
    , proEtag
    , proKind
    , proValue
    , proVisibility
    , proSelfLink
    , proKey

    -- ** PropertyList
    , PropertyList
    , propertyList
    , pllEtag
    , pllKind
    , pllItems
    , pllSelfLink

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

    -- ** RevisionExportLinks
    , RevisionExportLinks
    , revisionExportLinks

    -- ** RevisionList
    , RevisionList
    , revisionList
    , rlEtag
    , rlKind
    , rlItems
    , rlSelfLink

    -- ** User
    , User
    , user
    , uIsAuthenticatedUser
    , uKind
    , uPicture
    , uEmailAddress
    , uDisplayName
    , uPermissionId

    -- ** UserPicture
    , UserPicture
    , userPicture
    , upUrl
    ) where

import           Network.Google.Drive.Types

{- $resources
TODO
-}

type Drive =
     ChangesAPI :<|>
       ChannelsAPI :<|>
         ChildrenAPI :<|>
           RepliesAPI :<|>
             ParentsAPI :<|>
               RealtimeAPI :<|>
                 AboutAPI :<|>
                   FilesAPI :<|>
                     PermissionsAPI :<|>
                       CommentsAPI :<|>
                         RevisionsAPI :<|> PropertiesAPI :<|> AppsAPI

type AppsAPI = AppsGet :<|> AppsList

-- | Lists a user\'s installed apps.
type AppsList =
     "drive" :> "v2" :> "apps" :>
       QueryParam "quotaUser" Text
       :> QueryParam "languageCode" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "appFilterExtensions" Text
       :> QueryParam "appFilterMimeTypes" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a specific app.
type AppsGet =
     "drive" :> "v2" :> "apps" :> Capture "appId" Text :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ChangesAPI =
     ChangesGet :<|> ChangesWatch :<|> ChangesList

-- | Lists the changes for a user.
type ChangesList =
     "drive" :> "v2" :> "changes" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "includeSubscribed" Bool
       :> QueryParam "startChangeId" Int64
       :> QueryParam "key" Text
       :> QueryParam "spaces" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "includeDeleted" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a specific change.
type ChangesGet =
     "drive" :> "v2" :> "changes" :>
       Capture "changeId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Subscribe to changes for a user.
type ChangesWatch =
     "drive" :> "v2" :> "changes" :> "watch" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "includeSubscribed" Bool
       :> QueryParam "startChangeId" Int64
       :> QueryParam "key" Text
       :> QueryParam "spaces" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "includeDeleted" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ChannelsAPI = ChannelsStop

-- | Stop watching resources through this channel
type ChannelsStop =
     "drive" :> "v2" :> "channels" :> "stop" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ChildrenAPI =
     ChildrenList :<|>
       ChildrenGet :<|> ChildrenDelete :<|> ChildrenInsert

-- | Inserts a file into a folder.
type ChildrenInsert =
     "drive" :> "v2" :> "files" :> Capture "folderId" Text
       :> "children"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists a folder\'s children.
type ChildrenList =
     "drive" :> "v2" :> "files" :> Capture "folderId" Text
       :> "children"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "q" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a specific child reference.
type ChildrenGet =
     "drive" :> "v2" :> "files" :> Capture "folderId" Text
       :> "children"
       :> Capture "childId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes a child from a folder.
type ChildrenDelete =
     "drive" :> "v2" :> "files" :> Capture "folderId" Text
       :> "children"
       :> Capture "childId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RepliesAPI =
     RepliesList :<|>
       RepliesPatch :<|>
         RepliesGet :<|>
           RepliesDelete :<|> RepliesUpdate :<|> RepliesInsert

-- | Creates a new reply to the given comment.
type RepliesInsert =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "replies"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists all of the replies to a comment.
type RepliesList =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "replies"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "includeDeleted" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing reply. This method supports patch semantics.
type RepliesPatch =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "replies"
       :> Capture "replyId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a reply.
type RepliesGet =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "replies"
       :> Capture "replyId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "includeDeleted" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a reply.
type RepliesDelete =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "replies"
       :> Capture "replyId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing reply.
type RepliesUpdate =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> "replies"
       :> Capture "replyId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ParentsAPI =
     ParentsList :<|>
       ParentsGet :<|> ParentsDelete :<|> ParentsInsert

-- | Adds a parent folder for a file.
type ParentsInsert =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "parents"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists a file\'s parents.
type ParentsList =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "parents"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a specific parent reference.
type ParentsGet =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "parents"
       :> Capture "parentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes a parent from a file.
type ParentsDelete =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "parents"
       :> Capture "parentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RealtimeAPI = RealtimeUpdate :<|> RealtimeGet

-- | Exports the contents of the Realtime API data model associated with this
-- file as JSON.
type RealtimeGet =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "realtime"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "revision" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
type RealtimeUpdate =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "realtime"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "baseRevision" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AboutAPI = AboutGet

-- | Gets the information about the current user along with Drive API
-- settings
type AboutGet =
     "drive" :> "v2" :> "about" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "includeSubscribed" Bool
       :> QueryParam "startChangeId" Int64
       :> QueryParam "maxChangeIdCount" Int64
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type FilesAPI =
     FilesList :<|>
       FilesCopy :<|>
         FilesPatch :<|>
           FilesGet :<|>
             FilesEmptyTrash :<|>
               FilesTrash :<|>
                 FilesUntrash :<|>
                   FilesTouch :<|>
                     FilesGenerateIds :<|>
                       FilesDelete :<|>
                         FilesUpdate :<|> FilesWatch :<|> FilesInsert

-- | Insert a new file.
type FilesInsert =
     "drive" :> "v2" :> "files" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "pinned" Bool
       :> QueryParam "visibility" Text
       :> QueryParam "timedTextLanguage" Text
       :> QueryParam "useContentAsIndexableText" Bool
       :> QueryParam "timedTextTrackName" Text
       :> QueryParam "ocrLanguage" Text
       :> QueryParam "key" Text
       :> QueryParam "convert" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "ocr" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists the user\'s files.
type FilesList =
     "drive" :> "v2" :> "files" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "q" Text
       :> QueryParam "key" Text
       :> QueryParam "spaces" Text
       :> QueryParam "projection" Text
       :> QueryParam "corpus" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a copy of the specified file.
type FilesCopy =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "copy"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "pinned" Bool
       :> QueryParam "visibility" Text
       :> QueryParam "timedTextLanguage" Text
       :> QueryParam "timedTextTrackName" Text
       :> QueryParam "ocrLanguage" Text
       :> QueryParam "key" Text
       :> QueryParam "convert" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "ocr" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates file metadata and\/or content. This method supports patch
-- semantics.
type FilesPatch =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "newRevision" Bool
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "pinned" Bool
       :> QueryParam "timedTextLanguage" Text
       :> QueryParam "updateViewedDate" Bool
       :> QueryParam "removeParents" Text
       :> QueryParam "modifiedDateBehavior" Text
       :> QueryParam "useContentAsIndexableText" Bool
       :> QueryParam "timedTextTrackName" Text
       :> QueryParam "ocrLanguage" Text
       :> QueryParam "key" Text
       :> QueryParam "convert" Bool
       :> QueryParam "setModifiedDate" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "addParents" Text
       :> QueryParam "ocr" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a file\'s metadata by ID.
type FilesGet =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "updateViewedDate" Bool
       :> QueryParam "key" Text
       :> QueryParam "projection" Text
       :> QueryParam "acknowledgeAbuse" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "revisionId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Permanently deletes all of the user\'s trashed files.
type FilesEmptyTrash =
     "drive" :> "v2" :> "files" :> "trash" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Moves a file to the trash. The currently authenticated user must own the
-- file.
type FilesTrash =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "trash"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Restores a file from the trash.
type FilesUntrash =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "untrash"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Set the file\'s updated time to the current server time.
type FilesTouch =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "touch"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Generates a set of file IDs which can be provided in insert requests.
type FilesGenerateIds =
     "drive" :> "v2" :> "files" :> "generateIds" :>
       QueryParam "space" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Permanently deletes a file by ID. Skips the trash. The currently
-- authenticated user must own the file.
type FilesDelete =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates file metadata and\/or content.
type FilesUpdate =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "newRevision" Bool
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "pinned" Bool
       :> QueryParam "timedTextLanguage" Text
       :> QueryParam "updateViewedDate" Bool
       :> QueryParam "removeParents" Text
       :> QueryParam "modifiedDateBehavior" Text
       :> QueryParam "useContentAsIndexableText" Bool
       :> QueryParam "timedTextTrackName" Text
       :> QueryParam "ocrLanguage" Text
       :> QueryParam "key" Text
       :> QueryParam "convert" Bool
       :> QueryParam "setModifiedDate" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "addParents" Text
       :> QueryParam "ocr" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Subscribe to changes on a file
type FilesWatch =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "watch"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "updateViewedDate" Bool
       :> QueryParam "key" Text
       :> QueryParam "projection" Text
       :> QueryParam "acknowledgeAbuse" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "revisionId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PermissionsAPI =
     PermissionsInsert :<|>
       PermissionsList :<|>
         PermissionsPatch :<|>
           PermissionsGet :<|>
             PermissionsDelete :<|>
               PermissionsUpdate :<|> PermissionsGetIdForEmail

-- | Returns the permission ID for an email address.
type PermissionsGetIdForEmail =
     "drive" :> "v2" :> "permissionIds" :>
       Capture "email" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Inserts a permission for a file.
type PermissionsInsert =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "permissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "emailMessage" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "sendNotificationEmails" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists a file\'s permissions.
type PermissionsList =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "permissions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a permission using patch semantics.
type PermissionsPatch =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "permissions"
       :> Capture "permissionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "transferOwnership" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a permission by ID.
type PermissionsGet =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "permissions"
       :> Capture "permissionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a permission from a file.
type PermissionsDelete =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "permissions"
       :> Capture "permissionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a permission.
type PermissionsUpdate =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "permissions"
       :> Capture "permissionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "transferOwnership" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CommentsAPI =
     CommentsList :<|>
       CommentsPatch :<|>
         CommentsGet :<|>
           CommentsDelete :<|>
             CommentsUpdate :<|> CommentsInsert

-- | Creates a new comment on the given file.
type CommentsInsert =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists a file\'s comments.
type CommentsList =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "updatedMin" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "includeDeleted" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing comment. This method supports patch semantics.
type CommentsPatch =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a comment by ID.
type CommentsGet =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "includeDeleted" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a comment.
type CommentsDelete =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing comment.
type CommentsUpdate =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "comments"
       :> Capture "commentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RevisionsAPI =
     RevisionsPatch :<|>
       RevisionsGet :<|>
         RevisionsDelete :<|>
           RevisionsUpdate :<|> RevisionsList

-- | Lists a file\'s revisions.
type RevisionsList =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "revisions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a revision. This method supports patch semantics.
type RevisionsPatch =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "revisions"
       :> Capture "revisionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a specific revision.
type RevisionsGet =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "revisions"
       :> Capture "revisionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes a revision.
type RevisionsDelete =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "revisions"
       :> Capture "revisionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a revision.
type RevisionsUpdate =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "revisions"
       :> Capture "revisionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PropertiesAPI =
     PropertiesList :<|>
       PropertiesPatch :<|>
         PropertiesGet :<|>
           PropertiesDelete :<|>
             PropertiesUpdate :<|> PropertiesInsert

-- | Adds a property to a file.
type PropertiesInsert =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "properties"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists a file\'s properties.
type PropertiesList =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "properties"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a property. This method supports patch semantics.
type PropertiesPatch =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "properties"
       :> Capture "propertyKey" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "visibility" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a property by its key.
type PropertiesGet =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "properties"
       :> Capture "propertyKey" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "visibility" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a property.
type PropertiesDelete =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "properties"
       :> Capture "propertyKey" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "visibility" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a property.
type PropertiesUpdate =
     "drive" :> "v2" :> "files" :> Capture "fileId" Text
       :> "properties"
       :> Capture "propertyKey" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "visibility" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

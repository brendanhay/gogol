{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PlusDomains
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google+ API enables developers to build on top of the Google+
-- platform.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference>
module Network.Google.PlusDomains
    (
    -- * Resources
      PlusDomains
    , ActivitiesAPI
    , ActivitiesInsert
    , ActivitiesList
    , ActivitiesGet
    , PeopleAPI
    , PeopleList
    , PeopleListByCircle
    , PeopleGet
    , PeopleListByActivity
    , MediaAPI
    , MediaInsert
    , AudiencesAPI
    , AudiencesList
    , CommentsAPI
    , CommentsInsert
    , CommentsList
    , CommentsGet
    , CirclesAPI
    , CirclesInsert
    , CirclesAddPeople
    , CirclesList
    , CirclesPatch
    , CirclesGet
    , CirclesRemove
    , CirclesRemovePeople
    , CirclesUpdate

    -- * Types

    -- ** Acl
    , Acl
    , acl
    , aclKind
    , aclItems
    , aclDomainRestricted
    , aclDescription

    -- ** Activity
    , Activity
    , activity
    , aAccess
    , aPlaceName
    , aEtag
    , aAnnotation
    , aLocation
    , aGeocode
    , aKind
    , aRadius
    , aPublished
    , aUrl
    , aActor
    , aAddress
    , aObject
    , aId
    , aUpdated
    , aTitle
    , aVerb
    , aCrosspostSource
    , aPlaceId
    , aProvider

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaImage
    , aaUrl
    , aaName
    , aaDisplayName
    , aaId
    , aaVerification

    -- ** ActivityActorObject
    , ActivityActorObject
    , activityActorObject
    , aaoImage
    , aaoUrl
    , aaoDisplayName
    , aaoId
    , aaoVerification

    -- ** ActivityEmbedItemAttachmentsObject
    , ActivityEmbedItemAttachmentsObject
    , activityEmbedItemAttachmentsObject
    , aeiaoUrl
    , aeiaoType

    -- ** ActivityFeed
    , ActivityFeed
    , activityFeed
    , afEtag
    , afNextPageToken
    , afNextLink
    , afKind
    , afItems
    , afSelfLink
    , afId
    , afUpdated
    , afTitle

    -- ** ActivityFullImageItemAttachmentsObject
    , ActivityFullImageItemAttachmentsObject
    , activityFullImageItemAttachmentsObject
    , afiiaoHeight
    , afiiaoUrl
    , afiiaoWidth
    , afiiaoType

    -- ** ActivityImageActor
    , ActivityImageActor
    , activityImageActor
    , aiaUrl

    -- ** ActivityImageActorObject
    , ActivityImageActorObject
    , activityImageActorObject
    , aiaoUrl

    -- ** ActivityImageItemAttachmentsObject
    , ActivityImageItemAttachmentsObject
    , activityImageItemAttachmentsObject
    , aiiaoHeight
    , aiiaoUrl
    , aiiaoWidth
    , aiiaoType

    -- ** ActivityImageItemThumbnailsItemAttachmentsObject
    , ActivityImageItemThumbnailsItemAttachmentsObject
    , activityImageItemThumbnailsItemAttachmentsObject
    , aiitiaoHeight
    , aiitiaoUrl
    , aiitiaoWidth
    , aiitiaoType

    -- ** ActivityItemAttachmentsObject
    , ActivityItemAttachmentsObject
    , activityItemAttachmentsObject
    , actFullImage
    , actImage
    , actObjectType
    , actPreviewThumbnails
    , actUrl
    , actEmbed
    , actContent
    , actThumbnails
    , actDisplayName
    , actId

    -- ** ActivityItemPreviewThumbnailsItemAttachmentsObject
    , ActivityItemPreviewThumbnailsItemAttachmentsObject
    , activityItemPreviewThumbnailsItemAttachmentsObject
    , aiptiaoUrl

    -- ** ActivityItemThumbnailsItemAttachmentsObject
    , ActivityItemThumbnailsItemAttachmentsObject
    , activityItemThumbnailsItemAttachmentsObject
    , aitiaoImage
    , aitiaoUrl
    , aitiaoDescription

    -- ** ActivityNameActor
    , ActivityNameActor
    , activityNameActor
    , anaGivenName
    , anaFamilyName

    -- ** ActivityObject
    , ActivityObject
    , activityObject
    , aoPlusoners
    , aoAttachments
    , aoObjectType
    , aoOriginalContent
    , aoUrl
    , aoActor
    , aoContent
    , aoReplies
    , aoId
    , aoStatusForViewer
    , aoResharers

    -- ** ActivityPlusonersObject
    , ActivityPlusonersObject
    , activityPlusonersObject
    , apoTotalItems
    , apoSelfLink

    -- ** ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- ** ActivityRepliesObject
    , ActivityRepliesObject
    , activityRepliesObject
    , aroTotalItems
    , aroSelfLink

    -- ** ActivityResharersObject
    , ActivityResharersObject
    , activityResharersObject
    , aTotalItems
    , aSelfLink

    -- ** ActivityStatusForViewerObject
    , ActivityStatusForViewerObject
    , activityStatusForViewerObject
    , asfvoCanComment
    , asfvoResharingDisabled
    , asfvoCanUpdate
    , asfvoIsPlusOned
    , asfvoCanPlusone

    -- ** ActivityVerificationActor
    , ActivityVerificationActor
    , activityVerificationActor
    , avaAdHocVerified

    -- ** ActivityVerificationActorObject
    , ActivityVerificationActorObject
    , activityVerificationActorObject
    , avaoAdHocVerified

    -- ** Audience
    , Audience
    , audience
    , aaEtag
    , aaKind
    , aaVisibility
    , aaItem
    , aaMemberCount

    -- ** AudiencesFeed
    , AudiencesFeed
    , audiencesFeed
    , audTotalItems
    , audEtag
    , audNextPageToken
    , audKind
    , audItems

    -- ** Circle
    , Circle
    , circle
    , cEtag
    , cKind
    , cPeople
    , cSelfLink
    , cDisplayName
    , cId
    , cDescription

    -- ** CircleFeed
    , CircleFeed
    , circleFeed
    , cirTotalItems
    , cirEtag
    , cirNextPageToken
    , cirNextLink
    , cirKind
    , cirItems
    , cirSelfLink
    , cirTitle

    -- ** CirclePeople
    , CirclePeople
    , circlePeople
    , cpTotalItems

    -- ** Comment
    , Comment
    , comment
    , comEtag
    , comPlusoners
    , comKind
    , comPublished
    , comActor
    , comSelfLink
    , comObject
    , comId
    , comUpdated
    , comVerb
    , comInReplyTo

    -- ** CommentActor
    , CommentActor
    , commentActor
    , caImage
    , caUrl
    , caDisplayName
    , caId
    , caVerification

    -- ** CommentFeed
    , CommentFeed
    , commentFeed
    , cfEtag
    , cfNextPageToken
    , cfNextLink
    , cfKind
    , cfItems
    , cfId
    , cfUpdated
    , cfTitle

    -- ** CommentImageActor
    , CommentImageActor
    , commentImageActor
    , ciaUrl

    -- ** CommentItemInReplyTo
    , CommentItemInReplyTo
    , commentItemInReplyTo
    , ciirtUrl
    , ciirtId

    -- ** CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- ** CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cTotalItems

    -- ** CommentVerificationActor
    , CommentVerificationActor
    , commentVerificationActor
    , cvaAdHocVerified

    -- ** Media
    , Media
    , media
    , mSizeBytes
    , mSummary
    , mEtag
    , mHeight
    , mVideoDuration
    , mVideoStatus
    , mKind
    , mPublished
    , mUrl
    , mWidth
    , mMediaUrl
    , mStreams
    , mExif
    , mDisplayName
    , mAuthor
    , mId
    , mUpdated
    , mMediaCreatedTime

    -- ** MediaAuthor
    , MediaAuthor
    , mediaAuthor
    , maImage
    , maUrl
    , maDisplayName
    , maId

    -- ** MediaExif
    , MediaExif
    , mediaExif
    , meTime

    -- ** MediaImageAuthor
    , MediaImageAuthor
    , mediaImageAuthor
    , miaUrl

    -- ** PeopleFeed
    , PeopleFeed
    , peopleFeed
    , pfTotalItems
    , pfEtag
    , pfNextPageToken
    , pfKind
    , pfItems
    , pfSelfLink
    , pfTitle

    -- ** Person
    , Person
    , person
    , perCurrentLocation
    , perEtag
    , perImage
    , perBraggingRights
    , perPlacesLived
    , perPlusOneCount
    , perObjectType
    , perCover
    , perKind
    , perRelationshipStatus
    , perUrls
    , perDomain
    , perUrl
    , perVerified
    , perBirthday
    , perIsPlusUser
    , perTagline
    , perGender
    , perName
    , perEmails
    , perOccupation
    , perSkills
    , perAboutMe
    , perDisplayName
    , perId
    , perNickname
    , perOrganizations
    , perCircledByCount

    -- ** PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- ** PersonCoverInfoCover
    , PersonCoverInfoCover
    , personCoverInfoCover
    , pcicTopImageOffset
    , pcicLeftImageOffset

    -- ** PersonCoverPhotoCover
    , PersonCoverPhotoCover
    , personCoverPhotoCover
    , pcpcHeight
    , pcpcUrl
    , pcpcWidth

    -- ** PersonImage
    , PersonImage
    , personImage
    , piUrl
    , piIsDefault

    -- ** PersonItemEmails
    , PersonItemEmails
    , personItemEmails
    , pieValue
    , pieType

    -- ** PersonItemOrganizations
    , PersonItemOrganizations
    , personItemOrganizations
    , pioDepartment
    , pioLocation
    , pioEndDate
    , pioPrimary
    , pioStartDate
    , pioName
    , pioTitle
    , pioType
    , pioDescription

    -- ** PersonItemPlacesLived
    , PersonItemPlacesLived
    , personItemPlacesLived
    , piplValue
    , piplPrimary

    -- ** PersonItemUrls
    , PersonItemUrls
    , personItemUrls
    , piuValue
    , piuType
    , piuLabel

    -- ** PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- ** Place
    , Place
    , place
    , pKind
    , pAddress
    , pDisplayName
    , pId
    , pPosition

    -- ** PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- ** PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- ** PlusDomainsAclentryResource
    , PlusDomainsAclentryResource
    , plusDomainsAclentryResource
    , pdarDisplayName
    , pdarId
    , pdarType

    -- ** Videostream
    , Videostream
    , videostream
    , vHeight
    , vUrl
    , vWidth
    , vType
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type PlusDomains =
     PeopleAPI :<|>
       MediaAPI :<|>
         AudiencesAPI :<|>
           CommentsAPI :<|> CirclesAPI :<|> ActivitiesAPI

type ActivitiesAPI =
     ActivitiesList :<|>
       ActivitiesGet :<|> ActivitiesInsert

-- | Create a new activity for the authenticated user.
type ActivitiesInsert =
     "plusDomains" :> "v1" :> "people" :>
       Capture "userId" Text
       :> "activities"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "preview" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List all of the activities in the specified collection for a particular
-- user.
type ActivitiesList =
     "plusDomains" :> "v1" :> "people" :>
       Capture "userId" Text
       :> "activities"
       :> Capture "collection" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get an activity.
type ActivitiesGet =
     "plusDomains" :> "v1" :> "activities" :>
       Capture "activityId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PeopleAPI =
     PeopleListByCircle :<|>
       PeopleGet :<|> PeopleListByActivity :<|> PeopleList

-- | List all of the people in the specified collection.
type PeopleList =
     "plusDomains" :> "v1" :> "people" :>
       Capture "userId" Text
       :> "people"
       :> Capture "collection" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "orderBy" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List all of the people who are members of a circle.
type PeopleListByCircle =
     "plusDomains" :> "v1" :> "circles" :>
       Capture "circleId" Text
       :> "people"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a person\'s profile.
type PeopleGet =
     "plusDomains" :> "v1" :> "people" :>
       Capture "userId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List all of the people in the specified collection for a particular
-- activity.
type PeopleListByActivity =
     "plusDomains" :> "v1" :> "activities" :>
       Capture "activityId" Text
       :> "people"
       :> Capture "collection" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MediaAPI = MediaInsert

-- | Add a new media item to an album. The current upload size limitations
-- are 36MB for a photo and 1GB for a video. Uploads do not count against
-- quota if photos are less than 2048 pixels on their longest side or
-- videos are less than 15 minutes in length.
type MediaInsert =
     "plusDomains" :> "v1" :> "people" :>
       Capture "userId" Text
       :> "media"
       :> Capture "collection" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AudiencesAPI = AudiencesList

-- | List all of the audiences to which a user can share.
type AudiencesList =
     "plusDomains" :> "v1" :> "people" :>
       Capture "userId" Text
       :> "audiences"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CommentsAPI =
     CommentsList :<|> CommentsGet :<|> CommentsInsert

-- | Create a new comment in reply to an activity.
type CommentsInsert =
     "plusDomains" :> "v1" :> "activities" :>
       Capture "activityId" Text
       :> "comments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List all of the comments for an activity.
type CommentsList =
     "plusDomains" :> "v1" :> "activities" :>
       Capture "activityId" Text
       :> "comments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a comment.
type CommentsGet =
     "plusDomains" :> "v1" :> "comments" :>
       Capture "commentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CirclesAPI =
     CirclesAddPeople :<|>
       CirclesList :<|>
         CirclesPatch :<|>
           CirclesGet :<|>
             CirclesRemove :<|>
               CirclesRemovePeople :<|>
                 CirclesUpdate :<|> CirclesInsert

-- | Create a new circle for the authenticated user.
type CirclesInsert =
     "plusDomains" :> "v1" :> "people" :>
       Capture "userId" Text
       :> "circles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Add a person to a circle. Google+ limits certain circle operations,
-- including the number of circle adds. Learn More.
type CirclesAddPeople =
     "plusDomains" :> "v1" :> "circles" :>
       Capture "circleId" Text
       :> "people"
       :> QueryParam "email" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "userId" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List all of the circles for a user.
type CirclesList =
     "plusDomains" :> "v1" :> "people" :>
       Capture "userId" Text
       :> "circles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a circle\'s description. This method supports patch semantics.
type CirclesPatch =
     "plusDomains" :> "v1" :> "circles" :>
       Capture "circleId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a circle.
type CirclesGet =
     "plusDomains" :> "v1" :> "circles" :>
       Capture "circleId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a circle.
type CirclesRemove =
     "plusDomains" :> "v1" :> "circles" :>
       Capture "circleId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Remove a person from a circle.
type CirclesRemovePeople =
     "plusDomains" :> "v1" :> "circles" :>
       Capture "circleId" Text
       :> "people"
       :> QueryParam "email" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "userId" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a circle\'s description.
type CirclesUpdate =
     "plusDomains" :> "v1" :> "circles" :>
       Capture "circleId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

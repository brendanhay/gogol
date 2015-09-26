-- |
-- Module      : Network.Google.Google+
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google+ API enables developers to build on top of the Google+ platform.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference>
module Network.Google.Google+
    (
    -- * API Definition
      Google+



    -- * Types

    -- ** Acl
    , Acl
    , acl
    , aclKind
    , aclItems
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
    , actUrl
    , actEmbed
    , actContent
    , actThumbnails
    , actDisplayName
    , actId

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

    -- ** ActivityVerificationActor
    , ActivityVerificationActor
    , activityVerificationActor
    , avaAdHocVerified

    -- ** ActivityVerificationActorObject
    , ActivityVerificationActorObject
    , activityVerificationActorObject
    , avaoAdHocVerified

    -- ** Comment
    , Comment
    , comment
    , cEtag
    , cPlusoners
    , cKind
    , cPublished
    , cActor
    , cSelfLink
    , cObject
    , cId
    , cUpdated
    , cVerb
    , cInReplyTo

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
    , cpTotalItems

    -- ** CommentVerificationActor
    , CommentVerificationActor
    , commentVerificationActor
    , cvaAdHocVerified

    -- ** ItemScope
    , ItemScope
    , itemScope
    , isGivenName
    , isContentSize
    , isThumbnail
    , isTickerSymbol
    , isHeight
    , isThumbnailUrl
    , isImage
    , isStreetAddress
    , isWorstRating
    , isLocation
    , isAttendees
    , isText
    , isKind
    , isLatitude
    , isPostalCode
    , isEndDate
    , isAssociatedMedia
    , isPlayerType
    , isUrl
    , isWidth
    , isCaption
    , isAddress
    , isAddressCountry
    , isPostOfficeBoxNumber
    , isAdditionalName
    , isFamilyName
    , isDateCreated
    , isRatingValue
    , isDatePublished
    , isStartDate
    , isGender
    , isName
    , isBestRating
    , isAddressLocality
    , isPartOfTVSeries
    , isContentUrl
    , isByArtist
    , isAbout
    , isReviewRating
    , isDateModified
    , isAuthor
    , isGeo
    , isId
    , isPerformers
    , isAttendeeCount
    , isInAlbum
    , isEmbedUrl
    , isType
    , isContributor
    , isLongitude
    , isDuration
    , isAddressRegion
    , isAudio
    , isDescription
    , isBirthDate

    -- ** Moment
    , Moment
    , moment
    , mKind
    , mResult
    , mStartDate
    , mObject
    , mId
    , mType
    , mTarget

    -- ** MomentsFeed
    , MomentsFeed
    , momentsFeed
    , mfEtag
    , mfNextPageToken
    , mfNextLink
    , mfKind
    , mfItems
    , mfSelfLink
    , mfUpdated
    , mfTitle

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
    , perAgeRange
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
    , perLanguage
    , perAboutMe
    , perDisplayName
    , perId
    , perNickname
    , perOrganizations
    , perCircledByCount

    -- ** PersonAgeRange
    , PersonAgeRange
    , personAgeRange
    , parMax
    , parMin

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

    -- ** PlusAclentryResource
    , PlusAclentryResource
    , plusAclentryResource
    , parDisplayName
    , parId
    , parType
    ) where

import Network.Google.Google+.Types

{- $resources
TODO
-}

type Google+ = ()

google+ :: Proxy Google+
google+ = Proxy





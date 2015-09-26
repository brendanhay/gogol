{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Plus.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Plus.Types.Product where

import           Network.Google.Plus.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'acl' smart constructor.
data Acl = Acl
    { _aclKind        :: !Text
    , _aclItems       :: !(Maybe [Maybe PlusAclentryResource])
    , _aclDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Acl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclKind'
--
-- * 'aclItems'
--
-- * 'aclDescription'
acl
    :: Acl
acl =
    Acl
    { _aclKind = "plus#acl"
    , _aclItems = Nothing
    , _aclDescription = Nothing
    }

-- | Identifies this resource as a collection of access controls. Value:
-- \"plus#acl\".
aclKind :: Lens' Acl Text
aclKind = lens _aclKind (\ s a -> s{_aclKind = a})

-- | The list of access entries.
aclItems :: Lens' Acl [Maybe PlusAclentryResource]
aclItems
  = lens _aclItems (\ s a -> s{_aclItems = a}) .
      _Default
      . _Coerce

-- | Description of the access granted, suitable for display.
aclDescription :: Lens' Acl (Maybe Text)
aclDescription
  = lens _aclDescription
      (\ s a -> s{_aclDescription = a})

--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aAccess          :: !(Maybe (Maybe Acl))
    , _aPlaceName       :: !(Maybe Text)
    , _aEtag            :: !(Maybe Text)
    , _aAnnotation      :: !(Maybe Text)
    , _aLocation        :: !(Maybe (Maybe Place))
    , _aGeocode         :: !(Maybe Text)
    , _aKind            :: !Text
    , _aRadius          :: !(Maybe Text)
    , _aPublished       :: !(Maybe UTCTime)
    , _aUrl             :: !(Maybe Text)
    , _aActor           :: !(Maybe ActivityActor)
    , _aAddress         :: !(Maybe Text)
    , _aObject          :: !(Maybe ActivityObject)
    , _aId              :: !(Maybe Text)
    , _aUpdated         :: !(Maybe UTCTime)
    , _aTitle           :: !(Maybe Text)
    , _aVerb            :: !(Maybe Text)
    , _aCrosspostSource :: !(Maybe Text)
    , _aPlaceId         :: !(Maybe Text)
    , _aProvider        :: !(Maybe ActivityProvider)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAccess'
--
-- * 'aPlaceName'
--
-- * 'aEtag'
--
-- * 'aAnnotation'
--
-- * 'aLocation'
--
-- * 'aGeocode'
--
-- * 'aKind'
--
-- * 'aRadius'
--
-- * 'aPublished'
--
-- * 'aUrl'
--
-- * 'aActor'
--
-- * 'aAddress'
--
-- * 'aObject'
--
-- * 'aId'
--
-- * 'aUpdated'
--
-- * 'aTitle'
--
-- * 'aVerb'
--
-- * 'aCrosspostSource'
--
-- * 'aPlaceId'
--
-- * 'aProvider'
activity
    :: Activity
activity =
    Activity
    { _aAccess = Nothing
    , _aPlaceName = Nothing
    , _aEtag = Nothing
    , _aAnnotation = Nothing
    , _aLocation = Nothing
    , _aGeocode = Nothing
    , _aKind = "plus#activity"
    , _aRadius = Nothing
    , _aPublished = Nothing
    , _aUrl = Nothing
    , _aActor = Nothing
    , _aAddress = Nothing
    , _aObject = Nothing
    , _aId = Nothing
    , _aUpdated = Nothing
    , _aTitle = Nothing
    , _aVerb = Nothing
    , _aCrosspostSource = Nothing
    , _aPlaceId = Nothing
    , _aProvider = Nothing
    }

-- | Identifies who has access to see this activity.
aAccess :: Lens' Activity (Maybe (Maybe Acl))
aAccess = lens _aAccess (\ s a -> s{_aAccess = a})

-- | Name of the place where this activity occurred.
aPlaceName :: Lens' Activity (Maybe Text)
aPlaceName
  = lens _aPlaceName (\ s a -> s{_aPlaceName = a})

-- | ETag of this response for caching purposes.
aEtag :: Lens' Activity (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Additional content added by the person who shared this activity,
-- applicable only when resharing an activity.
aAnnotation :: Lens' Activity (Maybe Text)
aAnnotation
  = lens _aAnnotation (\ s a -> s{_aAnnotation = a})

-- | The location where this activity occurred.
aLocation :: Lens' Activity (Maybe (Maybe Place))
aLocation
  = lens _aLocation (\ s a -> s{_aLocation = a})

-- | Latitude and longitude where this activity occurred. Format is latitude
-- followed by longitude, space separated.
aGeocode :: Lens' Activity (Maybe Text)
aGeocode = lens _aGeocode (\ s a -> s{_aGeocode = a})

-- | Identifies this resource as an activity. Value: \"plus#activity\".
aKind :: Lens' Activity Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | Radius, in meters, of the region where this activity occurred, centered
-- at the latitude and longitude identified in geocode.
aRadius :: Lens' Activity (Maybe Text)
aRadius = lens _aRadius (\ s a -> s{_aRadius = a})

-- | The time at which this activity was initially published. Formatted as an
-- RFC 3339 timestamp.
aPublished :: Lens' Activity (Maybe UTCTime)
aPublished
  = lens _aPublished (\ s a -> s{_aPublished = a})

-- | The link to this activity.
aUrl :: Lens' Activity (Maybe Text)
aUrl = lens _aUrl (\ s a -> s{_aUrl = a})

-- | The person who performed this activity.
aActor :: Lens' Activity (Maybe ActivityActor)
aActor = lens _aActor (\ s a -> s{_aActor = a})

-- | Street address where this activity occurred.
aAddress :: Lens' Activity (Maybe Text)
aAddress = lens _aAddress (\ s a -> s{_aAddress = a})

-- | The object of this activity.
aObject :: Lens' Activity (Maybe ActivityObject)
aObject = lens _aObject (\ s a -> s{_aObject = a})

-- | The ID of this activity.
aId :: Lens' Activity (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | The time at which this activity was last updated. Formatted as an RFC
-- 3339 timestamp.
aUpdated :: Lens' Activity (Maybe UTCTime)
aUpdated = lens _aUpdated (\ s a -> s{_aUpdated = a})

-- | Title of this activity.
aTitle :: Lens' Activity (Maybe Text)
aTitle = lens _aTitle (\ s a -> s{_aTitle = a})

-- | This activity\'s verb, which indicates the action that was performed.
-- Possible values include, but are not limited to, the following values: -
-- \"post\" - Publish content to the stream. - \"share\" - Reshare an
-- activity.
aVerb :: Lens' Activity (Maybe Text)
aVerb = lens _aVerb (\ s a -> s{_aVerb = a})

-- | If this activity is a crosspost from another system, this property
-- specifies the ID of the original activity.
aCrosspostSource :: Lens' Activity (Maybe Text)
aCrosspostSource
  = lens _aCrosspostSource
      (\ s a -> s{_aCrosspostSource = a})

-- | ID of the place where this activity occurred.
aPlaceId :: Lens' Activity (Maybe Text)
aPlaceId = lens _aPlaceId (\ s a -> s{_aPlaceId = a})

-- | The service provider that initially published this activity.
aProvider :: Lens' Activity (Maybe ActivityProvider)
aProvider
  = lens _aProvider (\ s a -> s{_aProvider = a})

-- | The person who performed this activity.
--
-- /See:/ 'activityActor' smart constructor.
data ActivityActor = ActivityActor
    { _aaImage        :: !(Maybe ActivityImageActor)
    , _aaUrl          :: !(Maybe Text)
    , _aaName         :: !(Maybe ActivityNameActor)
    , _aaDisplayName  :: !(Maybe Text)
    , _aaId           :: !(Maybe Text)
    , _aaVerification :: !(Maybe ActivityVerificationActor)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaImage'
--
-- * 'aaUrl'
--
-- * 'aaName'
--
-- * 'aaDisplayName'
--
-- * 'aaId'
--
-- * 'aaVerification'
activityActor
    :: ActivityActor
activityActor =
    ActivityActor
    { _aaImage = Nothing
    , _aaUrl = Nothing
    , _aaName = Nothing
    , _aaDisplayName = Nothing
    , _aaId = Nothing
    , _aaVerification = Nothing
    }

-- | The image representation of the actor.
aaImage :: Lens' ActivityActor (Maybe ActivityImageActor)
aaImage = lens _aaImage (\ s a -> s{_aaImage = a})

-- | The link to the actor\'s Google profile.
aaUrl :: Lens' ActivityActor (Maybe Text)
aaUrl = lens _aaUrl (\ s a -> s{_aaUrl = a})

-- | An object representation of the individual components of name.
aaName :: Lens' ActivityActor (Maybe ActivityNameActor)
aaName = lens _aaName (\ s a -> s{_aaName = a})

-- | The name of the actor, suitable for display.
aaDisplayName :: Lens' ActivityActor (Maybe Text)
aaDisplayName
  = lens _aaDisplayName
      (\ s a -> s{_aaDisplayName = a})

-- | The ID of the actor\'s Person resource.
aaId :: Lens' ActivityActor (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | Verification status of actor.
aaVerification :: Lens' ActivityActor (Maybe ActivityVerificationActor)
aaVerification
  = lens _aaVerification
      (\ s a -> s{_aaVerification = a})

-- | If this activity\'s object is itself another activity, such as when a
-- person reshares an activity, this property specifies the original
-- activity\'s actor.
--
-- /See:/ 'activityActorObject' smart constructor.
data ActivityActorObject = ActivityActorObject
    { _aaoImage        :: !(Maybe ActivityImageActorObject)
    , _aaoUrl          :: !(Maybe Text)
    , _aaoDisplayName  :: !(Maybe Text)
    , _aaoId           :: !(Maybe Text)
    , _aaoVerification :: !(Maybe ActivityVerificationActorObject)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActorObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaoImage'
--
-- * 'aaoUrl'
--
-- * 'aaoDisplayName'
--
-- * 'aaoId'
--
-- * 'aaoVerification'
activityActorObject
    :: ActivityActorObject
activityActorObject =
    ActivityActorObject
    { _aaoImage = Nothing
    , _aaoUrl = Nothing
    , _aaoDisplayName = Nothing
    , _aaoId = Nothing
    , _aaoVerification = Nothing
    }

-- | The image representation of the original actor.
aaoImage :: Lens' ActivityActorObject (Maybe ActivityImageActorObject)
aaoImage = lens _aaoImage (\ s a -> s{_aaoImage = a})

-- | A link to the original actor\'s Google profile.
aaoUrl :: Lens' ActivityActorObject (Maybe Text)
aaoUrl = lens _aaoUrl (\ s a -> s{_aaoUrl = a})

-- | The original actor\'s name, which is suitable for display.
aaoDisplayName :: Lens' ActivityActorObject (Maybe Text)
aaoDisplayName
  = lens _aaoDisplayName
      (\ s a -> s{_aaoDisplayName = a})

-- | ID of the original actor.
aaoId :: Lens' ActivityActorObject (Maybe Text)
aaoId = lens _aaoId (\ s a -> s{_aaoId = a})

-- | Verification status of actor.
aaoVerification :: Lens' ActivityActorObject (Maybe ActivityVerificationActorObject)
aaoVerification
  = lens _aaoVerification
      (\ s a -> s{_aaoVerification = a})

-- | If the attachment is a video, the embeddable link.
--
-- /See:/ 'activityEmbedItemAttachmentsObject' smart constructor.
data ActivityEmbedItemAttachmentsObject = ActivityEmbedItemAttachmentsObject
    { _aeiaoUrl  :: !(Maybe Text)
    , _aeiaoType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityEmbedItemAttachmentsObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeiaoUrl'
--
-- * 'aeiaoType'
activityEmbedItemAttachmentsObject
    :: ActivityEmbedItemAttachmentsObject
activityEmbedItemAttachmentsObject =
    ActivityEmbedItemAttachmentsObject
    { _aeiaoUrl = Nothing
    , _aeiaoType = Nothing
    }

-- | URL of the link.
aeiaoUrl :: Lens' ActivityEmbedItemAttachmentsObject (Maybe Text)
aeiaoUrl = lens _aeiaoUrl (\ s a -> s{_aeiaoUrl = a})

-- | Media type of the link.
aeiaoType :: Lens' ActivityEmbedItemAttachmentsObject (Maybe Text)
aeiaoType
  = lens _aeiaoType (\ s a -> s{_aeiaoType = a})

--
-- /See:/ 'activityFeed' smart constructor.
data ActivityFeed = ActivityFeed
    { _afEtag          :: !(Maybe Text)
    , _afNextPageToken :: !(Maybe Text)
    , _afNextLink      :: !(Maybe Text)
    , _afKind          :: !Text
    , _afItems         :: !(Maybe [Maybe Activity])
    , _afSelfLink      :: !(Maybe Text)
    , _afId            :: !(Maybe Text)
    , _afUpdated       :: !(Maybe UTCTime)
    , _afTitle         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afEtag'
--
-- * 'afNextPageToken'
--
-- * 'afNextLink'
--
-- * 'afKind'
--
-- * 'afItems'
--
-- * 'afSelfLink'
--
-- * 'afId'
--
-- * 'afUpdated'
--
-- * 'afTitle'
activityFeed
    :: ActivityFeed
activityFeed =
    ActivityFeed
    { _afEtag = Nothing
    , _afNextPageToken = Nothing
    , _afNextLink = Nothing
    , _afKind = "plus#activityFeed"
    , _afItems = Nothing
    , _afSelfLink = Nothing
    , _afId = Nothing
    , _afUpdated = Nothing
    , _afTitle = Nothing
    }

-- | ETag of this response for caching purposes.
afEtag :: Lens' ActivityFeed (Maybe Text)
afEtag = lens _afEtag (\ s a -> s{_afEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
afNextPageToken :: Lens' ActivityFeed (Maybe Text)
afNextPageToken
  = lens _afNextPageToken
      (\ s a -> s{_afNextPageToken = a})

-- | Link to the next page of activities.
afNextLink :: Lens' ActivityFeed (Maybe Text)
afNextLink
  = lens _afNextLink (\ s a -> s{_afNextLink = a})

-- | Identifies this resource as a collection of activities. Value:
-- \"plus#activityFeed\".
afKind :: Lens' ActivityFeed Text
afKind = lens _afKind (\ s a -> s{_afKind = a})

-- | The activities in this page of results.
afItems :: Lens' ActivityFeed [Maybe Activity]
afItems
  = lens _afItems (\ s a -> s{_afItems = a}) . _Default
      . _Coerce

-- | Link to this activity resource.
afSelfLink :: Lens' ActivityFeed (Maybe Text)
afSelfLink
  = lens _afSelfLink (\ s a -> s{_afSelfLink = a})

-- | The ID of this collection of activities. Deprecated.
afId :: Lens' ActivityFeed (Maybe Text)
afId = lens _afId (\ s a -> s{_afId = a})

-- | The time at which this collection of activities was last updated.
-- Formatted as an RFC 3339 timestamp.
afUpdated :: Lens' ActivityFeed (Maybe UTCTime)
afUpdated
  = lens _afUpdated (\ s a -> s{_afUpdated = a})

-- | The title of this collection of activities, which is a truncated portion
-- of the content.
afTitle :: Lens' ActivityFeed (Maybe Text)
afTitle = lens _afTitle (\ s a -> s{_afTitle = a})

-- | The full image URL for photo attachments.
--
-- /See:/ 'activityFullImageItemAttachmentsObject' smart constructor.
data ActivityFullImageItemAttachmentsObject = ActivityFullImageItemAttachmentsObject
    { _afiiaoHeight :: !(Maybe Word32)
    , _afiiaoUrl    :: !(Maybe Text)
    , _afiiaoWidth  :: !(Maybe Word32)
    , _afiiaoType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityFullImageItemAttachmentsObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afiiaoHeight'
--
-- * 'afiiaoUrl'
--
-- * 'afiiaoWidth'
--
-- * 'afiiaoType'
activityFullImageItemAttachmentsObject
    :: ActivityFullImageItemAttachmentsObject
activityFullImageItemAttachmentsObject =
    ActivityFullImageItemAttachmentsObject
    { _afiiaoHeight = Nothing
    , _afiiaoUrl = Nothing
    , _afiiaoWidth = Nothing
    , _afiiaoType = Nothing
    }

-- | The height, in pixels, of the linked resource.
afiiaoHeight :: Lens' ActivityFullImageItemAttachmentsObject (Maybe Word32)
afiiaoHeight
  = lens _afiiaoHeight (\ s a -> s{_afiiaoHeight = a})

-- | URL of the image.
afiiaoUrl :: Lens' ActivityFullImageItemAttachmentsObject (Maybe Text)
afiiaoUrl
  = lens _afiiaoUrl (\ s a -> s{_afiiaoUrl = a})

-- | The width, in pixels, of the linked resource.
afiiaoWidth :: Lens' ActivityFullImageItemAttachmentsObject (Maybe Word32)
afiiaoWidth
  = lens _afiiaoWidth (\ s a -> s{_afiiaoWidth = a})

-- | Media type of the link.
afiiaoType :: Lens' ActivityFullImageItemAttachmentsObject (Maybe Text)
afiiaoType
  = lens _afiiaoType (\ s a -> s{_afiiaoType = a})

-- | The image representation of the actor.
--
-- /See:/ 'activityImageActor' smart constructor.
newtype ActivityImageActor = ActivityImageActor
    { _aiaUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityImageActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiaUrl'
activityImageActor
    :: ActivityImageActor
activityImageActor =
    ActivityImageActor
    { _aiaUrl = Nothing
    }

-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
aiaUrl :: Lens' ActivityImageActor (Maybe Text)
aiaUrl = lens _aiaUrl (\ s a -> s{_aiaUrl = a})

-- | The image representation of the original actor.
--
-- /See:/ 'activityImageActorObject' smart constructor.
newtype ActivityImageActorObject = ActivityImageActorObject
    { _aiaoUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityImageActorObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiaoUrl'
activityImageActorObject
    :: ActivityImageActorObject
activityImageActorObject =
    ActivityImageActorObject
    { _aiaoUrl = Nothing
    }

-- | A URL that points to a thumbnail photo of the original actor.
aiaoUrl :: Lens' ActivityImageActorObject (Maybe Text)
aiaoUrl = lens _aiaoUrl (\ s a -> s{_aiaoUrl = a})

-- | The preview image for photos or videos.
--
-- /See:/ 'activityImageItemAttachmentsObject' smart constructor.
data ActivityImageItemAttachmentsObject = ActivityImageItemAttachmentsObject
    { _aiiaoHeight :: !(Maybe Word32)
    , _aiiaoUrl    :: !(Maybe Text)
    , _aiiaoWidth  :: !(Maybe Word32)
    , _aiiaoType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityImageItemAttachmentsObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiaoHeight'
--
-- * 'aiiaoUrl'
--
-- * 'aiiaoWidth'
--
-- * 'aiiaoType'
activityImageItemAttachmentsObject
    :: ActivityImageItemAttachmentsObject
activityImageItemAttachmentsObject =
    ActivityImageItemAttachmentsObject
    { _aiiaoHeight = Nothing
    , _aiiaoUrl = Nothing
    , _aiiaoWidth = Nothing
    , _aiiaoType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aiiaoHeight :: Lens' ActivityImageItemAttachmentsObject (Maybe Word32)
aiiaoHeight
  = lens _aiiaoHeight (\ s a -> s{_aiiaoHeight = a})

-- | Image URL.
aiiaoUrl :: Lens' ActivityImageItemAttachmentsObject (Maybe Text)
aiiaoUrl = lens _aiiaoUrl (\ s a -> s{_aiiaoUrl = a})

-- | The width, in pixels, of the linked resource.
aiiaoWidth :: Lens' ActivityImageItemAttachmentsObject (Maybe Word32)
aiiaoWidth
  = lens _aiiaoWidth (\ s a -> s{_aiiaoWidth = a})

-- | Media type of the link.
aiiaoType :: Lens' ActivityImageItemAttachmentsObject (Maybe Text)
aiiaoType
  = lens _aiiaoType (\ s a -> s{_aiiaoType = a})

-- | Image resource.
--
-- /See:/ 'activityImageItemThumbnailsItemAttachmentsObject' smart constructor.
data ActivityImageItemThumbnailsItemAttachmentsObject = ActivityImageItemThumbnailsItemAttachmentsObject
    { _aiitiaoHeight :: !(Maybe Word32)
    , _aiitiaoUrl    :: !(Maybe Text)
    , _aiitiaoWidth  :: !(Maybe Word32)
    , _aiitiaoType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityImageItemThumbnailsItemAttachmentsObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiitiaoHeight'
--
-- * 'aiitiaoUrl'
--
-- * 'aiitiaoWidth'
--
-- * 'aiitiaoType'
activityImageItemThumbnailsItemAttachmentsObject
    :: ActivityImageItemThumbnailsItemAttachmentsObject
activityImageItemThumbnailsItemAttachmentsObject =
    ActivityImageItemThumbnailsItemAttachmentsObject
    { _aiitiaoHeight = Nothing
    , _aiitiaoUrl = Nothing
    , _aiitiaoWidth = Nothing
    , _aiitiaoType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aiitiaoHeight :: Lens' ActivityImageItemThumbnailsItemAttachmentsObject (Maybe Word32)
aiitiaoHeight
  = lens _aiitiaoHeight
      (\ s a -> s{_aiitiaoHeight = a})

-- | Image url.
aiitiaoUrl :: Lens' ActivityImageItemThumbnailsItemAttachmentsObject (Maybe Text)
aiitiaoUrl
  = lens _aiitiaoUrl (\ s a -> s{_aiitiaoUrl = a})

-- | The width, in pixels, of the linked resource.
aiitiaoWidth :: Lens' ActivityImageItemThumbnailsItemAttachmentsObject (Maybe Word32)
aiitiaoWidth
  = lens _aiitiaoWidth (\ s a -> s{_aiitiaoWidth = a})

-- | Media type of the link.
aiitiaoType :: Lens' ActivityImageItemThumbnailsItemAttachmentsObject (Maybe Text)
aiitiaoType
  = lens _aiitiaoType (\ s a -> s{_aiitiaoType = a})

--
-- /See:/ 'activityItemAttachmentsObject' smart constructor.
data ActivityItemAttachmentsObject = ActivityItemAttachmentsObject
    { _actFullImage   :: !(Maybe ActivityFullImageItemAttachmentsObject)
    , _actImage       :: !(Maybe ActivityImageItemAttachmentsObject)
    , _actObjectType  :: !(Maybe Text)
    , _actUrl         :: !(Maybe Text)
    , _actEmbed       :: !(Maybe ActivityEmbedItemAttachmentsObject)
    , _actContent     :: !(Maybe Text)
    , _actThumbnails  :: !(Maybe [ActivityItemThumbnailsItemAttachmentsObject])
    , _actDisplayName :: !(Maybe Text)
    , _actId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityItemAttachmentsObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actFullImage'
--
-- * 'actImage'
--
-- * 'actObjectType'
--
-- * 'actUrl'
--
-- * 'actEmbed'
--
-- * 'actContent'
--
-- * 'actThumbnails'
--
-- * 'actDisplayName'
--
-- * 'actId'
activityItemAttachmentsObject
    :: ActivityItemAttachmentsObject
activityItemAttachmentsObject =
    ActivityItemAttachmentsObject
    { _actFullImage = Nothing
    , _actImage = Nothing
    , _actObjectType = Nothing
    , _actUrl = Nothing
    , _actEmbed = Nothing
    , _actContent = Nothing
    , _actThumbnails = Nothing
    , _actDisplayName = Nothing
    , _actId = Nothing
    }

-- | The full image URL for photo attachments.
actFullImage :: Lens' ActivityItemAttachmentsObject (Maybe ActivityFullImageItemAttachmentsObject)
actFullImage
  = lens _actFullImage (\ s a -> s{_actFullImage = a})

-- | The preview image for photos or videos.
actImage :: Lens' ActivityItemAttachmentsObject (Maybe ActivityImageItemAttachmentsObject)
actImage = lens _actImage (\ s a -> s{_actImage = a})

-- | The type of media object. Possible values include, but are not limited
-- to, the following values: - \"photo\" - A photo. - \"album\" - A photo
-- album. - \"video\" - A video. - \"article\" - An article, specified by a
-- link.
actObjectType :: Lens' ActivityItemAttachmentsObject (Maybe Text)
actObjectType
  = lens _actObjectType
      (\ s a -> s{_actObjectType = a})

-- | The link to the attachment, which should be of type text\/html.
actUrl :: Lens' ActivityItemAttachmentsObject (Maybe Text)
actUrl = lens _actUrl (\ s a -> s{_actUrl = a})

-- | If the attachment is a video, the embeddable link.
actEmbed :: Lens' ActivityItemAttachmentsObject (Maybe ActivityEmbedItemAttachmentsObject)
actEmbed = lens _actEmbed (\ s a -> s{_actEmbed = a})

-- | If the attachment is an article, this property contains a snippet of
-- text from the article. It can also include descriptions for other types.
actContent :: Lens' ActivityItemAttachmentsObject (Maybe Text)
actContent
  = lens _actContent (\ s a -> s{_actContent = a})

-- | If the attachment is an album, this property is a list of potential
-- additional thumbnails from the album.
actThumbnails :: Lens' ActivityItemAttachmentsObject [ActivityItemThumbnailsItemAttachmentsObject]
actThumbnails
  = lens _actThumbnails
      (\ s a -> s{_actThumbnails = a})
      . _Default
      . _Coerce

-- | The title of the attachment, such as a photo caption or an article
-- title.
actDisplayName :: Lens' ActivityItemAttachmentsObject (Maybe Text)
actDisplayName
  = lens _actDisplayName
      (\ s a -> s{_actDisplayName = a})

-- | The ID of the attachment.
actId :: Lens' ActivityItemAttachmentsObject (Maybe Text)
actId = lens _actId (\ s a -> s{_actId = a})

--
-- /See:/ 'activityItemThumbnailsItemAttachmentsObject' smart constructor.
data ActivityItemThumbnailsItemAttachmentsObject = ActivityItemThumbnailsItemAttachmentsObject
    { _aitiaoImage       :: !(Maybe ActivityImageItemThumbnailsItemAttachmentsObject)
    , _aitiaoUrl         :: !(Maybe Text)
    , _aitiaoDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityItemThumbnailsItemAttachmentsObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aitiaoImage'
--
-- * 'aitiaoUrl'
--
-- * 'aitiaoDescription'
activityItemThumbnailsItemAttachmentsObject
    :: ActivityItemThumbnailsItemAttachmentsObject
activityItemThumbnailsItemAttachmentsObject =
    ActivityItemThumbnailsItemAttachmentsObject
    { _aitiaoImage = Nothing
    , _aitiaoUrl = Nothing
    , _aitiaoDescription = Nothing
    }

-- | Image resource.
aitiaoImage :: Lens' ActivityItemThumbnailsItemAttachmentsObject (Maybe ActivityImageItemThumbnailsItemAttachmentsObject)
aitiaoImage
  = lens _aitiaoImage (\ s a -> s{_aitiaoImage = a})

-- | URL of the webpage containing the image.
aitiaoUrl :: Lens' ActivityItemThumbnailsItemAttachmentsObject (Maybe Text)
aitiaoUrl
  = lens _aitiaoUrl (\ s a -> s{_aitiaoUrl = a})

-- | Potential name of the thumbnail.
aitiaoDescription :: Lens' ActivityItemThumbnailsItemAttachmentsObject (Maybe Text)
aitiaoDescription
  = lens _aitiaoDescription
      (\ s a -> s{_aitiaoDescription = a})

-- | An object representation of the individual components of name.
--
-- /See:/ 'activityNameActor' smart constructor.
data ActivityNameActor = ActivityNameActor
    { _anaGivenName  :: !(Maybe Text)
    , _anaFamilyName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityNameActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'anaGivenName'
--
-- * 'anaFamilyName'
activityNameActor
    :: ActivityNameActor
activityNameActor =
    ActivityNameActor
    { _anaGivenName = Nothing
    , _anaFamilyName = Nothing
    }

-- | The given name (\"first name\") of the actor.
anaGivenName :: Lens' ActivityNameActor (Maybe Text)
anaGivenName
  = lens _anaGivenName (\ s a -> s{_anaGivenName = a})

-- | The family name (\"last name\") of the actor.
anaFamilyName :: Lens' ActivityNameActor (Maybe Text)
anaFamilyName
  = lens _anaFamilyName
      (\ s a -> s{_anaFamilyName = a})

-- | The object of this activity.
--
-- /See:/ 'activityObject' smart constructor.
data ActivityObject = ActivityObject
    { _aoPlusoners       :: !(Maybe ActivityPlusonersObject)
    , _aoAttachments     :: !(Maybe [ActivityItemAttachmentsObject])
    , _aoObjectType      :: !(Maybe Text)
    , _aoOriginalContent :: !(Maybe Text)
    , _aoUrl             :: !(Maybe Text)
    , _aoActor           :: !(Maybe ActivityActorObject)
    , _aoContent         :: !(Maybe Text)
    , _aoReplies         :: !(Maybe ActivityRepliesObject)
    , _aoId              :: !(Maybe Text)
    , _aoResharers       :: !(Maybe ActivityResharersObject)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoPlusoners'
--
-- * 'aoAttachments'
--
-- * 'aoObjectType'
--
-- * 'aoOriginalContent'
--
-- * 'aoUrl'
--
-- * 'aoActor'
--
-- * 'aoContent'
--
-- * 'aoReplies'
--
-- * 'aoId'
--
-- * 'aoResharers'
activityObject
    :: ActivityObject
activityObject =
    ActivityObject
    { _aoPlusoners = Nothing
    , _aoAttachments = Nothing
    , _aoObjectType = Nothing
    , _aoOriginalContent = Nothing
    , _aoUrl = Nothing
    , _aoActor = Nothing
    , _aoContent = Nothing
    , _aoReplies = Nothing
    , _aoId = Nothing
    , _aoResharers = Nothing
    }

-- | People who +1\'d this activity.
aoPlusoners :: Lens' ActivityObject (Maybe ActivityPlusonersObject)
aoPlusoners
  = lens _aoPlusoners (\ s a -> s{_aoPlusoners = a})

-- | The media objects attached to this activity.
aoAttachments :: Lens' ActivityObject [ActivityItemAttachmentsObject]
aoAttachments
  = lens _aoAttachments
      (\ s a -> s{_aoAttachments = a})
      . _Default
      . _Coerce

-- | The type of the object. Possible values include, but are not limited to,
-- the following values: - \"note\" - Textual content. - \"activity\" - A
-- Google+ activity.
aoObjectType :: Lens' ActivityObject (Maybe Text)
aoObjectType
  = lens _aoObjectType (\ s a -> s{_aoObjectType = a})

-- | The content (text) as provided by the author, which is stored without
-- any HTML formatting. When creating or updating an activity, this value
-- must be supplied as plain text in the request.
aoOriginalContent :: Lens' ActivityObject (Maybe Text)
aoOriginalContent
  = lens _aoOriginalContent
      (\ s a -> s{_aoOriginalContent = a})

-- | The URL that points to the linked resource.
aoUrl :: Lens' ActivityObject (Maybe Text)
aoUrl = lens _aoUrl (\ s a -> s{_aoUrl = a})

-- | If this activity\'s object is itself another activity, such as when a
-- person reshares an activity, this property specifies the original
-- activity\'s actor.
aoActor :: Lens' ActivityObject (Maybe ActivityActorObject)
aoActor = lens _aoActor (\ s a -> s{_aoActor = a})

-- | The HTML-formatted content, which is suitable for display.
aoContent :: Lens' ActivityObject (Maybe Text)
aoContent
  = lens _aoContent (\ s a -> s{_aoContent = a})

-- | Comments in reply to this activity.
aoReplies :: Lens' ActivityObject (Maybe ActivityRepliesObject)
aoReplies
  = lens _aoReplies (\ s a -> s{_aoReplies = a})

-- | The ID of the object. When resharing an activity, this is the ID of the
-- activity that is being reshared.
aoId :: Lens' ActivityObject (Maybe Text)
aoId = lens _aoId (\ s a -> s{_aoId = a})

-- | People who reshared this activity.
aoResharers :: Lens' ActivityObject (Maybe ActivityResharersObject)
aoResharers
  = lens _aoResharers (\ s a -> s{_aoResharers = a})

-- | People who +1\'d this activity.
--
-- /See:/ 'activityPlusonersObject' smart constructor.
data ActivityPlusonersObject = ActivityPlusonersObject
    { _apoTotalItems :: !(Maybe Word32)
    , _apoSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityPlusonersObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apoTotalItems'
--
-- * 'apoSelfLink'
activityPlusonersObject
    :: ActivityPlusonersObject
activityPlusonersObject =
    ActivityPlusonersObject
    { _apoTotalItems = Nothing
    , _apoSelfLink = Nothing
    }

-- | Total number of people who +1\'d this activity.
apoTotalItems :: Lens' ActivityPlusonersObject (Maybe Word32)
apoTotalItems
  = lens _apoTotalItems
      (\ s a -> s{_apoTotalItems = a})

-- | The URL for the collection of people who +1\'d this activity.
apoSelfLink :: Lens' ActivityPlusonersObject (Maybe Text)
apoSelfLink
  = lens _apoSelfLink (\ s a -> s{_apoSelfLink = a})

-- | The service provider that initially published this activity.
--
-- /See:/ 'activityProvider' smart constructor.
newtype ActivityProvider = ActivityProvider
    { _apTitle :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apTitle'
activityProvider
    :: ActivityProvider
activityProvider =
    ActivityProvider
    { _apTitle = Nothing
    }

-- | Name of the service provider.
apTitle :: Lens' ActivityProvider (Maybe Text)
apTitle = lens _apTitle (\ s a -> s{_apTitle = a})

-- | Comments in reply to this activity.
--
-- /See:/ 'activityRepliesObject' smart constructor.
data ActivityRepliesObject = ActivityRepliesObject
    { _aroTotalItems :: !(Maybe Word32)
    , _aroSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityRepliesObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aroTotalItems'
--
-- * 'aroSelfLink'
activityRepliesObject
    :: ActivityRepliesObject
activityRepliesObject =
    ActivityRepliesObject
    { _aroTotalItems = Nothing
    , _aroSelfLink = Nothing
    }

-- | Total number of comments on this activity.
aroTotalItems :: Lens' ActivityRepliesObject (Maybe Word32)
aroTotalItems
  = lens _aroTotalItems
      (\ s a -> s{_aroTotalItems = a})

-- | The URL for the collection of comments in reply to this activity.
aroSelfLink :: Lens' ActivityRepliesObject (Maybe Text)
aroSelfLink
  = lens _aroSelfLink (\ s a -> s{_aroSelfLink = a})

-- | People who reshared this activity.
--
-- /See:/ 'activityResharersObject' smart constructor.
data ActivityResharersObject = ActivityResharersObject
    { _aTotalItems :: !(Maybe Word32)
    , _aSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityResharersObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTotalItems'
--
-- * 'aSelfLink'
activityResharersObject
    :: ActivityResharersObject
activityResharersObject =
    ActivityResharersObject
    { _aTotalItems = Nothing
    , _aSelfLink = Nothing
    }

-- | Total number of people who reshared this activity.
aTotalItems :: Lens' ActivityResharersObject (Maybe Word32)
aTotalItems
  = lens _aTotalItems (\ s a -> s{_aTotalItems = a})

-- | The URL for the collection of resharers.
aSelfLink :: Lens' ActivityResharersObject (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

-- | Verification status of actor.
--
-- /See:/ 'activityVerificationActor' smart constructor.
newtype ActivityVerificationActor = ActivityVerificationActor
    { _avaAdHocVerified :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityVerificationActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avaAdHocVerified'
activityVerificationActor
    :: ActivityVerificationActor
activityVerificationActor =
    ActivityVerificationActor
    { _avaAdHocVerified = Nothing
    }

-- | Verification for one-time or manual processes.
avaAdHocVerified :: Lens' ActivityVerificationActor (Maybe Text)
avaAdHocVerified
  = lens _avaAdHocVerified
      (\ s a -> s{_avaAdHocVerified = a})

-- | Verification status of actor.
--
-- /See:/ 'activityVerificationActorObject' smart constructor.
newtype ActivityVerificationActorObject = ActivityVerificationActorObject
    { _avaoAdHocVerified :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityVerificationActorObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avaoAdHocVerified'
activityVerificationActorObject
    :: ActivityVerificationActorObject
activityVerificationActorObject =
    ActivityVerificationActorObject
    { _avaoAdHocVerified = Nothing
    }

-- | Verification for one-time or manual processes.
avaoAdHocVerified :: Lens' ActivityVerificationActorObject (Maybe Text)
avaoAdHocVerified
  = lens _avaoAdHocVerified
      (\ s a -> s{_avaoAdHocVerified = a})

--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _cEtag      :: !(Maybe Text)
    , _cPlusoners :: !(Maybe CommentPlusoners)
    , _cKind      :: !Text
    , _cPublished :: !(Maybe UTCTime)
    , _cActor     :: !(Maybe CommentActor)
    , _cSelfLink  :: !(Maybe Text)
    , _cObject    :: !(Maybe CommentObject)
    , _cId        :: !(Maybe Text)
    , _cUpdated   :: !(Maybe UTCTime)
    , _cVerb      :: !Text
    , _cInReplyTo :: !(Maybe [CommentItemInReplyTo])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEtag'
--
-- * 'cPlusoners'
--
-- * 'cKind'
--
-- * 'cPublished'
--
-- * 'cActor'
--
-- * 'cSelfLink'
--
-- * 'cObject'
--
-- * 'cId'
--
-- * 'cUpdated'
--
-- * 'cVerb'
--
-- * 'cInReplyTo'
comment
    :: Comment
comment =
    Comment
    { _cEtag = Nothing
    , _cPlusoners = Nothing
    , _cKind = "plus#comment"
    , _cPublished = Nothing
    , _cActor = Nothing
    , _cSelfLink = Nothing
    , _cObject = Nothing
    , _cId = Nothing
    , _cUpdated = Nothing
    , _cVerb = "post"
    , _cInReplyTo = Nothing
    }

-- | ETag of this response for caching purposes.
cEtag :: Lens' Comment (Maybe Text)
cEtag = lens _cEtag (\ s a -> s{_cEtag = a})

-- | People who +1\'d this comment.
cPlusoners :: Lens' Comment (Maybe CommentPlusoners)
cPlusoners
  = lens _cPlusoners (\ s a -> s{_cPlusoners = a})

-- | Identifies this resource as a comment. Value: \"plus#comment\".
cKind :: Lens' Comment Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The time at which this comment was initially published. Formatted as an
-- RFC 3339 timestamp.
cPublished :: Lens' Comment (Maybe UTCTime)
cPublished
  = lens _cPublished (\ s a -> s{_cPublished = a})

-- | The person who posted this comment.
cActor :: Lens' Comment (Maybe CommentActor)
cActor = lens _cActor (\ s a -> s{_cActor = a})

-- | Link to this comment resource.
cSelfLink :: Lens' Comment (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The object of this comment.
cObject :: Lens' Comment (Maybe CommentObject)
cObject = lens _cObject (\ s a -> s{_cObject = a})

-- | The ID of this comment.
cId :: Lens' Comment (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The time at which this comment was last updated. Formatted as an RFC
-- 3339 timestamp.
cUpdated :: Lens' Comment (Maybe UTCTime)
cUpdated = lens _cUpdated (\ s a -> s{_cUpdated = a})

-- | This comment\'s verb, indicating what action was performed. Possible
-- values are: - \"post\" - Publish content to the stream.
cVerb :: Lens' Comment Text
cVerb = lens _cVerb (\ s a -> s{_cVerb = a})

-- | The activity this comment replied to.
cInReplyTo :: Lens' Comment [CommentItemInReplyTo]
cInReplyTo
  = lens _cInReplyTo (\ s a -> s{_cInReplyTo = a}) .
      _Default
      . _Coerce

-- | The person who posted this comment.
--
-- /See:/ 'commentActor' smart constructor.
data CommentActor = CommentActor
    { _caImage        :: !(Maybe CommentImageActor)
    , _caUrl          :: !(Maybe Text)
    , _caDisplayName  :: !(Maybe Text)
    , _caId           :: !(Maybe Text)
    , _caVerification :: !(Maybe CommentVerificationActor)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caImage'
--
-- * 'caUrl'
--
-- * 'caDisplayName'
--
-- * 'caId'
--
-- * 'caVerification'
commentActor
    :: CommentActor
commentActor =
    CommentActor
    { _caImage = Nothing
    , _caUrl = Nothing
    , _caDisplayName = Nothing
    , _caId = Nothing
    , _caVerification = Nothing
    }

-- | The image representation of this actor.
caImage :: Lens' CommentActor (Maybe CommentImageActor)
caImage = lens _caImage (\ s a -> s{_caImage = a})

-- | A link to the Person resource for this actor.
caUrl :: Lens' CommentActor (Maybe Text)
caUrl = lens _caUrl (\ s a -> s{_caUrl = a})

-- | The name of this actor, suitable for display.
caDisplayName :: Lens' CommentActor (Maybe Text)
caDisplayName
  = lens _caDisplayName
      (\ s a -> s{_caDisplayName = a})

-- | The ID of the actor.
caId :: Lens' CommentActor (Maybe Text)
caId = lens _caId (\ s a -> s{_caId = a})

-- | Verification status of actor.
caVerification :: Lens' CommentActor (Maybe CommentVerificationActor)
caVerification
  = lens _caVerification
      (\ s a -> s{_caVerification = a})

--
-- /See:/ 'commentFeed' smart constructor.
data CommentFeed = CommentFeed
    { _cfEtag          :: !(Maybe Text)
    , _cfNextPageToken :: !(Maybe Text)
    , _cfNextLink      :: !(Maybe Text)
    , _cfKind          :: !Text
    , _cfItems         :: !(Maybe [Maybe Comment])
    , _cfId            :: !(Maybe Text)
    , _cfUpdated       :: !(Maybe UTCTime)
    , _cfTitle         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfEtag'
--
-- * 'cfNextPageToken'
--
-- * 'cfNextLink'
--
-- * 'cfKind'
--
-- * 'cfItems'
--
-- * 'cfId'
--
-- * 'cfUpdated'
--
-- * 'cfTitle'
commentFeed
    :: CommentFeed
commentFeed =
    CommentFeed
    { _cfEtag = Nothing
    , _cfNextPageToken = Nothing
    , _cfNextLink = Nothing
    , _cfKind = "plus#commentFeed"
    , _cfItems = Nothing
    , _cfId = Nothing
    , _cfUpdated = Nothing
    , _cfTitle = Nothing
    }

-- | ETag of this response for caching purposes.
cfEtag :: Lens' CommentFeed (Maybe Text)
cfEtag = lens _cfEtag (\ s a -> s{_cfEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
cfNextPageToken :: Lens' CommentFeed (Maybe Text)
cfNextPageToken
  = lens _cfNextPageToken
      (\ s a -> s{_cfNextPageToken = a})

-- | Link to the next page of activities.
cfNextLink :: Lens' CommentFeed (Maybe Text)
cfNextLink
  = lens _cfNextLink (\ s a -> s{_cfNextLink = a})

-- | Identifies this resource as a collection of comments. Value:
-- \"plus#commentFeed\".
cfKind :: Lens' CommentFeed Text
cfKind = lens _cfKind (\ s a -> s{_cfKind = a})

-- | The comments in this page of results.
cfItems :: Lens' CommentFeed [Maybe Comment]
cfItems
  = lens _cfItems (\ s a -> s{_cfItems = a}) . _Default
      . _Coerce

-- | The ID of this collection of comments.
cfId :: Lens' CommentFeed (Maybe Text)
cfId = lens _cfId (\ s a -> s{_cfId = a})

-- | The time at which this collection of comments was last updated.
-- Formatted as an RFC 3339 timestamp.
cfUpdated :: Lens' CommentFeed (Maybe UTCTime)
cfUpdated
  = lens _cfUpdated (\ s a -> s{_cfUpdated = a})

-- | The title of this collection of comments.
cfTitle :: Lens' CommentFeed (Maybe Text)
cfTitle = lens _cfTitle (\ s a -> s{_cfTitle = a})

-- | The image representation of this actor.
--
-- /See:/ 'commentImageActor' smart constructor.
newtype CommentImageActor = CommentImageActor
    { _ciaUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentImageActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciaUrl'
commentImageActor
    :: CommentImageActor
commentImageActor =
    CommentImageActor
    { _ciaUrl = Nothing
    }

-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
ciaUrl :: Lens' CommentImageActor (Maybe Text)
ciaUrl = lens _ciaUrl (\ s a -> s{_ciaUrl = a})

--
-- /See:/ 'commentItemInReplyTo' smart constructor.
data CommentItemInReplyTo = CommentItemInReplyTo
    { _ciirtUrl :: !(Maybe Text)
    , _ciirtId  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentItemInReplyTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciirtUrl'
--
-- * 'ciirtId'
commentItemInReplyTo
    :: CommentItemInReplyTo
commentItemInReplyTo =
    CommentItemInReplyTo
    { _ciirtUrl = Nothing
    , _ciirtId = Nothing
    }

-- | The URL of the activity.
ciirtUrl :: Lens' CommentItemInReplyTo (Maybe Text)
ciirtUrl = lens _ciirtUrl (\ s a -> s{_ciirtUrl = a})

-- | The ID of the activity.
ciirtId :: Lens' CommentItemInReplyTo (Maybe Text)
ciirtId = lens _ciirtId (\ s a -> s{_ciirtId = a})

-- | The object of this comment.
--
-- /See:/ 'commentObject' smart constructor.
data CommentObject = CommentObject
    { _coObjectType      :: !Text
    , _coOriginalContent :: !(Maybe Text)
    , _coContent         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coObjectType'
--
-- * 'coOriginalContent'
--
-- * 'coContent'
commentObject
    :: CommentObject
commentObject =
    CommentObject
    { _coObjectType = "comment"
    , _coOriginalContent = Nothing
    , _coContent = Nothing
    }

-- | The object type of this comment. Possible values are: - \"comment\" - A
-- comment in reply to an activity.
coObjectType :: Lens' CommentObject Text
coObjectType
  = lens _coObjectType (\ s a -> s{_coObjectType = a})

-- | The content (text) as provided by the author, stored without any HTML
-- formatting. When creating or updating a comment, this value must be
-- supplied as plain text in the request.
coOriginalContent :: Lens' CommentObject (Maybe Text)
coOriginalContent
  = lens _coOriginalContent
      (\ s a -> s{_coOriginalContent = a})

-- | The HTML-formatted content, suitable for display.
coContent :: Lens' CommentObject (Maybe Text)
coContent
  = lens _coContent (\ s a -> s{_coContent = a})

-- | People who +1\'d this comment.
--
-- /See:/ 'commentPlusoners' smart constructor.
newtype CommentPlusoners = CommentPlusoners
    { _cpTotalItems :: Maybe Word32
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentPlusoners' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpTotalItems'
commentPlusoners
    :: CommentPlusoners
commentPlusoners =
    CommentPlusoners
    { _cpTotalItems = Nothing
    }

-- | Total number of people who +1\'d this comment.
cpTotalItems :: Lens' CommentPlusoners (Maybe Word32)
cpTotalItems
  = lens _cpTotalItems (\ s a -> s{_cpTotalItems = a})

-- | Verification status of actor.
--
-- /See:/ 'commentVerificationActor' smart constructor.
newtype CommentVerificationActor = CommentVerificationActor
    { _cvaAdHocVerified :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentVerificationActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvaAdHocVerified'
commentVerificationActor
    :: CommentVerificationActor
commentVerificationActor =
    CommentVerificationActor
    { _cvaAdHocVerified = Nothing
    }

-- | Verification for one-time or manual processes.
cvaAdHocVerified :: Lens' CommentVerificationActor (Maybe Text)
cvaAdHocVerified
  = lens _cvaAdHocVerified
      (\ s a -> s{_cvaAdHocVerified = a})

--
-- /See:/ 'itemScope' smart constructor.
data ItemScope = ItemScope
    { _isGivenName           :: !(Maybe Text)
    , _isContentSize         :: !(Maybe Text)
    , _isThumbnail           :: !(Maybe (Maybe ItemScope))
    , _isTickerSymbol        :: !(Maybe Text)
    , _isHeight              :: !(Maybe Text)
    , _isThumbnailUrl        :: !(Maybe Text)
    , _isImage               :: !(Maybe Text)
    , _isStreetAddress       :: !(Maybe Text)
    , _isWorstRating         :: !(Maybe Text)
    , _isLocation            :: !(Maybe (Maybe ItemScope))
    , _isAttendees           :: !(Maybe [Maybe ItemScope])
    , _isText                :: !(Maybe Text)
    , _isKind                :: !Text
    , _isLatitude            :: !(Maybe Double)
    , _isPostalCode          :: !(Maybe Text)
    , _isEndDate             :: !(Maybe Text)
    , _isAssociatedMedia     :: !(Maybe [Maybe ItemScope])
    , _isPlayerType          :: !(Maybe Text)
    , _isUrl                 :: !(Maybe Text)
    , _isWidth               :: !(Maybe Text)
    , _isCaption             :: !(Maybe Text)
    , _isAddress             :: !(Maybe (Maybe ItemScope))
    , _isAddressCountry      :: !(Maybe Text)
    , _isPostOfficeBoxNumber :: !(Maybe Text)
    , _isAdditionalName      :: !(Maybe [Text])
    , _isFamilyName          :: !(Maybe Text)
    , _isDateCreated         :: !(Maybe Text)
    , _isRatingValue         :: !(Maybe Text)
    , _isDatePublished       :: !(Maybe Text)
    , _isStartDate           :: !(Maybe Text)
    , _isGender              :: !(Maybe Text)
    , _isName                :: !(Maybe Text)
    , _isBestRating          :: !(Maybe Text)
    , _isAddressLocality     :: !(Maybe Text)
    , _isPartOfTVSeries      :: !(Maybe (Maybe ItemScope))
    , _isContentUrl          :: !(Maybe Text)
    , _isByArtist            :: !(Maybe (Maybe ItemScope))
    , _isAbout               :: !(Maybe (Maybe ItemScope))
    , _isReviewRating        :: !(Maybe (Maybe ItemScope))
    , _isDateModified        :: !(Maybe Text)
    , _isAuthor              :: !(Maybe [Maybe ItemScope])
    , _isGeo                 :: !(Maybe (Maybe ItemScope))
    , _isId                  :: !(Maybe Text)
    , _isPerformers          :: !(Maybe [Maybe ItemScope])
    , _isAttendeeCount       :: !(Maybe Int32)
    , _isInAlbum             :: !(Maybe (Maybe ItemScope))
    , _isEmbedUrl            :: !(Maybe Text)
    , _isType                :: !(Maybe Text)
    , _isContributor         :: !(Maybe [Maybe ItemScope])
    , _isLongitude           :: !(Maybe Double)
    , _isDuration            :: !(Maybe Text)
    , _isAddressRegion       :: !(Maybe Text)
    , _isAudio               :: !(Maybe (Maybe ItemScope))
    , _isDescription         :: !(Maybe Text)
    , _isBirthDate           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ItemScope' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isGivenName'
--
-- * 'isContentSize'
--
-- * 'isThumbnail'
--
-- * 'isTickerSymbol'
--
-- * 'isHeight'
--
-- * 'isThumbnailUrl'
--
-- * 'isImage'
--
-- * 'isStreetAddress'
--
-- * 'isWorstRating'
--
-- * 'isLocation'
--
-- * 'isAttendees'
--
-- * 'isText'
--
-- * 'isKind'
--
-- * 'isLatitude'
--
-- * 'isPostalCode'
--
-- * 'isEndDate'
--
-- * 'isAssociatedMedia'
--
-- * 'isPlayerType'
--
-- * 'isUrl'
--
-- * 'isWidth'
--
-- * 'isCaption'
--
-- * 'isAddress'
--
-- * 'isAddressCountry'
--
-- * 'isPostOfficeBoxNumber'
--
-- * 'isAdditionalName'
--
-- * 'isFamilyName'
--
-- * 'isDateCreated'
--
-- * 'isRatingValue'
--
-- * 'isDatePublished'
--
-- * 'isStartDate'
--
-- * 'isGender'
--
-- * 'isName'
--
-- * 'isBestRating'
--
-- * 'isAddressLocality'
--
-- * 'isPartOfTVSeries'
--
-- * 'isContentUrl'
--
-- * 'isByArtist'
--
-- * 'isAbout'
--
-- * 'isReviewRating'
--
-- * 'isDateModified'
--
-- * 'isAuthor'
--
-- * 'isGeo'
--
-- * 'isId'
--
-- * 'isPerformers'
--
-- * 'isAttendeeCount'
--
-- * 'isInAlbum'
--
-- * 'isEmbedUrl'
--
-- * 'isType'
--
-- * 'isContributor'
--
-- * 'isLongitude'
--
-- * 'isDuration'
--
-- * 'isAddressRegion'
--
-- * 'isAudio'
--
-- * 'isDescription'
--
-- * 'isBirthDate'
itemScope
    :: ItemScope
itemScope =
    ItemScope
    { _isGivenName = Nothing
    , _isContentSize = Nothing
    , _isThumbnail = Nothing
    , _isTickerSymbol = Nothing
    , _isHeight = Nothing
    , _isThumbnailUrl = Nothing
    , _isImage = Nothing
    , _isStreetAddress = Nothing
    , _isWorstRating = Nothing
    , _isLocation = Nothing
    , _isAttendees = Nothing
    , _isText = Nothing
    , _isKind = "plus#itemScope"
    , _isLatitude = Nothing
    , _isPostalCode = Nothing
    , _isEndDate = Nothing
    , _isAssociatedMedia = Nothing
    , _isPlayerType = Nothing
    , _isUrl = Nothing
    , _isWidth = Nothing
    , _isCaption = Nothing
    , _isAddress = Nothing
    , _isAddressCountry = Nothing
    , _isPostOfficeBoxNumber = Nothing
    , _isAdditionalName = Nothing
    , _isFamilyName = Nothing
    , _isDateCreated = Nothing
    , _isRatingValue = Nothing
    , _isDatePublished = Nothing
    , _isStartDate = Nothing
    , _isGender = Nothing
    , _isName = Nothing
    , _isBestRating = Nothing
    , _isAddressLocality = Nothing
    , _isPartOfTVSeries = Nothing
    , _isContentUrl = Nothing
    , _isByArtist = Nothing
    , _isAbout = Nothing
    , _isReviewRating = Nothing
    , _isDateModified = Nothing
    , _isAuthor = Nothing
    , _isGeo = Nothing
    , _isId = Nothing
    , _isPerformers = Nothing
    , _isAttendeeCount = Nothing
    , _isInAlbum = Nothing
    , _isEmbedUrl = Nothing
    , _isType = Nothing
    , _isContributor = Nothing
    , _isLongitude = Nothing
    , _isDuration = Nothing
    , _isAddressRegion = Nothing
    , _isAudio = Nothing
    , _isDescription = Nothing
    , _isBirthDate = Nothing
    }

-- | Given name. This property can be used with familyName instead of the
-- name property.
isGivenName :: Lens' ItemScope (Maybe Text)
isGivenName
  = lens _isGivenName (\ s a -> s{_isGivenName = a})

-- | File size in (mega\/kilo) bytes.
isContentSize :: Lens' ItemScope (Maybe Text)
isContentSize
  = lens _isContentSize
      (\ s a -> s{_isContentSize = a})

-- | Thumbnail image for an image or video.
isThumbnail :: Lens' ItemScope (Maybe (Maybe ItemScope))
isThumbnail
  = lens _isThumbnail (\ s a -> s{_isThumbnail = a})

-- | The exchange traded instrument associated with a Corporation object. The
-- tickerSymbol is expressed as an exchange and an instrument name
-- separated by a space character. For the exchange component of the
-- tickerSymbol attribute, we recommend using the controlled vocabulary of
-- Market Identifier Codes (MIC) specified in ISO15022.
isTickerSymbol :: Lens' ItemScope (Maybe Text)
isTickerSymbol
  = lens _isTickerSymbol
      (\ s a -> s{_isTickerSymbol = a})

-- | The height of the media object.
isHeight :: Lens' ItemScope (Maybe Text)
isHeight = lens _isHeight (\ s a -> s{_isHeight = a})

-- | A URL to a thumbnail image that represents this result.
isThumbnailUrl :: Lens' ItemScope (Maybe Text)
isThumbnailUrl
  = lens _isThumbnailUrl
      (\ s a -> s{_isThumbnailUrl = a})

-- | A URL to the image that represents this result. For example, if a user
-- writes a review of a restaurant and attaches a photo of their meal, you
-- might use that photo as the result.image.
isImage :: Lens' ItemScope (Maybe Text)
isImage = lens _isImage (\ s a -> s{_isImage = a})

-- | Street address.
isStreetAddress :: Lens' ItemScope (Maybe Text)
isStreetAddress
  = lens _isStreetAddress
      (\ s a -> s{_isStreetAddress = a})

-- | Worst possible rating value that a result might obtain. This property
-- defines the lower bound for the ratingValue.
isWorstRating :: Lens' ItemScope (Maybe Text)
isWorstRating
  = lens _isWorstRating
      (\ s a -> s{_isWorstRating = a})

-- | The location of the event or organization.
isLocation :: Lens' ItemScope (Maybe (Maybe ItemScope))
isLocation
  = lens _isLocation (\ s a -> s{_isLocation = a})

-- | A person attending the event.
isAttendees :: Lens' ItemScope [Maybe ItemScope]
isAttendees
  = lens _isAttendees (\ s a -> s{_isAttendees = a}) .
      _Default
      . _Coerce

-- | The text that is the result of the app activity. For example, if a user
-- leaves a review of a restaurant, this might be the text of the review.
isText :: Lens' ItemScope (Maybe Text)
isText = lens _isText (\ s a -> s{_isText = a})

-- | Identifies this resource as an itemScope.
isKind :: Lens' ItemScope Text
isKind = lens _isKind (\ s a -> s{_isKind = a})

-- | Latitude.
isLatitude :: Lens' ItemScope (Maybe Double)
isLatitude
  = lens _isLatitude (\ s a -> s{_isLatitude = a})

-- | Postal code.
isPostalCode :: Lens' ItemScope (Maybe Text)
isPostalCode
  = lens _isPostalCode (\ s a -> s{_isPostalCode = a})

-- | The end date and time of the event (in ISO 8601 date format).
isEndDate :: Lens' ItemScope (Maybe Text)
isEndDate
  = lens _isEndDate (\ s a -> s{_isEndDate = a})

-- | The encoding.
isAssociatedMedia :: Lens' ItemScope [Maybe ItemScope]
isAssociatedMedia
  = lens _isAssociatedMedia
      (\ s a -> s{_isAssociatedMedia = a})
      . _Default
      . _Coerce

-- | Player type that is required. For example: Flash or Silverlight.
isPlayerType :: Lens' ItemScope (Maybe Text)
isPlayerType
  = lens _isPlayerType (\ s a -> s{_isPlayerType = a})

-- | The URL that points to the result object. For example, a permalink
-- directly to a restaurant reviewer\'s comment.
isUrl :: Lens' ItemScope (Maybe Text)
isUrl = lens _isUrl (\ s a -> s{_isUrl = a})

-- | The width of the media object.
isWidth :: Lens' ItemScope (Maybe Text)
isWidth = lens _isWidth (\ s a -> s{_isWidth = a})

-- | The caption for this object.
isCaption :: Lens' ItemScope (Maybe Text)
isCaption
  = lens _isCaption (\ s a -> s{_isCaption = a})

-- | Postal address.
isAddress :: Lens' ItemScope (Maybe (Maybe ItemScope))
isAddress
  = lens _isAddress (\ s a -> s{_isAddress = a})

-- | Address country.
isAddressCountry :: Lens' ItemScope (Maybe Text)
isAddressCountry
  = lens _isAddressCountry
      (\ s a -> s{_isAddressCountry = a})

-- | Post office box number.
isPostOfficeBoxNumber :: Lens' ItemScope (Maybe Text)
isPostOfficeBoxNumber
  = lens _isPostOfficeBoxNumber
      (\ s a -> s{_isPostOfficeBoxNumber = a})

-- | An additional name for a Person, can be used for a middle name.
isAdditionalName :: Lens' ItemScope [Text]
isAdditionalName
  = lens _isAdditionalName
      (\ s a -> s{_isAdditionalName = a})
      . _Default
      . _Coerce

-- | Family name. This property can be used with givenName instead of the
-- name property.
isFamilyName :: Lens' ItemScope (Maybe Text)
isFamilyName
  = lens _isFamilyName (\ s a -> s{_isFamilyName = a})

-- | The date the result was created such as the date that a review was first
-- created.
isDateCreated :: Lens' ItemScope (Maybe Text)
isDateCreated
  = lens _isDateCreated
      (\ s a -> s{_isDateCreated = a})

-- | Rating value.
isRatingValue :: Lens' ItemScope (Maybe Text)
isRatingValue
  = lens _isRatingValue
      (\ s a -> s{_isRatingValue = a})

-- | The initial date that the result was published. For example, a user
-- writes a comment on a blog, which has a result.dateCreated of when they
-- submit it. If the blog users comment moderation, the
-- result.datePublished value would match the date when the owner approved
-- the message.
isDatePublished :: Lens' ItemScope (Maybe Text)
isDatePublished
  = lens _isDatePublished
      (\ s a -> s{_isDatePublished = a})

-- | The start date and time of the event (in ISO 8601 date format).
isStartDate :: Lens' ItemScope (Maybe Text)
isStartDate
  = lens _isStartDate (\ s a -> s{_isStartDate = a})

-- | Gender of the person.
isGender :: Lens' ItemScope (Maybe Text)
isGender = lens _isGender (\ s a -> s{_isGender = a})

-- | The name of the result. In the example of a restaurant review, this
-- might be the summary the user gave their review such as \"Great
-- ambiance, but overpriced.\"
isName :: Lens' ItemScope (Maybe Text)
isName = lens _isName (\ s a -> s{_isName = a})

-- | Best possible rating value that a result might obtain. This property
-- defines the upper bound for the ratingValue. For example, you might have
-- a 5 star rating scale, you would provide 5 as the value for this
-- property.
isBestRating :: Lens' ItemScope (Maybe Text)
isBestRating
  = lens _isBestRating (\ s a -> s{_isBestRating = a})

-- | Address locality.
isAddressLocality :: Lens' ItemScope (Maybe Text)
isAddressLocality
  = lens _isAddressLocality
      (\ s a -> s{_isAddressLocality = a})

-- | Property of http:\/\/schema.org\/TVEpisode indicating which series the
-- episode belongs to.
isPartOfTVSeries :: Lens' ItemScope (Maybe (Maybe ItemScope))
isPartOfTVSeries
  = lens _isPartOfTVSeries
      (\ s a -> s{_isPartOfTVSeries = a})

-- | Actual bytes of the media object, for example the image file or video
-- file.
isContentUrl :: Lens' ItemScope (Maybe Text)
isContentUrl
  = lens _isContentUrl (\ s a -> s{_isContentUrl = a})

-- | From http:\/\/schema.org\/MusicRecording, the artist that performed this
-- recording.
isByArtist :: Lens' ItemScope (Maybe (Maybe ItemScope))
isByArtist
  = lens _isByArtist (\ s a -> s{_isByArtist = a})

-- | The subject matter of the content.
isAbout :: Lens' ItemScope (Maybe (Maybe ItemScope))
isAbout = lens _isAbout (\ s a -> s{_isAbout = a})

-- | Review rating.
isReviewRating :: Lens' ItemScope (Maybe (Maybe ItemScope))
isReviewRating
  = lens _isReviewRating
      (\ s a -> s{_isReviewRating = a})

-- | The date the result was last modified such as the date that a review was
-- last edited.
isDateModified :: Lens' ItemScope (Maybe Text)
isDateModified
  = lens _isDateModified
      (\ s a -> s{_isDateModified = a})

-- | The person or persons who created this result. In the example of
-- restaurant reviews, this might be the reviewer\'s name.
isAuthor :: Lens' ItemScope [Maybe ItemScope]
isAuthor
  = lens _isAuthor (\ s a -> s{_isAuthor = a}) .
      _Default
      . _Coerce

-- | Geo coordinates.
isGeo :: Lens' ItemScope (Maybe (Maybe ItemScope))
isGeo = lens _isGeo (\ s a -> s{_isGeo = a})

-- | An identifier for the object. Your app can choose how to identify
-- objects. The object.id is required if you are writing an action that
-- does not have a corresponding web page or object.url property.
isId :: Lens' ItemScope (Maybe Text)
isId = lens _isId (\ s a -> s{_isId = a})

-- | The main performer or performers of the event-for example, a presenter,
-- musician, or actor.
isPerformers :: Lens' ItemScope [Maybe ItemScope]
isPerformers
  = lens _isPerformers (\ s a -> s{_isPerformers = a})
      . _Default
      . _Coerce

-- | Number of attendees.
isAttendeeCount :: Lens' ItemScope (Maybe Int32)
isAttendeeCount
  = lens _isAttendeeCount
      (\ s a -> s{_isAttendeeCount = a})

-- | From http:\/\/schema.org\/MusicRecording, which album a song is in.
isInAlbum :: Lens' ItemScope (Maybe (Maybe ItemScope))
isInAlbum
  = lens _isInAlbum (\ s a -> s{_isInAlbum = a})

-- | A URL pointing to a player for a specific video. In general, this is the
-- information in the src element of an embed tag and should not be the
-- same as the content of the loc tag.
isEmbedUrl :: Lens' ItemScope (Maybe Text)
isEmbedUrl
  = lens _isEmbedUrl (\ s a -> s{_isEmbedUrl = a})

-- | The schema.org URL that best describes the referenced object and matches
-- the type of moment.
isType :: Lens' ItemScope (Maybe Text)
isType = lens _isType (\ s a -> s{_isType = a})

-- | A list of contributors to this result.
isContributor :: Lens' ItemScope [Maybe ItemScope]
isContributor
  = lens _isContributor
      (\ s a -> s{_isContributor = a})
      . _Default
      . _Coerce

-- | Longitude.
isLongitude :: Lens' ItemScope (Maybe Double)
isLongitude
  = lens _isLongitude (\ s a -> s{_isLongitude = a})

-- | The duration of the item (movie, audio recording, event, etc.) in ISO
-- 8601 date format.
isDuration :: Lens' ItemScope (Maybe Text)
isDuration
  = lens _isDuration (\ s a -> s{_isDuration = a})

-- | Address region.
isAddressRegion :: Lens' ItemScope (Maybe Text)
isAddressRegion
  = lens _isAddressRegion
      (\ s a -> s{_isAddressRegion = a})

-- | From http:\/\/schema.org\/MusicRecording, the audio file.
isAudio :: Lens' ItemScope (Maybe (Maybe ItemScope))
isAudio = lens _isAudio (\ s a -> s{_isAudio = a})

-- | The string that describes the content of the result.
isDescription :: Lens' ItemScope (Maybe Text)
isDescription
  = lens _isDescription
      (\ s a -> s{_isDescription = a})

-- | Date of birth.
isBirthDate :: Lens' ItemScope (Maybe Text)
isBirthDate
  = lens _isBirthDate (\ s a -> s{_isBirthDate = a})

--
-- /See:/ 'moment' smart constructor.
data Moment = Moment
    { _mKind      :: !Text
    , _mResult    :: !(Maybe (Maybe ItemScope))
    , _mStartDate :: !(Maybe UTCTime)
    , _mObject    :: !(Maybe (Maybe ItemScope))
    , _mId        :: !(Maybe Text)
    , _mType      :: !(Maybe Text)
    , _mTarget    :: !(Maybe (Maybe ItemScope))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Moment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mKind'
--
-- * 'mResult'
--
-- * 'mStartDate'
--
-- * 'mObject'
--
-- * 'mId'
--
-- * 'mType'
--
-- * 'mTarget'
moment
    :: Moment
moment =
    Moment
    { _mKind = "plus#moment"
    , _mResult = Nothing
    , _mStartDate = Nothing
    , _mObject = Nothing
    , _mId = Nothing
    , _mType = Nothing
    , _mTarget = Nothing
    }

-- | Identifies this resource as a moment.
mKind :: Lens' Moment Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | The object generated by performing the action on the object. For
-- example, a user writes a review of a restaurant, the object is the
-- restaurant and the result is the review.
mResult :: Lens' Moment (Maybe (Maybe ItemScope))
mResult = lens _mResult (\ s a -> s{_mResult = a})

-- | Time stamp of when the action occurred in RFC3339 format.
mStartDate :: Lens' Moment (Maybe UTCTime)
mStartDate
  = lens _mStartDate (\ s a -> s{_mStartDate = a})

-- | The object on which the action was performed. Specifying this is
-- equivalent with specifying \"target\". Note that responses from the
-- server will use the \"target\" field instead for backward-compatibility
-- with older clients.
mObject :: Lens' Moment (Maybe (Maybe ItemScope))
mObject = lens _mObject (\ s a -> s{_mObject = a})

-- | The moment ID.
mId :: Lens' Moment (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | The schema.org type for the type of moment to write. For example,
-- http:\/\/schema.org\/AddAction. Note that responses from the server will
-- use the Google schema type instead for backward-compatibility with older
-- clients. For example, http:\/\/schemas.google.com\/AddActivity.
mType :: Lens' Moment (Maybe Text)
mType = lens _mType (\ s a -> s{_mType = a})

-- | The object on which the action was performed.
mTarget :: Lens' Moment (Maybe (Maybe ItemScope))
mTarget = lens _mTarget (\ s a -> s{_mTarget = a})

--
-- /See:/ 'momentsFeed' smart constructor.
data MomentsFeed = MomentsFeed
    { _mfEtag          :: !(Maybe Text)
    , _mfNextPageToken :: !(Maybe Text)
    , _mfNextLink      :: !(Maybe Text)
    , _mfKind          :: !Text
    , _mfItems         :: !(Maybe [Maybe Moment])
    , _mfSelfLink      :: !(Maybe Text)
    , _mfUpdated       :: !(Maybe UTCTime)
    , _mfTitle         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MomentsFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfEtag'
--
-- * 'mfNextPageToken'
--
-- * 'mfNextLink'
--
-- * 'mfKind'
--
-- * 'mfItems'
--
-- * 'mfSelfLink'
--
-- * 'mfUpdated'
--
-- * 'mfTitle'
momentsFeed
    :: MomentsFeed
momentsFeed =
    MomentsFeed
    { _mfEtag = Nothing
    , _mfNextPageToken = Nothing
    , _mfNextLink = Nothing
    , _mfKind = "plus#momentsFeed"
    , _mfItems = Nothing
    , _mfSelfLink = Nothing
    , _mfUpdated = Nothing
    , _mfTitle = Nothing
    }

-- | ETag of this response for caching purposes.
mfEtag :: Lens' MomentsFeed (Maybe Text)
mfEtag = lens _mfEtag (\ s a -> s{_mfEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
mfNextPageToken :: Lens' MomentsFeed (Maybe Text)
mfNextPageToken
  = lens _mfNextPageToken
      (\ s a -> s{_mfNextPageToken = a})

-- | Link to the next page of moments.
mfNextLink :: Lens' MomentsFeed (Maybe Text)
mfNextLink
  = lens _mfNextLink (\ s a -> s{_mfNextLink = a})

-- | Identifies this resource as a collection of moments. Value:
-- \"plus#momentsFeed\".
mfKind :: Lens' MomentsFeed Text
mfKind = lens _mfKind (\ s a -> s{_mfKind = a})

-- | The moments in this page of results.
mfItems :: Lens' MomentsFeed [Maybe Moment]
mfItems
  = lens _mfItems (\ s a -> s{_mfItems = a}) . _Default
      . _Coerce

-- | Link to this page of moments.
mfSelfLink :: Lens' MomentsFeed (Maybe Text)
mfSelfLink
  = lens _mfSelfLink (\ s a -> s{_mfSelfLink = a})

-- | The RFC 339 timestamp for when this collection of moments was last
-- updated.
mfUpdated :: Lens' MomentsFeed (Maybe UTCTime)
mfUpdated
  = lens _mfUpdated (\ s a -> s{_mfUpdated = a})

-- | The title of this collection of moments.
mfTitle :: Lens' MomentsFeed (Maybe Text)
mfTitle = lens _mfTitle (\ s a -> s{_mfTitle = a})

--
-- /See:/ 'peopleFeed' smart constructor.
data PeopleFeed = PeopleFeed
    { _pfTotalItems    :: !(Maybe Int32)
    , _pfEtag          :: !(Maybe Text)
    , _pfNextPageToken :: !(Maybe Text)
    , _pfKind          :: !Text
    , _pfItems         :: !(Maybe [Maybe Person])
    , _pfSelfLink      :: !(Maybe Text)
    , _pfTitle         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfTotalItems'
--
-- * 'pfEtag'
--
-- * 'pfNextPageToken'
--
-- * 'pfKind'
--
-- * 'pfItems'
--
-- * 'pfSelfLink'
--
-- * 'pfTitle'
peopleFeed
    :: PeopleFeed
peopleFeed =
    PeopleFeed
    { _pfTotalItems = Nothing
    , _pfEtag = Nothing
    , _pfNextPageToken = Nothing
    , _pfKind = "plus#peopleFeed"
    , _pfItems = Nothing
    , _pfSelfLink = Nothing
    , _pfTitle = Nothing
    }

-- | The total number of people available in this list. The number of people
-- in a response might be smaller due to paging. This might not be set for
-- all collections.
pfTotalItems :: Lens' PeopleFeed (Maybe Int32)
pfTotalItems
  = lens _pfTotalItems (\ s a -> s{_pfTotalItems = a})

-- | ETag of this response for caching purposes.
pfEtag :: Lens' PeopleFeed (Maybe Text)
pfEtag = lens _pfEtag (\ s a -> s{_pfEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
pfNextPageToken :: Lens' PeopleFeed (Maybe Text)
pfNextPageToken
  = lens _pfNextPageToken
      (\ s a -> s{_pfNextPageToken = a})

-- | Identifies this resource as a collection of people. Value:
-- \"plus#peopleFeed\".
pfKind :: Lens' PeopleFeed Text
pfKind = lens _pfKind (\ s a -> s{_pfKind = a})

-- | The people in this page of results. Each item includes the id,
-- displayName, image, and url for the person. To retrieve additional
-- profile data, see the people.get method.
pfItems :: Lens' PeopleFeed [Maybe Person]
pfItems
  = lens _pfItems (\ s a -> s{_pfItems = a}) . _Default
      . _Coerce

-- | Link to this resource.
pfSelfLink :: Lens' PeopleFeed (Maybe Text)
pfSelfLink
  = lens _pfSelfLink (\ s a -> s{_pfSelfLink = a})

-- | The title of this collection of people.
pfTitle :: Lens' PeopleFeed (Maybe Text)
pfTitle = lens _pfTitle (\ s a -> s{_pfTitle = a})

--
-- /See:/ 'person' smart constructor.
data Person = Person
    { _perCurrentLocation    :: !(Maybe Text)
    , _perAgeRange           :: !(Maybe PersonAgeRange)
    , _perEtag               :: !(Maybe Text)
    , _perImage              :: !(Maybe PersonImage)
    , _perBraggingRights     :: !(Maybe Text)
    , _perPlacesLived        :: !(Maybe [PersonItemPlacesLived])
    , _perPlusOneCount       :: !(Maybe Int32)
    , _perObjectType         :: !(Maybe Text)
    , _perCover              :: !(Maybe PersonCover)
    , _perKind               :: !Text
    , _perRelationshipStatus :: !(Maybe Text)
    , _perUrls               :: !(Maybe [PersonItemUrls])
    , _perDomain             :: !(Maybe Text)
    , _perUrl                :: !(Maybe Text)
    , _perVerified           :: !(Maybe Bool)
    , _perBirthday           :: !(Maybe Text)
    , _perIsPlusUser         :: !(Maybe Bool)
    , _perTagline            :: !(Maybe Text)
    , _perGender             :: !(Maybe Text)
    , _perName               :: !(Maybe PersonName)
    , _perEmails             :: !(Maybe [PersonItemEmails])
    , _perOccupation         :: !(Maybe Text)
    , _perSkills             :: !(Maybe Text)
    , _perLanguage           :: !(Maybe Text)
    , _perAboutMe            :: !(Maybe Text)
    , _perDisplayName        :: !(Maybe Text)
    , _perId                 :: !(Maybe Text)
    , _perNickname           :: !(Maybe Text)
    , _perOrganizations      :: !(Maybe [PersonItemOrganizations])
    , _perCircledByCount     :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perCurrentLocation'
--
-- * 'perAgeRange'
--
-- * 'perEtag'
--
-- * 'perImage'
--
-- * 'perBraggingRights'
--
-- * 'perPlacesLived'
--
-- * 'perPlusOneCount'
--
-- * 'perObjectType'
--
-- * 'perCover'
--
-- * 'perKind'
--
-- * 'perRelationshipStatus'
--
-- * 'perUrls'
--
-- * 'perDomain'
--
-- * 'perUrl'
--
-- * 'perVerified'
--
-- * 'perBirthday'
--
-- * 'perIsPlusUser'
--
-- * 'perTagline'
--
-- * 'perGender'
--
-- * 'perName'
--
-- * 'perEmails'
--
-- * 'perOccupation'
--
-- * 'perSkills'
--
-- * 'perLanguage'
--
-- * 'perAboutMe'
--
-- * 'perDisplayName'
--
-- * 'perId'
--
-- * 'perNickname'
--
-- * 'perOrganizations'
--
-- * 'perCircledByCount'
person
    :: Person
person =
    Person
    { _perCurrentLocation = Nothing
    , _perAgeRange = Nothing
    , _perEtag = Nothing
    , _perImage = Nothing
    , _perBraggingRights = Nothing
    , _perPlacesLived = Nothing
    , _perPlusOneCount = Nothing
    , _perObjectType = Nothing
    , _perCover = Nothing
    , _perKind = "plus#person"
    , _perRelationshipStatus = Nothing
    , _perUrls = Nothing
    , _perDomain = Nothing
    , _perUrl = Nothing
    , _perVerified = Nothing
    , _perBirthday = Nothing
    , _perIsPlusUser = Nothing
    , _perTagline = Nothing
    , _perGender = Nothing
    , _perName = Nothing
    , _perEmails = Nothing
    , _perOccupation = Nothing
    , _perSkills = Nothing
    , _perLanguage = Nothing
    , _perAboutMe = Nothing
    , _perDisplayName = Nothing
    , _perId = Nothing
    , _perNickname = Nothing
    , _perOrganizations = Nothing
    , _perCircledByCount = Nothing
    }

-- | (this field is not currently used)
perCurrentLocation :: Lens' Person (Maybe Text)
perCurrentLocation
  = lens _perCurrentLocation
      (\ s a -> s{_perCurrentLocation = a})

-- | The age range of the person. Valid ranges are 17 or younger, 18 to 20,
-- and 21 or older. Age is determined from the user\'s birthday using
-- Western age reckoning.
perAgeRange :: Lens' Person (Maybe PersonAgeRange)
perAgeRange
  = lens _perAgeRange (\ s a -> s{_perAgeRange = a})

-- | ETag of this response for caching purposes.
perEtag :: Lens' Person (Maybe Text)
perEtag = lens _perEtag (\ s a -> s{_perEtag = a})

-- | The representation of the person\'s profile photo.
perImage :: Lens' Person (Maybe PersonImage)
perImage = lens _perImage (\ s a -> s{_perImage = a})

-- | The \"bragging rights\" line of this person.
perBraggingRights :: Lens' Person (Maybe Text)
perBraggingRights
  = lens _perBraggingRights
      (\ s a -> s{_perBraggingRights = a})

-- | A list of places where this person has lived.
perPlacesLived :: Lens' Person [PersonItemPlacesLived]
perPlacesLived
  = lens _perPlacesLived
      (\ s a -> s{_perPlacesLived = a})
      . _Default
      . _Coerce

-- | If a Google+ Page, the number of people who have +1\'d this page.
perPlusOneCount :: Lens' Person (Maybe Int32)
perPlusOneCount
  = lens _perPlusOneCount
      (\ s a -> s{_perPlusOneCount = a})

-- | Type of person within Google+. Possible values include, but are not
-- limited to, the following values: - \"person\" - represents an actual
-- person. - \"page\" - represents a page.
perObjectType :: Lens' Person (Maybe Text)
perObjectType
  = lens _perObjectType
      (\ s a -> s{_perObjectType = a})

-- | The cover photo content.
perCover :: Lens' Person (Maybe PersonCover)
perCover = lens _perCover (\ s a -> s{_perCover = a})

-- | Identifies this resource as a person. Value: \"plus#person\".
perKind :: Lens' Person Text
perKind = lens _perKind (\ s a -> s{_perKind = a})

-- | The person\'s relationship status. Possible values include, but are not
-- limited to, the following values: - \"single\" - Person is single. -
-- \"in_a_relationship\" - Person is in a relationship. - \"engaged\" -
-- Person is engaged. - \"married\" - Person is married. -
-- \"its_complicated\" - The relationship is complicated. -
-- \"open_relationship\" - Person is in an open relationship. - \"widowed\"
-- - Person is widowed. - \"in_domestic_partnership\" - Person is in a
-- domestic partnership. - \"in_civil_union\" - Person is in a civil union.
perRelationshipStatus :: Lens' Person (Maybe Text)
perRelationshipStatus
  = lens _perRelationshipStatus
      (\ s a -> s{_perRelationshipStatus = a})

-- | A list of URLs for this person.
perUrls :: Lens' Person [PersonItemUrls]
perUrls
  = lens _perUrls (\ s a -> s{_perUrls = a}) . _Default
      . _Coerce

-- | The hosted domain name for the user\'s Google Apps account. For
-- instance, example.com. The plus.profile.emails.read or email scope is
-- needed to get this domain name.
perDomain :: Lens' Person (Maybe Text)
perDomain
  = lens _perDomain (\ s a -> s{_perDomain = a})

-- | The URL of this person\'s profile.
perUrl :: Lens' Person (Maybe Text)
perUrl = lens _perUrl (\ s a -> s{_perUrl = a})

-- | Whether the person or Google+ Page has been verified.
perVerified :: Lens' Person (Maybe Bool)
perVerified
  = lens _perVerified (\ s a -> s{_perVerified = a})

-- | The person\'s date of birth, represented as YYYY-MM-DD.
perBirthday :: Lens' Person (Maybe Text)
perBirthday
  = lens _perBirthday (\ s a -> s{_perBirthday = a})

-- | Whether this user has signed up for Google+.
perIsPlusUser :: Lens' Person (Maybe Bool)
perIsPlusUser
  = lens _perIsPlusUser
      (\ s a -> s{_perIsPlusUser = a})

-- | The brief description (tagline) of this person.
perTagline :: Lens' Person (Maybe Text)
perTagline
  = lens _perTagline (\ s a -> s{_perTagline = a})

-- | The person\'s gender. Possible values include, but are not limited to,
-- the following values: - \"male\" - Male gender. - \"female\" - Female
-- gender. - \"other\" - Other.
perGender :: Lens' Person (Maybe Text)
perGender
  = lens _perGender (\ s a -> s{_perGender = a})

-- | An object representation of the individual components of a person\'s
-- name.
perName :: Lens' Person (Maybe PersonName)
perName = lens _perName (\ s a -> s{_perName = a})

-- | A list of email addresses that this person has, including their Google
-- account email address, and the public verified email addresses on their
-- Google+ profile. The plus.profile.emails.read scope is needed to
-- retrieve these email addresses, or the email scope can be used to
-- retrieve just the Google account email address.
perEmails :: Lens' Person [PersonItemEmails]
perEmails
  = lens _perEmails (\ s a -> s{_perEmails = a}) .
      _Default
      . _Coerce

-- | The occupation of this person.
perOccupation :: Lens' Person (Maybe Text)
perOccupation
  = lens _perOccupation
      (\ s a -> s{_perOccupation = a})

-- | The person\'s skills.
perSkills :: Lens' Person (Maybe Text)
perSkills
  = lens _perSkills (\ s a -> s{_perSkills = a})

-- | The user\'s preferred language for rendering.
perLanguage :: Lens' Person (Maybe Text)
perLanguage
  = lens _perLanguage (\ s a -> s{_perLanguage = a})

-- | A short biography for this person.
perAboutMe :: Lens' Person (Maybe Text)
perAboutMe
  = lens _perAboutMe (\ s a -> s{_perAboutMe = a})

-- | The name of this person, which is suitable for display.
perDisplayName :: Lens' Person (Maybe Text)
perDisplayName
  = lens _perDisplayName
      (\ s a -> s{_perDisplayName = a})

-- | The ID of this person.
perId :: Lens' Person (Maybe Text)
perId = lens _perId (\ s a -> s{_perId = a})

-- | The nickname of this person.
perNickname :: Lens' Person (Maybe Text)
perNickname
  = lens _perNickname (\ s a -> s{_perNickname = a})

-- | A list of current or past organizations with which this person is
-- associated.
perOrganizations :: Lens' Person [PersonItemOrganizations]
perOrganizations
  = lens _perOrganizations
      (\ s a -> s{_perOrganizations = a})
      . _Default
      . _Coerce

-- | For followers who are visible, the number of people who have added this
-- person or page to a circle.
perCircledByCount :: Lens' Person (Maybe Int32)
perCircledByCount
  = lens _perCircledByCount
      (\ s a -> s{_perCircledByCount = a})

-- | The age range of the person. Valid ranges are 17 or younger, 18 to 20,
-- and 21 or older. Age is determined from the user\'s birthday using
-- Western age reckoning.
--
-- /See:/ 'personAgeRange' smart constructor.
data PersonAgeRange = PersonAgeRange
    { _parMax :: !(Maybe Int32)
    , _parMin :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonAgeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parMax'
--
-- * 'parMin'
personAgeRange
    :: PersonAgeRange
personAgeRange =
    PersonAgeRange
    { _parMax = Nothing
    , _parMin = Nothing
    }

-- | The age range\'s upper bound, if any. Possible values include, but are
-- not limited to, the following: - \"17\" - for age 17 - \"20\" - for age
-- 20
parMax :: Lens' PersonAgeRange (Maybe Int32)
parMax = lens _parMax (\ s a -> s{_parMax = a})

-- | The age range\'s lower bound, if any. Possible values include, but are
-- not limited to, the following: - \"21\" - for age 21 - \"18\" - for age
-- 18
parMin :: Lens' PersonAgeRange (Maybe Int32)
parMin = lens _parMin (\ s a -> s{_parMin = a})

-- | The cover photo content.
--
-- /See:/ 'personCover' smart constructor.
data PersonCover = PersonCover
    { _pcLayout     :: !(Maybe Text)
    , _pcCoverInfo  :: !(Maybe PersonCoverInfoCover)
    , _pcCoverPhoto :: !(Maybe PersonCoverPhotoCover)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonCover' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcLayout'
--
-- * 'pcCoverInfo'
--
-- * 'pcCoverPhoto'
personCover
    :: PersonCover
personCover =
    PersonCover
    { _pcLayout = Nothing
    , _pcCoverInfo = Nothing
    , _pcCoverPhoto = Nothing
    }

-- | The layout of the cover art. Possible values include, but are not
-- limited to, the following values: - \"banner\" - One large image banner.
pcLayout :: Lens' PersonCover (Maybe Text)
pcLayout = lens _pcLayout (\ s a -> s{_pcLayout = a})

-- | Extra information about the cover photo.
pcCoverInfo :: Lens' PersonCover (Maybe PersonCoverInfoCover)
pcCoverInfo
  = lens _pcCoverInfo (\ s a -> s{_pcCoverInfo = a})

-- | The person\'s primary cover image.
pcCoverPhoto :: Lens' PersonCover (Maybe PersonCoverPhotoCover)
pcCoverPhoto
  = lens _pcCoverPhoto (\ s a -> s{_pcCoverPhoto = a})

-- | Extra information about the cover photo.
--
-- /See:/ 'personCoverInfoCover' smart constructor.
data PersonCoverInfoCover = PersonCoverInfoCover
    { _pcicTopImageOffset  :: !(Maybe Int32)
    , _pcicLeftImageOffset :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonCoverInfoCover' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcicTopImageOffset'
--
-- * 'pcicLeftImageOffset'
personCoverInfoCover
    :: PersonCoverInfoCover
personCoverInfoCover =
    PersonCoverInfoCover
    { _pcicTopImageOffset = Nothing
    , _pcicLeftImageOffset = Nothing
    }

-- | The difference between the top position of the cover image and the
-- actual displayed cover image. Only valid for banner layout.
pcicTopImageOffset :: Lens' PersonCoverInfoCover (Maybe Int32)
pcicTopImageOffset
  = lens _pcicTopImageOffset
      (\ s a -> s{_pcicTopImageOffset = a})

-- | The difference between the left position of the cover image and the
-- actual displayed cover image. Only valid for banner layout.
pcicLeftImageOffset :: Lens' PersonCoverInfoCover (Maybe Int32)
pcicLeftImageOffset
  = lens _pcicLeftImageOffset
      (\ s a -> s{_pcicLeftImageOffset = a})

-- | The person\'s primary cover image.
--
-- /See:/ 'personCoverPhotoCover' smart constructor.
data PersonCoverPhotoCover = PersonCoverPhotoCover
    { _pcpcHeight :: !(Maybe Int32)
    , _pcpcUrl    :: !(Maybe Text)
    , _pcpcWidth  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonCoverPhotoCover' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcpcHeight'
--
-- * 'pcpcUrl'
--
-- * 'pcpcWidth'
personCoverPhotoCover
    :: PersonCoverPhotoCover
personCoverPhotoCover =
    PersonCoverPhotoCover
    { _pcpcHeight = Nothing
    , _pcpcUrl = Nothing
    , _pcpcWidth = Nothing
    }

-- | The height of the image.
pcpcHeight :: Lens' PersonCoverPhotoCover (Maybe Int32)
pcpcHeight
  = lens _pcpcHeight (\ s a -> s{_pcpcHeight = a})

-- | The URL of the image.
pcpcUrl :: Lens' PersonCoverPhotoCover (Maybe Text)
pcpcUrl = lens _pcpcUrl (\ s a -> s{_pcpcUrl = a})

-- | The width of the image.
pcpcWidth :: Lens' PersonCoverPhotoCover (Maybe Int32)
pcpcWidth
  = lens _pcpcWidth (\ s a -> s{_pcpcWidth = a})

-- | The representation of the person\'s profile photo.
--
-- /See:/ 'personImage' smart constructor.
data PersonImage = PersonImage
    { _piUrl       :: !(Maybe Text)
    , _piIsDefault :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piUrl'
--
-- * 'piIsDefault'
personImage
    :: PersonImage
personImage =
    PersonImage
    { _piUrl = Nothing
    , _piIsDefault = Nothing
    }

-- | The URL of the person\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
piUrl :: Lens' PersonImage (Maybe Text)
piUrl = lens _piUrl (\ s a -> s{_piUrl = a})

-- | Whether the person\'s profile photo is the default one
piIsDefault :: Lens' PersonImage (Maybe Bool)
piIsDefault
  = lens _piIsDefault (\ s a -> s{_piIsDefault = a})

--
-- /See:/ 'personItemEmails' smart constructor.
data PersonItemEmails = PersonItemEmails
    { _pieValue :: !(Maybe Text)
    , _pieType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonItemEmails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pieValue'
--
-- * 'pieType'
personItemEmails
    :: PersonItemEmails
personItemEmails =
    PersonItemEmails
    { _pieValue = Nothing
    , _pieType = Nothing
    }

-- | The email address.
pieValue :: Lens' PersonItemEmails (Maybe Text)
pieValue = lens _pieValue (\ s a -> s{_pieValue = a})

-- | The type of address. Possible values include, but are not limited to,
-- the following values: - \"account\" - Google account email address. -
-- \"home\" - Home email address. - \"work\" - Work email address. -
-- \"other\" - Other.
pieType :: Lens' PersonItemEmails (Maybe Text)
pieType = lens _pieType (\ s a -> s{_pieType = a})

--
-- /See:/ 'personItemOrganizations' smart constructor.
data PersonItemOrganizations = PersonItemOrganizations
    { _pioDepartment  :: !(Maybe Text)
    , _pioLocation    :: !(Maybe Text)
    , _pioEndDate     :: !(Maybe Text)
    , _pioPrimary     :: !(Maybe Bool)
    , _pioStartDate   :: !(Maybe Text)
    , _pioName        :: !(Maybe Text)
    , _pioTitle       :: !(Maybe Text)
    , _pioType        :: !(Maybe Text)
    , _pioDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonItemOrganizations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pioDepartment'
--
-- * 'pioLocation'
--
-- * 'pioEndDate'
--
-- * 'pioPrimary'
--
-- * 'pioStartDate'
--
-- * 'pioName'
--
-- * 'pioTitle'
--
-- * 'pioType'
--
-- * 'pioDescription'
personItemOrganizations
    :: PersonItemOrganizations
personItemOrganizations =
    PersonItemOrganizations
    { _pioDepartment = Nothing
    , _pioLocation = Nothing
    , _pioEndDate = Nothing
    , _pioPrimary = Nothing
    , _pioStartDate = Nothing
    , _pioName = Nothing
    , _pioTitle = Nothing
    , _pioType = Nothing
    , _pioDescription = Nothing
    }

-- | The department within the organization. Deprecated.
pioDepartment :: Lens' PersonItemOrganizations (Maybe Text)
pioDepartment
  = lens _pioDepartment
      (\ s a -> s{_pioDepartment = a})

-- | The location of this organization. Deprecated.
pioLocation :: Lens' PersonItemOrganizations (Maybe Text)
pioLocation
  = lens _pioLocation (\ s a -> s{_pioLocation = a})

-- | The date that the person left this organization.
pioEndDate :: Lens' PersonItemOrganizations (Maybe Text)
pioEndDate
  = lens _pioEndDate (\ s a -> s{_pioEndDate = a})

-- | If \"true\", indicates this organization is the person\'s primary one,
-- which is typically interpreted as the current one.
pioPrimary :: Lens' PersonItemOrganizations (Maybe Bool)
pioPrimary
  = lens _pioPrimary (\ s a -> s{_pioPrimary = a})

-- | The date that the person joined this organization.
pioStartDate :: Lens' PersonItemOrganizations (Maybe Text)
pioStartDate
  = lens _pioStartDate (\ s a -> s{_pioStartDate = a})

-- | The name of the organization.
pioName :: Lens' PersonItemOrganizations (Maybe Text)
pioName = lens _pioName (\ s a -> s{_pioName = a})

-- | The person\'s job title or role within the organization.
pioTitle :: Lens' PersonItemOrganizations (Maybe Text)
pioTitle = lens _pioTitle (\ s a -> s{_pioTitle = a})

-- | The type of organization. Possible values include, but are not limited
-- to, the following values: - \"work\" - Work. - \"school\" - School.
pioType :: Lens' PersonItemOrganizations (Maybe Text)
pioType = lens _pioType (\ s a -> s{_pioType = a})

-- | A short description of the person\'s role in this organization.
-- Deprecated.
pioDescription :: Lens' PersonItemOrganizations (Maybe Text)
pioDescription
  = lens _pioDescription
      (\ s a -> s{_pioDescription = a})

--
-- /See:/ 'personItemPlacesLived' smart constructor.
data PersonItemPlacesLived = PersonItemPlacesLived
    { _piplValue   :: !(Maybe Text)
    , _piplPrimary :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonItemPlacesLived' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piplValue'
--
-- * 'piplPrimary'
personItemPlacesLived
    :: PersonItemPlacesLived
personItemPlacesLived =
    PersonItemPlacesLived
    { _piplValue = Nothing
    , _piplPrimary = Nothing
    }

-- | A place where this person has lived. For example: \"Seattle, WA\",
-- \"Near Toronto\".
piplValue :: Lens' PersonItemPlacesLived (Maybe Text)
piplValue
  = lens _piplValue (\ s a -> s{_piplValue = a})

-- | If \"true\", this place of residence is this person\'s primary
-- residence.
piplPrimary :: Lens' PersonItemPlacesLived (Maybe Bool)
piplPrimary
  = lens _piplPrimary (\ s a -> s{_piplPrimary = a})

--
-- /See:/ 'personItemUrls' smart constructor.
data PersonItemUrls = PersonItemUrls
    { _piuValue :: !(Maybe Text)
    , _piuType  :: !(Maybe Text)
    , _piuLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonItemUrls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piuValue'
--
-- * 'piuType'
--
-- * 'piuLabel'
personItemUrls
    :: PersonItemUrls
personItemUrls =
    PersonItemUrls
    { _piuValue = Nothing
    , _piuType = Nothing
    , _piuLabel = Nothing
    }

-- | The URL value.
piuValue :: Lens' PersonItemUrls (Maybe Text)
piuValue = lens _piuValue (\ s a -> s{_piuValue = a})

-- | The type of URL. Possible values include, but are not limited to, the
-- following values: - \"otherProfile\" - URL for another profile. -
-- \"contributor\" - URL to a site for which this person is a contributor.
-- - \"website\" - URL for this Google+ Page\'s primary website. -
-- \"other\" - Other URL.
piuType :: Lens' PersonItemUrls (Maybe Text)
piuType = lens _piuType (\ s a -> s{_piuType = a})

-- | The label of the URL.
piuLabel :: Lens' PersonItemUrls (Maybe Text)
piuLabel = lens _piuLabel (\ s a -> s{_piuLabel = a})

-- | An object representation of the individual components of a person\'s
-- name.
--
-- /See:/ 'personName' smart constructor.
data PersonName = PersonName
    { _pnGivenName       :: !(Maybe Text)
    , _pnMiddleName      :: !(Maybe Text)
    , _pnFormatted       :: !(Maybe Text)
    , _pnHonorificPrefix :: !(Maybe Text)
    , _pnFamilyName      :: !(Maybe Text)
    , _pnHonorificSuffix :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnGivenName'
--
-- * 'pnMiddleName'
--
-- * 'pnFormatted'
--
-- * 'pnHonorificPrefix'
--
-- * 'pnFamilyName'
--
-- * 'pnHonorificSuffix'
personName
    :: PersonName
personName =
    PersonName
    { _pnGivenName = Nothing
    , _pnMiddleName = Nothing
    , _pnFormatted = Nothing
    , _pnHonorificPrefix = Nothing
    , _pnFamilyName = Nothing
    , _pnHonorificSuffix = Nothing
    }

-- | The given name (first name) of this person.
pnGivenName :: Lens' PersonName (Maybe Text)
pnGivenName
  = lens _pnGivenName (\ s a -> s{_pnGivenName = a})

-- | The middle name of this person.
pnMiddleName :: Lens' PersonName (Maybe Text)
pnMiddleName
  = lens _pnMiddleName (\ s a -> s{_pnMiddleName = a})

-- | The full name of this person, including middle names, suffixes, etc.
pnFormatted :: Lens' PersonName (Maybe Text)
pnFormatted
  = lens _pnFormatted (\ s a -> s{_pnFormatted = a})

-- | The honorific prefixes (such as \"Dr.\" or \"Mrs.\") for this person.
pnHonorificPrefix :: Lens' PersonName (Maybe Text)
pnHonorificPrefix
  = lens _pnHonorificPrefix
      (\ s a -> s{_pnHonorificPrefix = a})

-- | The family name (last name) of this person.
pnFamilyName :: Lens' PersonName (Maybe Text)
pnFamilyName
  = lens _pnFamilyName (\ s a -> s{_pnFamilyName = a})

-- | The honorific suffixes (such as \"Jr.\") for this person.
pnHonorificSuffix :: Lens' PersonName (Maybe Text)
pnHonorificSuffix
  = lens _pnHonorificSuffix
      (\ s a -> s{_pnHonorificSuffix = a})

--
-- /See:/ 'place' smart constructor.
data Place = Place
    { _pKind        :: !Text
    , _pAddress     :: !(Maybe PlaceAddress)
    , _pDisplayName :: !(Maybe Text)
    , _pId          :: !(Maybe Text)
    , _pPosition    :: !(Maybe PlacePosition)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Place' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pAddress'
--
-- * 'pDisplayName'
--
-- * 'pId'
--
-- * 'pPosition'
place
    :: Place
place =
    Place
    { _pKind = "plus#place"
    , _pAddress = Nothing
    , _pDisplayName = Nothing
    , _pId = Nothing
    , _pPosition = Nothing
    }

-- | Identifies this resource as a place. Value: \"plus#place\".
pKind :: Lens' Place Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The physical address of the place.
pAddress :: Lens' Place (Maybe PlaceAddress)
pAddress = lens _pAddress (\ s a -> s{_pAddress = a})

-- | The display name of the place.
pDisplayName :: Lens' Place (Maybe Text)
pDisplayName
  = lens _pDisplayName (\ s a -> s{_pDisplayName = a})

-- | The id of the place.
pId :: Lens' Place (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The position of the place.
pPosition :: Lens' Place (Maybe PlacePosition)
pPosition
  = lens _pPosition (\ s a -> s{_pPosition = a})

-- | The physical address of the place.
--
-- /See:/ 'placeAddress' smart constructor.
newtype PlaceAddress = PlaceAddress
    { _paFormatted :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaceAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paFormatted'
placeAddress
    :: PlaceAddress
placeAddress =
    PlaceAddress
    { _paFormatted = Nothing
    }

-- | The formatted address for display.
paFormatted :: Lens' PlaceAddress (Maybe Text)
paFormatted
  = lens _paFormatted (\ s a -> s{_paFormatted = a})

-- | The position of the place.
--
-- /See:/ 'placePosition' smart constructor.
data PlacePosition = PlacePosition
    { _ppLatitude  :: !(Maybe Double)
    , _ppLongitude :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacePosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppLatitude'
--
-- * 'ppLongitude'
placePosition
    :: PlacePosition
placePosition =
    PlacePosition
    { _ppLatitude = Nothing
    , _ppLongitude = Nothing
    }

-- | The latitude of this position.
ppLatitude :: Lens' PlacePosition (Maybe Double)
ppLatitude
  = lens _ppLatitude (\ s a -> s{_ppLatitude = a})

-- | The longitude of this position.
ppLongitude :: Lens' PlacePosition (Maybe Double)
ppLongitude
  = lens _ppLongitude (\ s a -> s{_ppLongitude = a})

--
-- /See:/ 'plusAclentryResource' smart constructor.
data PlusAclentryResource = PlusAclentryResource
    { _parDisplayName :: !(Maybe Text)
    , _parId          :: !(Maybe Text)
    , _parType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlusAclentryResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parDisplayName'
--
-- * 'parId'
--
-- * 'parType'
plusAclentryResource
    :: PlusAclentryResource
plusAclentryResource =
    PlusAclentryResource
    { _parDisplayName = Nothing
    , _parId = Nothing
    , _parType = Nothing
    }

-- | A descriptive name for this entry. Suitable for display.
parDisplayName :: Lens' PlusAclentryResource (Maybe Text)
parDisplayName
  = lens _parDisplayName
      (\ s a -> s{_parDisplayName = a})

-- | The ID of the entry. For entries of type \"person\" or \"circle\", this
-- is the ID of the resource. For other types, this property is not set.
parId :: Lens' PlusAclentryResource (Maybe Text)
parId = lens _parId (\ s a -> s{_parId = a})

-- | The type of entry describing to whom access is granted. Possible values
-- are: - \"person\" - Access to an individual. - \"circle\" - Access to
-- members of a circle. - \"myCircles\" - Access to members of all the
-- person\'s circles. - \"extendedCircles\" - Access to members of all the
-- person\'s circles, plus all of the people in their circles. - \"domain\"
-- - Access to members of the person\'s Google Apps domain. - \"public\" -
-- Access to anyone on the web.
parType :: Lens' PlusAclentryResource (Maybe Text)
parType = lens _parType (\ s a -> s{_parType = a})

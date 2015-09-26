{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Google+Domains.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Google+Domains.Types.Product where

import Network.Google.Prelude
import Network.Google.Google+Domains.Types.Sum

--
-- /See:/ 'acl' smart constructor.
data Acl = Acl
    { _aclKind :: !Text
    , _aclItems :: !(Maybe [Maybe PlusDomainsAclentryResource])
    , _aclDomainRestricted :: !(Maybe Bool)
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
-- * 'aclDomainRestricted'
--
-- * 'aclDescription'
acl
    :: Acl
acl = 
    Acl
    { _aclKind = "plus#acl"
    , _aclItems = Nothing
    , _aclDomainRestricted = Nothing
    , _aclDescription = Nothing
    }

-- | Identifies this resource as a collection of access controls. Value:
-- \"plus#acl\".
aclKind :: Lens' Acl Text
aclKind = lens _aclKind (\ s a -> s{_aclKind = a})

-- | The list of access entries.
aclItems :: Lens' Acl [Maybe PlusDomainsAclentryResource]
aclItems
  = lens _aclItems (\ s a -> s{_aclItems = a}) .
      _Default
      . _Coerce

-- | Whether access is restricted to the domain.
aclDomainRestricted :: Lens' Acl (Maybe Bool)
aclDomainRestricted
  = lens _aclDomainRestricted
      (\ s a -> s{_aclDomainRestricted = a})

-- | Description of the access granted, suitable for display.
aclDescription :: Lens' Acl (Maybe Text)
aclDescription
  = lens _aclDescription
      (\ s a -> s{_aclDescription = a})

--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aAccess :: !(Maybe (Maybe Acl))
    , _aPlaceName :: !(Maybe Text)
    , _aEtag :: !(Maybe Text)
    , _aAnnotation :: !(Maybe Text)
    , _aLocation :: !(Maybe (Maybe Place))
    , _aGeocode :: !(Maybe Text)
    , _aKind :: !Text
    , _aRadius :: !(Maybe Text)
    , _aPublished :: !(Maybe UTCTime)
    , _aUrl :: !(Maybe Text)
    , _aActor :: !(Maybe ActivityActor)
    , _aAddress :: !(Maybe Text)
    , _aObject :: !(Maybe ActivityObject)
    , _aId :: !(Maybe Text)
    , _aUpdated :: !(Maybe UTCTime)
    , _aTitle :: !(Maybe Text)
    , _aVerb :: !(Maybe Text)
    , _aCrosspostSource :: !(Maybe Text)
    , _aPlaceId :: !(Maybe Text)
    , _aProvider :: !(Maybe ActivityProvider)
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
    { _aaImage :: !(Maybe ActivityImageActor)
    , _aaUrl :: !(Maybe Text)
    , _aaName :: !(Maybe ActivityNameActor)
    , _aaDisplayName :: !(Maybe Text)
    , _aaId :: !(Maybe Text)
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
    { _aaoImage :: !(Maybe ActivityImageActorObject)
    , _aaoUrl :: !(Maybe Text)
    , _aaoDisplayName :: !(Maybe Text)
    , _aaoId :: !(Maybe Text)
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
    { _aeiaoUrl :: !(Maybe Text)
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
    { _afEtag :: !(Maybe Text)
    , _afNextPageToken :: !(Maybe Text)
    , _afNextLink :: !(Maybe Text)
    , _afKind :: !Text
    , _afItems :: !(Maybe [Maybe Activity])
    , _afSelfLink :: !(Maybe Text)
    , _afId :: !(Maybe Text)
    , _afUpdated :: !(Maybe UTCTime)
    , _afTitle :: !(Maybe Text)
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
    , _afiiaoUrl :: !(Maybe Text)
    , _afiiaoWidth :: !(Maybe Word32)
    , _afiiaoType :: !(Maybe Text)
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
    , _aiiaoUrl :: !(Maybe Text)
    , _aiiaoWidth :: !(Maybe Word32)
    , _aiiaoType :: !(Maybe Text)
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
    , _aiitiaoUrl :: !(Maybe Text)
    , _aiitiaoWidth :: !(Maybe Word32)
    , _aiitiaoType :: !(Maybe Text)
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
    { _actFullImage :: !(Maybe ActivityFullImageItemAttachmentsObject)
    , _actImage :: !(Maybe ActivityImageItemAttachmentsObject)
    , _actObjectType :: !(Maybe Text)
    , _actPreviewThumbnails :: !(Maybe [ActivityItemPreviewThumbnailsItemAttachmentsObject])
    , _actUrl :: !(Maybe Text)
    , _actEmbed :: !(Maybe ActivityEmbedItemAttachmentsObject)
    , _actContent :: !(Maybe Text)
    , _actThumbnails :: !(Maybe [ActivityItemThumbnailsItemAttachmentsObject])
    , _actDisplayName :: !(Maybe Text)
    , _actId :: !(Maybe Text)
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
-- * 'actPreviewThumbnails'
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
    , _actPreviewThumbnails = Nothing
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

-- | When previewing, these are the optional thumbnails for the post. When
-- posting an article, choose one by setting the attachment.image.url
-- property. If you don\'t choose one, one will be chosen for you.
actPreviewThumbnails :: Lens' ActivityItemAttachmentsObject [ActivityItemPreviewThumbnailsItemAttachmentsObject]
actPreviewThumbnails
  = lens _actPreviewThumbnails
      (\ s a -> s{_actPreviewThumbnails = a})
      . _Default
      . _Coerce

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
-- /See:/ 'activityItemPreviewThumbnailsItemAttachmentsObject' smart constructor.
newtype ActivityItemPreviewThumbnailsItemAttachmentsObject = ActivityItemPreviewThumbnailsItemAttachmentsObject
    { _aiptiaoUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityItemPreviewThumbnailsItemAttachmentsObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiptiaoUrl'
activityItemPreviewThumbnailsItemAttachmentsObject
    :: ActivityItemPreviewThumbnailsItemAttachmentsObject
activityItemPreviewThumbnailsItemAttachmentsObject = 
    ActivityItemPreviewThumbnailsItemAttachmentsObject
    { _aiptiaoUrl = Nothing
    }

-- | URL of the thumbnail image.
aiptiaoUrl :: Lens' ActivityItemPreviewThumbnailsItemAttachmentsObject (Maybe Text)
aiptiaoUrl
  = lens _aiptiaoUrl (\ s a -> s{_aiptiaoUrl = a})

--
-- /See:/ 'activityItemThumbnailsItemAttachmentsObject' smart constructor.
data ActivityItemThumbnailsItemAttachmentsObject = ActivityItemThumbnailsItemAttachmentsObject
    { _aitiaoImage :: !(Maybe ActivityImageItemThumbnailsItemAttachmentsObject)
    , _aitiaoUrl :: !(Maybe Text)
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
    { _anaGivenName :: !(Maybe Text)
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
    { _aoPlusoners :: !(Maybe ActivityPlusonersObject)
    , _aoAttachments :: !(Maybe [ActivityItemAttachmentsObject])
    , _aoObjectType :: !(Maybe Text)
    , _aoOriginalContent :: !(Maybe Text)
    , _aoUrl :: !(Maybe Text)
    , _aoActor :: !(Maybe ActivityActorObject)
    , _aoContent :: !(Maybe Text)
    , _aoReplies :: !(Maybe ActivityRepliesObject)
    , _aoId :: !(Maybe Text)
    , _aoStatusForViewer :: !(Maybe ActivityStatusForViewerObject)
    , _aoResharers :: !(Maybe ActivityResharersObject)
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
-- * 'aoStatusForViewer'
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
    , _aoStatusForViewer = Nothing
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

-- | Status of the activity as seen by the viewer.
aoStatusForViewer :: Lens' ActivityObject (Maybe ActivityStatusForViewerObject)
aoStatusForViewer
  = lens _aoStatusForViewer
      (\ s a -> s{_aoStatusForViewer = a})

-- | People who reshared this activity.
aoResharers :: Lens' ActivityObject (Maybe ActivityResharersObject)
aoResharers
  = lens _aoResharers (\ s a -> s{_aoResharers = a})

-- | People who +1\'d this activity.
--
-- /See:/ 'activityPlusonersObject' smart constructor.
data ActivityPlusonersObject = ActivityPlusonersObject
    { _apoTotalItems :: !(Maybe Word32)
    , _apoSelfLink :: !(Maybe Text)
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
    , _aroSelfLink :: !(Maybe Text)
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
    , _aSelfLink :: !(Maybe Text)
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

-- | Status of the activity as seen by the viewer.
--
-- /See:/ 'activityStatusForViewerObject' smart constructor.
data ActivityStatusForViewerObject = ActivityStatusForViewerObject
    { _asfvoCanComment :: !(Maybe Bool)
    , _asfvoResharingDisabled :: !(Maybe Bool)
    , _asfvoCanUpdate :: !(Maybe Bool)
    , _asfvoIsPlusOned :: !(Maybe Bool)
    , _asfvoCanPlusone :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityStatusForViewerObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asfvoCanComment'
--
-- * 'asfvoResharingDisabled'
--
-- * 'asfvoCanUpdate'
--
-- * 'asfvoIsPlusOned'
--
-- * 'asfvoCanPlusone'
activityStatusForViewerObject
    :: ActivityStatusForViewerObject
activityStatusForViewerObject = 
    ActivityStatusForViewerObject
    { _asfvoCanComment = Nothing
    , _asfvoResharingDisabled = Nothing
    , _asfvoCanUpdate = Nothing
    , _asfvoIsPlusOned = Nothing
    , _asfvoCanPlusone = Nothing
    }

-- | Whether the viewer can comment on the activity.
asfvoCanComment :: Lens' ActivityStatusForViewerObject (Maybe Bool)
asfvoCanComment
  = lens _asfvoCanComment
      (\ s a -> s{_asfvoCanComment = a})

-- | Whether reshares are disabled for the activity.
asfvoResharingDisabled :: Lens' ActivityStatusForViewerObject (Maybe Bool)
asfvoResharingDisabled
  = lens _asfvoResharingDisabled
      (\ s a -> s{_asfvoResharingDisabled = a})

-- | Whether the viewer can edit or delete the activity.
asfvoCanUpdate :: Lens' ActivityStatusForViewerObject (Maybe Bool)
asfvoCanUpdate
  = lens _asfvoCanUpdate
      (\ s a -> s{_asfvoCanUpdate = a})

-- | Whether the viewer has +1\'d the activity.
asfvoIsPlusOned :: Lens' ActivityStatusForViewerObject (Maybe Bool)
asfvoIsPlusOned
  = lens _asfvoIsPlusOned
      (\ s a -> s{_asfvoIsPlusOned = a})

-- | Whether the viewer can +1 the activity.
asfvoCanPlusone :: Lens' ActivityStatusForViewerObject (Maybe Bool)
asfvoCanPlusone
  = lens _asfvoCanPlusone
      (\ s a -> s{_asfvoCanPlusone = a})

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
-- /See:/ 'audience' smart constructor.
data Audience = Audience
    { _aaEtag :: !(Maybe Text)
    , _aaKind :: !Text
    , _aaVisibility :: !(Maybe Text)
    , _aaItem :: !(Maybe (Maybe PlusDomainsAclentryResource))
    , _aaMemberCount :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Audience' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaEtag'
--
-- * 'aaKind'
--
-- * 'aaVisibility'
--
-- * 'aaItem'
--
-- * 'aaMemberCount'
audience
    :: Audience
audience = 
    Audience
    { _aaEtag = Nothing
    , _aaKind = "plus#audience"
    , _aaVisibility = Nothing
    , _aaItem = Nothing
    , _aaMemberCount = Nothing
    }

-- | ETag of this response for caching purposes.
aaEtag :: Lens' Audience (Maybe Text)
aaEtag = lens _aaEtag (\ s a -> s{_aaEtag = a})

-- | Identifies this resource as an audience. Value: \"plus#audience\".
aaKind :: Lens' Audience Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | The circle members\' visibility as chosen by the owner of the circle.
-- This only applies for items with \"item.type\" equals \"circle\".
-- Possible values are: - \"public\" - Members are visible to the public. -
-- \"limited\" - Members are visible to a limited audience. - \"private\" -
-- Members are visible to the owner only.
aaVisibility :: Lens' Audience (Maybe Text)
aaVisibility
  = lens _aaVisibility (\ s a -> s{_aaVisibility = a})

-- | The access control list entry.
aaItem :: Lens' Audience (Maybe (Maybe PlusDomainsAclentryResource))
aaItem = lens _aaItem (\ s a -> s{_aaItem = a})

-- | The number of people in this circle. This only applies if entity_type is
-- CIRCLE.
aaMemberCount :: Lens' Audience (Maybe Word32)
aaMemberCount
  = lens _aaMemberCount
      (\ s a -> s{_aaMemberCount = a})

--
-- /See:/ 'audiencesFeed' smart constructor.
data AudiencesFeed = AudiencesFeed
    { _audTotalItems :: !(Maybe Int32)
    , _audEtag :: !(Maybe Text)
    , _audNextPageToken :: !(Maybe Text)
    , _audKind :: !Text
    , _audItems :: !(Maybe [Maybe Audience])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AudiencesFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'audTotalItems'
--
-- * 'audEtag'
--
-- * 'audNextPageToken'
--
-- * 'audKind'
--
-- * 'audItems'
audiencesFeed
    :: AudiencesFeed
audiencesFeed = 
    AudiencesFeed
    { _audTotalItems = Nothing
    , _audEtag = Nothing
    , _audNextPageToken = Nothing
    , _audKind = "plus#audiencesFeed"
    , _audItems = Nothing
    }

-- | The total number of ACL entries. The number of entries in this response
-- may be smaller due to paging.
audTotalItems :: Lens' AudiencesFeed (Maybe Int32)
audTotalItems
  = lens _audTotalItems
      (\ s a -> s{_audTotalItems = a})

-- | ETag of this response for caching purposes.
audEtag :: Lens' AudiencesFeed (Maybe Text)
audEtag = lens _audEtag (\ s a -> s{_audEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
audNextPageToken :: Lens' AudiencesFeed (Maybe Text)
audNextPageToken
  = lens _audNextPageToken
      (\ s a -> s{_audNextPageToken = a})

-- | Identifies this resource as a collection of audiences. Value:
-- \"plus#audienceFeed\".
audKind :: Lens' AudiencesFeed Text
audKind = lens _audKind (\ s a -> s{_audKind = a})

-- | The audiences in this result.
audItems :: Lens' AudiencesFeed [Maybe Audience]
audItems
  = lens _audItems (\ s a -> s{_audItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'circle' smart constructor.
data Circle = Circle
    { _cEtag :: !(Maybe Text)
    , _cKind :: !Text
    , _cPeople :: !(Maybe CirclePeople)
    , _cSelfLink :: !(Maybe Text)
    , _cDisplayName :: !(Maybe Text)
    , _cId :: !(Maybe Text)
    , _cDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Circle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEtag'
--
-- * 'cKind'
--
-- * 'cPeople'
--
-- * 'cSelfLink'
--
-- * 'cDisplayName'
--
-- * 'cId'
--
-- * 'cDescription'
circle
    :: Circle
circle = 
    Circle
    { _cEtag = Nothing
    , _cKind = "plus#circle"
    , _cPeople = Nothing
    , _cSelfLink = Nothing
    , _cDisplayName = Nothing
    , _cId = Nothing
    , _cDescription = Nothing
    }

-- | ETag of this response for caching purposes.
cEtag :: Lens' Circle (Maybe Text)
cEtag = lens _cEtag (\ s a -> s{_cEtag = a})

-- | Identifies this resource as a circle. Value: \"plus#circle\".
cKind :: Lens' Circle Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The people in this circle.
cPeople :: Lens' Circle (Maybe CirclePeople)
cPeople = lens _cPeople (\ s a -> s{_cPeople = a})

-- | Link to this circle resource
cSelfLink :: Lens' Circle (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The circle name.
cDisplayName :: Lens' Circle (Maybe Text)
cDisplayName
  = lens _cDisplayName (\ s a -> s{_cDisplayName = a})

-- | The ID of the circle.
cId :: Lens' Circle (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The description of this circle.
cDescription :: Lens' Circle (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

--
-- /See:/ 'circleFeed' smart constructor.
data CircleFeed = CircleFeed
    { _cirTotalItems :: !(Maybe Int32)
    , _cirEtag :: !(Maybe Text)
    , _cirNextPageToken :: !(Maybe Text)
    , _cirNextLink :: !(Maybe Text)
    , _cirKind :: !Text
    , _cirItems :: !(Maybe [Maybe Circle])
    , _cirSelfLink :: !(Maybe Text)
    , _cirTitle :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CircleFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirTotalItems'
--
-- * 'cirEtag'
--
-- * 'cirNextPageToken'
--
-- * 'cirNextLink'
--
-- * 'cirKind'
--
-- * 'cirItems'
--
-- * 'cirSelfLink'
--
-- * 'cirTitle'
circleFeed
    :: CircleFeed
circleFeed = 
    CircleFeed
    { _cirTotalItems = Nothing
    , _cirEtag = Nothing
    , _cirNextPageToken = Nothing
    , _cirNextLink = Nothing
    , _cirKind = "plus#circleFeed"
    , _cirItems = Nothing
    , _cirSelfLink = Nothing
    , _cirTitle = Nothing
    }

-- | The total number of circles. The number of circles in this response may
-- be smaller due to paging.
cirTotalItems :: Lens' CircleFeed (Maybe Int32)
cirTotalItems
  = lens _cirTotalItems
      (\ s a -> s{_cirTotalItems = a})

-- | ETag of this response for caching purposes.
cirEtag :: Lens' CircleFeed (Maybe Text)
cirEtag = lens _cirEtag (\ s a -> s{_cirEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
cirNextPageToken :: Lens' CircleFeed (Maybe Text)
cirNextPageToken
  = lens _cirNextPageToken
      (\ s a -> s{_cirNextPageToken = a})

-- | Link to the next page of circles.
cirNextLink :: Lens' CircleFeed (Maybe Text)
cirNextLink
  = lens _cirNextLink (\ s a -> s{_cirNextLink = a})

-- | Identifies this resource as a collection of circles. Value:
-- \"plus#circleFeed\".
cirKind :: Lens' CircleFeed Text
cirKind = lens _cirKind (\ s a -> s{_cirKind = a})

-- | The circles in this page of results.
cirItems :: Lens' CircleFeed [Maybe Circle]
cirItems
  = lens _cirItems (\ s a -> s{_cirItems = a}) .
      _Default
      . _Coerce

-- | Link to this page of circles.
cirSelfLink :: Lens' CircleFeed (Maybe Text)
cirSelfLink
  = lens _cirSelfLink (\ s a -> s{_cirSelfLink = a})

-- | The title of this list of resources.
cirTitle :: Lens' CircleFeed (Maybe Text)
cirTitle = lens _cirTitle (\ s a -> s{_cirTitle = a})

-- | The people in this circle.
--
-- /See:/ 'circlePeople' smart constructor.
newtype CirclePeople = CirclePeople
    { _cpTotalItems :: Maybe Word32
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclePeople' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpTotalItems'
circlePeople
    :: CirclePeople
circlePeople = 
    CirclePeople
    { _cpTotalItems = Nothing
    }

-- | The total number of people in this circle.
cpTotalItems :: Lens' CirclePeople (Maybe Word32)
cpTotalItems
  = lens _cpTotalItems (\ s a -> s{_cpTotalItems = a})

--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _comEtag :: !(Maybe Text)
    , _comPlusoners :: !(Maybe CommentPlusoners)
    , _comKind :: !Text
    , _comPublished :: !(Maybe UTCTime)
    , _comActor :: !(Maybe CommentActor)
    , _comSelfLink :: !(Maybe Text)
    , _comObject :: !(Maybe CommentObject)
    , _comId :: !(Maybe Text)
    , _comUpdated :: !(Maybe UTCTime)
    , _comVerb :: !Text
    , _comInReplyTo :: !(Maybe [CommentItemInReplyTo])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comEtag'
--
-- * 'comPlusoners'
--
-- * 'comKind'
--
-- * 'comPublished'
--
-- * 'comActor'
--
-- * 'comSelfLink'
--
-- * 'comObject'
--
-- * 'comId'
--
-- * 'comUpdated'
--
-- * 'comVerb'
--
-- * 'comInReplyTo'
comment
    :: Comment
comment = 
    Comment
    { _comEtag = Nothing
    , _comPlusoners = Nothing
    , _comKind = "plus#comment"
    , _comPublished = Nothing
    , _comActor = Nothing
    , _comSelfLink = Nothing
    , _comObject = Nothing
    , _comId = Nothing
    , _comUpdated = Nothing
    , _comVerb = "post"
    , _comInReplyTo = Nothing
    }

-- | ETag of this response for caching purposes.
comEtag :: Lens' Comment (Maybe Text)
comEtag = lens _comEtag (\ s a -> s{_comEtag = a})

-- | People who +1\'d this comment.
comPlusoners :: Lens' Comment (Maybe CommentPlusoners)
comPlusoners
  = lens _comPlusoners (\ s a -> s{_comPlusoners = a})

-- | Identifies this resource as a comment. Value: \"plus#comment\".
comKind :: Lens' Comment Text
comKind = lens _comKind (\ s a -> s{_comKind = a})

-- | The time at which this comment was initially published. Formatted as an
-- RFC 3339 timestamp.
comPublished :: Lens' Comment (Maybe UTCTime)
comPublished
  = lens _comPublished (\ s a -> s{_comPublished = a})

-- | The person who posted this comment.
comActor :: Lens' Comment (Maybe CommentActor)
comActor = lens _comActor (\ s a -> s{_comActor = a})

-- | Link to this comment resource.
comSelfLink :: Lens' Comment (Maybe Text)
comSelfLink
  = lens _comSelfLink (\ s a -> s{_comSelfLink = a})

-- | The object of this comment.
comObject :: Lens' Comment (Maybe CommentObject)
comObject
  = lens _comObject (\ s a -> s{_comObject = a})

-- | The ID of this comment.
comId :: Lens' Comment (Maybe Text)
comId = lens _comId (\ s a -> s{_comId = a})

-- | The time at which this comment was last updated. Formatted as an RFC
-- 3339 timestamp.
comUpdated :: Lens' Comment (Maybe UTCTime)
comUpdated
  = lens _comUpdated (\ s a -> s{_comUpdated = a})

-- | This comment\'s verb, indicating what action was performed. Possible
-- values are: - \"post\" - Publish content to the stream.
comVerb :: Lens' Comment Text
comVerb = lens _comVerb (\ s a -> s{_comVerb = a})

-- | The activity this comment replied to.
comInReplyTo :: Lens' Comment [CommentItemInReplyTo]
comInReplyTo
  = lens _comInReplyTo (\ s a -> s{_comInReplyTo = a})
      . _Default
      . _Coerce

-- | The person who posted this comment.
--
-- /See:/ 'commentActor' smart constructor.
data CommentActor = CommentActor
    { _caImage :: !(Maybe CommentImageActor)
    , _caUrl :: !(Maybe Text)
    , _caDisplayName :: !(Maybe Text)
    , _caId :: !(Maybe Text)
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
    { _cfEtag :: !(Maybe Text)
    , _cfNextPageToken :: !(Maybe Text)
    , _cfNextLink :: !(Maybe Text)
    , _cfKind :: !Text
    , _cfItems :: !(Maybe [Maybe Comment])
    , _cfId :: !(Maybe Text)
    , _cfUpdated :: !(Maybe UTCTime)
    , _cfTitle :: !(Maybe Text)
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
    , _ciirtId :: !(Maybe Text)
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
    { _coObjectType :: !Text
    , _coOriginalContent :: !(Maybe Text)
    , _coContent :: !(Maybe Text)
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
    { _cTotalItems :: Maybe Word32
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentPlusoners' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTotalItems'
commentPlusoners
    :: CommentPlusoners
commentPlusoners = 
    CommentPlusoners
    { _cTotalItems = Nothing
    }

-- | Total number of people who +1\'d this comment.
cTotalItems :: Lens' CommentPlusoners (Maybe Word32)
cTotalItems
  = lens _cTotalItems (\ s a -> s{_cTotalItems = a})

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
-- /See:/ 'media' smart constructor.
data Media = Media
    { _mSizeBytes :: !(Maybe Int64)
    , _mSummary :: !(Maybe Text)
    , _mEtag :: !(Maybe Text)
    , _mHeight :: !(Maybe Word32)
    , _mVideoDuration :: !(Maybe Int64)
    , _mVideoStatus :: !(Maybe Text)
    , _mKind :: !Text
    , _mPublished :: !(Maybe UTCTime)
    , _mUrl :: !(Maybe Text)
    , _mWidth :: !(Maybe Word32)
    , _mMediaUrl :: !(Maybe Text)
    , _mStreams :: !(Maybe [Maybe Videostream])
    , _mExif :: !(Maybe MediaExif)
    , _mDisplayName :: !(Maybe Text)
    , _mAuthor :: !(Maybe MediaAuthor)
    , _mId :: !(Maybe Text)
    , _mUpdated :: !(Maybe UTCTime)
    , _mMediaCreatedTime :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Media' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mSizeBytes'
--
-- * 'mSummary'
--
-- * 'mEtag'
--
-- * 'mHeight'
--
-- * 'mVideoDuration'
--
-- * 'mVideoStatus'
--
-- * 'mKind'
--
-- * 'mPublished'
--
-- * 'mUrl'
--
-- * 'mWidth'
--
-- * 'mMediaUrl'
--
-- * 'mStreams'
--
-- * 'mExif'
--
-- * 'mDisplayName'
--
-- * 'mAuthor'
--
-- * 'mId'
--
-- * 'mUpdated'
--
-- * 'mMediaCreatedTime'
media
    :: Media
media = 
    Media
    { _mSizeBytes = Nothing
    , _mSummary = Nothing
    , _mEtag = Nothing
    , _mHeight = Nothing
    , _mVideoDuration = Nothing
    , _mVideoStatus = Nothing
    , _mKind = "plus#media"
    , _mPublished = Nothing
    , _mUrl = Nothing
    , _mWidth = Nothing
    , _mMediaUrl = Nothing
    , _mStreams = Nothing
    , _mExif = Nothing
    , _mDisplayName = Nothing
    , _mAuthor = Nothing
    , _mId = Nothing
    , _mUpdated = Nothing
    , _mMediaCreatedTime = Nothing
    }

-- | The size in bytes of this video.
mSizeBytes :: Lens' Media (Maybe Int64)
mSizeBytes
  = lens _mSizeBytes (\ s a -> s{_mSizeBytes = a})

-- | A description, or caption, for this media.
mSummary :: Lens' Media (Maybe Text)
mSummary = lens _mSummary (\ s a -> s{_mSummary = a})

-- | ETag of this response for caching purposes.
mEtag :: Lens' Media (Maybe Text)
mEtag = lens _mEtag (\ s a -> s{_mEtag = a})

-- | The height in pixels of the original image.
mHeight :: Lens' Media (Maybe Word32)
mHeight = lens _mHeight (\ s a -> s{_mHeight = a})

-- | The duration in milliseconds of this video.
mVideoDuration :: Lens' Media (Maybe Int64)
mVideoDuration
  = lens _mVideoDuration
      (\ s a -> s{_mVideoDuration = a})

-- | The encoding status of this video. Possible values are: - \"UPLOADING\"
-- - Not all the video bytes have been received. - \"PENDING\" - Video not
-- yet processed. - \"FAILED\" - Video processing failed. - \"READY\" - A
-- single video stream is playable. - \"FINAL\" - All video streams are
-- playable.
mVideoStatus :: Lens' Media (Maybe Text)
mVideoStatus
  = lens _mVideoStatus (\ s a -> s{_mVideoStatus = a})

-- | The type of resource.
mKind :: Lens' Media Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | The time at which this media was uploaded. Formatted as an RFC 3339
-- timestamp.
mPublished :: Lens' Media (Maybe UTCTime)
mPublished
  = lens _mPublished (\ s a -> s{_mPublished = a})

-- | The URL for the page that hosts this media.
mUrl :: Lens' Media (Maybe Text)
mUrl = lens _mUrl (\ s a -> s{_mUrl = a})

-- | The width in pixels of the original image.
mWidth :: Lens' Media (Maybe Word32)
mWidth = lens _mWidth (\ s a -> s{_mWidth = a})

-- | The URL of this photo or video\'s still image.
mMediaUrl :: Lens' Media (Maybe Text)
mMediaUrl
  = lens _mMediaUrl (\ s a -> s{_mMediaUrl = a})

-- | The list of video streams for this video. There might be several
-- different streams available for a single video, either Flash or MPEG, of
-- various sizes
mStreams :: Lens' Media [Maybe Videostream]
mStreams
  = lens _mStreams (\ s a -> s{_mStreams = a}) .
      _Default
      . _Coerce

-- | Exif information of the media item.
mExif :: Lens' Media (Maybe MediaExif)
mExif = lens _mExif (\ s a -> s{_mExif = a})

-- | The display name for this media.
mDisplayName :: Lens' Media (Maybe Text)
mDisplayName
  = lens _mDisplayName (\ s a -> s{_mDisplayName = a})

-- | The person who uploaded this media.
mAuthor :: Lens' Media (Maybe MediaAuthor)
mAuthor = lens _mAuthor (\ s a -> s{_mAuthor = a})

-- | ID of this media, which is generated by the API.
mId :: Lens' Media (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | The time at which this media was last updated. This includes changes to
-- media metadata. Formatted as an RFC 3339 timestamp.
mUpdated :: Lens' Media (Maybe UTCTime)
mUpdated = lens _mUpdated (\ s a -> s{_mUpdated = a})

-- | The time at which this media was originally created in UTC. Formatted as
-- an RFC 3339 timestamp that matches this example:
-- 2010-11-25T14:30:27.655Z
mMediaCreatedTime :: Lens' Media (Maybe UTCTime)
mMediaCreatedTime
  = lens _mMediaCreatedTime
      (\ s a -> s{_mMediaCreatedTime = a})

-- | The person who uploaded this media.
--
-- /See:/ 'mediaAuthor' smart constructor.
data MediaAuthor = MediaAuthor
    { _maImage :: !(Maybe MediaImageAuthor)
    , _maUrl :: !(Maybe Text)
    , _maDisplayName :: !(Maybe Text)
    , _maId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maImage'
--
-- * 'maUrl'
--
-- * 'maDisplayName'
--
-- * 'maId'
mediaAuthor
    :: MediaAuthor
mediaAuthor = 
    MediaAuthor
    { _maImage = Nothing
    , _maUrl = Nothing
    , _maDisplayName = Nothing
    , _maId = Nothing
    }

-- | The author\'s Google profile image.
maImage :: Lens' MediaAuthor (Maybe MediaImageAuthor)
maImage = lens _maImage (\ s a -> s{_maImage = a})

-- | A link to the author\'s Google profile.
maUrl :: Lens' MediaAuthor (Maybe Text)
maUrl = lens _maUrl (\ s a -> s{_maUrl = a})

-- | The author\'s name.
maDisplayName :: Lens' MediaAuthor (Maybe Text)
maDisplayName
  = lens _maDisplayName
      (\ s a -> s{_maDisplayName = a})

-- | ID of the author.
maId :: Lens' MediaAuthor (Maybe Text)
maId = lens _maId (\ s a -> s{_maId = a})

-- | Exif information of the media item.
--
-- /See:/ 'mediaExif' smart constructor.
newtype MediaExif = MediaExif
    { _meTime :: Maybe UTCTime
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaExif' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meTime'
mediaExif
    :: MediaExif
mediaExif = 
    MediaExif
    { _meTime = Nothing
    }

-- | The time the media was captured. Formatted as an RFC 3339 timestamp.
meTime :: Lens' MediaExif (Maybe UTCTime)
meTime = lens _meTime (\ s a -> s{_meTime = a})

-- | The author\'s Google profile image.
--
-- /See:/ 'mediaImageAuthor' smart constructor.
newtype MediaImageAuthor = MediaImageAuthor
    { _miaUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaImageAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miaUrl'
mediaImageAuthor
    :: MediaImageAuthor
mediaImageAuthor = 
    MediaImageAuthor
    { _miaUrl = Nothing
    }

-- | The URL of the author\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
miaUrl :: Lens' MediaImageAuthor (Maybe Text)
miaUrl = lens _miaUrl (\ s a -> s{_miaUrl = a})

--
-- /See:/ 'peopleFeed' smart constructor.
data PeopleFeed = PeopleFeed
    { _pfTotalItems :: !(Maybe Int32)
    , _pfEtag :: !(Maybe Text)
    , _pfNextPageToken :: !(Maybe Text)
    , _pfKind :: !Text
    , _pfItems :: !(Maybe [Maybe Person])
    , _pfSelfLink :: !(Maybe Text)
    , _pfTitle :: !(Maybe Text)
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
    { _perCurrentLocation :: !(Maybe Text)
    , _perEtag :: !(Maybe Text)
    , _perImage :: !(Maybe PersonImage)
    , _perBraggingRights :: !(Maybe Text)
    , _perPlacesLived :: !(Maybe [PersonItemPlacesLived])
    , _perPlusOneCount :: !(Maybe Int32)
    , _perObjectType :: !(Maybe Text)
    , _perCover :: !(Maybe PersonCover)
    , _perKind :: !Text
    , _perRelationshipStatus :: !(Maybe Text)
    , _perUrls :: !(Maybe [PersonItemUrls])
    , _perDomain :: !(Maybe Text)
    , _perUrl :: !(Maybe Text)
    , _perVerified :: !(Maybe Bool)
    , _perBirthday :: !(Maybe Text)
    , _perIsPlusUser :: !(Maybe Bool)
    , _perTagline :: !(Maybe Text)
    , _perGender :: !(Maybe Text)
    , _perName :: !(Maybe PersonName)
    , _perEmails :: !(Maybe [PersonItemEmails])
    , _perOccupation :: !(Maybe Text)
    , _perSkills :: !(Maybe Text)
    , _perAboutMe :: !(Maybe Text)
    , _perDisplayName :: !(Maybe Text)
    , _perId :: !(Maybe Text)
    , _perNickname :: !(Maybe Text)
    , _perOrganizations :: !(Maybe [PersonItemOrganizations])
    , _perCircledByCount :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perCurrentLocation'
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

-- | The cover photo content.
--
-- /See:/ 'personCover' smart constructor.
data PersonCover = PersonCover
    { _pcLayout :: !(Maybe Text)
    , _pcCoverInfo :: !(Maybe PersonCoverInfoCover)
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
    { _pcicTopImageOffset :: !(Maybe Int32)
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
    , _pcpcUrl :: !(Maybe Text)
    , _pcpcWidth :: !(Maybe Int32)
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
    { _piUrl :: !(Maybe Text)
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
    , _pieType :: !(Maybe Text)
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
    { _pioDepartment :: !(Maybe Text)
    , _pioLocation :: !(Maybe Text)
    , _pioEndDate :: !(Maybe Text)
    , _pioPrimary :: !(Maybe Bool)
    , _pioStartDate :: !(Maybe Text)
    , _pioName :: !(Maybe Text)
    , _pioTitle :: !(Maybe Text)
    , _pioType :: !(Maybe Text)
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
    { _piplValue :: !(Maybe Text)
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
    , _piuType :: !(Maybe Text)
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
    { _pnGivenName :: !(Maybe Text)
    , _pnMiddleName :: !(Maybe Text)
    , _pnFormatted :: !(Maybe Text)
    , _pnHonorificPrefix :: !(Maybe Text)
    , _pnFamilyName :: !(Maybe Text)
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
    { _pKind :: !Text
    , _pAddress :: !(Maybe PlaceAddress)
    , _pDisplayName :: !(Maybe Text)
    , _pId :: !(Maybe Text)
    , _pPosition :: !(Maybe PlacePosition)
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
    { _ppLatitude :: !(Maybe Double)
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
-- /See:/ 'plusDomainsAclentryResource' smart constructor.
data PlusDomainsAclentryResource = PlusDomainsAclentryResource
    { _pdarDisplayName :: !(Maybe Text)
    , _pdarId :: !(Maybe Text)
    , _pdarType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlusDomainsAclentryResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdarDisplayName'
--
-- * 'pdarId'
--
-- * 'pdarType'
plusDomainsAclentryResource
    :: PlusDomainsAclentryResource
plusDomainsAclentryResource = 
    PlusDomainsAclentryResource
    { _pdarDisplayName = Nothing
    , _pdarId = Nothing
    , _pdarType = Nothing
    }

-- | A descriptive name for this entry. Suitable for display.
pdarDisplayName :: Lens' PlusDomainsAclentryResource (Maybe Text)
pdarDisplayName
  = lens _pdarDisplayName
      (\ s a -> s{_pdarDisplayName = a})

-- | The ID of the entry. For entries of type \"person\" or \"circle\", this
-- is the ID of the resource. For other types, this property is not set.
pdarId :: Lens' PlusDomainsAclentryResource (Maybe Text)
pdarId = lens _pdarId (\ s a -> s{_pdarId = a})

-- | The type of entry describing to whom access is granted. Possible values
-- are: - \"person\" - Access to an individual. - \"circle\" - Access to
-- members of a circle. - \"myCircles\" - Access to members of all the
-- person\'s circles. - \"extendedCircles\" - Access to members of all the
-- person\'s circles, plus all of the people in their circles. - \"domain\"
-- - Access to members of the person\'s Google Apps domain. - \"public\" -
-- Access to anyone on the web.
pdarType :: Lens' PlusDomainsAclentryResource (Maybe Text)
pdarType = lens _pdarType (\ s a -> s{_pdarType = a})

--
-- /See:/ 'videostream' smart constructor.
data Videostream = Videostream
    { _vHeight :: !(Maybe Int32)
    , _vUrl :: !(Maybe Text)
    , _vWidth :: !(Maybe Int32)
    , _vType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Videostream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vHeight'
--
-- * 'vUrl'
--
-- * 'vWidth'
--
-- * 'vType'
videostream
    :: Videostream
videostream = 
    Videostream
    { _vHeight = Nothing
    , _vUrl = Nothing
    , _vWidth = Nothing
    , _vType = Nothing
    }

-- | The height, in pixels, of the video resource.
vHeight :: Lens' Videostream (Maybe Int32)
vHeight = lens _vHeight (\ s a -> s{_vHeight = a})

-- | URL of the video stream.
vUrl :: Lens' Videostream (Maybe Text)
vUrl = lens _vUrl (\ s a -> s{_vUrl = a})

-- | The width, in pixels, of the video resource.
vWidth :: Lens' Videostream (Maybe Int32)
vWidth = lens _vWidth (\ s a -> s{_vWidth = a})

-- | MIME type of the video stream.
vType :: Lens' Videostream (Maybe Text)
vType = lens _vType (\ s a -> s{_vType = a})

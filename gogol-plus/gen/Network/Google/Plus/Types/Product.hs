{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

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

instance FromJSON CommentPlusoners where
        parseJSON
          = withObject "CommentPlusoners"
              (\ o -> CommentPlusoners <$> (o .:? "totalItems"))

instance ToJSON CommentPlusoners where
        toJSON CommentPlusoners{..}
          = object
              (catMaybes [("totalItems" .=) <$> _cpTotalItems])

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

instance FromJSON ActivityProvider where
        parseJSON
          = withObject "ActivityProvider"
              (\ o -> ActivityProvider <$> (o .:? "title"))

instance ToJSON ActivityProvider where
        toJSON ActivityProvider{..}
          = object (catMaybes [("title" .=) <$> _apTitle])

-- | The image representation of this actor.
--
-- /See:/ 'commentActorImage' smart constructor.
newtype CommentActorImage = CommentActorImage
    { _caiUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiUrl'
commentActorImage
    :: CommentActorImage
commentActorImage =
    CommentActorImage
    { _caiUrl = Nothing
    }

-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
caiUrl :: Lens' CommentActorImage (Maybe Text)
caiUrl = lens _caiUrl (\ s a -> s{_caiUrl = a})

instance FromJSON CommentActorImage where
        parseJSON
          = withObject "CommentActorImage"
              (\ o -> CommentActorImage <$> (o .:? "url"))

instance ToJSON CommentActorImage where
        toJSON CommentActorImage{..}
          = object (catMaybes [("url" .=) <$> _caiUrl])

-- | People who +1\'d this activity.
--
-- /See:/ 'activityObjectPlusoners' smart constructor.
data ActivityObjectPlusoners = ActivityObjectPlusoners
    { _aopTotalItems :: !(Maybe Word32)
    , _aopSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectPlusoners' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aopTotalItems'
--
-- * 'aopSelfLink'
activityObjectPlusoners
    :: ActivityObjectPlusoners
activityObjectPlusoners =
    ActivityObjectPlusoners
    { _aopTotalItems = Nothing
    , _aopSelfLink = Nothing
    }

-- | Total number of people who +1\'d this activity.
aopTotalItems :: Lens' ActivityObjectPlusoners (Maybe Word32)
aopTotalItems
  = lens _aopTotalItems
      (\ s a -> s{_aopTotalItems = a})

-- | The URL for the collection of people who +1\'d this activity.
aopSelfLink :: Lens' ActivityObjectPlusoners (Maybe Text)
aopSelfLink
  = lens _aopSelfLink (\ s a -> s{_aopSelfLink = a})

instance FromJSON ActivityObjectPlusoners where
        parseJSON
          = withObject "ActivityObjectPlusoners"
              (\ o ->
                 ActivityObjectPlusoners <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON ActivityObjectPlusoners where
        toJSON ActivityObjectPlusoners{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _aopTotalItems,
                  ("selfLink" .=) <$> _aopSelfLink])

--
-- /See:/ 'activityObjectAttachments' smart constructor.
data ActivityObjectAttachments = ActivityObjectAttachments
    { _aoaFullImage   :: !(Maybe ActivityObjectAttachmentsFullImage)
    , _aoaImage       :: !(Maybe ActivityObjectAttachmentsImage)
    , _aoaObjectType  :: !(Maybe Text)
    , _aoaUrl         :: !(Maybe Text)
    , _aoaEmbed       :: !(Maybe ActivityObjectAttachmentsEmbed)
    , _aoaContent     :: !(Maybe Text)
    , _aoaThumbnails  :: !(Maybe [ActivityObjectAttachmentsThumbnails])
    , _aoaDisplayName :: !(Maybe Text)
    , _aoaId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaFullImage'
--
-- * 'aoaImage'
--
-- * 'aoaObjectType'
--
-- * 'aoaUrl'
--
-- * 'aoaEmbed'
--
-- * 'aoaContent'
--
-- * 'aoaThumbnails'
--
-- * 'aoaDisplayName'
--
-- * 'aoaId'
activityObjectAttachments
    :: ActivityObjectAttachments
activityObjectAttachments =
    ActivityObjectAttachments
    { _aoaFullImage = Nothing
    , _aoaImage = Nothing
    , _aoaObjectType = Nothing
    , _aoaUrl = Nothing
    , _aoaEmbed = Nothing
    , _aoaContent = Nothing
    , _aoaThumbnails = Nothing
    , _aoaDisplayName = Nothing
    , _aoaId = Nothing
    }

-- | The full image URL for photo attachments.
aoaFullImage :: Lens' ActivityObjectAttachments (Maybe ActivityObjectAttachmentsFullImage)
aoaFullImage
  = lens _aoaFullImage (\ s a -> s{_aoaFullImage = a})

-- | The preview image for photos or videos.
aoaImage :: Lens' ActivityObjectAttachments (Maybe ActivityObjectAttachmentsImage)
aoaImage = lens _aoaImage (\ s a -> s{_aoaImage = a})

-- | The type of media object. Possible values include, but are not limited
-- to, the following values: - \"photo\" - A photo. - \"album\" - A photo
-- album. - \"video\" - A video. - \"article\" - An article, specified by a
-- link.
aoaObjectType :: Lens' ActivityObjectAttachments (Maybe Text)
aoaObjectType
  = lens _aoaObjectType
      (\ s a -> s{_aoaObjectType = a})

-- | The link to the attachment, which should be of type text\/html.
aoaUrl :: Lens' ActivityObjectAttachments (Maybe Text)
aoaUrl = lens _aoaUrl (\ s a -> s{_aoaUrl = a})

-- | If the attachment is a video, the embeddable link.
aoaEmbed :: Lens' ActivityObjectAttachments (Maybe ActivityObjectAttachmentsEmbed)
aoaEmbed = lens _aoaEmbed (\ s a -> s{_aoaEmbed = a})

-- | If the attachment is an article, this property contains a snippet of
-- text from the article. It can also include descriptions for other types.
aoaContent :: Lens' ActivityObjectAttachments (Maybe Text)
aoaContent
  = lens _aoaContent (\ s a -> s{_aoaContent = a})

-- | If the attachment is an album, this property is a list of potential
-- additional thumbnails from the album.
aoaThumbnails :: Lens' ActivityObjectAttachments [ActivityObjectAttachmentsThumbnails]
aoaThumbnails
  = lens _aoaThumbnails
      (\ s a -> s{_aoaThumbnails = a})
      . _Default
      . _Coerce

-- | The title of the attachment, such as a photo caption or an article
-- title.
aoaDisplayName :: Lens' ActivityObjectAttachments (Maybe Text)
aoaDisplayName
  = lens _aoaDisplayName
      (\ s a -> s{_aoaDisplayName = a})

-- | The ID of the attachment.
aoaId :: Lens' ActivityObjectAttachments (Maybe Text)
aoaId = lens _aoaId (\ s a -> s{_aoaId = a})

instance FromJSON ActivityObjectAttachments where
        parseJSON
          = withObject "ActivityObjectAttachments"
              (\ o ->
                 ActivityObjectAttachments <$>
                   (o .:? "fullImage") <*> (o .:? "image") <*>
                     (o .:? "objectType")
                     <*> (o .:? "url")
                     <*> (o .:? "embed")
                     <*> (o .:? "content")
                     <*> (o .:? "thumbnails" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON ActivityObjectAttachments where
        toJSON ActivityObjectAttachments{..}
          = object
              (catMaybes
                 [("fullImage" .=) <$> _aoaFullImage,
                  ("image" .=) <$> _aoaImage,
                  ("objectType" .=) <$> _aoaObjectType,
                  ("url" .=) <$> _aoaUrl, ("embed" .=) <$> _aoaEmbed,
                  ("content" .=) <$> _aoaContent,
                  ("thumbnails" .=) <$> _aoaThumbnails,
                  ("displayName" .=) <$> _aoaDisplayName,
                  ("id" .=) <$> _aoaId])

-- | Image resource.
--
-- /See:/ 'activityObjectAttachmentsThumbnailsImage' smart constructor.
data ActivityObjectAttachmentsThumbnailsImage = ActivityObjectAttachmentsThumbnailsImage
    { _aoatiHeight :: !(Maybe Word32)
    , _aoatiUrl    :: !(Maybe Text)
    , _aoatiWidth  :: !(Maybe Word32)
    , _aoatiType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsThumbnailsImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoatiHeight'
--
-- * 'aoatiUrl'
--
-- * 'aoatiWidth'
--
-- * 'aoatiType'
activityObjectAttachmentsThumbnailsImage
    :: ActivityObjectAttachmentsThumbnailsImage
activityObjectAttachmentsThumbnailsImage =
    ActivityObjectAttachmentsThumbnailsImage
    { _aoatiHeight = Nothing
    , _aoatiUrl = Nothing
    , _aoatiWidth = Nothing
    , _aoatiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aoatiHeight :: Lens' ActivityObjectAttachmentsThumbnailsImage (Maybe Word32)
aoatiHeight
  = lens _aoatiHeight (\ s a -> s{_aoatiHeight = a})

-- | Image url.
aoatiUrl :: Lens' ActivityObjectAttachmentsThumbnailsImage (Maybe Text)
aoatiUrl = lens _aoatiUrl (\ s a -> s{_aoatiUrl = a})

-- | The width, in pixels, of the linked resource.
aoatiWidth :: Lens' ActivityObjectAttachmentsThumbnailsImage (Maybe Word32)
aoatiWidth
  = lens _aoatiWidth (\ s a -> s{_aoatiWidth = a})

-- | Media type of the link.
aoatiType :: Lens' ActivityObjectAttachmentsThumbnailsImage (Maybe Text)
aoatiType
  = lens _aoatiType (\ s a -> s{_aoatiType = a})

instance FromJSON
         ActivityObjectAttachmentsThumbnailsImage where
        parseJSON
          = withObject
              "ActivityObjectAttachmentsThumbnailsImage"
              (\ o ->
                 ActivityObjectAttachmentsThumbnailsImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON
         ActivityObjectAttachmentsThumbnailsImage where
        toJSON ActivityObjectAttachmentsThumbnailsImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoatiHeight,
                  ("url" .=) <$> _aoatiUrl,
                  ("width" .=) <$> _aoatiWidth,
                  ("type" .=) <$> _aoatiType])

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

instance FromJSON PlacePosition where
        parseJSON
          = withObject "PlacePosition"
              (\ o ->
                 PlacePosition <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON PlacePosition where
        toJSON PlacePosition{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _ppLatitude,
                  ("longitude" .=) <$> _ppLongitude])

--
-- /See:/ 'personURLs' smart constructor.
data PersonURLs = PersonURLs
    { _puValue :: !(Maybe Text)
    , _puType  :: !(Maybe Text)
    , _puLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonURLs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puValue'
--
-- * 'puType'
--
-- * 'puLabel'
personURLs
    :: PersonURLs
personURLs =
    PersonURLs
    { _puValue = Nothing
    , _puType = Nothing
    , _puLabel = Nothing
    }

-- | The URL value.
puValue :: Lens' PersonURLs (Maybe Text)
puValue = lens _puValue (\ s a -> s{_puValue = a})

-- | The type of URL. Possible values include, but are not limited to, the
-- following values: - \"otherProfile\" - URL for another profile. -
-- \"contributor\" - URL to a site for which this person is a contributor.
-- - \"website\" - URL for this Google+ Page\'s primary website. -
-- \"other\" - Other URL.
puType :: Lens' PersonURLs (Maybe Text)
puType = lens _puType (\ s a -> s{_puType = a})

-- | The label of the URL.
puLabel :: Lens' PersonURLs (Maybe Text)
puLabel = lens _puLabel (\ s a -> s{_puLabel = a})

instance FromJSON PersonURLs where
        parseJSON
          = withObject "PersonURLs"
              (\ o ->
                 PersonURLs <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "label"))

instance ToJSON PersonURLs where
        toJSON PersonURLs{..}
          = object
              (catMaybes
                 [("value" .=) <$> _puValue, ("type" .=) <$> _puType,
                  ("label" .=) <$> _puLabel])

--
-- /See:/ 'person' smart constructor.
data Person = Person
    { _pCurrentLocation    :: !(Maybe Text)
    , _pAgeRange           :: !(Maybe PersonAgeRange)
    , _pEtag               :: !(Maybe Text)
    , _pImage              :: !(Maybe PersonImage)
    , _pBraggingRights     :: !(Maybe Text)
    , _pPlacesLived        :: !(Maybe [PersonPlacesLived])
    , _pPlusOneCount       :: !(Maybe Int32)
    , _pObjectType         :: !(Maybe Text)
    , _pCover              :: !(Maybe PersonCover)
    , _pKind               :: !Text
    , _pRelationshipStatus :: !(Maybe Text)
    , _pUrls               :: !(Maybe [PersonURLs])
    , _pDomain             :: !(Maybe Text)
    , _pUrl                :: !(Maybe Text)
    , _pVerified           :: !(Maybe Bool)
    , _pBirthday           :: !(Maybe Text)
    , _pIsPlusUser         :: !(Maybe Bool)
    , _pTagline            :: !(Maybe Text)
    , _pGender             :: !(Maybe Text)
    , _pName               :: !(Maybe PersonName)
    , _pEmails             :: !(Maybe [PersonEmails])
    , _pOccupation         :: !(Maybe Text)
    , _pSkills             :: !(Maybe Text)
    , _pLanguage           :: !(Maybe Text)
    , _pAboutMe            :: !(Maybe Text)
    , _pDisplayName        :: !(Maybe Text)
    , _pId                 :: !(Maybe Text)
    , _pNickname           :: !(Maybe Text)
    , _pOrganizations      :: !(Maybe [PersonOrganizations])
    , _pCircledByCount     :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCurrentLocation'
--
-- * 'pAgeRange'
--
-- * 'pEtag'
--
-- * 'pImage'
--
-- * 'pBraggingRights'
--
-- * 'pPlacesLived'
--
-- * 'pPlusOneCount'
--
-- * 'pObjectType'
--
-- * 'pCover'
--
-- * 'pKind'
--
-- * 'pRelationshipStatus'
--
-- * 'pUrls'
--
-- * 'pDomain'
--
-- * 'pUrl'
--
-- * 'pVerified'
--
-- * 'pBirthday'
--
-- * 'pIsPlusUser'
--
-- * 'pTagline'
--
-- * 'pGender'
--
-- * 'pName'
--
-- * 'pEmails'
--
-- * 'pOccupation'
--
-- * 'pSkills'
--
-- * 'pLanguage'
--
-- * 'pAboutMe'
--
-- * 'pDisplayName'
--
-- * 'pId'
--
-- * 'pNickname'
--
-- * 'pOrganizations'
--
-- * 'pCircledByCount'
person
    :: Person
person =
    Person
    { _pCurrentLocation = Nothing
    , _pAgeRange = Nothing
    , _pEtag = Nothing
    , _pImage = Nothing
    , _pBraggingRights = Nothing
    , _pPlacesLived = Nothing
    , _pPlusOneCount = Nothing
    , _pObjectType = Nothing
    , _pCover = Nothing
    , _pKind = "plus#person"
    , _pRelationshipStatus = Nothing
    , _pUrls = Nothing
    , _pDomain = Nothing
    , _pUrl = Nothing
    , _pVerified = Nothing
    , _pBirthday = Nothing
    , _pIsPlusUser = Nothing
    , _pTagline = Nothing
    , _pGender = Nothing
    , _pName = Nothing
    , _pEmails = Nothing
    , _pOccupation = Nothing
    , _pSkills = Nothing
    , _pLanguage = Nothing
    , _pAboutMe = Nothing
    , _pDisplayName = Nothing
    , _pId = Nothing
    , _pNickname = Nothing
    , _pOrganizations = Nothing
    , _pCircledByCount = Nothing
    }

-- | (this field is not currently used)
pCurrentLocation :: Lens' Person (Maybe Text)
pCurrentLocation
  = lens _pCurrentLocation
      (\ s a -> s{_pCurrentLocation = a})

-- | The age range of the person. Valid ranges are 17 or younger, 18 to 20,
-- and 21 or older. Age is determined from the user\'s birthday using
-- Western age reckoning.
pAgeRange :: Lens' Person (Maybe PersonAgeRange)
pAgeRange
  = lens _pAgeRange (\ s a -> s{_pAgeRange = a})

-- | ETag of this response for caching purposes.
pEtag :: Lens' Person (Maybe Text)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | The representation of the person\'s profile photo.
pImage :: Lens' Person (Maybe PersonImage)
pImage = lens _pImage (\ s a -> s{_pImage = a})

-- | The \"bragging rights\" line of this person.
pBraggingRights :: Lens' Person (Maybe Text)
pBraggingRights
  = lens _pBraggingRights
      (\ s a -> s{_pBraggingRights = a})

-- | A list of places where this person has lived.
pPlacesLived :: Lens' Person [PersonPlacesLived]
pPlacesLived
  = lens _pPlacesLived (\ s a -> s{_pPlacesLived = a})
      . _Default
      . _Coerce

-- | If a Google+ Page, the number of people who have +1\'d this page.
pPlusOneCount :: Lens' Person (Maybe Int32)
pPlusOneCount
  = lens _pPlusOneCount
      (\ s a -> s{_pPlusOneCount = a})

-- | Type of person within Google+. Possible values include, but are not
-- limited to, the following values: - \"person\" - represents an actual
-- person. - \"page\" - represents a page.
pObjectType :: Lens' Person (Maybe Text)
pObjectType
  = lens _pObjectType (\ s a -> s{_pObjectType = a})

-- | The cover photo content.
pCover :: Lens' Person (Maybe PersonCover)
pCover = lens _pCover (\ s a -> s{_pCover = a})

-- | Identifies this resource as a person. Value: \"plus#person\".
pKind :: Lens' Person Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The person\'s relationship status. Possible values include, but are not
-- limited to, the following values: - \"single\" - Person is single. -
-- \"in_a_relationship\" - Person is in a relationship. - \"engaged\" -
-- Person is engaged. - \"married\" - Person is married. -
-- \"its_complicated\" - The relationship is complicated. -
-- \"open_relationship\" - Person is in an open relationship. - \"widowed\"
-- - Person is widowed. - \"in_domestic_partnership\" - Person is in a
-- domestic partnership. - \"in_civil_union\" - Person is in a civil union.
pRelationshipStatus :: Lens' Person (Maybe Text)
pRelationshipStatus
  = lens _pRelationshipStatus
      (\ s a -> s{_pRelationshipStatus = a})

-- | A list of URLs for this person.
pUrls :: Lens' Person [PersonURLs]
pUrls
  = lens _pUrls (\ s a -> s{_pUrls = a}) . _Default .
      _Coerce

-- | The hosted domain name for the user\'s Google Apps account. For
-- instance, example.com. The plus.profile.emails.read or email scope is
-- needed to get this domain name.
pDomain :: Lens' Person (Maybe Text)
pDomain = lens _pDomain (\ s a -> s{_pDomain = a})

-- | The URL of this person\'s profile.
pUrl :: Lens' Person (Maybe Text)
pUrl = lens _pUrl (\ s a -> s{_pUrl = a})

-- | Whether the person or Google+ Page has been verified.
pVerified :: Lens' Person (Maybe Bool)
pVerified
  = lens _pVerified (\ s a -> s{_pVerified = a})

-- | The person\'s date of birth, represented as YYYY-MM-DD.
pBirthday :: Lens' Person (Maybe Text)
pBirthday
  = lens _pBirthday (\ s a -> s{_pBirthday = a})

-- | Whether this user has signed up for Google+.
pIsPlusUser :: Lens' Person (Maybe Bool)
pIsPlusUser
  = lens _pIsPlusUser (\ s a -> s{_pIsPlusUser = a})

-- | The brief description (tagline) of this person.
pTagline :: Lens' Person (Maybe Text)
pTagline = lens _pTagline (\ s a -> s{_pTagline = a})

-- | The person\'s gender. Possible values include, but are not limited to,
-- the following values: - \"male\" - Male gender. - \"female\" - Female
-- gender. - \"other\" - Other.
pGender :: Lens' Person (Maybe Text)
pGender = lens _pGender (\ s a -> s{_pGender = a})

-- | An object representation of the individual components of a person\'s
-- name.
pName :: Lens' Person (Maybe PersonName)
pName = lens _pName (\ s a -> s{_pName = a})

-- | A list of email addresses that this person has, including their Google
-- account email address, and the public verified email addresses on their
-- Google+ profile. The plus.profile.emails.read scope is needed to
-- retrieve these email addresses, or the email scope can be used to
-- retrieve just the Google account email address.
pEmails :: Lens' Person [PersonEmails]
pEmails
  = lens _pEmails (\ s a -> s{_pEmails = a}) . _Default
      . _Coerce

-- | The occupation of this person.
pOccupation :: Lens' Person (Maybe Text)
pOccupation
  = lens _pOccupation (\ s a -> s{_pOccupation = a})

-- | The person\'s skills.
pSkills :: Lens' Person (Maybe Text)
pSkills = lens _pSkills (\ s a -> s{_pSkills = a})

-- | The user\'s preferred language for rendering.
pLanguage :: Lens' Person (Maybe Text)
pLanguage
  = lens _pLanguage (\ s a -> s{_pLanguage = a})

-- | A short biography for this person.
pAboutMe :: Lens' Person (Maybe Text)
pAboutMe = lens _pAboutMe (\ s a -> s{_pAboutMe = a})

-- | The name of this person, which is suitable for display.
pDisplayName :: Lens' Person (Maybe Text)
pDisplayName
  = lens _pDisplayName (\ s a -> s{_pDisplayName = a})

-- | The ID of this person.
pId :: Lens' Person (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The nickname of this person.
pNickname :: Lens' Person (Maybe Text)
pNickname
  = lens _pNickname (\ s a -> s{_pNickname = a})

-- | A list of current or past organizations with which this person is
-- associated.
pOrganizations :: Lens' Person [PersonOrganizations]
pOrganizations
  = lens _pOrganizations
      (\ s a -> s{_pOrganizations = a})
      . _Default
      . _Coerce

-- | For followers who are visible, the number of people who have added this
-- person or page to a circle.
pCircledByCount :: Lens' Person (Maybe Int32)
pCircledByCount
  = lens _pCircledByCount
      (\ s a -> s{_pCircledByCount = a})

instance FromJSON Person where
        parseJSON
          = withObject "Person"
              (\ o ->
                 Person <$>
                   (o .:? "currentLocation") <*> (o .:? "ageRange") <*>
                     (o .:? "etag")
                     <*> (o .:? "image")
                     <*> (o .:? "braggingRights")
                     <*> (o .:? "placesLived" .!= mempty)
                     <*> (o .:? "plusOneCount")
                     <*> (o .:? "objectType")
                     <*> (o .:? "cover")
                     <*> (o .:? "kind" .!= "plus#person")
                     <*> (o .:? "relationshipStatus")
                     <*> (o .:? "urls" .!= mempty)
                     <*> (o .:? "domain")
                     <*> (o .:? "url")
                     <*> (o .:? "verified")
                     <*> (o .:? "birthday")
                     <*> (o .:? "isPlusUser")
                     <*> (o .:? "tagline")
                     <*> (o .:? "gender")
                     <*> (o .:? "name")
                     <*> (o .:? "emails" .!= mempty)
                     <*> (o .:? "occupation")
                     <*> (o .:? "skills")
                     <*> (o .:? "language")
                     <*> (o .:? "aboutMe")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "nickname")
                     <*> (o .:? "organizations" .!= mempty)
                     <*> (o .:? "circledByCount"))

instance ToJSON Person where
        toJSON Person{..}
          = object
              (catMaybes
                 [("currentLocation" .=) <$> _pCurrentLocation,
                  ("ageRange" .=) <$> _pAgeRange,
                  ("etag" .=) <$> _pEtag, ("image" .=) <$> _pImage,
                  ("braggingRights" .=) <$> _pBraggingRights,
                  ("placesLived" .=) <$> _pPlacesLived,
                  ("plusOneCount" .=) <$> _pPlusOneCount,
                  ("objectType" .=) <$> _pObjectType,
                  ("cover" .=) <$> _pCover, Just ("kind" .= _pKind),
                  ("relationshipStatus" .=) <$> _pRelationshipStatus,
                  ("urls" .=) <$> _pUrls, ("domain" .=) <$> _pDomain,
                  ("url" .=) <$> _pUrl, ("verified" .=) <$> _pVerified,
                  ("birthday" .=) <$> _pBirthday,
                  ("isPlusUser" .=) <$> _pIsPlusUser,
                  ("tagline" .=) <$> _pTagline,
                  ("gender" .=) <$> _pGender, ("name" .=) <$> _pName,
                  ("emails" .=) <$> _pEmails,
                  ("occupation" .=) <$> _pOccupation,
                  ("skills" .=) <$> _pSkills,
                  ("language" .=) <$> _pLanguage,
                  ("aboutMe" .=) <$> _pAboutMe,
                  ("displayName" .=) <$> _pDisplayName,
                  ("id" .=) <$> _pId, ("nickname" .=) <$> _pNickname,
                  ("organizations" .=) <$> _pOrganizations,
                  ("circledByCount" .=) <$> _pCircledByCount])

--
-- /See:/ 'commentInReplyTo' smart constructor.
data CommentInReplyTo = CommentInReplyTo
    { _cirtUrl :: !(Maybe Text)
    , _cirtId  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentInReplyTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirtUrl'
--
-- * 'cirtId'
commentInReplyTo
    :: CommentInReplyTo
commentInReplyTo =
    CommentInReplyTo
    { _cirtUrl = Nothing
    , _cirtId = Nothing
    }

-- | The URL of the activity.
cirtUrl :: Lens' CommentInReplyTo (Maybe Text)
cirtUrl = lens _cirtUrl (\ s a -> s{_cirtUrl = a})

-- | The ID of the activity.
cirtId :: Lens' CommentInReplyTo (Maybe Text)
cirtId = lens _cirtId (\ s a -> s{_cirtId = a})

instance FromJSON CommentInReplyTo where
        parseJSON
          = withObject "CommentInReplyTo"
              (\ o ->
                 CommentInReplyTo <$> (o .:? "url") <*> (o .:? "id"))

instance ToJSON CommentInReplyTo where
        toJSON CommentInReplyTo{..}
          = object
              (catMaybes
                 [("url" .=) <$> _cirtUrl, ("id" .=) <$> _cirtId])

--
-- /See:/ 'personOrganizations' smart constructor.
data PersonOrganizations = PersonOrganizations
    { _poDepartment  :: !(Maybe Text)
    , _poLocation    :: !(Maybe Text)
    , _poEndDate     :: !(Maybe Text)
    , _poPrimary     :: !(Maybe Bool)
    , _poStartDate   :: !(Maybe Text)
    , _poName        :: !(Maybe Text)
    , _poTitle       :: !(Maybe Text)
    , _poType        :: !(Maybe Text)
    , _poDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonOrganizations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poDepartment'
--
-- * 'poLocation'
--
-- * 'poEndDate'
--
-- * 'poPrimary'
--
-- * 'poStartDate'
--
-- * 'poName'
--
-- * 'poTitle'
--
-- * 'poType'
--
-- * 'poDescription'
personOrganizations
    :: PersonOrganizations
personOrganizations =
    PersonOrganizations
    { _poDepartment = Nothing
    , _poLocation = Nothing
    , _poEndDate = Nothing
    , _poPrimary = Nothing
    , _poStartDate = Nothing
    , _poName = Nothing
    , _poTitle = Nothing
    , _poType = Nothing
    , _poDescription = Nothing
    }

-- | The department within the organization. Deprecated.
poDepartment :: Lens' PersonOrganizations (Maybe Text)
poDepartment
  = lens _poDepartment (\ s a -> s{_poDepartment = a})

-- | The location of this organization. Deprecated.
poLocation :: Lens' PersonOrganizations (Maybe Text)
poLocation
  = lens _poLocation (\ s a -> s{_poLocation = a})

-- | The date that the person left this organization.
poEndDate :: Lens' PersonOrganizations (Maybe Text)
poEndDate
  = lens _poEndDate (\ s a -> s{_poEndDate = a})

-- | If \"true\", indicates this organization is the person\'s primary one,
-- which is typically interpreted as the current one.
poPrimary :: Lens' PersonOrganizations (Maybe Bool)
poPrimary
  = lens _poPrimary (\ s a -> s{_poPrimary = a})

-- | The date that the person joined this organization.
poStartDate :: Lens' PersonOrganizations (Maybe Text)
poStartDate
  = lens _poStartDate (\ s a -> s{_poStartDate = a})

-- | The name of the organization.
poName :: Lens' PersonOrganizations (Maybe Text)
poName = lens _poName (\ s a -> s{_poName = a})

-- | The person\'s job title or role within the organization.
poTitle :: Lens' PersonOrganizations (Maybe Text)
poTitle = lens _poTitle (\ s a -> s{_poTitle = a})

-- | The type of organization. Possible values include, but are not limited
-- to, the following values: - \"work\" - Work. - \"school\" - School.
poType :: Lens' PersonOrganizations (Maybe Text)
poType = lens _poType (\ s a -> s{_poType = a})

-- | A short description of the person\'s role in this organization.
-- Deprecated.
poDescription :: Lens' PersonOrganizations (Maybe Text)
poDescription
  = lens _poDescription
      (\ s a -> s{_poDescription = a})

instance FromJSON PersonOrganizations where
        parseJSON
          = withObject "PersonOrganizations"
              (\ o ->
                 PersonOrganizations <$>
                   (o .:? "department") <*> (o .:? "location") <*>
                     (o .:? "endDate")
                     <*> (o .:? "primary")
                     <*> (o .:? "startDate")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON PersonOrganizations where
        toJSON PersonOrganizations{..}
          = object
              (catMaybes
                 [("department" .=) <$> _poDepartment,
                  ("location" .=) <$> _poLocation,
                  ("endDate" .=) <$> _poEndDate,
                  ("primary" .=) <$> _poPrimary,
                  ("startDate" .=) <$> _poStartDate,
                  ("name" .=) <$> _poName, ("title" .=) <$> _poTitle,
                  ("type" .=) <$> _poType,
                  ("description" .=) <$> _poDescription])

-- | The preview image for photos or videos.
--
-- /See:/ 'activityObjectAttachmentsImage' smart constructor.
data ActivityObjectAttachmentsImage = ActivityObjectAttachmentsImage
    { _aoaiHeight :: !(Maybe Word32)
    , _aoaiUrl    :: !(Maybe Text)
    , _aoaiWidth  :: !(Maybe Word32)
    , _aoaiType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaiHeight'
--
-- * 'aoaiUrl'
--
-- * 'aoaiWidth'
--
-- * 'aoaiType'
activityObjectAttachmentsImage
    :: ActivityObjectAttachmentsImage
activityObjectAttachmentsImage =
    ActivityObjectAttachmentsImage
    { _aoaiHeight = Nothing
    , _aoaiUrl = Nothing
    , _aoaiWidth = Nothing
    , _aoaiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aoaiHeight :: Lens' ActivityObjectAttachmentsImage (Maybe Word32)
aoaiHeight
  = lens _aoaiHeight (\ s a -> s{_aoaiHeight = a})

-- | Image URL.
aoaiUrl :: Lens' ActivityObjectAttachmentsImage (Maybe Text)
aoaiUrl = lens _aoaiUrl (\ s a -> s{_aoaiUrl = a})

-- | The width, in pixels, of the linked resource.
aoaiWidth :: Lens' ActivityObjectAttachmentsImage (Maybe Word32)
aoaiWidth
  = lens _aoaiWidth (\ s a -> s{_aoaiWidth = a})

-- | Media type of the link.
aoaiType :: Lens' ActivityObjectAttachmentsImage (Maybe Text)
aoaiType = lens _aoaiType (\ s a -> s{_aoaiType = a})

instance FromJSON ActivityObjectAttachmentsImage
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsImage"
              (\ o ->
                 ActivityObjectAttachmentsImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON ActivityObjectAttachmentsImage where
        toJSON ActivityObjectAttachmentsImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoaiHeight,
                  ("url" .=) <$> _aoaiUrl, ("width" .=) <$> _aoaiWidth,
                  ("type" .=) <$> _aoaiType])

-- | The person who posted this comment.
--
-- /See:/ 'commentActor' smart constructor.
data CommentActor = CommentActor
    { _caImage        :: !(Maybe CommentActorImage)
    , _caUrl          :: !(Maybe Text)
    , _caDisplayName  :: !(Maybe Text)
    , _caId           :: !(Maybe Text)
    , _caVerification :: !(Maybe CommentActorVerification)
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
caImage :: Lens' CommentActor (Maybe CommentActorImage)
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
caVerification :: Lens' CommentActor (Maybe CommentActorVerification)
caVerification
  = lens _caVerification
      (\ s a -> s{_caVerification = a})

instance FromJSON CommentActor where
        parseJSON
          = withObject "CommentActor"
              (\ o ->
                 CommentActor <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "verification"))

instance ToJSON CommentActor where
        toJSON CommentActor{..}
          = object
              (catMaybes
                 [("image" .=) <$> _caImage, ("url" .=) <$> _caUrl,
                  ("displayName" .=) <$> _caDisplayName,
                  ("id" .=) <$> _caId,
                  ("verification" .=) <$> _caVerification])

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

instance FromJSON Moment where
        parseJSON
          = withObject "Moment"
              (\ o ->
                 Moment <$>
                   (o .:? "kind" .!= "plus#moment") <*> (o .:? "result")
                     <*> (o .:? "startDate")
                     <*> (o .:? "object")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "target"))

instance ToJSON Moment where
        toJSON Moment{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mKind), ("result" .=) <$> _mResult,
                  ("startDate" .=) <$> _mStartDate,
                  ("object" .=) <$> _mObject, ("id" .=) <$> _mId,
                  ("type" .=) <$> _mType, ("target" .=) <$> _mTarget])

-- | The object of this activity.
--
-- /See:/ 'activityObject' smart constructor.
data ActivityObject = ActivityObject
    { _aoPlusoners       :: !(Maybe ActivityObjectPlusoners)
    , _aoAttachments     :: !(Maybe [ActivityObjectAttachments])
    , _aoObjectType      :: !(Maybe Text)
    , _aoOriginalContent :: !(Maybe Text)
    , _aoUrl             :: !(Maybe Text)
    , _aoActor           :: !(Maybe ActivityObjectActor)
    , _aoContent         :: !(Maybe Text)
    , _aoReplies         :: !(Maybe ActivityObjectReplies)
    , _aoId              :: !(Maybe Text)
    , _aoResharers       :: !(Maybe ActivityObjectResharers)
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
aoPlusoners :: Lens' ActivityObject (Maybe ActivityObjectPlusoners)
aoPlusoners
  = lens _aoPlusoners (\ s a -> s{_aoPlusoners = a})

-- | The media objects attached to this activity.
aoAttachments :: Lens' ActivityObject [ActivityObjectAttachments]
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
aoActor :: Lens' ActivityObject (Maybe ActivityObjectActor)
aoActor = lens _aoActor (\ s a -> s{_aoActor = a})

-- | The HTML-formatted content, which is suitable for display.
aoContent :: Lens' ActivityObject (Maybe Text)
aoContent
  = lens _aoContent (\ s a -> s{_aoContent = a})

-- | Comments in reply to this activity.
aoReplies :: Lens' ActivityObject (Maybe ActivityObjectReplies)
aoReplies
  = lens _aoReplies (\ s a -> s{_aoReplies = a})

-- | The ID of the object. When resharing an activity, this is the ID of the
-- activity that is being reshared.
aoId :: Lens' ActivityObject (Maybe Text)
aoId = lens _aoId (\ s a -> s{_aoId = a})

-- | People who reshared this activity.
aoResharers :: Lens' ActivityObject (Maybe ActivityObjectResharers)
aoResharers
  = lens _aoResharers (\ s a -> s{_aoResharers = a})

instance FromJSON ActivityObject where
        parseJSON
          = withObject "ActivityObject"
              (\ o ->
                 ActivityObject <$>
                   (o .:? "plusoners") <*>
                     (o .:? "attachments" .!= mempty)
                     <*> (o .:? "objectType")
                     <*> (o .:? "originalContent")
                     <*> (o .:? "url")
                     <*> (o .:? "actor")
                     <*> (o .:? "content")
                     <*> (o .:? "replies")
                     <*> (o .:? "id")
                     <*> (o .:? "resharers"))

instance ToJSON ActivityObject where
        toJSON ActivityObject{..}
          = object
              (catMaybes
                 [("plusoners" .=) <$> _aoPlusoners,
                  ("attachments" .=) <$> _aoAttachments,
                  ("objectType" .=) <$> _aoObjectType,
                  ("originalContent" .=) <$> _aoOriginalContent,
                  ("url" .=) <$> _aoUrl, ("actor" .=) <$> _aoActor,
                  ("content" .=) <$> _aoContent,
                  ("replies" .=) <$> _aoReplies, ("id" .=) <$> _aoId,
                  ("resharers" .=) <$> _aoResharers])

-- | If this activity\'s object is itself another activity, such as when a
-- person reshares an activity, this property specifies the original
-- activity\'s actor.
--
-- /See:/ 'activityObjectActor' smart constructor.
data ActivityObjectActor = ActivityObjectActor
    { _aImage        :: !(Maybe ActivityObjectActorImage)
    , _aUrl          :: !(Maybe Text)
    , _aDisplayName  :: !(Maybe Text)
    , _aId           :: !(Maybe Text)
    , _aVerification :: !(Maybe ActivityObjectActorVerification)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aImage'
--
-- * 'aUrl'
--
-- * 'aDisplayName'
--
-- * 'aId'
--
-- * 'aVerification'
activityObjectActor
    :: ActivityObjectActor
activityObjectActor =
    ActivityObjectActor
    { _aImage = Nothing
    , _aUrl = Nothing
    , _aDisplayName = Nothing
    , _aId = Nothing
    , _aVerification = Nothing
    }

-- | The image representation of the original actor.
aImage :: Lens' ActivityObjectActor (Maybe ActivityObjectActorImage)
aImage = lens _aImage (\ s a -> s{_aImage = a})

-- | A link to the original actor\'s Google profile.
aUrl :: Lens' ActivityObjectActor (Maybe Text)
aUrl = lens _aUrl (\ s a -> s{_aUrl = a})

-- | The original actor\'s name, which is suitable for display.
aDisplayName :: Lens' ActivityObjectActor (Maybe Text)
aDisplayName
  = lens _aDisplayName (\ s a -> s{_aDisplayName = a})

-- | ID of the original actor.
aId :: Lens' ActivityObjectActor (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Verification status of actor.
aVerification :: Lens' ActivityObjectActor (Maybe ActivityObjectActorVerification)
aVerification
  = lens _aVerification
      (\ s a -> s{_aVerification = a})

instance FromJSON ActivityObjectActor where
        parseJSON
          = withObject "ActivityObjectActor"
              (\ o ->
                 ActivityObjectActor <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "verification"))

instance ToJSON ActivityObjectActor where
        toJSON ActivityObjectActor{..}
          = object
              (catMaybes
                 [("image" .=) <$> _aImage, ("url" .=) <$> _aUrl,
                  ("displayName" .=) <$> _aDisplayName,
                  ("id" .=) <$> _aId,
                  ("verification" .=) <$> _aVerification])

-- | The image representation of the actor.
--
-- /See:/ 'activityActorImage' smart constructor.
newtype ActivityActorImage = ActivityActorImage
    { _aaiUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaiUrl'
activityActorImage
    :: ActivityActorImage
activityActorImage =
    ActivityActorImage
    { _aaiUrl = Nothing
    }

-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
aaiUrl :: Lens' ActivityActorImage (Maybe Text)
aaiUrl = lens _aaiUrl (\ s a -> s{_aaiUrl = a})

instance FromJSON ActivityActorImage where
        parseJSON
          = withObject "ActivityActorImage"
              (\ o -> ActivityActorImage <$> (o .:? "url"))

instance ToJSON ActivityActorImage where
        toJSON ActivityActorImage{..}
          = object (catMaybes [("url" .=) <$> _aaiUrl])

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

instance FromJSON PeopleFeed where
        parseJSON
          = withObject "PeopleFeed"
              (\ o ->
                 PeopleFeed <$>
                   (o .:? "totalItems") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "plus#peopleFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "title"))

instance ToJSON PeopleFeed where
        toJSON PeopleFeed{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _pfTotalItems,
                  ("etag" .=) <$> _pfEtag,
                  ("nextPageToken" .=) <$> _pfNextPageToken,
                  Just ("kind" .= _pfKind), ("items" .=) <$> _pfItems,
                  ("selfLink" .=) <$> _pfSelfLink,
                  ("title" .=) <$> _pfTitle])

-- | If the attachment is a video, the embeddable link.
--
-- /See:/ 'activityObjectAttachmentsEmbed' smart constructor.
data ActivityObjectAttachmentsEmbed = ActivityObjectAttachmentsEmbed
    { _aoaeUrl  :: !(Maybe Text)
    , _aoaeType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsEmbed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaeUrl'
--
-- * 'aoaeType'
activityObjectAttachmentsEmbed
    :: ActivityObjectAttachmentsEmbed
activityObjectAttachmentsEmbed =
    ActivityObjectAttachmentsEmbed
    { _aoaeUrl = Nothing
    , _aoaeType = Nothing
    }

-- | URL of the link.
aoaeUrl :: Lens' ActivityObjectAttachmentsEmbed (Maybe Text)
aoaeUrl = lens _aoaeUrl (\ s a -> s{_aoaeUrl = a})

-- | Media type of the link.
aoaeType :: Lens' ActivityObjectAttachmentsEmbed (Maybe Text)
aoaeType = lens _aoaeType (\ s a -> s{_aoaeType = a})

instance FromJSON ActivityObjectAttachmentsEmbed
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsEmbed"
              (\ o ->
                 ActivityObjectAttachmentsEmbed <$>
                   (o .:? "url") <*> (o .:? "type"))

instance ToJSON ActivityObjectAttachmentsEmbed where
        toJSON ActivityObjectAttachmentsEmbed{..}
          = object
              (catMaybes
                 [("url" .=) <$> _aoaeUrl, ("type" .=) <$> _aoaeType])

-- | The person\'s primary cover image.
--
-- /See:/ 'personCoverCoverPhoto' smart constructor.
data PersonCoverCoverPhoto = PersonCoverCoverPhoto
    { _pccpHeight :: !(Maybe Int32)
    , _pccpUrl    :: !(Maybe Text)
    , _pccpWidth  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonCoverCoverPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccpHeight'
--
-- * 'pccpUrl'
--
-- * 'pccpWidth'
personCoverCoverPhoto
    :: PersonCoverCoverPhoto
personCoverCoverPhoto =
    PersonCoverCoverPhoto
    { _pccpHeight = Nothing
    , _pccpUrl = Nothing
    , _pccpWidth = Nothing
    }

-- | The height of the image.
pccpHeight :: Lens' PersonCoverCoverPhoto (Maybe Int32)
pccpHeight
  = lens _pccpHeight (\ s a -> s{_pccpHeight = a})

-- | The URL of the image.
pccpUrl :: Lens' PersonCoverCoverPhoto (Maybe Text)
pccpUrl = lens _pccpUrl (\ s a -> s{_pccpUrl = a})

-- | The width of the image.
pccpWidth :: Lens' PersonCoverCoverPhoto (Maybe Int32)
pccpWidth
  = lens _pccpWidth (\ s a -> s{_pccpWidth = a})

instance FromJSON PersonCoverCoverPhoto where
        parseJSON
          = withObject "PersonCoverCoverPhoto"
              (\ o ->
                 PersonCoverCoverPhoto <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON PersonCoverCoverPhoto where
        toJSON PersonCoverCoverPhoto{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pccpHeight,
                  ("url" .=) <$> _pccpUrl,
                  ("width" .=) <$> _pccpWidth])

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

instance FromJSON PersonAgeRange where
        parseJSON
          = withObject "PersonAgeRange"
              (\ o ->
                 PersonAgeRange <$> (o .:? "max") <*> (o .:? "min"))

instance ToJSON PersonAgeRange where
        toJSON PersonAgeRange{..}
          = object
              (catMaybes
                 [("max" .=) <$> _parMax, ("min" .=) <$> _parMin])

-- | Comments in reply to this activity.
--
-- /See:/ 'activityObjectReplies' smart constructor.
data ActivityObjectReplies = ActivityObjectReplies
    { _aorTotalItems :: !(Maybe Word32)
    , _aorSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aorTotalItems'
--
-- * 'aorSelfLink'
activityObjectReplies
    :: ActivityObjectReplies
activityObjectReplies =
    ActivityObjectReplies
    { _aorTotalItems = Nothing
    , _aorSelfLink = Nothing
    }

-- | Total number of comments on this activity.
aorTotalItems :: Lens' ActivityObjectReplies (Maybe Word32)
aorTotalItems
  = lens _aorTotalItems
      (\ s a -> s{_aorTotalItems = a})

-- | The URL for the collection of comments in reply to this activity.
aorSelfLink :: Lens' ActivityObjectReplies (Maybe Text)
aorSelfLink
  = lens _aorSelfLink (\ s a -> s{_aorSelfLink = a})

instance FromJSON ActivityObjectReplies where
        parseJSON
          = withObject "ActivityObjectReplies"
              (\ o ->
                 ActivityObjectReplies <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON ActivityObjectReplies where
        toJSON ActivityObjectReplies{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _aorTotalItems,
                  ("selfLink" .=) <$> _aorSelfLink])

-- | The image representation of the original actor.
--
-- /See:/ 'activityObjectActorImage' smart constructor.
newtype ActivityObjectActorImage = ActivityObjectActorImage
    { _actUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actUrl'
activityObjectActorImage
    :: ActivityObjectActorImage
activityObjectActorImage =
    ActivityObjectActorImage
    { _actUrl = Nothing
    }

-- | A URL that points to a thumbnail photo of the original actor.
actUrl :: Lens' ActivityObjectActorImage (Maybe Text)
actUrl = lens _actUrl (\ s a -> s{_actUrl = a})

instance FromJSON ActivityObjectActorImage where
        parseJSON
          = withObject "ActivityObjectActorImage"
              (\ o -> ActivityObjectActorImage <$> (o .:? "url"))

instance ToJSON ActivityObjectActorImage where
        toJSON ActivityObjectActorImage{..}
          = object (catMaybes [("url" .=) <$> _actUrl])

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

instance FromJSON ItemScope where
        parseJSON
          = withObject "ItemScope"
              (\ o ->
                 ItemScope <$>
                   (o .:? "givenName") <*> (o .:? "contentSize") <*>
                     (o .:? "thumbnail")
                     <*> (o .:? "tickerSymbol")
                     <*> (o .:? "height")
                     <*> (o .:? "thumbnailUrl")
                     <*> (o .:? "image")
                     <*> (o .:? "streetAddress")
                     <*> (o .:? "worstRating")
                     <*> (o .:? "location")
                     <*> (o .:? "attendees" .!= mempty)
                     <*> (o .:? "text")
                     <*> (o .:? "kind" .!= "plus#itemScope")
                     <*> (o .:? "latitude")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "endDate")
                     <*> (o .:? "associated_media" .!= mempty)
                     <*> (o .:? "playerType")
                     <*> (o .:? "url")
                     <*> (o .:? "width")
                     <*> (o .:? "caption")
                     <*> (o .:? "address")
                     <*> (o .:? "addressCountry")
                     <*> (o .:? "postOfficeBoxNumber")
                     <*> (o .:? "additionalName" .!= mempty)
                     <*> (o .:? "familyName")
                     <*> (o .:? "dateCreated")
                     <*> (o .:? "ratingValue")
                     <*> (o .:? "datePublished")
                     <*> (o .:? "startDate")
                     <*> (o .:? "gender")
                     <*> (o .:? "name")
                     <*> (o .:? "bestRating")
                     <*> (o .:? "addressLocality")
                     <*> (o .:? "partOfTVSeries")
                     <*> (o .:? "contentUrl")
                     <*> (o .:? "byArtist")
                     <*> (o .:? "about")
                     <*> (o .:? "reviewRating")
                     <*> (o .:? "dateModified")
                     <*> (o .:? "author" .!= mempty)
                     <*> (o .:? "geo")
                     <*> (o .:? "id")
                     <*> (o .:? "performers" .!= mempty)
                     <*> (o .:? "attendeeCount")
                     <*> (o .:? "inAlbum")
                     <*> (o .:? "embedUrl")
                     <*> (o .:? "type")
                     <*> (o .:? "contributor" .!= mempty)
                     <*> (o .:? "longitude")
                     <*> (o .:? "duration")
                     <*> (o .:? "addressRegion")
                     <*> (o .:? "audio")
                     <*> (o .:? "description")
                     <*> (o .:? "birthDate"))

instance ToJSON ItemScope where
        toJSON ItemScope{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _isGivenName,
                  ("contentSize" .=) <$> _isContentSize,
                  ("thumbnail" .=) <$> _isThumbnail,
                  ("tickerSymbol" .=) <$> _isTickerSymbol,
                  ("height" .=) <$> _isHeight,
                  ("thumbnailUrl" .=) <$> _isThumbnailUrl,
                  ("image" .=) <$> _isImage,
                  ("streetAddress" .=) <$> _isStreetAddress,
                  ("worstRating" .=) <$> _isWorstRating,
                  ("location" .=) <$> _isLocation,
                  ("attendees" .=) <$> _isAttendees,
                  ("text" .=) <$> _isText, Just ("kind" .= _isKind),
                  ("latitude" .=) <$> _isLatitude,
                  ("postalCode" .=) <$> _isPostalCode,
                  ("endDate" .=) <$> _isEndDate,
                  ("associated_media" .=) <$> _isAssociatedMedia,
                  ("playerType" .=) <$> _isPlayerType,
                  ("url" .=) <$> _isUrl, ("width" .=) <$> _isWidth,
                  ("caption" .=) <$> _isCaption,
                  ("address" .=) <$> _isAddress,
                  ("addressCountry" .=) <$> _isAddressCountry,
                  ("postOfficeBoxNumber" .=) <$>
                    _isPostOfficeBoxNumber,
                  ("additionalName" .=) <$> _isAdditionalName,
                  ("familyName" .=) <$> _isFamilyName,
                  ("dateCreated" .=) <$> _isDateCreated,
                  ("ratingValue" .=) <$> _isRatingValue,
                  ("datePublished" .=) <$> _isDatePublished,
                  ("startDate" .=) <$> _isStartDate,
                  ("gender" .=) <$> _isGender, ("name" .=) <$> _isName,
                  ("bestRating" .=) <$> _isBestRating,
                  ("addressLocality" .=) <$> _isAddressLocality,
                  ("partOfTVSeries" .=) <$> _isPartOfTVSeries,
                  ("contentUrl" .=) <$> _isContentUrl,
                  ("byArtist" .=) <$> _isByArtist,
                  ("about" .=) <$> _isAbout,
                  ("reviewRating" .=) <$> _isReviewRating,
                  ("dateModified" .=) <$> _isDateModified,
                  ("author" .=) <$> _isAuthor, ("geo" .=) <$> _isGeo,
                  ("id" .=) <$> _isId,
                  ("performers" .=) <$> _isPerformers,
                  ("attendeeCount" .=) <$> _isAttendeeCount,
                  ("inAlbum" .=) <$> _isInAlbum,
                  ("embedUrl" .=) <$> _isEmbedUrl,
                  ("type" .=) <$> _isType,
                  ("contributor" .=) <$> _isContributor,
                  ("longitude" .=) <$> _isLongitude,
                  ("duration" .=) <$> _isDuration,
                  ("addressRegion" .=) <$> _isAddressRegion,
                  ("audio" .=) <$> _isAudio,
                  ("description" .=) <$> _isDescription,
                  ("birthDate" .=) <$> _isBirthDate])

-- | Verification status of actor.
--
-- /See:/ 'activityActorVerification' smart constructor.
newtype ActivityActorVerification = ActivityActorVerification
    { _aavAdHocVerified :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActorVerification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aavAdHocVerified'
activityActorVerification
    :: ActivityActorVerification
activityActorVerification =
    ActivityActorVerification
    { _aavAdHocVerified = Nothing
    }

-- | Verification for one-time or manual processes.
aavAdHocVerified :: Lens' ActivityActorVerification (Maybe Text)
aavAdHocVerified
  = lens _aavAdHocVerified
      (\ s a -> s{_aavAdHocVerified = a})

instance FromJSON ActivityActorVerification where
        parseJSON
          = withObject "ActivityActorVerification"
              (\ o ->
                 ActivityActorVerification <$>
                   (o .:? "adHocVerified"))

instance ToJSON ActivityActorVerification where
        toJSON ActivityActorVerification{..}
          = object
              (catMaybes
                 [("adHocVerified" .=) <$> _aavAdHocVerified])

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

instance FromJSON ActivityFeed where
        parseJSON
          = withObject "ActivityFeed"
              (\ o ->
                 ActivityFeed <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "plus#activityFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title"))

instance ToJSON ActivityFeed where
        toJSON ActivityFeed{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _afEtag,
                  ("nextPageToken" .=) <$> _afNextPageToken,
                  ("nextLink" .=) <$> _afNextLink,
                  Just ("kind" .= _afKind), ("items" .=) <$> _afItems,
                  ("selfLink" .=) <$> _afSelfLink, ("id" .=) <$> _afId,
                  ("updated" .=) <$> _afUpdated,
                  ("title" .=) <$> _afTitle])

--
-- /See:/ 'personPlacesLived' smart constructor.
data PersonPlacesLived = PersonPlacesLived
    { _pplValue   :: !(Maybe Text)
    , _pplPrimary :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonPlacesLived' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pplValue'
--
-- * 'pplPrimary'
personPlacesLived
    :: PersonPlacesLived
personPlacesLived =
    PersonPlacesLived
    { _pplValue = Nothing
    , _pplPrimary = Nothing
    }

-- | A place where this person has lived. For example: \"Seattle, WA\",
-- \"Near Toronto\".
pplValue :: Lens' PersonPlacesLived (Maybe Text)
pplValue = lens _pplValue (\ s a -> s{_pplValue = a})

-- | If \"true\", this place of residence is this person\'s primary
-- residence.
pplPrimary :: Lens' PersonPlacesLived (Maybe Bool)
pplPrimary
  = lens _pplPrimary (\ s a -> s{_pplPrimary = a})

instance FromJSON PersonPlacesLived where
        parseJSON
          = withObject "PersonPlacesLived"
              (\ o ->
                 PersonPlacesLived <$>
                   (o .:? "value") <*> (o .:? "primary"))

instance ToJSON PersonPlacesLived where
        toJSON PersonPlacesLived{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pplValue,
                  ("primary" .=) <$> _pplPrimary])

-- | Verification status of actor.
--
-- /See:/ 'activityObjectActorVerification' smart constructor.
newtype ActivityObjectActorVerification = ActivityObjectActorVerification
    { _aoavAdHocVerified :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectActorVerification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoavAdHocVerified'
activityObjectActorVerification
    :: ActivityObjectActorVerification
activityObjectActorVerification =
    ActivityObjectActorVerification
    { _aoavAdHocVerified = Nothing
    }

-- | Verification for one-time or manual processes.
aoavAdHocVerified :: Lens' ActivityObjectActorVerification (Maybe Text)
aoavAdHocVerified
  = lens _aoavAdHocVerified
      (\ s a -> s{_aoavAdHocVerified = a})

instance FromJSON ActivityObjectActorVerification
         where
        parseJSON
          = withObject "ActivityObjectActorVerification"
              (\ o ->
                 ActivityObjectActorVerification <$>
                   (o .:? "adHocVerified"))

instance ToJSON ActivityObjectActorVerification where
        toJSON ActivityObjectActorVerification{..}
          = object
              (catMaybes
                 [("adHocVerified" .=) <$> _aoavAdHocVerified])

--
-- /See:/ 'plusACLentryResource' smart constructor.
data PlusACLentryResource = PlusACLentryResource
    { _parDisplayName :: !(Maybe Text)
    , _parId          :: !(Maybe Text)
    , _parType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlusACLentryResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parDisplayName'
--
-- * 'parId'
--
-- * 'parType'
plusACLentryResource
    :: PlusACLentryResource
plusACLentryResource =
    PlusACLentryResource
    { _parDisplayName = Nothing
    , _parId = Nothing
    , _parType = Nothing
    }

-- | A descriptive name for this entry. Suitable for display.
parDisplayName :: Lens' PlusACLentryResource (Maybe Text)
parDisplayName
  = lens _parDisplayName
      (\ s a -> s{_parDisplayName = a})

-- | The ID of the entry. For entries of type \"person\" or \"circle\", this
-- is the ID of the resource. For other types, this property is not set.
parId :: Lens' PlusACLentryResource (Maybe Text)
parId = lens _parId (\ s a -> s{_parId = a})

-- | The type of entry describing to whom access is granted. Possible values
-- are: - \"person\" - Access to an individual. - \"circle\" - Access to
-- members of a circle. - \"myCircles\" - Access to members of all the
-- person\'s circles. - \"extendedCircles\" - Access to members of all the
-- person\'s circles, plus all of the people in their circles. - \"domain\"
-- - Access to members of the person\'s Google Apps domain. - \"public\" -
-- Access to anyone on the web.
parType :: Lens' PlusACLentryResource (Maybe Text)
parType = lens _parType (\ s a -> s{_parType = a})

instance FromJSON PlusACLentryResource where
        parseJSON
          = withObject "PlusACLentryResource"
              (\ o ->
                 PlusACLentryResource <$>
                   (o .:? "displayName") <*> (o .:? "id") <*>
                     (o .:? "type"))

instance ToJSON PlusACLentryResource where
        toJSON PlusACLentryResource{..}
          = object
              (catMaybes
                 [("displayName" .=) <$> _parDisplayName,
                  ("id" .=) <$> _parId, ("type" .=) <$> _parType])

--
-- /See:/ 'personEmails' smart constructor.
data PersonEmails = PersonEmails
    { _peValue :: !(Maybe Text)
    , _peType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonEmails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peValue'
--
-- * 'peType'
personEmails
    :: PersonEmails
personEmails =
    PersonEmails
    { _peValue = Nothing
    , _peType = Nothing
    }

-- | The email address.
peValue :: Lens' PersonEmails (Maybe Text)
peValue = lens _peValue (\ s a -> s{_peValue = a})

-- | The type of address. Possible values include, but are not limited to,
-- the following values: - \"account\" - Google account email address. -
-- \"home\" - Home email address. - \"work\" - Work email address. -
-- \"other\" - Other.
peType :: Lens' PersonEmails (Maybe Text)
peType = lens _peType (\ s a -> s{_peType = a})

instance FromJSON PersonEmails where
        parseJSON
          = withObject "PersonEmails"
              (\ o ->
                 PersonEmails <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON PersonEmails where
        toJSON PersonEmails{..}
          = object
              (catMaybes
                 [("value" .=) <$> _peValue, ("type" .=) <$> _peType])

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

instance FromJSON PersonImage where
        parseJSON
          = withObject "PersonImage"
              (\ o ->
                 PersonImage <$>
                   (o .:? "url") <*> (o .:? "isDefault"))

instance ToJSON PersonImage where
        toJSON PersonImage{..}
          = object
              (catMaybes
                 [("url" .=) <$> _piUrl,
                  ("isDefault" .=) <$> _piIsDefault])

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

instance FromJSON PersonName where
        parseJSON
          = withObject "PersonName"
              (\ o ->
                 PersonName <$>
                   (o .:? "givenName") <*> (o .:? "middleName") <*>
                     (o .:? "formatted")
                     <*> (o .:? "honorificPrefix")
                     <*> (o .:? "familyName")
                     <*> (o .:? "honorificSuffix"))

instance ToJSON PersonName where
        toJSON PersonName{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _pnGivenName,
                  ("middleName" .=) <$> _pnMiddleName,
                  ("formatted" .=) <$> _pnFormatted,
                  ("honorificPrefix" .=) <$> _pnHonorificPrefix,
                  ("familyName" .=) <$> _pnFamilyName,
                  ("honorificSuffix" .=) <$> _pnHonorificSuffix])

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

instance FromJSON PlaceAddress where
        parseJSON
          = withObject "PlaceAddress"
              (\ o -> PlaceAddress <$> (o .:? "formatted"))

instance ToJSON PlaceAddress where
        toJSON PlaceAddress{..}
          = object
              (catMaybes [("formatted" .=) <$> _paFormatted])

--
-- /See:/ 'activityObjectAttachmentsThumbnails' smart constructor.
data ActivityObjectAttachmentsThumbnails = ActivityObjectAttachmentsThumbnails
    { _aoatImage       :: !(Maybe ActivityObjectAttachmentsThumbnailsImage)
    , _aoatUrl         :: !(Maybe Text)
    , _aoatDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsThumbnails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoatImage'
--
-- * 'aoatUrl'
--
-- * 'aoatDescription'
activityObjectAttachmentsThumbnails
    :: ActivityObjectAttachmentsThumbnails
activityObjectAttachmentsThumbnails =
    ActivityObjectAttachmentsThumbnails
    { _aoatImage = Nothing
    , _aoatUrl = Nothing
    , _aoatDescription = Nothing
    }

-- | Image resource.
aoatImage :: Lens' ActivityObjectAttachmentsThumbnails (Maybe ActivityObjectAttachmentsThumbnailsImage)
aoatImage
  = lens _aoatImage (\ s a -> s{_aoatImage = a})

-- | URL of the webpage containing the image.
aoatUrl :: Lens' ActivityObjectAttachmentsThumbnails (Maybe Text)
aoatUrl = lens _aoatUrl (\ s a -> s{_aoatUrl = a})

-- | Potential name of the thumbnail.
aoatDescription :: Lens' ActivityObjectAttachmentsThumbnails (Maybe Text)
aoatDescription
  = lens _aoatDescription
      (\ s a -> s{_aoatDescription = a})

instance FromJSON ActivityObjectAttachmentsThumbnails
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsThumbnails"
              (\ o ->
                 ActivityObjectAttachmentsThumbnails <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "description"))

instance ToJSON ActivityObjectAttachmentsThumbnails
         where
        toJSON ActivityObjectAttachmentsThumbnails{..}
          = object
              (catMaybes
                 [("image" .=) <$> _aoatImage,
                  ("url" .=) <$> _aoatUrl,
                  ("description" .=) <$> _aoatDescription])

--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aaAccess          :: !(Maybe (Maybe ACL))
    , _aaPlaceName       :: !(Maybe Text)
    , _aaEtag            :: !(Maybe Text)
    , _aaAnnotation      :: !(Maybe Text)
    , _aaLocation        :: !(Maybe (Maybe Place))
    , _aaGeocode         :: !(Maybe Text)
    , _aaKind            :: !Text
    , _aaRadius          :: !(Maybe Text)
    , _aaPublished       :: !(Maybe UTCTime)
    , _aaUrl             :: !(Maybe Text)
    , _aaActor           :: !(Maybe ActivityActor)
    , _aaAddress         :: !(Maybe Text)
    , _aaObject          :: !(Maybe ActivityObject)
    , _aaId              :: !(Maybe Text)
    , _aaUpdated         :: !(Maybe UTCTime)
    , _aaTitle           :: !(Maybe Text)
    , _aaVerb            :: !(Maybe Text)
    , _aaCrosspostSource :: !(Maybe Text)
    , _aaPlaceId         :: !(Maybe Text)
    , _aaProvider        :: !(Maybe ActivityProvider)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaAccess'
--
-- * 'aaPlaceName'
--
-- * 'aaEtag'
--
-- * 'aaAnnotation'
--
-- * 'aaLocation'
--
-- * 'aaGeocode'
--
-- * 'aaKind'
--
-- * 'aaRadius'
--
-- * 'aaPublished'
--
-- * 'aaUrl'
--
-- * 'aaActor'
--
-- * 'aaAddress'
--
-- * 'aaObject'
--
-- * 'aaId'
--
-- * 'aaUpdated'
--
-- * 'aaTitle'
--
-- * 'aaVerb'
--
-- * 'aaCrosspostSource'
--
-- * 'aaPlaceId'
--
-- * 'aaProvider'
activity
    :: Activity
activity =
    Activity
    { _aaAccess = Nothing
    , _aaPlaceName = Nothing
    , _aaEtag = Nothing
    , _aaAnnotation = Nothing
    , _aaLocation = Nothing
    , _aaGeocode = Nothing
    , _aaKind = "plus#activity"
    , _aaRadius = Nothing
    , _aaPublished = Nothing
    , _aaUrl = Nothing
    , _aaActor = Nothing
    , _aaAddress = Nothing
    , _aaObject = Nothing
    , _aaId = Nothing
    , _aaUpdated = Nothing
    , _aaTitle = Nothing
    , _aaVerb = Nothing
    , _aaCrosspostSource = Nothing
    , _aaPlaceId = Nothing
    , _aaProvider = Nothing
    }

-- | Identifies who has access to see this activity.
aaAccess :: Lens' Activity (Maybe (Maybe ACL))
aaAccess = lens _aaAccess (\ s a -> s{_aaAccess = a})

-- | Name of the place where this activity occurred.
aaPlaceName :: Lens' Activity (Maybe Text)
aaPlaceName
  = lens _aaPlaceName (\ s a -> s{_aaPlaceName = a})

-- | ETag of this response for caching purposes.
aaEtag :: Lens' Activity (Maybe Text)
aaEtag = lens _aaEtag (\ s a -> s{_aaEtag = a})

-- | Additional content added by the person who shared this activity,
-- applicable only when resharing an activity.
aaAnnotation :: Lens' Activity (Maybe Text)
aaAnnotation
  = lens _aaAnnotation (\ s a -> s{_aaAnnotation = a})

-- | The location where this activity occurred.
aaLocation :: Lens' Activity (Maybe (Maybe Place))
aaLocation
  = lens _aaLocation (\ s a -> s{_aaLocation = a})

-- | Latitude and longitude where this activity occurred. Format is latitude
-- followed by longitude, space separated.
aaGeocode :: Lens' Activity (Maybe Text)
aaGeocode
  = lens _aaGeocode (\ s a -> s{_aaGeocode = a})

-- | Identifies this resource as an activity. Value: \"plus#activity\".
aaKind :: Lens' Activity Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | Radius, in meters, of the region where this activity occurred, centered
-- at the latitude and longitude identified in geocode.
aaRadius :: Lens' Activity (Maybe Text)
aaRadius = lens _aaRadius (\ s a -> s{_aaRadius = a})

-- | The time at which this activity was initially published. Formatted as an
-- RFC 3339 timestamp.
aaPublished :: Lens' Activity (Maybe UTCTime)
aaPublished
  = lens _aaPublished (\ s a -> s{_aaPublished = a})

-- | The link to this activity.
aaUrl :: Lens' Activity (Maybe Text)
aaUrl = lens _aaUrl (\ s a -> s{_aaUrl = a})

-- | The person who performed this activity.
aaActor :: Lens' Activity (Maybe ActivityActor)
aaActor = lens _aaActor (\ s a -> s{_aaActor = a})

-- | Street address where this activity occurred.
aaAddress :: Lens' Activity (Maybe Text)
aaAddress
  = lens _aaAddress (\ s a -> s{_aaAddress = a})

-- | The object of this activity.
aaObject :: Lens' Activity (Maybe ActivityObject)
aaObject = lens _aaObject (\ s a -> s{_aaObject = a})

-- | The ID of this activity.
aaId :: Lens' Activity (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | The time at which this activity was last updated. Formatted as an RFC
-- 3339 timestamp.
aaUpdated :: Lens' Activity (Maybe UTCTime)
aaUpdated
  = lens _aaUpdated (\ s a -> s{_aaUpdated = a})

-- | Title of this activity.
aaTitle :: Lens' Activity (Maybe Text)
aaTitle = lens _aaTitle (\ s a -> s{_aaTitle = a})

-- | This activity\'s verb, which indicates the action that was performed.
-- Possible values include, but are not limited to, the following values: -
-- \"post\" - Publish content to the stream. - \"share\" - Reshare an
-- activity.
aaVerb :: Lens' Activity (Maybe Text)
aaVerb = lens _aaVerb (\ s a -> s{_aaVerb = a})

-- | If this activity is a crosspost from another system, this property
-- specifies the ID of the original activity.
aaCrosspostSource :: Lens' Activity (Maybe Text)
aaCrosspostSource
  = lens _aaCrosspostSource
      (\ s a -> s{_aaCrosspostSource = a})

-- | ID of the place where this activity occurred.
aaPlaceId :: Lens' Activity (Maybe Text)
aaPlaceId
  = lens _aaPlaceId (\ s a -> s{_aaPlaceId = a})

-- | The service provider that initially published this activity.
aaProvider :: Lens' Activity (Maybe ActivityProvider)
aaProvider
  = lens _aaProvider (\ s a -> s{_aaProvider = a})

instance FromJSON Activity where
        parseJSON
          = withObject "Activity"
              (\ o ->
                 Activity <$>
                   (o .:? "access") <*> (o .:? "placeName") <*>
                     (o .:? "etag")
                     <*> (o .:? "annotation")
                     <*> (o .:? "location")
                     <*> (o .:? "geocode")
                     <*> (o .:? "kind" .!= "plus#activity")
                     <*> (o .:? "radius")
                     <*> (o .:? "published")
                     <*> (o .:? "url")
                     <*> (o .:? "actor")
                     <*> (o .:? "address")
                     <*> (o .:? "object")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title")
                     <*> (o .:? "verb")
                     <*> (o .:? "crosspostSource")
                     <*> (o .:? "placeId")
                     <*> (o .:? "provider"))

instance ToJSON Activity where
        toJSON Activity{..}
          = object
              (catMaybes
                 [("access" .=) <$> _aaAccess,
                  ("placeName" .=) <$> _aaPlaceName,
                  ("etag" .=) <$> _aaEtag,
                  ("annotation" .=) <$> _aaAnnotation,
                  ("location" .=) <$> _aaLocation,
                  ("geocode" .=) <$> _aaGeocode,
                  Just ("kind" .= _aaKind),
                  ("radius" .=) <$> _aaRadius,
                  ("published" .=) <$> _aaPublished,
                  ("url" .=) <$> _aaUrl, ("actor" .=) <$> _aaActor,
                  ("address" .=) <$> _aaAddress,
                  ("object" .=) <$> _aaObject, ("id" .=) <$> _aaId,
                  ("updated" .=) <$> _aaUpdated,
                  ("title" .=) <$> _aaTitle, ("verb" .=) <$> _aaVerb,
                  ("crosspostSource" .=) <$> _aaCrosspostSource,
                  ("placeId" .=) <$> _aaPlaceId,
                  ("provider" .=) <$> _aaProvider])

-- | The cover photo content.
--
-- /See:/ 'personCover' smart constructor.
data PersonCover = PersonCover
    { _pcLayout     :: !(Maybe Text)
    , _pcCoverInfo  :: !(Maybe PersonCoverCoverInfo)
    , _pcCoverPhoto :: !(Maybe PersonCoverCoverPhoto)
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
pcCoverInfo :: Lens' PersonCover (Maybe PersonCoverCoverInfo)
pcCoverInfo
  = lens _pcCoverInfo (\ s a -> s{_pcCoverInfo = a})

-- | The person\'s primary cover image.
pcCoverPhoto :: Lens' PersonCover (Maybe PersonCoverCoverPhoto)
pcCoverPhoto
  = lens _pcCoverPhoto (\ s a -> s{_pcCoverPhoto = a})

instance FromJSON PersonCover where
        parseJSON
          = withObject "PersonCover"
              (\ o ->
                 PersonCover <$>
                   (o .:? "layout") <*> (o .:? "coverInfo") <*>
                     (o .:? "coverPhoto"))

instance ToJSON PersonCover where
        toJSON PersonCover{..}
          = object
              (catMaybes
                 [("layout" .=) <$> _pcLayout,
                  ("coverInfo" .=) <$> _pcCoverInfo,
                  ("coverPhoto" .=) <$> _pcCoverPhoto])

--
-- /See:/ 'place' smart constructor.
data Place = Place
    { _plaKind        :: !Text
    , _plaAddress     :: !(Maybe PlaceAddress)
    , _plaDisplayName :: !(Maybe Text)
    , _plaId          :: !(Maybe Text)
    , _plaPosition    :: !(Maybe PlacePosition)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Place' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaKind'
--
-- * 'plaAddress'
--
-- * 'plaDisplayName'
--
-- * 'plaId'
--
-- * 'plaPosition'
place
    :: Place
place =
    Place
    { _plaKind = "plus#place"
    , _plaAddress = Nothing
    , _plaDisplayName = Nothing
    , _plaId = Nothing
    , _plaPosition = Nothing
    }

-- | Identifies this resource as a place. Value: \"plus#place\".
plaKind :: Lens' Place Text
plaKind = lens _plaKind (\ s a -> s{_plaKind = a})

-- | The physical address of the place.
plaAddress :: Lens' Place (Maybe PlaceAddress)
plaAddress
  = lens _plaAddress (\ s a -> s{_plaAddress = a})

-- | The display name of the place.
plaDisplayName :: Lens' Place (Maybe Text)
plaDisplayName
  = lens _plaDisplayName
      (\ s a -> s{_plaDisplayName = a})

-- | The id of the place.
plaId :: Lens' Place (Maybe Text)
plaId = lens _plaId (\ s a -> s{_plaId = a})

-- | The position of the place.
plaPosition :: Lens' Place (Maybe PlacePosition)
plaPosition
  = lens _plaPosition (\ s a -> s{_plaPosition = a})

instance FromJSON Place where
        parseJSON
          = withObject "Place"
              (\ o ->
                 Place <$>
                   (o .:? "kind" .!= "plus#place") <*> (o .:? "address")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "position"))

instance ToJSON Place where
        toJSON Place{..}
          = object
              (catMaybes
                 [Just ("kind" .= _plaKind),
                  ("address" .=) <$> _plaAddress,
                  ("displayName" .=) <$> _plaDisplayName,
                  ("id" .=) <$> _plaId,
                  ("position" .=) <$> _plaPosition])

-- | Extra information about the cover photo.
--
-- /See:/ 'personCoverCoverInfo' smart constructor.
data PersonCoverCoverInfo = PersonCoverCoverInfo
    { _pcciTopImageOffset  :: !(Maybe Int32)
    , _pcciLeftImageOffset :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonCoverCoverInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcciTopImageOffset'
--
-- * 'pcciLeftImageOffset'
personCoverCoverInfo
    :: PersonCoverCoverInfo
personCoverCoverInfo =
    PersonCoverCoverInfo
    { _pcciTopImageOffset = Nothing
    , _pcciLeftImageOffset = Nothing
    }

-- | The difference between the top position of the cover image and the
-- actual displayed cover image. Only valid for banner layout.
pcciTopImageOffset :: Lens' PersonCoverCoverInfo (Maybe Int32)
pcciTopImageOffset
  = lens _pcciTopImageOffset
      (\ s a -> s{_pcciTopImageOffset = a})

-- | The difference between the left position of the cover image and the
-- actual displayed cover image. Only valid for banner layout.
pcciLeftImageOffset :: Lens' PersonCoverCoverInfo (Maybe Int32)
pcciLeftImageOffset
  = lens _pcciLeftImageOffset
      (\ s a -> s{_pcciLeftImageOffset = a})

instance FromJSON PersonCoverCoverInfo where
        parseJSON
          = withObject "PersonCoverCoverInfo"
              (\ o ->
                 PersonCoverCoverInfo <$>
                   (o .:? "topImageOffset") <*>
                     (o .:? "leftImageOffset"))

instance ToJSON PersonCoverCoverInfo where
        toJSON PersonCoverCoverInfo{..}
          = object
              (catMaybes
                 [("topImageOffset" .=) <$> _pcciTopImageOffset,
                  ("leftImageOffset" .=) <$> _pcciLeftImageOffset])

-- | People who reshared this activity.
--
-- /See:/ 'activityObjectResharers' smart constructor.
data ActivityObjectResharers = ActivityObjectResharers
    { _aTotalItems :: !(Maybe Word32)
    , _aSelfLink   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectResharers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTotalItems'
--
-- * 'aSelfLink'
activityObjectResharers
    :: ActivityObjectResharers
activityObjectResharers =
    ActivityObjectResharers
    { _aTotalItems = Nothing
    , _aSelfLink = Nothing
    }

-- | Total number of people who reshared this activity.
aTotalItems :: Lens' ActivityObjectResharers (Maybe Word32)
aTotalItems
  = lens _aTotalItems (\ s a -> s{_aTotalItems = a})

-- | The URL for the collection of resharers.
aSelfLink :: Lens' ActivityObjectResharers (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

instance FromJSON ActivityObjectResharers where
        parseJSON
          = withObject "ActivityObjectResharers"
              (\ o ->
                 ActivityObjectResharers <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON ActivityObjectResharers where
        toJSON ActivityObjectResharers{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _aTotalItems,
                  ("selfLink" .=) <$> _aSelfLink])

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
    , _cInReplyTo :: !(Maybe [CommentInReplyTo])
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
cInReplyTo :: Lens' Comment [CommentInReplyTo]
cInReplyTo
  = lens _cInReplyTo (\ s a -> s{_cInReplyTo = a}) .
      _Default
      . _Coerce

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment <$>
                   (o .:? "etag") <*> (o .:? "plusoners") <*>
                     (o .:? "kind" .!= "plus#comment")
                     <*> (o .:? "published")
                     <*> (o .:? "actor")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "object")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "verb" .!= "post")
                     <*> (o .:? "inReplyTo" .!= mempty))

instance ToJSON Comment where
        toJSON Comment{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cEtag,
                  ("plusoners" .=) <$> _cPlusoners,
                  Just ("kind" .= _cKind),
                  ("published" .=) <$> _cPublished,
                  ("actor" .=) <$> _cActor,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("object" .=) <$> _cObject, ("id" .=) <$> _cId,
                  ("updated" .=) <$> _cUpdated,
                  Just ("verb" .= _cVerb),
                  ("inReplyTo" .=) <$> _cInReplyTo])

-- | The person who performed this activity.
--
-- /See:/ 'activityActor' smart constructor.
data ActivityActor = ActivityActor
    { _aaaImage        :: !(Maybe ActivityActorImage)
    , _aaaUrl          :: !(Maybe Text)
    , _aaaName         :: !(Maybe ActivityActorName)
    , _aaaDisplayName  :: !(Maybe Text)
    , _aaaId           :: !(Maybe Text)
    , _aaaVerification :: !(Maybe ActivityActorVerification)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaaImage'
--
-- * 'aaaUrl'
--
-- * 'aaaName'
--
-- * 'aaaDisplayName'
--
-- * 'aaaId'
--
-- * 'aaaVerification'
activityActor
    :: ActivityActor
activityActor =
    ActivityActor
    { _aaaImage = Nothing
    , _aaaUrl = Nothing
    , _aaaName = Nothing
    , _aaaDisplayName = Nothing
    , _aaaId = Nothing
    , _aaaVerification = Nothing
    }

-- | The image representation of the actor.
aaaImage :: Lens' ActivityActor (Maybe ActivityActorImage)
aaaImage = lens _aaaImage (\ s a -> s{_aaaImage = a})

-- | The link to the actor\'s Google profile.
aaaUrl :: Lens' ActivityActor (Maybe Text)
aaaUrl = lens _aaaUrl (\ s a -> s{_aaaUrl = a})

-- | An object representation of the individual components of name.
aaaName :: Lens' ActivityActor (Maybe ActivityActorName)
aaaName = lens _aaaName (\ s a -> s{_aaaName = a})

-- | The name of the actor, suitable for display.
aaaDisplayName :: Lens' ActivityActor (Maybe Text)
aaaDisplayName
  = lens _aaaDisplayName
      (\ s a -> s{_aaaDisplayName = a})

-- | The ID of the actor\'s Person resource.
aaaId :: Lens' ActivityActor (Maybe Text)
aaaId = lens _aaaId (\ s a -> s{_aaaId = a})

-- | Verification status of actor.
aaaVerification :: Lens' ActivityActor (Maybe ActivityActorVerification)
aaaVerification
  = lens _aaaVerification
      (\ s a -> s{_aaaVerification = a})

instance FromJSON ActivityActor where
        parseJSON
          = withObject "ActivityActor"
              (\ o ->
                 ActivityActor <$>
                   (o .:? "image") <*> (o .:? "url") <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "verification"))

instance ToJSON ActivityActor where
        toJSON ActivityActor{..}
          = object
              (catMaybes
                 [("image" .=) <$> _aaaImage, ("url" .=) <$> _aaaUrl,
                  ("name" .=) <$> _aaaName,
                  ("displayName" .=) <$> _aaaDisplayName,
                  ("id" .=) <$> _aaaId,
                  ("verification" .=) <$> _aaaVerification])

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

instance FromJSON CommentObject where
        parseJSON
          = withObject "CommentObject"
              (\ o ->
                 CommentObject <$>
                   (o .:? "objectType" .!= "comment") <*>
                     (o .:? "originalContent")
                     <*> (o .:? "content"))

instance ToJSON CommentObject where
        toJSON CommentObject{..}
          = object
              (catMaybes
                 [Just ("objectType" .= _coObjectType),
                  ("originalContent" .=) <$> _coOriginalContent,
                  ("content" .=) <$> _coContent])

-- | The full image URL for photo attachments.
--
-- /See:/ 'activityObjectAttachmentsFullImage' smart constructor.
data ActivityObjectAttachmentsFullImage = ActivityObjectAttachmentsFullImage
    { _aoafiHeight :: !(Maybe Word32)
    , _aoafiUrl    :: !(Maybe Text)
    , _aoafiWidth  :: !(Maybe Word32)
    , _aoafiType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsFullImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoafiHeight'
--
-- * 'aoafiUrl'
--
-- * 'aoafiWidth'
--
-- * 'aoafiType'
activityObjectAttachmentsFullImage
    :: ActivityObjectAttachmentsFullImage
activityObjectAttachmentsFullImage =
    ActivityObjectAttachmentsFullImage
    { _aoafiHeight = Nothing
    , _aoafiUrl = Nothing
    , _aoafiWidth = Nothing
    , _aoafiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aoafiHeight :: Lens' ActivityObjectAttachmentsFullImage (Maybe Word32)
aoafiHeight
  = lens _aoafiHeight (\ s a -> s{_aoafiHeight = a})

-- | URL of the image.
aoafiUrl :: Lens' ActivityObjectAttachmentsFullImage (Maybe Text)
aoafiUrl = lens _aoafiUrl (\ s a -> s{_aoafiUrl = a})

-- | The width, in pixels, of the linked resource.
aoafiWidth :: Lens' ActivityObjectAttachmentsFullImage (Maybe Word32)
aoafiWidth
  = lens _aoafiWidth (\ s a -> s{_aoafiWidth = a})

-- | Media type of the link.
aoafiType :: Lens' ActivityObjectAttachmentsFullImage (Maybe Text)
aoafiType
  = lens _aoafiType (\ s a -> s{_aoafiType = a})

instance FromJSON ActivityObjectAttachmentsFullImage
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsFullImage"
              (\ o ->
                 ActivityObjectAttachmentsFullImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON ActivityObjectAttachmentsFullImage
         where
        toJSON ActivityObjectAttachmentsFullImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoafiHeight,
                  ("url" .=) <$> _aoafiUrl,
                  ("width" .=) <$> _aoafiWidth,
                  ("type" .=) <$> _aoafiType])

--
-- /See:/ 'aCL' smart constructor.
data ACL = ACL
    { _aclKind        :: !Text
    , _aclItems       :: !(Maybe [Maybe PlusACLentryResource])
    , _aclDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclKind'
--
-- * 'aclItems'
--
-- * 'aclDescription'
aCL
    :: ACL
aCL =
    ACL
    { _aclKind = "plus#acl"
    , _aclItems = Nothing
    , _aclDescription = Nothing
    }

-- | Identifies this resource as a collection of access controls. Value:
-- \"plus#acl\".
aclKind :: Lens' ACL Text
aclKind = lens _aclKind (\ s a -> s{_aclKind = a})

-- | The list of access entries.
aclItems :: Lens' ACL [Maybe PlusACLentryResource]
aclItems
  = lens _aclItems (\ s a -> s{_aclItems = a}) .
      _Default
      . _Coerce

-- | Description of the access granted, suitable for display.
aclDescription :: Lens' ACL (Maybe Text)
aclDescription
  = lens _aclDescription
      (\ s a -> s{_aclDescription = a})

instance FromJSON ACL where
        parseJSON
          = withObject "ACL"
              (\ o ->
                 ACL <$>
                   (o .:? "kind" .!= "plus#acl") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON ACL where
        toJSON ACL{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aclKind),
                  ("items" .=) <$> _aclItems,
                  ("description" .=) <$> _aclDescription])

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

instance FromJSON MomentsFeed where
        parseJSON
          = withObject "MomentsFeed"
              (\ o ->
                 MomentsFeed <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "plus#momentsFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "updated")
                     <*> (o .:? "title"))

instance ToJSON MomentsFeed where
        toJSON MomentsFeed{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _mfEtag,
                  ("nextPageToken" .=) <$> _mfNextPageToken,
                  ("nextLink" .=) <$> _mfNextLink,
                  Just ("kind" .= _mfKind), ("items" .=) <$> _mfItems,
                  ("selfLink" .=) <$> _mfSelfLink,
                  ("updated" .=) <$> _mfUpdated,
                  ("title" .=) <$> _mfTitle])

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

instance FromJSON CommentFeed where
        parseJSON
          = withObject "CommentFeed"
              (\ o ->
                 CommentFeed <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "plus#commentFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title"))

instance ToJSON CommentFeed where
        toJSON CommentFeed{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cfEtag,
                  ("nextPageToken" .=) <$> _cfNextPageToken,
                  ("nextLink" .=) <$> _cfNextLink,
                  Just ("kind" .= _cfKind), ("items" .=) <$> _cfItems,
                  ("id" .=) <$> _cfId, ("updated" .=) <$> _cfUpdated,
                  ("title" .=) <$> _cfTitle])

-- | Verification status of actor.
--
-- /See:/ 'commentActorVerification' smart constructor.
newtype CommentActorVerification = CommentActorVerification
    { _cavAdHocVerified :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentActorVerification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cavAdHocVerified'
commentActorVerification
    :: CommentActorVerification
commentActorVerification =
    CommentActorVerification
    { _cavAdHocVerified = Nothing
    }

-- | Verification for one-time or manual processes.
cavAdHocVerified :: Lens' CommentActorVerification (Maybe Text)
cavAdHocVerified
  = lens _cavAdHocVerified
      (\ s a -> s{_cavAdHocVerified = a})

instance FromJSON CommentActorVerification where
        parseJSON
          = withObject "CommentActorVerification"
              (\ o ->
                 CommentActorVerification <$> (o .:? "adHocVerified"))

instance ToJSON CommentActorVerification where
        toJSON CommentActorVerification{..}
          = object
              (catMaybes
                 [("adHocVerified" .=) <$> _cavAdHocVerified])

-- | An object representation of the individual components of name.
--
-- /See:/ 'activityActorName' smart constructor.
data ActivityActorName = ActivityActorName
    { _aanGivenName  :: !(Maybe Text)
    , _aanFamilyName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActorName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aanGivenName'
--
-- * 'aanFamilyName'
activityActorName
    :: ActivityActorName
activityActorName =
    ActivityActorName
    { _aanGivenName = Nothing
    , _aanFamilyName = Nothing
    }

-- | The given name (\"first name\") of the actor.
aanGivenName :: Lens' ActivityActorName (Maybe Text)
aanGivenName
  = lens _aanGivenName (\ s a -> s{_aanGivenName = a})

-- | The family name (\"last name\") of the actor.
aanFamilyName :: Lens' ActivityActorName (Maybe Text)
aanFamilyName
  = lens _aanFamilyName
      (\ s a -> s{_aanFamilyName = a})

instance FromJSON ActivityActorName where
        parseJSON
          = withObject "ActivityActorName"
              (\ o ->
                 ActivityActorName <$>
                   (o .:? "givenName") <*> (o .:? "familyName"))

instance ToJSON ActivityActorName where
        toJSON ActivityActorName{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _aanGivenName,
                  ("familyName" .=) <$> _aanFamilyName])

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

-- | The service provider that initially published this activity.
--
-- /See:/ 'activityProvider' smart constructor.
newtype ActivityProvider = ActivityProvider
    { _apTitle :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | If the attachment is a video, the embeddable link.
--
-- /See:/ 'activityObjectAttachmentsItemEmbed' smart constructor.
data ActivityObjectAttachmentsItemEmbed = ActivityObjectAttachmentsItemEmbed
    { _aoaieURL  :: !(Maybe Text)
    , _aoaieType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsItemEmbed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaieURL'
--
-- * 'aoaieType'
activityObjectAttachmentsItemEmbed
    :: ActivityObjectAttachmentsItemEmbed
activityObjectAttachmentsItemEmbed =
    ActivityObjectAttachmentsItemEmbed
    { _aoaieURL = Nothing
    , _aoaieType = Nothing
    }

-- | URL of the link.
aoaieURL :: Lens' ActivityObjectAttachmentsItemEmbed (Maybe Text)
aoaieURL = lens _aoaieURL (\ s a -> s{_aoaieURL = a})

-- | Media type of the link.
aoaieType :: Lens' ActivityObjectAttachmentsItemEmbed (Maybe Text)
aoaieType
  = lens _aoaieType (\ s a -> s{_aoaieType = a})

instance FromJSON ActivityObjectAttachmentsItemEmbed
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsItemEmbed"
              (\ o ->
                 ActivityObjectAttachmentsItemEmbed <$>
                   (o .:? "url") <*> (o .:? "type"))

instance ToJSON ActivityObjectAttachmentsItemEmbed
         where
        toJSON ActivityObjectAttachmentsItemEmbed{..}
          = object
              (catMaybes
                 [("url" .=) <$> _aoaieURL,
                  ("type" .=) <$> _aoaieType])

-- | People who +1\'d this comment.
--
-- /See:/ 'commentPlusoners' smart constructor.
newtype CommentPlusoners = CommentPlusoners
    { _cpTotalItems :: Maybe Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | People who +1\'d this activity.
--
-- /See:/ 'activityObjectPlusoners' smart constructor.
data ActivityObjectPlusoners = ActivityObjectPlusoners
    { _aopTotalItems :: !(Maybe Word32)
    , _aopSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- /See:/ 'personEmailsItem' smart constructor.
data PersonEmailsItem = PersonEmailsItem
    { _peiValue :: !(Maybe Text)
    , _peiType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonEmailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peiValue'
--
-- * 'peiType'
personEmailsItem
    :: PersonEmailsItem
personEmailsItem =
    PersonEmailsItem
    { _peiValue = Nothing
    , _peiType = Nothing
    }

-- | The email address.
peiValue :: Lens' PersonEmailsItem (Maybe Text)
peiValue = lens _peiValue (\ s a -> s{_peiValue = a})

-- | The type of address. Possible values include, but are not limited to,
-- the following values: - \"account\" - Google account email address. -
-- \"home\" - Home email address. - \"work\" - Work email address. -
-- \"other\" - Other.
peiType :: Lens' PersonEmailsItem (Maybe Text)
peiType = lens _peiType (\ s a -> s{_peiType = a})

instance FromJSON PersonEmailsItem where
        parseJSON
          = withObject "PersonEmailsItem"
              (\ o ->
                 PersonEmailsItem <$>
                   (o .:? "value") <*> (o .:? "type"))

instance ToJSON PersonEmailsItem where
        toJSON PersonEmailsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _peiValue,
                  ("type" .=) <$> _peiType])

-- | The image representation of this actor.
--
-- /See:/ 'commentActorImage' smart constructor.
newtype CommentActorImage = CommentActorImage
    { _caiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiURL'
commentActorImage
    :: CommentActorImage
commentActorImage =
    CommentActorImage
    { _caiURL = Nothing
    }

-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
caiURL :: Lens' CommentActorImage (Maybe Text)
caiURL = lens _caiURL (\ s a -> s{_caiURL = a})

instance FromJSON CommentActorImage where
        parseJSON
          = withObject "CommentActorImage"
              (\ o -> CommentActorImage <$> (o .:? "url"))

instance ToJSON CommentActorImage where
        toJSON CommentActorImage{..}
          = object (catMaybes [("url" .=) <$> _caiURL])

-- | Image resource.
--
-- /See:/ 'activityObjectAttachmentsItemThumbnailsItemImage' smart constructor.
data ActivityObjectAttachmentsItemThumbnailsItemImage = ActivityObjectAttachmentsItemThumbnailsItemImage
    { _aoaitiiHeight :: !(Maybe Word32)
    , _aoaitiiURL    :: !(Maybe Text)
    , _aoaitiiWidth  :: !(Maybe Word32)
    , _aoaitiiType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsItemThumbnailsItemImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaitiiHeight'
--
-- * 'aoaitiiURL'
--
-- * 'aoaitiiWidth'
--
-- * 'aoaitiiType'
activityObjectAttachmentsItemThumbnailsItemImage
    :: ActivityObjectAttachmentsItemThumbnailsItemImage
activityObjectAttachmentsItemThumbnailsItemImage =
    ActivityObjectAttachmentsItemThumbnailsItemImage
    { _aoaitiiHeight = Nothing
    , _aoaitiiURL = Nothing
    , _aoaitiiWidth = Nothing
    , _aoaitiiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aoaitiiHeight :: Lens' ActivityObjectAttachmentsItemThumbnailsItemImage (Maybe Word32)
aoaitiiHeight
  = lens _aoaitiiHeight
      (\ s a -> s{_aoaitiiHeight = a})

-- | Image url.
aoaitiiURL :: Lens' ActivityObjectAttachmentsItemThumbnailsItemImage (Maybe Text)
aoaitiiURL
  = lens _aoaitiiURL (\ s a -> s{_aoaitiiURL = a})

-- | The width, in pixels, of the linked resource.
aoaitiiWidth :: Lens' ActivityObjectAttachmentsItemThumbnailsItemImage (Maybe Word32)
aoaitiiWidth
  = lens _aoaitiiWidth (\ s a -> s{_aoaitiiWidth = a})

-- | Media type of the link.
aoaitiiType :: Lens' ActivityObjectAttachmentsItemThumbnailsItemImage (Maybe Text)
aoaitiiType
  = lens _aoaitiiType (\ s a -> s{_aoaitiiType = a})

instance FromJSON
         ActivityObjectAttachmentsItemThumbnailsItemImage
         where
        parseJSON
          = withObject
              "ActivityObjectAttachmentsItemThumbnailsItemImage"
              (\ o ->
                 ActivityObjectAttachmentsItemThumbnailsItemImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON
         ActivityObjectAttachmentsItemThumbnailsItemImage
         where
        toJSON
          ActivityObjectAttachmentsItemThumbnailsItemImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoaitiiHeight,
                  ("url" .=) <$> _aoaitiiURL,
                  ("width" .=) <$> _aoaitiiWidth,
                  ("type" .=) <$> _aoaitiiType])

-- | The position of the place.
--
-- /See:/ 'placePosition' smart constructor.
data PlacePosition = PlacePosition
    { _ppLatitude  :: !(Maybe Double)
    , _ppLongitude :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- /See:/ 'personPlacesLivedItem' smart constructor.
data PersonPlacesLivedItem = PersonPlacesLivedItem
    { _ppliValue   :: !(Maybe Text)
    , _ppliPrimary :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonPlacesLivedItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppliValue'
--
-- * 'ppliPrimary'
personPlacesLivedItem
    :: PersonPlacesLivedItem
personPlacesLivedItem =
    PersonPlacesLivedItem
    { _ppliValue = Nothing
    , _ppliPrimary = Nothing
    }

-- | A place where this person has lived. For example: \"Seattle, WA\",
-- \"Near Toronto\".
ppliValue :: Lens' PersonPlacesLivedItem (Maybe Text)
ppliValue
  = lens _ppliValue (\ s a -> s{_ppliValue = a})

-- | If \"true\", this place of residence is this person\'s primary
-- residence.
ppliPrimary :: Lens' PersonPlacesLivedItem (Maybe Bool)
ppliPrimary
  = lens _ppliPrimary (\ s a -> s{_ppliPrimary = a})

instance FromJSON PersonPlacesLivedItem where
        parseJSON
          = withObject "PersonPlacesLivedItem"
              (\ o ->
                 PersonPlacesLivedItem <$>
                   (o .:? "value") <*> (o .:? "primary"))

instance ToJSON PersonPlacesLivedItem where
        toJSON PersonPlacesLivedItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ppliValue,
                  ("primary" .=) <$> _ppliPrimary])

--
-- /See:/ 'person' smart constructor.
data Person = Person
    { _pCurrentLocation    :: !(Maybe Text)
    , _pAgeRange           :: !(Maybe PersonAgeRange)
    , _pEtag               :: !(Maybe Text)
    , _pImage              :: !(Maybe PersonImage)
    , _pBraggingRights     :: !(Maybe Text)
    , _pPlacesLived        :: !(Maybe [PersonPlacesLivedItem])
    , _pPlusOneCount       :: !(Maybe Int32)
    , _pObjectType         :: !(Maybe Text)
    , _pCover              :: !(Maybe PersonCover)
    , _pKind               :: !Text
    , _pRelationshipStatus :: !(Maybe Text)
    , _pURLs               :: !(Maybe [PersonURLsItem])
    , _pDomain             :: !(Maybe Text)
    , _pURL                :: !(Maybe Text)
    , _pVerified           :: !(Maybe Bool)
    , _pBirthday           :: !(Maybe Text)
    , _pIsPlusUser         :: !(Maybe Bool)
    , _pTagline            :: !(Maybe Text)
    , _pGender             :: !(Maybe Text)
    , _pName               :: !(Maybe PersonName)
    , _pEmails             :: !(Maybe [PersonEmailsItem])
    , _pOccupation         :: !(Maybe Text)
    , _pSkills             :: !(Maybe Text)
    , _pLanguage           :: !(Maybe Text)
    , _pAboutMe            :: !(Maybe Text)
    , _pDisplayName        :: !(Maybe Text)
    , _pId                 :: !(Maybe Text)
    , _pNickname           :: !(Maybe Text)
    , _pOrganizations      :: !(Maybe [PersonOrganizationsItem])
    , _pCircledByCount     :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pURLs'
--
-- * 'pDomain'
--
-- * 'pURL'
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
    , _pURLs = Nothing
    , _pDomain = Nothing
    , _pURL = Nothing
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
pPlacesLived :: Lens' Person [PersonPlacesLivedItem]
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
pURLs :: Lens' Person [PersonURLsItem]
pURLs
  = lens _pURLs (\ s a -> s{_pURLs = a}) . _Default .
      _Coerce

-- | The hosted domain name for the user\'s Google Apps account. For
-- instance, example.com. The plus.profile.emails.read or email scope is
-- needed to get this domain name.
pDomain :: Lens' Person (Maybe Text)
pDomain = lens _pDomain (\ s a -> s{_pDomain = a})

-- | The URL of this person\'s profile.
pURL :: Lens' Person (Maybe Text)
pURL = lens _pURL (\ s a -> s{_pURL = a})

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
pEmails :: Lens' Person [PersonEmailsItem]
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
pOrganizations :: Lens' Person [PersonOrganizationsItem]
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
                  ("urls" .=) <$> _pURLs, ("domain" .=) <$> _pDomain,
                  ("url" .=) <$> _pURL, ("verified" .=) <$> _pVerified,
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

-- | The preview image for photos or videos.
--
-- /See:/ 'activityObjectAttachmentsItemImage' smart constructor.
data ActivityObjectAttachmentsItemImage = ActivityObjectAttachmentsItemImage
    { _aoaiiHeight :: !(Maybe Word32)
    , _aoaiiURL    :: !(Maybe Text)
    , _aoaiiWidth  :: !(Maybe Word32)
    , _aoaiiType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsItemImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaiiHeight'
--
-- * 'aoaiiURL'
--
-- * 'aoaiiWidth'
--
-- * 'aoaiiType'
activityObjectAttachmentsItemImage
    :: ActivityObjectAttachmentsItemImage
activityObjectAttachmentsItemImage =
    ActivityObjectAttachmentsItemImage
    { _aoaiiHeight = Nothing
    , _aoaiiURL = Nothing
    , _aoaiiWidth = Nothing
    , _aoaiiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aoaiiHeight :: Lens' ActivityObjectAttachmentsItemImage (Maybe Word32)
aoaiiHeight
  = lens _aoaiiHeight (\ s a -> s{_aoaiiHeight = a})

-- | Image URL.
aoaiiURL :: Lens' ActivityObjectAttachmentsItemImage (Maybe Text)
aoaiiURL = lens _aoaiiURL (\ s a -> s{_aoaiiURL = a})

-- | The width, in pixels, of the linked resource.
aoaiiWidth :: Lens' ActivityObjectAttachmentsItemImage (Maybe Word32)
aoaiiWidth
  = lens _aoaiiWidth (\ s a -> s{_aoaiiWidth = a})

-- | Media type of the link.
aoaiiType :: Lens' ActivityObjectAttachmentsItemImage (Maybe Text)
aoaiiType
  = lens _aoaiiType (\ s a -> s{_aoaiiType = a})

instance FromJSON ActivityObjectAttachmentsItemImage
         where
        parseJSON
          = withObject "ActivityObjectAttachmentsItemImage"
              (\ o ->
                 ActivityObjectAttachmentsItemImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON ActivityObjectAttachmentsItemImage
         where
        toJSON ActivityObjectAttachmentsItemImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoaiiHeight,
                  ("url" .=) <$> _aoaiiURL,
                  ("width" .=) <$> _aoaiiWidth,
                  ("type" .=) <$> _aoaiiType])

-- | The person who posted this comment.
--
-- /See:/ 'commentActor' smart constructor.
data CommentActor = CommentActor
    { _caImage        :: !(Maybe CommentActorImage)
    , _caURL          :: !(Maybe Text)
    , _caDisplayName  :: !(Maybe Text)
    , _caId           :: !(Maybe Text)
    , _caVerification :: !(Maybe CommentActorVerification)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caImage'
--
-- * 'caURL'
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
    , _caURL = Nothing
    , _caDisplayName = Nothing
    , _caId = Nothing
    , _caVerification = Nothing
    }

-- | The image representation of this actor.
caImage :: Lens' CommentActor (Maybe CommentActorImage)
caImage = lens _caImage (\ s a -> s{_caImage = a})

-- | A link to the Person resource for this actor.
caURL :: Lens' CommentActor (Maybe Text)
caURL = lens _caURL (\ s a -> s{_caURL = a})

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
                 [("image" .=) <$> _caImage, ("url" .=) <$> _caURL,
                  ("displayName" .=) <$> _caDisplayName,
                  ("id" .=) <$> _caId,
                  ("verification" .=) <$> _caVerification])

--
-- /See:/ 'moment' smart constructor.
data Moment = Moment
    { _mKind      :: !Text
    , _mResult    :: !(Maybe ItemScope)
    , _mStartDate :: !(Maybe DateTime')
    , _mObject    :: !(Maybe ItemScope)
    , _mId        :: !(Maybe Text)
    , _mType      :: !(Maybe Text)
    , _mTarget    :: !(Maybe ItemScope)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
mResult :: Lens' Moment (Maybe ItemScope)
mResult = lens _mResult (\ s a -> s{_mResult = a})

-- | Time stamp of when the action occurred in RFC3339 format.
mStartDate :: Lens' Moment (Maybe UTCTime)
mStartDate
  = lens _mStartDate (\ s a -> s{_mStartDate = a}) .
      mapping _DateTime

-- | The object on which the action was performed. Specifying this is
-- equivalent with specifying \"target\". Note that responses from the
-- server will use the \"target\" field instead for backward-compatibility
-- with older clients.
mObject :: Lens' Moment (Maybe ItemScope)
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
mTarget :: Lens' Moment (Maybe ItemScope)
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
    , _aoAttachments     :: !(Maybe [ActivityObjectAttachmentsItem])
    , _aoObjectType      :: !(Maybe Text)
    , _aoOriginalContent :: !(Maybe Text)
    , _aoURL             :: !(Maybe Text)
    , _aoActor           :: !(Maybe ActivityObjectActor)
    , _aoContent         :: !(Maybe Text)
    , _aoReplies         :: !(Maybe ActivityObjectReplies)
    , _aoId              :: !(Maybe Text)
    , _aoResharers       :: !(Maybe ActivityObjectResharers)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'aoURL'
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
    , _aoURL = Nothing
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
aoAttachments :: Lens' ActivityObject [ActivityObjectAttachmentsItem]
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
aoURL :: Lens' ActivityObject (Maybe Text)
aoURL = lens _aoURL (\ s a -> s{_aoURL = a})

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
                  ("url" .=) <$> _aoURL, ("actor" .=) <$> _aoActor,
                  ("content" .=) <$> _aoContent,
                  ("replies" .=) <$> _aoReplies, ("id" .=) <$> _aoId,
                  ("resharers" .=) <$> _aoResharers])

-- | If this activity\'s object is itself another activity, such as when a
-- person reshares an activity, this property specifies the original
-- activity\'s actor.
--
-- /See:/ 'activityObjectActor' smart constructor.
data ActivityObjectActor = ActivityObjectActor
    { _aoaImage        :: !(Maybe ActivityObjectActorImage)
    , _aoaURL          :: !(Maybe Text)
    , _aoaDisplayName  :: !(Maybe Text)
    , _aoaId           :: !(Maybe Text)
    , _aoaVerification :: !(Maybe ActivityObjectActorVerification)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaImage'
--
-- * 'aoaURL'
--
-- * 'aoaDisplayName'
--
-- * 'aoaId'
--
-- * 'aoaVerification'
activityObjectActor
    :: ActivityObjectActor
activityObjectActor =
    ActivityObjectActor
    { _aoaImage = Nothing
    , _aoaURL = Nothing
    , _aoaDisplayName = Nothing
    , _aoaId = Nothing
    , _aoaVerification = Nothing
    }

-- | The image representation of the original actor.
aoaImage :: Lens' ActivityObjectActor (Maybe ActivityObjectActorImage)
aoaImage = lens _aoaImage (\ s a -> s{_aoaImage = a})

-- | A link to the original actor\'s Google profile.
aoaURL :: Lens' ActivityObjectActor (Maybe Text)
aoaURL = lens _aoaURL (\ s a -> s{_aoaURL = a})

-- | The original actor\'s name, which is suitable for display.
aoaDisplayName :: Lens' ActivityObjectActor (Maybe Text)
aoaDisplayName
  = lens _aoaDisplayName
      (\ s a -> s{_aoaDisplayName = a})

-- | ID of the original actor.
aoaId :: Lens' ActivityObjectActor (Maybe Text)
aoaId = lens _aoaId (\ s a -> s{_aoaId = a})

-- | Verification status of actor.
aoaVerification :: Lens' ActivityObjectActor (Maybe ActivityObjectActorVerification)
aoaVerification
  = lens _aoaVerification
      (\ s a -> s{_aoaVerification = a})

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
                 [("image" .=) <$> _aoaImage, ("url" .=) <$> _aoaURL,
                  ("displayName" .=) <$> _aoaDisplayName,
                  ("id" .=) <$> _aoaId,
                  ("verification" .=) <$> _aoaVerification])

-- | The full image URL for photo attachments.
--
-- /See:/ 'activityObjectAttachmentsItemFullImage' smart constructor.
data ActivityObjectAttachmentsItemFullImage = ActivityObjectAttachmentsItemFullImage
    { _aoaifiHeight :: !(Maybe Word32)
    , _aoaifiURL    :: !(Maybe Text)
    , _aoaifiWidth  :: !(Maybe Word32)
    , _aoaifiType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsItemFullImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaifiHeight'
--
-- * 'aoaifiURL'
--
-- * 'aoaifiWidth'
--
-- * 'aoaifiType'
activityObjectAttachmentsItemFullImage
    :: ActivityObjectAttachmentsItemFullImage
activityObjectAttachmentsItemFullImage =
    ActivityObjectAttachmentsItemFullImage
    { _aoaifiHeight = Nothing
    , _aoaifiURL = Nothing
    , _aoaifiWidth = Nothing
    , _aoaifiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aoaifiHeight :: Lens' ActivityObjectAttachmentsItemFullImage (Maybe Word32)
aoaifiHeight
  = lens _aoaifiHeight (\ s a -> s{_aoaifiHeight = a})

-- | URL of the image.
aoaifiURL :: Lens' ActivityObjectAttachmentsItemFullImage (Maybe Text)
aoaifiURL
  = lens _aoaifiURL (\ s a -> s{_aoaifiURL = a})

-- | The width, in pixels, of the linked resource.
aoaifiWidth :: Lens' ActivityObjectAttachmentsItemFullImage (Maybe Word32)
aoaifiWidth
  = lens _aoaifiWidth (\ s a -> s{_aoaifiWidth = a})

-- | Media type of the link.
aoaifiType :: Lens' ActivityObjectAttachmentsItemFullImage (Maybe Text)
aoaifiType
  = lens _aoaifiType (\ s a -> s{_aoaifiType = a})

instance FromJSON
         ActivityObjectAttachmentsItemFullImage where
        parseJSON
          = withObject "ActivityObjectAttachmentsItemFullImage"
              (\ o ->
                 ActivityObjectAttachmentsItemFullImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON
         ActivityObjectAttachmentsItemFullImage where
        toJSON ActivityObjectAttachmentsItemFullImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aoaifiHeight,
                  ("url" .=) <$> _aoaifiURL,
                  ("width" .=) <$> _aoaifiWidth,
                  ("type" .=) <$> _aoaifiType])

-- | The image representation of the actor.
--
-- /See:/ 'activityActorImage' smart constructor.
newtype ActivityActorImage = ActivityActorImage
    { _aaiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaiURL'
activityActorImage
    :: ActivityActorImage
activityActorImage =
    ActivityActorImage
    { _aaiURL = Nothing
    }

-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
aaiURL :: Lens' ActivityActorImage (Maybe Text)
aaiURL = lens _aaiURL (\ s a -> s{_aaiURL = a})

instance FromJSON ActivityActorImage where
        parseJSON
          = withObject "ActivityActorImage"
              (\ o -> ActivityActorImage <$> (o .:? "url"))

instance ToJSON ActivityActorImage where
        toJSON ActivityActorImage{..}
          = object (catMaybes [("url" .=) <$> _aaiURL])

--
-- /See:/ 'peopleFeed' smart constructor.
data PeopleFeed = PeopleFeed
    { _pfTotalItems    :: !(Maybe Int32)
    , _pfEtag          :: !(Maybe Text)
    , _pfNextPageToken :: !(Maybe Text)
    , _pfKind          :: !Text
    , _pfItems         :: !(Maybe [Person])
    , _pfSelfLink      :: !(Maybe Text)
    , _pfTitle         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
pfItems :: Lens' PeopleFeed [Person]
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

-- | The person\'s primary cover image.
--
-- /See:/ 'personCoverCoverPhoto' smart constructor.
data PersonCoverCoverPhoto = PersonCoverCoverPhoto
    { _pccpHeight :: !(Maybe Int32)
    , _pccpURL    :: !(Maybe Text)
    , _pccpWidth  :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonCoverCoverPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccpHeight'
--
-- * 'pccpURL'
--
-- * 'pccpWidth'
personCoverCoverPhoto
    :: PersonCoverCoverPhoto
personCoverCoverPhoto =
    PersonCoverCoverPhoto
    { _pccpHeight = Nothing
    , _pccpURL = Nothing
    , _pccpWidth = Nothing
    }

-- | The height of the image.
pccpHeight :: Lens' PersonCoverCoverPhoto (Maybe Int32)
pccpHeight
  = lens _pccpHeight (\ s a -> s{_pccpHeight = a})

-- | The URL of the image.
pccpURL :: Lens' PersonCoverCoverPhoto (Maybe Text)
pccpURL = lens _pccpURL (\ s a -> s{_pccpURL = a})

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
                  ("url" .=) <$> _pccpURL,
                  ("width" .=) <$> _pccpWidth])

-- | The age range of the person. Valid ranges are 17 or younger, 18 to 20,
-- and 21 or older. Age is determined from the user\'s birthday using
-- Western age reckoning.
--
-- /See:/ 'personAgeRange' smart constructor.
data PersonAgeRange = PersonAgeRange
    { _parMax :: !(Maybe Int32)
    , _parMin :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The image representation of the original actor.
--
-- /See:/ 'activityObjectActorImage' smart constructor.
newtype ActivityObjectActorImage = ActivityObjectActorImage
    { _aoaiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaiURL'
activityObjectActorImage
    :: ActivityObjectActorImage
activityObjectActorImage =
    ActivityObjectActorImage
    { _aoaiURL = Nothing
    }

-- | A URL that points to a thumbnail photo of the original actor.
aoaiURL :: Lens' ActivityObjectActorImage (Maybe Text)
aoaiURL = lens _aoaiURL (\ s a -> s{_aoaiURL = a})

instance FromJSON ActivityObjectActorImage where
        parseJSON
          = withObject "ActivityObjectActorImage"
              (\ o -> ActivityObjectActorImage <$> (o .:? "url"))

instance ToJSON ActivityObjectActorImage where
        toJSON ActivityObjectActorImage{..}
          = object (catMaybes [("url" .=) <$> _aoaiURL])

-- | Comments in reply to this activity.
--
-- /See:/ 'activityObjectReplies' smart constructor.
data ActivityObjectReplies = ActivityObjectReplies
    { _aorTotalItems :: !(Maybe Word32)
    , _aorSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Verification status of actor.
--
-- /See:/ 'activityActorVerification' smart constructor.
newtype ActivityActorVerification = ActivityActorVerification
    { _aavAdHocVerified :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- /See:/ 'itemScope' smart constructor.
data ItemScope = ItemScope
    { _isGivenName           :: !(Maybe Text)
    , _isContentSize         :: !(Maybe Text)
    , _isThumbnail           :: !(Maybe ItemScope)
    , _isTickerSymbol        :: !(Maybe Text)
    , _isHeight              :: !(Maybe Text)
    , _isThumbnailURL        :: !(Maybe Text)
    , _isImage               :: !(Maybe Text)
    , _isStreetAddress       :: !(Maybe Text)
    , _isWorstRating         :: !(Maybe Text)
    , _isLocation            :: !(Maybe ItemScope)
    , _isAttendees           :: !(Maybe [ItemScope])
    , _isText                :: !(Maybe Text)
    , _isKind                :: !Text
    , _isLatitude            :: !(Maybe Double)
    , _isPostalCode          :: !(Maybe Text)
    , _isEndDate             :: !(Maybe Text)
    , _isAssociatedMedia     :: !(Maybe [ItemScope])
    , _isPlayerType          :: !(Maybe Text)
    , _isURL                 :: !(Maybe Text)
    , _isWidth               :: !(Maybe Text)
    , _isCaption             :: !(Maybe Text)
    , _isAddress             :: !(Maybe ItemScope)
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
    , _isPartOfTVSeries      :: !(Maybe ItemScope)
    , _isContentURL          :: !(Maybe Text)
    , _isByArtist            :: !(Maybe ItemScope)
    , _isAbout               :: !(Maybe ItemScope)
    , _isReviewRating        :: !(Maybe ItemScope)
    , _isDateModified        :: !(Maybe Text)
    , _isAuthor              :: !(Maybe [ItemScope])
    , _isGeo                 :: !(Maybe ItemScope)
    , _isId                  :: !(Maybe Text)
    , _isPerformers          :: !(Maybe [ItemScope])
    , _isAttendeeCount       :: !(Maybe Int32)
    , _isInAlbum             :: !(Maybe ItemScope)
    , _isEmbedURL            :: !(Maybe Text)
    , _isType                :: !(Maybe Text)
    , _isContributor         :: !(Maybe [ItemScope])
    , _isLongitude           :: !(Maybe Double)
    , _isDuration            :: !(Maybe Text)
    , _isAddressRegion       :: !(Maybe Text)
    , _isAudio               :: !(Maybe ItemScope)
    , _isDescription         :: !(Maybe Text)
    , _isBirthDate           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'isThumbnailURL'
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
-- * 'isURL'
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
-- * 'isContentURL'
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
-- * 'isEmbedURL'
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
    , _isThumbnailURL = Nothing
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
    , _isURL = Nothing
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
    , _isContentURL = Nothing
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
    , _isEmbedURL = Nothing
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
isThumbnail :: Lens' ItemScope (Maybe ItemScope)
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
isThumbnailURL :: Lens' ItemScope (Maybe Text)
isThumbnailURL
  = lens _isThumbnailURL
      (\ s a -> s{_isThumbnailURL = a})

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
isLocation :: Lens' ItemScope (Maybe ItemScope)
isLocation
  = lens _isLocation (\ s a -> s{_isLocation = a})

-- | A person attending the event.
isAttendees :: Lens' ItemScope [ItemScope]
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
isAssociatedMedia :: Lens' ItemScope [ItemScope]
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
isURL :: Lens' ItemScope (Maybe Text)
isURL = lens _isURL (\ s a -> s{_isURL = a})

-- | The width of the media object.
isWidth :: Lens' ItemScope (Maybe Text)
isWidth = lens _isWidth (\ s a -> s{_isWidth = a})

-- | The caption for this object.
isCaption :: Lens' ItemScope (Maybe Text)
isCaption
  = lens _isCaption (\ s a -> s{_isCaption = a})

-- | Postal address.
isAddress :: Lens' ItemScope (Maybe ItemScope)
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
isPartOfTVSeries :: Lens' ItemScope (Maybe ItemScope)
isPartOfTVSeries
  = lens _isPartOfTVSeries
      (\ s a -> s{_isPartOfTVSeries = a})

-- | Actual bytes of the media object, for example the image file or video
-- file.
isContentURL :: Lens' ItemScope (Maybe Text)
isContentURL
  = lens _isContentURL (\ s a -> s{_isContentURL = a})

-- | From http:\/\/schema.org\/MusicRecording, the artist that performed this
-- recording.
isByArtist :: Lens' ItemScope (Maybe ItemScope)
isByArtist
  = lens _isByArtist (\ s a -> s{_isByArtist = a})

-- | The subject matter of the content.
isAbout :: Lens' ItemScope (Maybe ItemScope)
isAbout = lens _isAbout (\ s a -> s{_isAbout = a})

-- | Review rating.
isReviewRating :: Lens' ItemScope (Maybe ItemScope)
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
isAuthor :: Lens' ItemScope [ItemScope]
isAuthor
  = lens _isAuthor (\ s a -> s{_isAuthor = a}) .
      _Default
      . _Coerce

-- | Geo coordinates.
isGeo :: Lens' ItemScope (Maybe ItemScope)
isGeo = lens _isGeo (\ s a -> s{_isGeo = a})

-- | An identifier for the object. Your app can choose how to identify
-- objects. The object.id is required if you are writing an action that
-- does not have a corresponding web page or object.url property.
isId :: Lens' ItemScope (Maybe Text)
isId = lens _isId (\ s a -> s{_isId = a})

-- | The main performer or performers of the event-for example, a presenter,
-- musician, or actor.
isPerformers :: Lens' ItemScope [ItemScope]
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
isInAlbum :: Lens' ItemScope (Maybe ItemScope)
isInAlbum
  = lens _isInAlbum (\ s a -> s{_isInAlbum = a})

-- | A URL pointing to a player for a specific video. In general, this is the
-- information in the src element of an embed tag and should not be the
-- same as the content of the loc tag.
isEmbedURL :: Lens' ItemScope (Maybe Text)
isEmbedURL
  = lens _isEmbedURL (\ s a -> s{_isEmbedURL = a})

-- | The schema.org URL that best describes the referenced object and matches
-- the type of moment.
isType :: Lens' ItemScope (Maybe Text)
isType = lens _isType (\ s a -> s{_isType = a})

-- | A list of contributors to this result.
isContributor :: Lens' ItemScope [ItemScope]
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
isAudio :: Lens' ItemScope (Maybe ItemScope)
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
                  ("thumbnailUrl" .=) <$> _isThumbnailURL,
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
                  ("url" .=) <$> _isURL, ("width" .=) <$> _isWidth,
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
                  ("contentUrl" .=) <$> _isContentURL,
                  ("byArtist" .=) <$> _isByArtist,
                  ("about" .=) <$> _isAbout,
                  ("reviewRating" .=) <$> _isReviewRating,
                  ("dateModified" .=) <$> _isDateModified,
                  ("author" .=) <$> _isAuthor, ("geo" .=) <$> _isGeo,
                  ("id" .=) <$> _isId,
                  ("performers" .=) <$> _isPerformers,
                  ("attendeeCount" .=) <$> _isAttendeeCount,
                  ("inAlbum" .=) <$> _isInAlbum,
                  ("embedUrl" .=) <$> _isEmbedURL,
                  ("type" .=) <$> _isType,
                  ("contributor" .=) <$> _isContributor,
                  ("longitude" .=) <$> _isLongitude,
                  ("duration" .=) <$> _isDuration,
                  ("addressRegion" .=) <$> _isAddressRegion,
                  ("audio" .=) <$> _isAudio,
                  ("description" .=) <$> _isDescription,
                  ("birthDate" .=) <$> _isBirthDate])

--
-- /See:/ 'activityObjectAttachmentsItem' smart constructor.
data ActivityObjectAttachmentsItem = ActivityObjectAttachmentsItem
    { _aFullImage   :: !(Maybe ActivityObjectAttachmentsItemFullImage)
    , _aImage       :: !(Maybe ActivityObjectAttachmentsItemImage)
    , _aObjectType  :: !(Maybe Text)
    , _aURL         :: !(Maybe Text)
    , _aEmbed       :: !(Maybe ActivityObjectAttachmentsItemEmbed)
    , _aContent     :: !(Maybe Text)
    , _aThumbnails  :: !(Maybe [ActivityObjectAttachmentsItemThumbnailsItem])
    , _aDisplayName :: !(Maybe Text)
    , _aId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aFullImage'
--
-- * 'aImage'
--
-- * 'aObjectType'
--
-- * 'aURL'
--
-- * 'aEmbed'
--
-- * 'aContent'
--
-- * 'aThumbnails'
--
-- * 'aDisplayName'
--
-- * 'aId'
activityObjectAttachmentsItem
    :: ActivityObjectAttachmentsItem
activityObjectAttachmentsItem =
    ActivityObjectAttachmentsItem
    { _aFullImage = Nothing
    , _aImage = Nothing
    , _aObjectType = Nothing
    , _aURL = Nothing
    , _aEmbed = Nothing
    , _aContent = Nothing
    , _aThumbnails = Nothing
    , _aDisplayName = Nothing
    , _aId = Nothing
    }

-- | The full image URL for photo attachments.
aFullImage :: Lens' ActivityObjectAttachmentsItem (Maybe ActivityObjectAttachmentsItemFullImage)
aFullImage
  = lens _aFullImage (\ s a -> s{_aFullImage = a})

-- | The preview image for photos or videos.
aImage :: Lens' ActivityObjectAttachmentsItem (Maybe ActivityObjectAttachmentsItemImage)
aImage = lens _aImage (\ s a -> s{_aImage = a})

-- | The type of media object. Possible values include, but are not limited
-- to, the following values: - \"photo\" - A photo. - \"album\" - A photo
-- album. - \"video\" - A video. - \"article\" - An article, specified by a
-- link.
aObjectType :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aObjectType
  = lens _aObjectType (\ s a -> s{_aObjectType = a})

-- | The link to the attachment, which should be of type text\/html.
aURL :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aURL = lens _aURL (\ s a -> s{_aURL = a})

-- | If the attachment is a video, the embeddable link.
aEmbed :: Lens' ActivityObjectAttachmentsItem (Maybe ActivityObjectAttachmentsItemEmbed)
aEmbed = lens _aEmbed (\ s a -> s{_aEmbed = a})

-- | If the attachment is an article, this property contains a snippet of
-- text from the article. It can also include descriptions for other types.
aContent :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aContent = lens _aContent (\ s a -> s{_aContent = a})

-- | If the attachment is an album, this property is a list of potential
-- additional thumbnails from the album.
aThumbnails :: Lens' ActivityObjectAttachmentsItem [ActivityObjectAttachmentsItemThumbnailsItem]
aThumbnails
  = lens _aThumbnails (\ s a -> s{_aThumbnails = a}) .
      _Default
      . _Coerce

-- | The title of the attachment, such as a photo caption or an article
-- title.
aDisplayName :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aDisplayName
  = lens _aDisplayName (\ s a -> s{_aDisplayName = a})

-- | The ID of the attachment.
aId :: Lens' ActivityObjectAttachmentsItem (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

instance FromJSON ActivityObjectAttachmentsItem where
        parseJSON
          = withObject "ActivityObjectAttachmentsItem"
              (\ o ->
                 ActivityObjectAttachmentsItem <$>
                   (o .:? "fullImage") <*> (o .:? "image") <*>
                     (o .:? "objectType")
                     <*> (o .:? "url")
                     <*> (o .:? "embed")
                     <*> (o .:? "content")
                     <*> (o .:? "thumbnails" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON ActivityObjectAttachmentsItem where
        toJSON ActivityObjectAttachmentsItem{..}
          = object
              (catMaybes
                 [("fullImage" .=) <$> _aFullImage,
                  ("image" .=) <$> _aImage,
                  ("objectType" .=) <$> _aObjectType,
                  ("url" .=) <$> _aURL, ("embed" .=) <$> _aEmbed,
                  ("content" .=) <$> _aContent,
                  ("thumbnails" .=) <$> _aThumbnails,
                  ("displayName" .=) <$> _aDisplayName,
                  ("id" .=) <$> _aId])

--
-- /See:/ 'activityFeed' smart constructor.
data ActivityFeed = ActivityFeed
    { _afEtag          :: !(Maybe Text)
    , _afNextPageToken :: !(Maybe Text)
    , _afNextLink      :: !(Maybe Text)
    , _afKind          :: !Text
    , _afItems         :: !(Maybe [Activity])
    , _afSelfLink      :: !(Maybe Text)
    , _afId            :: !(Maybe Text)
    , _afUpdated       :: !(Maybe DateTime')
    , _afTitle         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
afItems :: Lens' ActivityFeed [Activity]
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
  = lens _afUpdated (\ s a -> s{_afUpdated = a}) .
      mapping _DateTime

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

-- | Verification status of actor.
--
-- /See:/ 'activityObjectActorVerification' smart constructor.
newtype ActivityObjectActorVerification = ActivityObjectActorVerification
    { _aoavAdHocVerified :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The representation of the person\'s profile photo.
--
-- /See:/ 'personImage' smart constructor.
data PersonImage = PersonImage
    { _piURL       :: !(Maybe Text)
    , _piIsDefault :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piURL'
--
-- * 'piIsDefault'
personImage
    :: PersonImage
personImage =
    PersonImage
    { _piURL = Nothing
    , _piIsDefault = Nothing
    }

-- | The URL of the person\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
piURL :: Lens' PersonImage (Maybe Text)
piURL = lens _piURL (\ s a -> s{_piURL = a})

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
                 [("url" .=) <$> _piURL,
                  ("isDefault" .=) <$> _piIsDefault])

--
-- /See:/ 'plusACLentryResource' smart constructor.
data PlusACLentryResource = PlusACLentryResource
    { _parDisplayName :: !(Maybe Text)
    , _parId          :: !(Maybe Text)
    , _parType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _actAccess          :: !(Maybe ACL)
    , _actPlaceName       :: !(Maybe Text)
    , _actEtag            :: !(Maybe Text)
    , _actAnnotation      :: !(Maybe Text)
    , _actLocation        :: !(Maybe Place)
    , _actGeocode         :: !(Maybe Text)
    , _actKind            :: !Text
    , _actRadius          :: !(Maybe Text)
    , _actPublished       :: !(Maybe DateTime')
    , _actURL             :: !(Maybe Text)
    , _actActor           :: !(Maybe ActivityActor)
    , _actAddress         :: !(Maybe Text)
    , _actObject          :: !(Maybe ActivityObject)
    , _actId              :: !(Maybe Text)
    , _actUpdated         :: !(Maybe DateTime')
    , _actTitle           :: !(Maybe Text)
    , _actVerb            :: !(Maybe Text)
    , _actCrosspostSource :: !(Maybe Text)
    , _actPlaceId         :: !(Maybe Text)
    , _actProvider        :: !(Maybe ActivityProvider)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actAccess'
--
-- * 'actPlaceName'
--
-- * 'actEtag'
--
-- * 'actAnnotation'
--
-- * 'actLocation'
--
-- * 'actGeocode'
--
-- * 'actKind'
--
-- * 'actRadius'
--
-- * 'actPublished'
--
-- * 'actURL'
--
-- * 'actActor'
--
-- * 'actAddress'
--
-- * 'actObject'
--
-- * 'actId'
--
-- * 'actUpdated'
--
-- * 'actTitle'
--
-- * 'actVerb'
--
-- * 'actCrosspostSource'
--
-- * 'actPlaceId'
--
-- * 'actProvider'
activity
    :: Activity
activity =
    Activity
    { _actAccess = Nothing
    , _actPlaceName = Nothing
    , _actEtag = Nothing
    , _actAnnotation = Nothing
    , _actLocation = Nothing
    , _actGeocode = Nothing
    , _actKind = "plus#activity"
    , _actRadius = Nothing
    , _actPublished = Nothing
    , _actURL = Nothing
    , _actActor = Nothing
    , _actAddress = Nothing
    , _actObject = Nothing
    , _actId = Nothing
    , _actUpdated = Nothing
    , _actTitle = Nothing
    , _actVerb = Nothing
    , _actCrosspostSource = Nothing
    , _actPlaceId = Nothing
    , _actProvider = Nothing
    }

-- | Identifies who has access to see this activity.
actAccess :: Lens' Activity (Maybe ACL)
actAccess
  = lens _actAccess (\ s a -> s{_actAccess = a})

-- | Name of the place where this activity occurred.
actPlaceName :: Lens' Activity (Maybe Text)
actPlaceName
  = lens _actPlaceName (\ s a -> s{_actPlaceName = a})

-- | ETag of this response for caching purposes.
actEtag :: Lens' Activity (Maybe Text)
actEtag = lens _actEtag (\ s a -> s{_actEtag = a})

-- | Additional content added by the person who shared this activity,
-- applicable only when resharing an activity.
actAnnotation :: Lens' Activity (Maybe Text)
actAnnotation
  = lens _actAnnotation
      (\ s a -> s{_actAnnotation = a})

-- | The location where this activity occurred.
actLocation :: Lens' Activity (Maybe Place)
actLocation
  = lens _actLocation (\ s a -> s{_actLocation = a})

-- | Latitude and longitude where this activity occurred. Format is latitude
-- followed by longitude, space separated.
actGeocode :: Lens' Activity (Maybe Text)
actGeocode
  = lens _actGeocode (\ s a -> s{_actGeocode = a})

-- | Identifies this resource as an activity. Value: \"plus#activity\".
actKind :: Lens' Activity Text
actKind = lens _actKind (\ s a -> s{_actKind = a})

-- | Radius, in meters, of the region where this activity occurred, centered
-- at the latitude and longitude identified in geocode.
actRadius :: Lens' Activity (Maybe Text)
actRadius
  = lens _actRadius (\ s a -> s{_actRadius = a})

-- | The time at which this activity was initially published. Formatted as an
-- RFC 3339 timestamp.
actPublished :: Lens' Activity (Maybe UTCTime)
actPublished
  = lens _actPublished (\ s a -> s{_actPublished = a})
      . mapping _DateTime

-- | The link to this activity.
actURL :: Lens' Activity (Maybe Text)
actURL = lens _actURL (\ s a -> s{_actURL = a})

-- | The person who performed this activity.
actActor :: Lens' Activity (Maybe ActivityActor)
actActor = lens _actActor (\ s a -> s{_actActor = a})

-- | Street address where this activity occurred.
actAddress :: Lens' Activity (Maybe Text)
actAddress
  = lens _actAddress (\ s a -> s{_actAddress = a})

-- | The object of this activity.
actObject :: Lens' Activity (Maybe ActivityObject)
actObject
  = lens _actObject (\ s a -> s{_actObject = a})

-- | The ID of this activity.
actId :: Lens' Activity (Maybe Text)
actId = lens _actId (\ s a -> s{_actId = a})

-- | The time at which this activity was last updated. Formatted as an RFC
-- 3339 timestamp.
actUpdated :: Lens' Activity (Maybe UTCTime)
actUpdated
  = lens _actUpdated (\ s a -> s{_actUpdated = a}) .
      mapping _DateTime

-- | Title of this activity.
actTitle :: Lens' Activity (Maybe Text)
actTitle = lens _actTitle (\ s a -> s{_actTitle = a})

-- | This activity\'s verb, which indicates the action that was performed.
-- Possible values include, but are not limited to, the following values: -
-- \"post\" - Publish content to the stream. - \"share\" - Reshare an
-- activity.
actVerb :: Lens' Activity (Maybe Text)
actVerb = lens _actVerb (\ s a -> s{_actVerb = a})

-- | If this activity is a crosspost from another system, this property
-- specifies the ID of the original activity.
actCrosspostSource :: Lens' Activity (Maybe Text)
actCrosspostSource
  = lens _actCrosspostSource
      (\ s a -> s{_actCrosspostSource = a})

-- | ID of the place where this activity occurred.
actPlaceId :: Lens' Activity (Maybe Text)
actPlaceId
  = lens _actPlaceId (\ s a -> s{_actPlaceId = a})

-- | The service provider that initially published this activity.
actProvider :: Lens' Activity (Maybe ActivityProvider)
actProvider
  = lens _actProvider (\ s a -> s{_actProvider = a})

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
                 [("access" .=) <$> _actAccess,
                  ("placeName" .=) <$> _actPlaceName,
                  ("etag" .=) <$> _actEtag,
                  ("annotation" .=) <$> _actAnnotation,
                  ("location" .=) <$> _actLocation,
                  ("geocode" .=) <$> _actGeocode,
                  Just ("kind" .= _actKind),
                  ("radius" .=) <$> _actRadius,
                  ("published" .=) <$> _actPublished,
                  ("url" .=) <$> _actURL, ("actor" .=) <$> _actActor,
                  ("address" .=) <$> _actAddress,
                  ("object" .=) <$> _actObject, ("id" .=) <$> _actId,
                  ("updated" .=) <$> _actUpdated,
                  ("title" .=) <$> _actTitle, ("verb" .=) <$> _actVerb,
                  ("crosspostSource" .=) <$> _actCrosspostSource,
                  ("placeId" .=) <$> _actPlaceId,
                  ("provider" .=) <$> _actProvider])

-- | The physical address of the place.
--
-- /See:/ 'placeAddress' smart constructor.
newtype PlaceAddress = PlaceAddress
    { _paFormatted :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- /See:/ 'activityObjectAttachmentsItemThumbnailsItem' smart constructor.
data ActivityObjectAttachmentsItemThumbnailsItem = ActivityObjectAttachmentsItemThumbnailsItem
    { _aoaitiImage       :: !(Maybe ActivityObjectAttachmentsItemThumbnailsItemImage)
    , _aoaitiURL         :: !(Maybe Text)
    , _aoaitiDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityObjectAttachmentsItemThumbnailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoaitiImage'
--
-- * 'aoaitiURL'
--
-- * 'aoaitiDescription'
activityObjectAttachmentsItemThumbnailsItem
    :: ActivityObjectAttachmentsItemThumbnailsItem
activityObjectAttachmentsItemThumbnailsItem =
    ActivityObjectAttachmentsItemThumbnailsItem
    { _aoaitiImage = Nothing
    , _aoaitiURL = Nothing
    , _aoaitiDescription = Nothing
    }

-- | Image resource.
aoaitiImage :: Lens' ActivityObjectAttachmentsItemThumbnailsItem (Maybe ActivityObjectAttachmentsItemThumbnailsItemImage)
aoaitiImage
  = lens _aoaitiImage (\ s a -> s{_aoaitiImage = a})

-- | URL of the webpage containing the image.
aoaitiURL :: Lens' ActivityObjectAttachmentsItemThumbnailsItem (Maybe Text)
aoaitiURL
  = lens _aoaitiURL (\ s a -> s{_aoaitiURL = a})

-- | Potential name of the thumbnail.
aoaitiDescription :: Lens' ActivityObjectAttachmentsItemThumbnailsItem (Maybe Text)
aoaitiDescription
  = lens _aoaitiDescription
      (\ s a -> s{_aoaitiDescription = a})

instance FromJSON
         ActivityObjectAttachmentsItemThumbnailsItem where
        parseJSON
          = withObject
              "ActivityObjectAttachmentsItemThumbnailsItem"
              (\ o ->
                 ActivityObjectAttachmentsItemThumbnailsItem <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "description"))

instance ToJSON
         ActivityObjectAttachmentsItemThumbnailsItem where
        toJSON
          ActivityObjectAttachmentsItemThumbnailsItem{..}
          = object
              (catMaybes
                 [("image" .=) <$> _aoaitiImage,
                  ("url" .=) <$> _aoaitiURL,
                  ("description" .=) <$> _aoaitiDescription])

-- | The cover photo content.
--
-- /See:/ 'personCover' smart constructor.
data PersonCover = PersonCover
    { _pcLayout     :: !(Maybe Text)
    , _pcCoverInfo  :: !(Maybe PersonCoverCoverInfo)
    , _pcCoverPhoto :: !(Maybe PersonCoverCoverPhoto)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- /See:/ 'commentInReplyToItem' smart constructor.
data CommentInReplyToItem = CommentInReplyToItem
    { _cirtiURL :: !(Maybe Text)
    , _cirtiId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentInReplyToItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirtiURL'
--
-- * 'cirtiId'
commentInReplyToItem
    :: CommentInReplyToItem
commentInReplyToItem =
    CommentInReplyToItem
    { _cirtiURL = Nothing
    , _cirtiId = Nothing
    }

-- | The URL of the activity.
cirtiURL :: Lens' CommentInReplyToItem (Maybe Text)
cirtiURL = lens _cirtiURL (\ s a -> s{_cirtiURL = a})

-- | The ID of the activity.
cirtiId :: Lens' CommentInReplyToItem (Maybe Text)
cirtiId = lens _cirtiId (\ s a -> s{_cirtiId = a})

instance FromJSON CommentInReplyToItem where
        parseJSON
          = withObject "CommentInReplyToItem"
              (\ o ->
                 CommentInReplyToItem <$>
                   (o .:? "url") <*> (o .:? "id"))

instance ToJSON CommentInReplyToItem where
        toJSON CommentInReplyToItem{..}
          = object
              (catMaybes
                 [("url" .=) <$> _cirtiURL, ("id" .=) <$> _cirtiId])

--
-- /See:/ 'personOrganizationsItem' smart constructor.
data PersonOrganizationsItem = PersonOrganizationsItem
    { _poiDePartment  :: !(Maybe Text)
    , _poiLocation    :: !(Maybe Text)
    , _poiEndDate     :: !(Maybe Text)
    , _poiPrimary     :: !(Maybe Bool)
    , _poiStartDate   :: !(Maybe Text)
    , _poiName        :: !(Maybe Text)
    , _poiTitle       :: !(Maybe Text)
    , _poiType        :: !(Maybe Text)
    , _poiDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonOrganizationsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poiDePartment'
--
-- * 'poiLocation'
--
-- * 'poiEndDate'
--
-- * 'poiPrimary'
--
-- * 'poiStartDate'
--
-- * 'poiName'
--
-- * 'poiTitle'
--
-- * 'poiType'
--
-- * 'poiDescription'
personOrganizationsItem
    :: PersonOrganizationsItem
personOrganizationsItem =
    PersonOrganizationsItem
    { _poiDePartment = Nothing
    , _poiLocation = Nothing
    , _poiEndDate = Nothing
    , _poiPrimary = Nothing
    , _poiStartDate = Nothing
    , _poiName = Nothing
    , _poiTitle = Nothing
    , _poiType = Nothing
    , _poiDescription = Nothing
    }

-- | The department within the organization. Deprecated.
poiDePartment :: Lens' PersonOrganizationsItem (Maybe Text)
poiDePartment
  = lens _poiDePartment
      (\ s a -> s{_poiDePartment = a})

-- | The location of this organization. Deprecated.
poiLocation :: Lens' PersonOrganizationsItem (Maybe Text)
poiLocation
  = lens _poiLocation (\ s a -> s{_poiLocation = a})

-- | The date that the person left this organization.
poiEndDate :: Lens' PersonOrganizationsItem (Maybe Text)
poiEndDate
  = lens _poiEndDate (\ s a -> s{_poiEndDate = a})

-- | If \"true\", indicates this organization is the person\'s primary one,
-- which is typically interpreted as the current one.
poiPrimary :: Lens' PersonOrganizationsItem (Maybe Bool)
poiPrimary
  = lens _poiPrimary (\ s a -> s{_poiPrimary = a})

-- | The date that the person joined this organization.
poiStartDate :: Lens' PersonOrganizationsItem (Maybe Text)
poiStartDate
  = lens _poiStartDate (\ s a -> s{_poiStartDate = a})

-- | The name of the organization.
poiName :: Lens' PersonOrganizationsItem (Maybe Text)
poiName = lens _poiName (\ s a -> s{_poiName = a})

-- | The person\'s job title or role within the organization.
poiTitle :: Lens' PersonOrganizationsItem (Maybe Text)
poiTitle = lens _poiTitle (\ s a -> s{_poiTitle = a})

-- | The type of organization. Possible values include, but are not limited
-- to, the following values: - \"work\" - Work. - \"school\" - School.
poiType :: Lens' PersonOrganizationsItem (Maybe Text)
poiType = lens _poiType (\ s a -> s{_poiType = a})

-- | A short description of the person\'s role in this organization.
-- Deprecated.
poiDescription :: Lens' PersonOrganizationsItem (Maybe Text)
poiDescription
  = lens _poiDescription
      (\ s a -> s{_poiDescription = a})

instance FromJSON PersonOrganizationsItem where
        parseJSON
          = withObject "PersonOrganizationsItem"
              (\ o ->
                 PersonOrganizationsItem <$>
                   (o .:? "department") <*> (o .:? "location") <*>
                     (o .:? "endDate")
                     <*> (o .:? "primary")
                     <*> (o .:? "startDate")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON PersonOrganizationsItem where
        toJSON PersonOrganizationsItem{..}
          = object
              (catMaybes
                 [("department" .=) <$> _poiDePartment,
                  ("location" .=) <$> _poiLocation,
                  ("endDate" .=) <$> _poiEndDate,
                  ("primary" .=) <$> _poiPrimary,
                  ("startDate" .=) <$> _poiStartDate,
                  ("name" .=) <$> _poiName, ("title" .=) <$> _poiTitle,
                  ("type" .=) <$> _poiType,
                  ("description" .=) <$> _poiDescription])

--
-- /See:/ 'personURLsItem' smart constructor.
data PersonURLsItem = PersonURLsItem
    { _puiValue :: !(Maybe Text)
    , _puiType  :: !(Maybe Text)
    , _puiLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonURLsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puiValue'
--
-- * 'puiType'
--
-- * 'puiLabel'
personURLsItem
    :: PersonURLsItem
personURLsItem =
    PersonURLsItem
    { _puiValue = Nothing
    , _puiType = Nothing
    , _puiLabel = Nothing
    }

-- | The URL value.
puiValue :: Lens' PersonURLsItem (Maybe Text)
puiValue = lens _puiValue (\ s a -> s{_puiValue = a})

-- | The type of URL. Possible values include, but are not limited to, the
-- following values: - \"otherProfile\" - URL for another profile. -
-- \"contributor\" - URL to a site for which this person is a contributor.
-- - \"website\" - URL for this Google+ Page\'s primary website. -
-- \"other\" - Other URL.
puiType :: Lens' PersonURLsItem (Maybe Text)
puiType = lens _puiType (\ s a -> s{_puiType = a})

-- | The label of the URL.
puiLabel :: Lens' PersonURLsItem (Maybe Text)
puiLabel = lens _puiLabel (\ s a -> s{_puiLabel = a})

instance FromJSON PersonURLsItem where
        parseJSON
          = withObject "PersonURLsItem"
              (\ o ->
                 PersonURLsItem <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "label"))

instance ToJSON PersonURLsItem where
        toJSON PersonURLsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _puiValue,
                  ("type" .=) <$> _puiType,
                  ("label" .=) <$> _puiLabel])

-- | Extra information about the cover photo.
--
-- /See:/ 'personCoverCoverInfo' smart constructor.
data PersonCoverCoverInfo = PersonCoverCoverInfo
    { _pcciTopImageOffset  :: !(Maybe Int32)
    , _pcciLeftImageOffset :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    , _cPublished :: !(Maybe DateTime')
    , _cActor     :: !(Maybe CommentActor)
    , _cSelfLink  :: !(Maybe Text)
    , _cObject    :: !(Maybe CommentObject)
    , _cId        :: !(Maybe Text)
    , _cUpdated   :: !(Maybe DateTime')
    , _cVerb      :: !Text
    , _cInReplyTo :: !(Maybe [CommentInReplyToItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
  = lens _cPublished (\ s a -> s{_cPublished = a}) .
      mapping _DateTime

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
cUpdated
  = lens _cUpdated (\ s a -> s{_cUpdated = a}) .
      mapping _DateTime

-- | This comment\'s verb, indicating what action was performed. Possible
-- values are: - \"post\" - Publish content to the stream.
cVerb :: Lens' Comment Text
cVerb = lens _cVerb (\ s a -> s{_cVerb = a})

-- | The activity this comment replied to.
cInReplyTo :: Lens' Comment [CommentInReplyToItem]
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

--
-- /See:/ 'place' smart constructor.
data Place = Place
    { _plaKind        :: !Text
    , _plaAddress     :: !(Maybe PlaceAddress)
    , _plaDisplayName :: !(Maybe Text)
    , _plaId          :: !(Maybe Text)
    , _plaPosition    :: !(Maybe PlacePosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'acl' smart constructor.
data ACL = ACL
    { _aKind        :: !Text
    , _aItems       :: !(Maybe [PlusACLentryResource])
    , _aDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKind'
--
-- * 'aItems'
--
-- * 'aDescription'
acl
    :: ACL
acl =
    ACL
    { _aKind = "plus#acl"
    , _aItems = Nothing
    , _aDescription = Nothing
    }

-- | Identifies this resource as a collection of access controls. Value:
-- \"plus#acl\".
aKind :: Lens' ACL Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The list of access entries.
aItems :: Lens' ACL [PlusACLentryResource]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

-- | Description of the access granted, suitable for display.
aDescription :: Lens' ACL (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

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
                 [Just ("kind" .= _aKind), ("items" .=) <$> _aItems,
                  ("description" .=) <$> _aDescription])

-- | The person who performed this activity.
--
-- /See:/ 'activityActor' smart constructor.
data ActivityActor = ActivityActor
    { _aaImage        :: !(Maybe ActivityActorImage)
    , _aaURL          :: !(Maybe Text)
    , _aaName         :: !(Maybe ActivityActorName)
    , _aaDisplayName  :: !(Maybe Text)
    , _aaId           :: !(Maybe Text)
    , _aaVerification :: !(Maybe ActivityActorVerification)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaImage'
--
-- * 'aaURL'
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
    , _aaURL = Nothing
    , _aaName = Nothing
    , _aaDisplayName = Nothing
    , _aaId = Nothing
    , _aaVerification = Nothing
    }

-- | The image representation of the actor.
aaImage :: Lens' ActivityActor (Maybe ActivityActorImage)
aaImage = lens _aaImage (\ s a -> s{_aaImage = a})

-- | The link to the actor\'s Google profile.
aaURL :: Lens' ActivityActor (Maybe Text)
aaURL = lens _aaURL (\ s a -> s{_aaURL = a})

-- | An object representation of the individual components of name.
aaName :: Lens' ActivityActor (Maybe ActivityActorName)
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
aaVerification :: Lens' ActivityActor (Maybe ActivityActorVerification)
aaVerification
  = lens _aaVerification
      (\ s a -> s{_aaVerification = a})

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
                 [("image" .=) <$> _aaImage, ("url" .=) <$> _aaURL,
                  ("name" .=) <$> _aaName,
                  ("displayName" .=) <$> _aaDisplayName,
                  ("id" .=) <$> _aaId,
                  ("verification" .=) <$> _aaVerification])

-- | The object of this comment.
--
-- /See:/ 'commentObject' smart constructor.
data CommentObject = CommentObject
    { _coObjectType      :: !Text
    , _coOriginalContent :: !(Maybe Text)
    , _coContent         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'commentFeed' smart constructor.
data CommentFeed = CommentFeed
    { _cfEtag          :: !(Maybe Text)
    , _cfNextPageToken :: !(Maybe Text)
    , _cfNextLink      :: !(Maybe Text)
    , _cfKind          :: !Text
    , _cfItems         :: !(Maybe [Comment])
    , _cfId            :: !(Maybe Text)
    , _cfUpdated       :: !(Maybe DateTime')
    , _cfTitle         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
cfItems :: Lens' CommentFeed [Comment]
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
  = lens _cfUpdated (\ s a -> s{_cfUpdated = a}) .
      mapping _DateTime

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'momentsFeed' smart constructor.
data MomentsFeed = MomentsFeed
    { _mfEtag          :: !(Maybe Text)
    , _mfNextPageToken :: !(Maybe Text)
    , _mfNextLink      :: !(Maybe Text)
    , _mfKind          :: !Text
    , _mfItems         :: !(Maybe [Moment])
    , _mfSelfLink      :: !(Maybe Text)
    , _mfUpdated       :: !(Maybe DateTime')
    , _mfTitle         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
mfItems :: Lens' MomentsFeed [Moment]
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
  = lens _mfUpdated (\ s a -> s{_mfUpdated = a}) .
      mapping _DateTime

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

-- | An object representation of the individual components of name.
--
-- /See:/ 'activityActorName' smart constructor.
data ActivityActorName = ActivityActorName
    { _aanGivenName  :: !(Maybe Text)
    , _aanFamilyName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

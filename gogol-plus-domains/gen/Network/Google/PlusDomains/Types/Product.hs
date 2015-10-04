{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlusDomains.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlusDomains.Types.Product where

import           Network.Google.PlusDomains.Types.Sum
import           Network.Google.Prelude

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

--
-- /See:/ 'audience' smart constructor.
data Audience = Audience
    { _aEtag        :: !(Maybe Text)
    , _aKind        :: !Text
    , _aVisibility  :: !(Maybe Text)
    , _aItem        :: !(Maybe PlusDomainsACLentryResource)
    , _aMemberCount :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Audience' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aKind'
--
-- * 'aVisibility'
--
-- * 'aItem'
--
-- * 'aMemberCount'
audience
    :: Audience
audience =
    Audience
    { _aEtag = Nothing
    , _aKind = "plus#audience"
    , _aVisibility = Nothing
    , _aItem = Nothing
    , _aMemberCount = Nothing
    }

-- | ETag of this response for caching purposes.
aEtag :: Lens' Audience (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Identifies this resource as an audience. Value: \"plus#audience\".
aKind :: Lens' Audience Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The circle members\' visibility as chosen by the owner of the circle.
-- This only applies for items with \"item.type\" equals \"circle\".
-- Possible values are: - \"public\" - Members are visible to the public. -
-- \"limited\" - Members are visible to a limited audience. - \"private\" -
-- Members are visible to the owner only.
aVisibility :: Lens' Audience (Maybe Text)
aVisibility
  = lens _aVisibility (\ s a -> s{_aVisibility = a})

-- | The access control list entry.
aItem :: Lens' Audience (Maybe PlusDomainsACLentryResource)
aItem = lens _aItem (\ s a -> s{_aItem = a})

-- | The number of people in this circle. This only applies if entity_type is
-- CIRCLE.
aMemberCount :: Lens' Audience (Maybe Word32)
aMemberCount
  = lens _aMemberCount (\ s a -> s{_aMemberCount = a})

instance FromJSON Audience where
        parseJSON
          = withObject "Audience"
              (\ o ->
                 Audience <$>
                   (o .:? "etag") <*> (o .:? "kind" .!= "plus#audience")
                     <*> (o .:? "visibility")
                     <*> (o .:? "item")
                     <*> (o .:? "memberCount"))

instance ToJSON Audience where
        toJSON Audience{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag, Just ("kind" .= _aKind),
                  ("visibility" .=) <$> _aVisibility,
                  ("item" .=) <$> _aItem,
                  ("memberCount" .=) <$> _aMemberCount])

-- | The full image URL for photo attachments.
--
-- /See:/ 'fullImage' smart constructor.
data FullImage = FullImage
    { _fiHeight :: !(Maybe Word32)
    , _fiURL    :: !(Maybe Text)
    , _fiWidth  :: !(Maybe Word32)
    , _fiType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FullImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiHeight'
--
-- * 'fiURL'
--
-- * 'fiWidth'
--
-- * 'fiType'
fullImage
    :: FullImage
fullImage =
    FullImage
    { _fiHeight = Nothing
    , _fiURL = Nothing
    , _fiWidth = Nothing
    , _fiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
fiHeight :: Lens' FullImage (Maybe Word32)
fiHeight = lens _fiHeight (\ s a -> s{_fiHeight = a})

-- | URL of the image.
fiURL :: Lens' FullImage (Maybe Text)
fiURL = lens _fiURL (\ s a -> s{_fiURL = a})

-- | The width, in pixels, of the linked resource.
fiWidth :: Lens' FullImage (Maybe Word32)
fiWidth = lens _fiWidth (\ s a -> s{_fiWidth = a})

-- | Media type of the link.
fiType :: Lens' FullImage (Maybe Text)
fiType = lens _fiType (\ s a -> s{_fiType = a})

instance FromJSON FullImage where
        parseJSON
          = withObject "FullImage"
              (\ o ->
                 FullImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON FullImage where
        toJSON FullImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _fiHeight, ("url" .=) <$> _fiURL,
                  ("width" .=) <$> _fiWidth, ("type" .=) <$> _fiType])

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

-- | People who +1\'d this activity.
--
-- /See:/ 'plusoners' smart constructor.
data Plusoners = Plusoners
    { _pTotalItems :: !(Maybe Word32)
    , _pSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Plusoners' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pTotalItems'
--
-- * 'pSelfLink'
plusoners
    :: Plusoners
plusoners =
    Plusoners
    { _pTotalItems = Nothing
    , _pSelfLink = Nothing
    }

-- | Total number of people who +1\'d this activity.
pTotalItems :: Lens' Plusoners (Maybe Word32)
pTotalItems
  = lens _pTotalItems (\ s a -> s{_pTotalItems = a})

-- | The URL for the collection of people who +1\'d this activity.
pSelfLink :: Lens' Plusoners (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

instance FromJSON Plusoners where
        parseJSON
          = withObject "Plusoners"
              (\ o ->
                 Plusoners <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON Plusoners where
        toJSON Plusoners{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _pTotalItems,
                  ("selfLink" .=) <$> _pSelfLink])

-- | The representation of the person\'s profile photo.
--
-- /See:/ 'image' smart constructor.
data Image = Image
    { _iURL       :: !(Maybe Text)
    , _iIsDefault :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iURL'
--
-- * 'iIsDefault'
image
    :: Image
image =
    Image
    { _iURL = Nothing
    , _iIsDefault = Nothing
    }

-- | The URL of the person\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
iURL :: Lens' Image (Maybe Text)
iURL = lens _iURL (\ s a -> s{_iURL = a})

-- | Whether the person\'s profile photo is the default one
iIsDefault :: Lens' Image (Maybe Bool)
iIsDefault
  = lens _iIsDefault (\ s a -> s{_iIsDefault = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image <$> (o .:? "url") <*> (o .:? "isDefault"))

instance ToJSON Image where
        toJSON Image{..}
          = object
              (catMaybes
                 [("url" .=) <$> _iURL,
                  ("isDefault" .=) <$> _iIsDefault])

--
-- /See:/ 'circle' smart constructor.
data Circle = Circle
    { _cEtag        :: !(Maybe Text)
    , _cKind        :: !Text
    , _cPeople      :: !(Maybe People)
    , _cSelfLink    :: !(Maybe Text)
    , _cDisplayName :: !(Maybe Text)
    , _cId          :: !(Maybe Text)
    , _cDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
cPeople :: Lens' Circle (Maybe People)
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

instance FromJSON Circle where
        parseJSON
          = withObject "Circle"
              (\ o ->
                 Circle <$>
                   (o .:? "etag") <*> (o .:? "kind" .!= "plus#circle")
                     <*> (o .:? "people")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "description"))

instance ToJSON Circle where
        toJSON Circle{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cEtag, Just ("kind" .= _cKind),
                  ("people" .=) <$> _cPeople,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("displayName" .=) <$> _cDisplayName,
                  ("id" .=) <$> _cId,
                  ("description" .=) <$> _cDescription])

-- | The author\'s Google profile image.
--
-- /See:/ 'authorImage' smart constructor.
newtype AuthorImage = AuthorImage
    { _aiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuthorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiURL'
authorImage
    :: AuthorImage
authorImage =
    AuthorImage
    { _aiURL = Nothing
    }

-- | The URL of the author\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
aiURL :: Lens' AuthorImage (Maybe Text)
aiURL = lens _aiURL (\ s a -> s{_aiURL = a})

instance FromJSON AuthorImage where
        parseJSON
          = withObject "AuthorImage"
              (\ o -> AuthorImage <$> (o .:? "url"))

instance ToJSON AuthorImage where
        toJSON AuthorImage{..}
          = object (catMaybes [("url" .=) <$> _aiURL])

--
-- /See:/ 'thumbnailsItem' smart constructor.
data ThumbnailsItem = ThumbnailsItem
    { _tiImage       :: !(Maybe ThumbnailsItemImage)
    , _tiURL         :: !(Maybe Text)
    , _tiDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThumbnailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiImage'
--
-- * 'tiURL'
--
-- * 'tiDescription'
thumbnailsItem
    :: ThumbnailsItem
thumbnailsItem =
    ThumbnailsItem
    { _tiImage = Nothing
    , _tiURL = Nothing
    , _tiDescription = Nothing
    }

-- | Image resource.
tiImage :: Lens' ThumbnailsItem (Maybe ThumbnailsItemImage)
tiImage = lens _tiImage (\ s a -> s{_tiImage = a})

-- | URL of the webpage containing the image.
tiURL :: Lens' ThumbnailsItem (Maybe Text)
tiURL = lens _tiURL (\ s a -> s{_tiURL = a})

-- | Potential name of the thumbnail.
tiDescription :: Lens' ThumbnailsItem (Maybe Text)
tiDescription
  = lens _tiDescription
      (\ s a -> s{_tiDescription = a})

instance FromJSON ThumbnailsItem where
        parseJSON
          = withObject "ThumbnailsItem"
              (\ o ->
                 ThumbnailsItem <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "description"))

instance ToJSON ThumbnailsItem where
        toJSON ThumbnailsItem{..}
          = object
              (catMaybes
                 [("image" .=) <$> _tiImage, ("url" .=) <$> _tiURL,
                  ("description" .=) <$> _tiDescription])

--
-- /See:/ 'emailsItem' smart constructor.
data EmailsItem = EmailsItem
    { _eiValue :: !(Maybe Text)
    , _eiType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EmailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiValue'
--
-- * 'eiType'
emailsItem
    :: EmailsItem
emailsItem =
    EmailsItem
    { _eiValue = Nothing
    , _eiType = Nothing
    }

-- | The email address.
eiValue :: Lens' EmailsItem (Maybe Text)
eiValue = lens _eiValue (\ s a -> s{_eiValue = a})

-- | The type of address. Possible values include, but are not limited to,
-- the following values: - \"account\" - Google account email address. -
-- \"home\" - Home email address. - \"work\" - Work email address. -
-- \"other\" - Other.
eiType :: Lens' EmailsItem (Maybe Text)
eiType = lens _eiType (\ s a -> s{_eiType = a})

instance FromJSON EmailsItem where
        parseJSON
          = withObject "EmailsItem"
              (\ o ->
                 EmailsItem <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON EmailsItem where
        toJSON EmailsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _eiValue, ("type" .=) <$> _eiType])

--
-- /See:/ 'person' smart constructor.
data Person = Person
    { _pCurrentLocation    :: !(Maybe Text)
    , _pEtag               :: !(Maybe Text)
    , _pImage              :: !(Maybe Image)
    , _pBraggingRights     :: !(Maybe Text)
    , _pPlacesLived        :: !(Maybe [PlacesLivedItem])
    , _pPlusOneCount       :: !(Maybe Int32)
    , _pObjectType         :: !(Maybe Text)
    , _pCover              :: !(Maybe Cover)
    , _pKind               :: !Text
    , _pRelationshipStatus :: !(Maybe Text)
    , _pURLs               :: !(Maybe [URLsItem])
    , _pDomain             :: !(Maybe Text)
    , _pURL                :: !(Maybe Text)
    , _pVerified           :: !(Maybe Bool)
    , _pBirthday           :: !(Maybe Text)
    , _pIsPlusUser         :: !(Maybe Bool)
    , _pTagline            :: !(Maybe Text)
    , _pGender             :: !(Maybe Text)
    , _pName               :: !(Maybe Name)
    , _pEmails             :: !(Maybe [EmailsItem])
    , _pOccupation         :: !(Maybe Text)
    , _pSkills             :: !(Maybe Text)
    , _pAboutMe            :: !(Maybe Text)
    , _pDisplayName        :: !(Maybe Text)
    , _pId                 :: !(Maybe Text)
    , _pNickname           :: !(Maybe Text)
    , _pOrganizations      :: !(Maybe [OrganizationsItem])
    , _pCircledByCount     :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCurrentLocation'
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

-- | ETag of this response for caching purposes.
pEtag :: Lens' Person (Maybe Text)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | The representation of the person\'s profile photo.
pImage :: Lens' Person (Maybe Image)
pImage = lens _pImage (\ s a -> s{_pImage = a})

-- | The \"bragging rights\" line of this person.
pBraggingRights :: Lens' Person (Maybe Text)
pBraggingRights
  = lens _pBraggingRights
      (\ s a -> s{_pBraggingRights = a})

-- | A list of places where this person has lived.
pPlacesLived :: Lens' Person [PlacesLivedItem]
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
pCover :: Lens' Person (Maybe Cover)
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
pURLs :: Lens' Person [URLsItem]
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
pName :: Lens' Person (Maybe Name)
pName = lens _pName (\ s a -> s{_pName = a})

-- | A list of email addresses that this person has, including their Google
-- account email address, and the public verified email addresses on their
-- Google+ profile. The plus.profile.emails.read scope is needed to
-- retrieve these email addresses, or the email scope can be used to
-- retrieve just the Google account email address.
pEmails :: Lens' Person [EmailsItem]
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
pOrganizations :: Lens' Person [OrganizationsItem]
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
                   (o .:? "currentLocation") <*> (o .:? "etag") <*>
                     (o .:? "image")
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
                  ("aboutMe" .=) <$> _pAboutMe,
                  ("displayName" .=) <$> _pDisplayName,
                  ("id" .=) <$> _pId, ("nickname" .=) <$> _pNickname,
                  ("organizations" .=) <$> _pOrganizations,
                  ("circledByCount" .=) <$> _pCircledByCount])

--
-- /See:/ 'videostream' smart constructor.
data Videostream = Videostream
    { _vHeight :: !(Maybe Int32)
    , _vURL    :: !(Maybe Text)
    , _vWidth  :: !(Maybe Int32)
    , _vType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Videostream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vHeight'
--
-- * 'vURL'
--
-- * 'vWidth'
--
-- * 'vType'
videostream
    :: Videostream
videostream =
    Videostream
    { _vHeight = Nothing
    , _vURL = Nothing
    , _vWidth = Nothing
    , _vType = Nothing
    }

-- | The height, in pixels, of the video resource.
vHeight :: Lens' Videostream (Maybe Int32)
vHeight = lens _vHeight (\ s a -> s{_vHeight = a})

-- | URL of the video stream.
vURL :: Lens' Videostream (Maybe Text)
vURL = lens _vURL (\ s a -> s{_vURL = a})

-- | The width, in pixels, of the video resource.
vWidth :: Lens' Videostream (Maybe Int32)
vWidth = lens _vWidth (\ s a -> s{_vWidth = a})

-- | MIME type of the video stream.
vType :: Lens' Videostream (Maybe Text)
vType = lens _vType (\ s a -> s{_vType = a})

instance FromJSON Videostream where
        parseJSON
          = withObject "Videostream"
              (\ o ->
                 Videostream <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON Videostream where
        toJSON Videostream{..}
          = object
              (catMaybes
                 [("height" .=) <$> _vHeight, ("url" .=) <$> _vURL,
                  ("width" .=) <$> _vWidth, ("type" .=) <$> _vType])

-- | The cover photo content.
--
-- /See:/ 'cover' smart constructor.
data Cover = Cover
    { _cLayout     :: !(Maybe Text)
    , _cCoverInfo  :: !(Maybe CoverInfo)
    , _cCoverPhoto :: !(Maybe CoverPhoto)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Cover' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cLayout'
--
-- * 'cCoverInfo'
--
-- * 'cCoverPhoto'
cover
    :: Cover
cover =
    Cover
    { _cLayout = Nothing
    , _cCoverInfo = Nothing
    , _cCoverPhoto = Nothing
    }

-- | The layout of the cover art. Possible values include, but are not
-- limited to, the following values: - \"banner\" - One large image banner.
cLayout :: Lens' Cover (Maybe Text)
cLayout = lens _cLayout (\ s a -> s{_cLayout = a})

-- | Extra information about the cover photo.
cCoverInfo :: Lens' Cover (Maybe CoverInfo)
cCoverInfo
  = lens _cCoverInfo (\ s a -> s{_cCoverInfo = a})

-- | The person\'s primary cover image.
cCoverPhoto :: Lens' Cover (Maybe CoverPhoto)
cCoverPhoto
  = lens _cCoverPhoto (\ s a -> s{_cCoverPhoto = a})

instance FromJSON Cover where
        parseJSON
          = withObject "Cover"
              (\ o ->
                 Cover <$>
                   (o .:? "layout") <*> (o .:? "coverInfo") <*>
                     (o .:? "coverPhoto"))

instance ToJSON Cover where
        toJSON Cover{..}
          = object
              (catMaybes
                 [("layout" .=) <$> _cLayout,
                  ("coverInfo" .=) <$> _cCoverInfo,
                  ("coverPhoto" .=) <$> _cCoverPhoto])

--
-- /See:/ 'organizationsItem' smart constructor.
data OrganizationsItem = OrganizationsItem
    { _oiDePartment  :: !(Maybe Text)
    , _oiLocation    :: !(Maybe Text)
    , _oiEndDate     :: !(Maybe Text)
    , _oiPrimary     :: !(Maybe Bool)
    , _oiStartDate   :: !(Maybe Text)
    , _oiName        :: !(Maybe Text)
    , _oiTitle       :: !(Maybe Text)
    , _oiType        :: !(Maybe Text)
    , _oiDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiDePartment'
--
-- * 'oiLocation'
--
-- * 'oiEndDate'
--
-- * 'oiPrimary'
--
-- * 'oiStartDate'
--
-- * 'oiName'
--
-- * 'oiTitle'
--
-- * 'oiType'
--
-- * 'oiDescription'
organizationsItem
    :: OrganizationsItem
organizationsItem =
    OrganizationsItem
    { _oiDePartment = Nothing
    , _oiLocation = Nothing
    , _oiEndDate = Nothing
    , _oiPrimary = Nothing
    , _oiStartDate = Nothing
    , _oiName = Nothing
    , _oiTitle = Nothing
    , _oiType = Nothing
    , _oiDescription = Nothing
    }

-- | The department within the organization. Deprecated.
oiDePartment :: Lens' OrganizationsItem (Maybe Text)
oiDePartment
  = lens _oiDePartment (\ s a -> s{_oiDePartment = a})

-- | The location of this organization. Deprecated.
oiLocation :: Lens' OrganizationsItem (Maybe Text)
oiLocation
  = lens _oiLocation (\ s a -> s{_oiLocation = a})

-- | The date that the person left this organization.
oiEndDate :: Lens' OrganizationsItem (Maybe Text)
oiEndDate
  = lens _oiEndDate (\ s a -> s{_oiEndDate = a})

-- | If \"true\", indicates this organization is the person\'s primary one,
-- which is typically interpreted as the current one.
oiPrimary :: Lens' OrganizationsItem (Maybe Bool)
oiPrimary
  = lens _oiPrimary (\ s a -> s{_oiPrimary = a})

-- | The date that the person joined this organization.
oiStartDate :: Lens' OrganizationsItem (Maybe Text)
oiStartDate
  = lens _oiStartDate (\ s a -> s{_oiStartDate = a})

-- | The name of the organization.
oiName :: Lens' OrganizationsItem (Maybe Text)
oiName = lens _oiName (\ s a -> s{_oiName = a})

-- | The person\'s job title or role within the organization.
oiTitle :: Lens' OrganizationsItem (Maybe Text)
oiTitle = lens _oiTitle (\ s a -> s{_oiTitle = a})

-- | The type of organization. Possible values include, but are not limited
-- to, the following values: - \"work\" - Work. - \"school\" - School.
oiType :: Lens' OrganizationsItem (Maybe Text)
oiType = lens _oiType (\ s a -> s{_oiType = a})

-- | A short description of the person\'s role in this organization.
-- Deprecated.
oiDescription :: Lens' OrganizationsItem (Maybe Text)
oiDescription
  = lens _oiDescription
      (\ s a -> s{_oiDescription = a})

instance FromJSON OrganizationsItem where
        parseJSON
          = withObject "OrganizationsItem"
              (\ o ->
                 OrganizationsItem <$>
                   (o .:? "department") <*> (o .:? "location") <*>
                     (o .:? "endDate")
                     <*> (o .:? "primary")
                     <*> (o .:? "startDate")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON OrganizationsItem where
        toJSON OrganizationsItem{..}
          = object
              (catMaybes
                 [("department" .=) <$> _oiDePartment,
                  ("location" .=) <$> _oiLocation,
                  ("endDate" .=) <$> _oiEndDate,
                  ("primary" .=) <$> _oiPrimary,
                  ("startDate" .=) <$> _oiStartDate,
                  ("name" .=) <$> _oiName, ("title" .=) <$> _oiTitle,
                  ("type" .=) <$> _oiType,
                  ("description" .=) <$> _oiDescription])

-- | Image resource.
--
-- /See:/ 'thumbnailsItemImage' smart constructor.
data ThumbnailsItemImage = ThumbnailsItemImage
    { _tiiHeight :: !(Maybe Word32)
    , _tiiURL    :: !(Maybe Text)
    , _tiiWidth  :: !(Maybe Word32)
    , _tiiType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThumbnailsItemImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiHeight'
--
-- * 'tiiURL'
--
-- * 'tiiWidth'
--
-- * 'tiiType'
thumbnailsItemImage
    :: ThumbnailsItemImage
thumbnailsItemImage =
    ThumbnailsItemImage
    { _tiiHeight = Nothing
    , _tiiURL = Nothing
    , _tiiWidth = Nothing
    , _tiiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
tiiHeight :: Lens' ThumbnailsItemImage (Maybe Word32)
tiiHeight
  = lens _tiiHeight (\ s a -> s{_tiiHeight = a})

-- | Image url.
tiiURL :: Lens' ThumbnailsItemImage (Maybe Text)
tiiURL = lens _tiiURL (\ s a -> s{_tiiURL = a})

-- | The width, in pixels, of the linked resource.
tiiWidth :: Lens' ThumbnailsItemImage (Maybe Word32)
tiiWidth = lens _tiiWidth (\ s a -> s{_tiiWidth = a})

-- | Media type of the link.
tiiType :: Lens' ThumbnailsItemImage (Maybe Text)
tiiType = lens _tiiType (\ s a -> s{_tiiType = a})

instance FromJSON ThumbnailsItemImage where
        parseJSON
          = withObject "ThumbnailsItemImage"
              (\ o ->
                 ThumbnailsItemImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON ThumbnailsItemImage where
        toJSON ThumbnailsItemImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _tiiHeight,
                  ("url" .=) <$> _tiiURL, ("width" .=) <$> _tiiWidth,
                  ("type" .=) <$> _tiiType])

-- | The preview image for photos or videos.
--
-- /See:/ 'attachmentsItemImage' smart constructor.
data AttachmentsItemImage = AttachmentsItemImage
    { _aiiHeight :: !(Maybe Word32)
    , _aiiURL    :: !(Maybe Text)
    , _aiiWidth  :: !(Maybe Word32)
    , _aiiType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttachmentsItemImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiHeight'
--
-- * 'aiiURL'
--
-- * 'aiiWidth'
--
-- * 'aiiType'
attachmentsItemImage
    :: AttachmentsItemImage
attachmentsItemImage =
    AttachmentsItemImage
    { _aiiHeight = Nothing
    , _aiiURL = Nothing
    , _aiiWidth = Nothing
    , _aiiType = Nothing
    }

-- | The height, in pixels, of the linked resource.
aiiHeight :: Lens' AttachmentsItemImage (Maybe Word32)
aiiHeight
  = lens _aiiHeight (\ s a -> s{_aiiHeight = a})

-- | Image URL.
aiiURL :: Lens' AttachmentsItemImage (Maybe Text)
aiiURL = lens _aiiURL (\ s a -> s{_aiiURL = a})

-- | The width, in pixels, of the linked resource.
aiiWidth :: Lens' AttachmentsItemImage (Maybe Word32)
aiiWidth = lens _aiiWidth (\ s a -> s{_aiiWidth = a})

-- | Media type of the link.
aiiType :: Lens' AttachmentsItemImage (Maybe Text)
aiiType = lens _aiiType (\ s a -> s{_aiiType = a})

instance FromJSON AttachmentsItemImage where
        parseJSON
          = withObject "AttachmentsItemImage"
              (\ o ->
                 AttachmentsItemImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width")
                     <*> (o .:? "type"))

instance ToJSON AttachmentsItemImage where
        toJSON AttachmentsItemImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _aiiHeight,
                  ("url" .=) <$> _aiiURL, ("width" .=) <$> _aiiWidth,
                  ("type" .=) <$> _aiiType])

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
-- /See:/ 'circleFeed' smart constructor.
data CircleFeed = CircleFeed
    { _cfTotalItems    :: !(Maybe Int32)
    , _cfEtag          :: !(Maybe Text)
    , _cfNextPageToken :: !(Maybe Text)
    , _cfNextLink      :: !(Maybe Text)
    , _cfKind          :: !Text
    , _cfItems         :: !(Maybe [Circle])
    , _cfSelfLink      :: !(Maybe Text)
    , _cfTitle         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CircleFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfTotalItems'
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
-- * 'cfSelfLink'
--
-- * 'cfTitle'
circleFeed
    :: CircleFeed
circleFeed =
    CircleFeed
    { _cfTotalItems = Nothing
    , _cfEtag = Nothing
    , _cfNextPageToken = Nothing
    , _cfNextLink = Nothing
    , _cfKind = "plus#circleFeed"
    , _cfItems = Nothing
    , _cfSelfLink = Nothing
    , _cfTitle = Nothing
    }

-- | The total number of circles. The number of circles in this response may
-- be smaller due to paging.
cfTotalItems :: Lens' CircleFeed (Maybe Int32)
cfTotalItems
  = lens _cfTotalItems (\ s a -> s{_cfTotalItems = a})

-- | ETag of this response for caching purposes.
cfEtag :: Lens' CircleFeed (Maybe Text)
cfEtag = lens _cfEtag (\ s a -> s{_cfEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
cfNextPageToken :: Lens' CircleFeed (Maybe Text)
cfNextPageToken
  = lens _cfNextPageToken
      (\ s a -> s{_cfNextPageToken = a})

-- | Link to the next page of circles.
cfNextLink :: Lens' CircleFeed (Maybe Text)
cfNextLink
  = lens _cfNextLink (\ s a -> s{_cfNextLink = a})

-- | Identifies this resource as a collection of circles. Value:
-- \"plus#circleFeed\".
cfKind :: Lens' CircleFeed Text
cfKind = lens _cfKind (\ s a -> s{_cfKind = a})

-- | The circles in this page of results.
cfItems :: Lens' CircleFeed [Circle]
cfItems
  = lens _cfItems (\ s a -> s{_cfItems = a}) . _Default
      . _Coerce

-- | Link to this page of circles.
cfSelfLink :: Lens' CircleFeed (Maybe Text)
cfSelfLink
  = lens _cfSelfLink (\ s a -> s{_cfSelfLink = a})

-- | The title of this list of resources.
cfTitle :: Lens' CircleFeed (Maybe Text)
cfTitle = lens _cfTitle (\ s a -> s{_cfTitle = a})

instance FromJSON CircleFeed where
        parseJSON
          = withObject "CircleFeed"
              (\ o ->
                 CircleFeed <$>
                   (o .:? "totalItems") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "plus#circleFeed")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "title"))

instance ToJSON CircleFeed where
        toJSON CircleFeed{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _cfTotalItems,
                  ("etag" .=) <$> _cfEtag,
                  ("nextPageToken" .=) <$> _cfNextPageToken,
                  ("nextLink" .=) <$> _cfNextLink,
                  Just ("kind" .= _cfKind), ("items" .=) <$> _cfItems,
                  ("selfLink" .=) <$> _cfSelfLink,
                  ("title" .=) <$> _cfTitle])

-- | Extra information about the cover photo.
--
-- /See:/ 'coverInfo' smart constructor.
data CoverInfo = CoverInfo
    { _ciTopImageOffset  :: !(Maybe Int32)
    , _ciLeftImageOffset :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoverInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciTopImageOffset'
--
-- * 'ciLeftImageOffset'
coverInfo
    :: CoverInfo
coverInfo =
    CoverInfo
    { _ciTopImageOffset = Nothing
    , _ciLeftImageOffset = Nothing
    }

-- | The difference between the top position of the cover image and the
-- actual displayed cover image. Only valid for banner layout.
ciTopImageOffset :: Lens' CoverInfo (Maybe Int32)
ciTopImageOffset
  = lens _ciTopImageOffset
      (\ s a -> s{_ciTopImageOffset = a})

-- | The difference between the left position of the cover image and the
-- actual displayed cover image. Only valid for banner layout.
ciLeftImageOffset :: Lens' CoverInfo (Maybe Int32)
ciLeftImageOffset
  = lens _ciLeftImageOffset
      (\ s a -> s{_ciLeftImageOffset = a})

instance FromJSON CoverInfo where
        parseJSON
          = withObject "CoverInfo"
              (\ o ->
                 CoverInfo <$>
                   (o .:? "topImageOffset") <*>
                     (o .:? "leftImageOffset"))

instance ToJSON CoverInfo where
        toJSON CoverInfo{..}
          = object
              (catMaybes
                 [("topImageOffset" .=) <$> _ciTopImageOffset,
                  ("leftImageOffset" .=) <$> _ciLeftImageOffset])

-- | If the attachment is a video, the embeddable link.
--
-- /See:/ 'embed' smart constructor.
data Embed = Embed
    { _eURL  :: !(Maybe Text)
    , _eType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Embed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eURL'
--
-- * 'eType'
embed
    :: Embed
embed =
    Embed
    { _eURL = Nothing
    , _eType = Nothing
    }

-- | URL of the link.
eURL :: Lens' Embed (Maybe Text)
eURL = lens _eURL (\ s a -> s{_eURL = a})

-- | Media type of the link.
eType :: Lens' Embed (Maybe Text)
eType = lens _eType (\ s a -> s{_eType = a})

instance FromJSON Embed where
        parseJSON
          = withObject "Embed"
              (\ o -> Embed <$> (o .:? "url") <*> (o .:? "type"))

instance ToJSON Embed where
        toJSON Embed{..}
          = object
              (catMaybes
                 [("url" .=) <$> _eURL, ("type" .=) <$> _eType])

-- | The people in this circle.
--
-- /See:/ 'people' smart constructor.
newtype People = People
    { _peoTotalItems :: Maybe Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'People' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peoTotalItems'
people
    :: People
people =
    People
    { _peoTotalItems = Nothing
    }

-- | The total number of people in this circle.
peoTotalItems :: Lens' People (Maybe Word32)
peoTotalItems
  = lens _peoTotalItems
      (\ s a -> s{_peoTotalItems = a})

instance FromJSON People where
        parseJSON
          = withObject "People"
              (\ o -> People <$> (o .:? "totalItems"))

instance ToJSON People where
        toJSON People{..}
          = object
              (catMaybes [("totalItems" .=) <$> _peoTotalItems])

-- | The person who performed this activity.
--
-- /See:/ 'actor' smart constructor.
data Actor = Actor
    { _aImage        :: !(Maybe ActorImage)
    , _aURL          :: !(Maybe Text)
    , _aName         :: !(Maybe ActorName)
    , _aDisplayName  :: !(Maybe Text)
    , _aId           :: !(Maybe Text)
    , _aVerification :: !(Maybe Verification)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Actor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aImage'
--
-- * 'aURL'
--
-- * 'aName'
--
-- * 'aDisplayName'
--
-- * 'aId'
--
-- * 'aVerification'
actor
    :: Actor
actor =
    Actor
    { _aImage = Nothing
    , _aURL = Nothing
    , _aName = Nothing
    , _aDisplayName = Nothing
    , _aId = Nothing
    , _aVerification = Nothing
    }

-- | The image representation of the actor.
aImage :: Lens' Actor (Maybe ActorImage)
aImage = lens _aImage (\ s a -> s{_aImage = a})

-- | The link to the actor\'s Google profile.
aURL :: Lens' Actor (Maybe Text)
aURL = lens _aURL (\ s a -> s{_aURL = a})

-- | An object representation of the individual components of name.
aName :: Lens' Actor (Maybe ActorName)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The name of the actor, suitable for display.
aDisplayName :: Lens' Actor (Maybe Text)
aDisplayName
  = lens _aDisplayName (\ s a -> s{_aDisplayName = a})

-- | The ID of the actor\'s Person resource.
aId :: Lens' Actor (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Verification status of actor.
aVerification :: Lens' Actor (Maybe Verification)
aVerification
  = lens _aVerification
      (\ s a -> s{_aVerification = a})

instance FromJSON Actor where
        parseJSON
          = withObject "Actor"
              (\ o ->
                 Actor <$>
                   (o .:? "image") <*> (o .:? "url") <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "verification"))

instance ToJSON Actor where
        toJSON Actor{..}
          = object
              (catMaybes
                 [("image" .=) <$> _aImage, ("url" .=) <$> _aURL,
                  ("name" .=) <$> _aName,
                  ("displayName" .=) <$> _aDisplayName,
                  ("id" .=) <$> _aId,
                  ("verification" .=) <$> _aVerification])

--
-- /See:/ 'plusDomainsACLentryResource' smart constructor.
data PlusDomainsACLentryResource = PlusDomainsACLentryResource
    { _pdarDisplayName :: !(Maybe Text)
    , _pdarId          :: !(Maybe Text)
    , _pdarType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlusDomainsACLentryResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdarDisplayName'
--
-- * 'pdarId'
--
-- * 'pdarType'
plusDomainsACLentryResource
    :: PlusDomainsACLentryResource
plusDomainsACLentryResource =
    PlusDomainsACLentryResource
    { _pdarDisplayName = Nothing
    , _pdarId = Nothing
    , _pdarType = Nothing
    }

-- | A descriptive name for this entry. Suitable for display.
pdarDisplayName :: Lens' PlusDomainsACLentryResource (Maybe Text)
pdarDisplayName
  = lens _pdarDisplayName
      (\ s a -> s{_pdarDisplayName = a})

-- | The ID of the entry. For entries of type \"person\" or \"circle\", this
-- is the ID of the resource. For other types, this property is not set.
pdarId :: Lens' PlusDomainsACLentryResource (Maybe Text)
pdarId = lens _pdarId (\ s a -> s{_pdarId = a})

-- | The type of entry describing to whom access is granted. Possible values
-- are: - \"person\" - Access to an individual. - \"circle\" - Access to
-- members of a circle. - \"myCircles\" - Access to members of all the
-- person\'s circles. - \"extendedCircles\" - Access to members of all the
-- person\'s circles, plus all of the people in their circles. - \"domain\"
-- - Access to members of the person\'s Google Apps domain. - \"public\" -
-- Access to anyone on the web.
pdarType :: Lens' PlusDomainsACLentryResource (Maybe Text)
pdarType = lens _pdarType (\ s a -> s{_pdarType = a})

instance FromJSON PlusDomainsACLentryResource where
        parseJSON
          = withObject "PlusDomainsACLentryResource"
              (\ o ->
                 PlusDomainsACLentryResource <$>
                   (o .:? "displayName") <*> (o .:? "id") <*>
                     (o .:? "type"))

instance ToJSON PlusDomainsACLentryResource where
        toJSON PlusDomainsACLentryResource{..}
          = object
              (catMaybes
                 [("displayName" .=) <$> _pdarDisplayName,
                  ("id" .=) <$> _pdarId, ("type" .=) <$> _pdarType])

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

-- | The image representation of the original actor.
--
-- /See:/ 'objectActorImage' smart constructor.
newtype ObjectActorImage = ObjectActorImage
    { _oaiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaiURL'
objectActorImage
    :: ObjectActorImage
objectActorImage =
    ObjectActorImage
    { _oaiURL = Nothing
    }

-- | A URL that points to a thumbnail photo of the original actor.
oaiURL :: Lens' ObjectActorImage (Maybe Text)
oaiURL = lens _oaiURL (\ s a -> s{_oaiURL = a})

instance FromJSON ObjectActorImage where
        parseJSON
          = withObject "ObjectActorImage"
              (\ o -> ObjectActorImage <$> (o .:? "url"))

instance ToJSON ObjectActorImage where
        toJSON ObjectActorImage{..}
          = object (catMaybes [("url" .=) <$> _oaiURL])

-- | An object representation of the individual components of name.
--
-- /See:/ 'actorName' smart constructor.
data ActorName = ActorName
    { _anGivenName  :: !(Maybe Text)
    , _anFamilyName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActorName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'anGivenName'
--
-- * 'anFamilyName'
actorName
    :: ActorName
actorName =
    ActorName
    { _anGivenName = Nothing
    , _anFamilyName = Nothing
    }

-- | The given name (\"first name\") of the actor.
anGivenName :: Lens' ActorName (Maybe Text)
anGivenName
  = lens _anGivenName (\ s a -> s{_anGivenName = a})

-- | The family name (\"last name\") of the actor.
anFamilyName :: Lens' ActorName (Maybe Text)
anFamilyName
  = lens _anFamilyName (\ s a -> s{_anFamilyName = a})

instance FromJSON ActorName where
        parseJSON
          = withObject "ActorName"
              (\ o ->
                 ActorName <$>
                   (o .:? "givenName") <*> (o .:? "familyName"))

instance ToJSON ActorName where
        toJSON ActorName{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _anGivenName,
                  ("familyName" .=) <$> _anFamilyName])

-- | The image representation of the actor.
--
-- /See:/ 'actorImage' smart constructor.
newtype ActorImage = ActorImage
    { _actURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actURL'
actorImage
    :: ActorImage
actorImage =
    ActorImage
    { _actURL = Nothing
    }

-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
actURL :: Lens' ActorImage (Maybe Text)
actURL = lens _actURL (\ s a -> s{_actURL = a})

instance FromJSON ActorImage where
        parseJSON
          = withObject "ActorImage"
              (\ o -> ActorImage <$> (o .:? "url"))

instance ToJSON ActorImage where
        toJSON ActorImage{..}
          = object (catMaybes [("url" .=) <$> _actURL])

-- | Comments in reply to this activity.
--
-- /See:/ 'replies' smart constructor.
data Replies = Replies
    { _rTotalItems :: !(Maybe Word32)
    , _rSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Replies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rTotalItems'
--
-- * 'rSelfLink'
replies
    :: Replies
replies =
    Replies
    { _rTotalItems = Nothing
    , _rSelfLink = Nothing
    }

-- | Total number of comments on this activity.
rTotalItems :: Lens' Replies (Maybe Word32)
rTotalItems
  = lens _rTotalItems (\ s a -> s{_rTotalItems = a})

-- | The URL for the collection of comments in reply to this activity.
rSelfLink :: Lens' Replies (Maybe Text)
rSelfLink
  = lens _rSelfLink (\ s a -> s{_rSelfLink = a})

instance FromJSON Replies where
        parseJSON
          = withObject "Replies"
              (\ o ->
                 Replies <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON Replies where
        toJSON Replies{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _rTotalItems,
                  ("selfLink" .=) <$> _rSelfLink])

--
-- /See:/ 'media' smart constructor.
data Media = Media
    { _mSizeBytes        :: !(Maybe Int64)
    , _mSummary          :: !(Maybe Text)
    , _mEtag             :: !(Maybe Text)
    , _mHeight           :: !(Maybe Word32)
    , _mVideoDuration    :: !(Maybe Int64)
    , _mVideoStatus      :: !(Maybe Text)
    , _mKind             :: !Text
    , _mPublished        :: !(Maybe DateTime')
    , _mURL              :: !(Maybe Text)
    , _mWidth            :: !(Maybe Word32)
    , _mMediaURL         :: !(Maybe Text)
    , _mStreams          :: !(Maybe [Videostream])
    , _mExif             :: !(Maybe Exif)
    , _mDisplayName      :: !(Maybe Text)
    , _mAuthor           :: !(Maybe Author)
    , _mId               :: !(Maybe Text)
    , _mUpdated          :: !(Maybe DateTime')
    , _mMediaCreatedTime :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mURL'
--
-- * 'mWidth'
--
-- * 'mMediaURL'
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
    , _mURL = Nothing
    , _mWidth = Nothing
    , _mMediaURL = Nothing
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
  = lens _mPublished (\ s a -> s{_mPublished = a}) .
      mapping _DateTime

-- | The URL for the page that hosts this media.
mURL :: Lens' Media (Maybe Text)
mURL = lens _mURL (\ s a -> s{_mURL = a})

-- | The width in pixels of the original image.
mWidth :: Lens' Media (Maybe Word32)
mWidth = lens _mWidth (\ s a -> s{_mWidth = a})

-- | The URL of this photo or video\'s still image.
mMediaURL :: Lens' Media (Maybe Text)
mMediaURL
  = lens _mMediaURL (\ s a -> s{_mMediaURL = a})

-- | The list of video streams for this video. There might be several
-- different streams available for a single video, either Flash or MPEG, of
-- various sizes
mStreams :: Lens' Media [Videostream]
mStreams
  = lens _mStreams (\ s a -> s{_mStreams = a}) .
      _Default
      . _Coerce

-- | Exif information of the media item.
mExif :: Lens' Media (Maybe Exif)
mExif = lens _mExif (\ s a -> s{_mExif = a})

-- | The display name for this media.
mDisplayName :: Lens' Media (Maybe Text)
mDisplayName
  = lens _mDisplayName (\ s a -> s{_mDisplayName = a})

-- | The person who uploaded this media.
mAuthor :: Lens' Media (Maybe Author)
mAuthor = lens _mAuthor (\ s a -> s{_mAuthor = a})

-- | ID of this media, which is generated by the API.
mId :: Lens' Media (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | The time at which this media was last updated. This includes changes to
-- media metadata. Formatted as an RFC 3339 timestamp.
mUpdated :: Lens' Media (Maybe UTCTime)
mUpdated
  = lens _mUpdated (\ s a -> s{_mUpdated = a}) .
      mapping _DateTime

-- | The time at which this media was originally created in UTC. Formatted as
-- an RFC 3339 timestamp that matches this example:
-- 2010-11-25T14:30:27.655Z
mMediaCreatedTime :: Lens' Media (Maybe UTCTime)
mMediaCreatedTime
  = lens _mMediaCreatedTime
      (\ s a -> s{_mMediaCreatedTime = a})
      . mapping _DateTime

instance FromJSON Media where
        parseJSON
          = withObject "Media"
              (\ o ->
                 Media <$>
                   (o .:? "sizeBytes") <*> (o .:? "summary") <*>
                     (o .:? "etag")
                     <*> (o .:? "height")
                     <*> (o .:? "videoDuration")
                     <*> (o .:? "videoStatus")
                     <*> (o .:? "kind" .!= "plus#media")
                     <*> (o .:? "published")
                     <*> (o .:? "url")
                     <*> (o .:? "width")
                     <*> (o .:? "mediaUrl")
                     <*> (o .:? "streams" .!= mempty)
                     <*> (o .:? "exif")
                     <*> (o .:? "displayName")
                     <*> (o .:? "author")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "mediaCreatedTime"))

instance ToJSON Media where
        toJSON Media{..}
          = object
              (catMaybes
                 [("sizeBytes" .=) <$> _mSizeBytes,
                  ("summary" .=) <$> _mSummary, ("etag" .=) <$> _mEtag,
                  ("height" .=) <$> _mHeight,
                  ("videoDuration" .=) <$> _mVideoDuration,
                  ("videoStatus" .=) <$> _mVideoStatus,
                  Just ("kind" .= _mKind),
                  ("published" .=) <$> _mPublished,
                  ("url" .=) <$> _mURL, ("width" .=) <$> _mWidth,
                  ("mediaUrl" .=) <$> _mMediaURL,
                  ("streams" .=) <$> _mStreams, ("exif" .=) <$> _mExif,
                  ("displayName" .=) <$> _mDisplayName,
                  ("author" .=) <$> _mAuthor, ("id" .=) <$> _mId,
                  ("updated" .=) <$> _mUpdated,
                  ("mediaCreatedTime" .=) <$> _mMediaCreatedTime])

-- | An object representation of the individual components of a person\'s
-- name.
--
-- /See:/ 'name' smart constructor.
data Name = Name
    { _nGivenName       :: !(Maybe Text)
    , _nMiddleName      :: !(Maybe Text)
    , _nFormatted       :: !(Maybe Text)
    , _nHonorificPrefix :: !(Maybe Text)
    , _nFamilyName      :: !(Maybe Text)
    , _nHonorificSuffix :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Name' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nGivenName'
--
-- * 'nMiddleName'
--
-- * 'nFormatted'
--
-- * 'nHonorificPrefix'
--
-- * 'nFamilyName'
--
-- * 'nHonorificSuffix'
name
    :: Name
name =
    Name
    { _nGivenName = Nothing
    , _nMiddleName = Nothing
    , _nFormatted = Nothing
    , _nHonorificPrefix = Nothing
    , _nFamilyName = Nothing
    , _nHonorificSuffix = Nothing
    }

-- | The given name (first name) of this person.
nGivenName :: Lens' Name (Maybe Text)
nGivenName
  = lens _nGivenName (\ s a -> s{_nGivenName = a})

-- | The middle name of this person.
nMiddleName :: Lens' Name (Maybe Text)
nMiddleName
  = lens _nMiddleName (\ s a -> s{_nMiddleName = a})

-- | The full name of this person, including middle names, suffixes, etc.
nFormatted :: Lens' Name (Maybe Text)
nFormatted
  = lens _nFormatted (\ s a -> s{_nFormatted = a})

-- | The honorific prefixes (such as \"Dr.\" or \"Mrs.\") for this person.
nHonorificPrefix :: Lens' Name (Maybe Text)
nHonorificPrefix
  = lens _nHonorificPrefix
      (\ s a -> s{_nHonorificPrefix = a})

-- | The family name (last name) of this person.
nFamilyName :: Lens' Name (Maybe Text)
nFamilyName
  = lens _nFamilyName (\ s a -> s{_nFamilyName = a})

-- | The honorific suffixes (such as \"Jr.\") for this person.
nHonorificSuffix :: Lens' Name (Maybe Text)
nHonorificSuffix
  = lens _nHonorificSuffix
      (\ s a -> s{_nHonorificSuffix = a})

instance FromJSON Name where
        parseJSON
          = withObject "Name"
              (\ o ->
                 Name <$>
                   (o .:? "givenName") <*> (o .:? "middleName") <*>
                     (o .:? "formatted")
                     <*> (o .:? "honorificPrefix")
                     <*> (o .:? "familyName")
                     <*> (o .:? "honorificSuffix"))

instance ToJSON Name where
        toJSON Name{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _nGivenName,
                  ("middleName" .=) <$> _nMiddleName,
                  ("formatted" .=) <$> _nFormatted,
                  ("honorificPrefix" .=) <$> _nHonorificPrefix,
                  ("familyName" .=) <$> _nFamilyName,
                  ("honorificSuffix" .=) <$> _nHonorificSuffix])

-- | Verification status of actor.
--
-- /See:/ 'objectActorVerification' smart constructor.
newtype ObjectActorVerification = ObjectActorVerification
    { _oavAdHocVerified :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectActorVerification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oavAdHocVerified'
objectActorVerification
    :: ObjectActorVerification
objectActorVerification =
    ObjectActorVerification
    { _oavAdHocVerified = Nothing
    }

-- | Verification for one-time or manual processes.
oavAdHocVerified :: Lens' ObjectActorVerification (Maybe Text)
oavAdHocVerified
  = lens _oavAdHocVerified
      (\ s a -> s{_oavAdHocVerified = a})

instance FromJSON ObjectActorVerification where
        parseJSON
          = withObject "ObjectActorVerification"
              (\ o ->
                 ObjectActorVerification <$> (o .:? "adHocVerified"))

instance ToJSON ObjectActorVerification where
        toJSON ObjectActorVerification{..}
          = object
              (catMaybes
                 [("adHocVerified" .=) <$> _oavAdHocVerified])

--
-- /See:/ 'placesLivedItem' smart constructor.
data PlacesLivedItem = PlacesLivedItem
    { _pliValue   :: !(Maybe Text)
    , _pliPrimary :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacesLivedItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliValue'
--
-- * 'pliPrimary'
placesLivedItem
    :: PlacesLivedItem
placesLivedItem =
    PlacesLivedItem
    { _pliValue = Nothing
    , _pliPrimary = Nothing
    }

-- | A place where this person has lived. For example: \"Seattle, WA\",
-- \"Near Toronto\".
pliValue :: Lens' PlacesLivedItem (Maybe Text)
pliValue = lens _pliValue (\ s a -> s{_pliValue = a})

-- | If \"true\", this place of residence is this person\'s primary
-- residence.
pliPrimary :: Lens' PlacesLivedItem (Maybe Bool)
pliPrimary
  = lens _pliPrimary (\ s a -> s{_pliPrimary = a})

instance FromJSON PlacesLivedItem where
        parseJSON
          = withObject "PlacesLivedItem"
              (\ o ->
                 PlacesLivedItem <$>
                   (o .:? "value") <*> (o .:? "primary"))

instance ToJSON PlacesLivedItem where
        toJSON PlacesLivedItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pliValue,
                  ("primary" .=) <$> _pliPrimary])

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

--
-- /See:/ 'attachmentsItem' smart constructor.
data AttachmentsItem = AttachmentsItem
    { _attFullImage         :: !(Maybe FullImage)
    , _attImage             :: !(Maybe AttachmentsItemImage)
    , _attObjectType        :: !(Maybe Text)
    , _attPreviewThumbnails :: !(Maybe [PreviewThumbnailsItem])
    , _attURL               :: !(Maybe Text)
    , _attEmbed             :: !(Maybe Embed)
    , _attContent           :: !(Maybe Text)
    , _attThumbnails        :: !(Maybe [ThumbnailsItem])
    , _attDisplayName       :: !(Maybe Text)
    , _attId                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttachmentsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'attFullImage'
--
-- * 'attImage'
--
-- * 'attObjectType'
--
-- * 'attPreviewThumbnails'
--
-- * 'attURL'
--
-- * 'attEmbed'
--
-- * 'attContent'
--
-- * 'attThumbnails'
--
-- * 'attDisplayName'
--
-- * 'attId'
attachmentsItem
    :: AttachmentsItem
attachmentsItem =
    AttachmentsItem
    { _attFullImage = Nothing
    , _attImage = Nothing
    , _attObjectType = Nothing
    , _attPreviewThumbnails = Nothing
    , _attURL = Nothing
    , _attEmbed = Nothing
    , _attContent = Nothing
    , _attThumbnails = Nothing
    , _attDisplayName = Nothing
    , _attId = Nothing
    }

-- | The full image URL for photo attachments.
attFullImage :: Lens' AttachmentsItem (Maybe FullImage)
attFullImage
  = lens _attFullImage (\ s a -> s{_attFullImage = a})

-- | The preview image for photos or videos.
attImage :: Lens' AttachmentsItem (Maybe AttachmentsItemImage)
attImage = lens _attImage (\ s a -> s{_attImage = a})

-- | The type of media object. Possible values include, but are not limited
-- to, the following values: - \"photo\" - A photo. - \"album\" - A photo
-- album. - \"video\" - A video. - \"article\" - An article, specified by a
-- link.
attObjectType :: Lens' AttachmentsItem (Maybe Text)
attObjectType
  = lens _attObjectType
      (\ s a -> s{_attObjectType = a})

-- | When previewing, these are the optional thumbnails for the post. When
-- posting an article, choose one by setting the attachment.image.url
-- property. If you don\'t choose one, one will be chosen for you.
attPreviewThumbnails :: Lens' AttachmentsItem [PreviewThumbnailsItem]
attPreviewThumbnails
  = lens _attPreviewThumbnails
      (\ s a -> s{_attPreviewThumbnails = a})
      . _Default
      . _Coerce

-- | The link to the attachment, which should be of type text\/html.
attURL :: Lens' AttachmentsItem (Maybe Text)
attURL = lens _attURL (\ s a -> s{_attURL = a})

-- | If the attachment is a video, the embeddable link.
attEmbed :: Lens' AttachmentsItem (Maybe Embed)
attEmbed = lens _attEmbed (\ s a -> s{_attEmbed = a})

-- | If the attachment is an article, this property contains a snippet of
-- text from the article. It can also include descriptions for other types.
attContent :: Lens' AttachmentsItem (Maybe Text)
attContent
  = lens _attContent (\ s a -> s{_attContent = a})

-- | If the attachment is an album, this property is a list of potential
-- additional thumbnails from the album.
attThumbnails :: Lens' AttachmentsItem [ThumbnailsItem]
attThumbnails
  = lens _attThumbnails
      (\ s a -> s{_attThumbnails = a})
      . _Default
      . _Coerce

-- | The title of the attachment, such as a photo caption or an article
-- title.
attDisplayName :: Lens' AttachmentsItem (Maybe Text)
attDisplayName
  = lens _attDisplayName
      (\ s a -> s{_attDisplayName = a})

-- | The ID of the attachment.
attId :: Lens' AttachmentsItem (Maybe Text)
attId = lens _attId (\ s a -> s{_attId = a})

instance FromJSON AttachmentsItem where
        parseJSON
          = withObject "AttachmentsItem"
              (\ o ->
                 AttachmentsItem <$>
                   (o .:? "fullImage") <*> (o .:? "image") <*>
                     (o .:? "objectType")
                     <*> (o .:? "previewThumbnails" .!= mempty)
                     <*> (o .:? "url")
                     <*> (o .:? "embed")
                     <*> (o .:? "content")
                     <*> (o .:? "thumbnails" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON AttachmentsItem where
        toJSON AttachmentsItem{..}
          = object
              (catMaybes
                 [("fullImage" .=) <$> _attFullImage,
                  ("image" .=) <$> _attImage,
                  ("objectType" .=) <$> _attObjectType,
                  ("previewThumbnails" .=) <$> _attPreviewThumbnails,
                  ("url" .=) <$> _attURL, ("embed" .=) <$> _attEmbed,
                  ("content" .=) <$> _attContent,
                  ("thumbnails" .=) <$> _attThumbnails,
                  ("displayName" .=) <$> _attDisplayName,
                  ("id" .=) <$> _attId])

-- | Exif information of the media item.
--
-- /See:/ 'exif' smart constructor.
newtype Exif = Exif
    { _eTime :: Maybe DateTime'
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Exif' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eTime'
exif
    :: Exif
exif =
    Exif
    { _eTime = Nothing
    }

-- | The time the media was captured. Formatted as an RFC 3339 timestamp.
eTime :: Lens' Exif (Maybe UTCTime)
eTime
  = lens _eTime (\ s a -> s{_eTime = a}) .
      mapping _DateTime

instance FromJSON Exif where
        parseJSON
          = withObject "Exif" (\ o -> Exif <$> (o .:? "time"))

instance ToJSON Exif where
        toJSON Exif{..}
          = object (catMaybes [("time" .=) <$> _eTime])

-- | The object of this activity.
--
-- /See:/ 'object'' smart constructor.
data Object = Object
    { _oPlusoners       :: !(Maybe Plusoners)
    , _oAttachments     :: !(Maybe [AttachmentsItem])
    , _oObjectType      :: !(Maybe Text)
    , _oOriginalContent :: !(Maybe Text)
    , _oURL             :: !(Maybe Text)
    , _oActor           :: !(Maybe ObjectActor)
    , _oContent         :: !(Maybe Text)
    , _oReplies         :: !(Maybe Replies)
    , _oId              :: !(Maybe Text)
    , _oStatusForViewer :: !(Maybe StatusForViewer)
    , _oResharers       :: !(Maybe Resharers)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Object' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oPlusoners'
--
-- * 'oAttachments'
--
-- * 'oObjectType'
--
-- * 'oOriginalContent'
--
-- * 'oURL'
--
-- * 'oActor'
--
-- * 'oContent'
--
-- * 'oReplies'
--
-- * 'oId'
--
-- * 'oStatusForViewer'
--
-- * 'oResharers'
object'
    :: Object
object' =
    Object
    { _oPlusoners = Nothing
    , _oAttachments = Nothing
    , _oObjectType = Nothing
    , _oOriginalContent = Nothing
    , _oURL = Nothing
    , _oActor = Nothing
    , _oContent = Nothing
    , _oReplies = Nothing
    , _oId = Nothing
    , _oStatusForViewer = Nothing
    , _oResharers = Nothing
    }

-- | People who +1\'d this activity.
oPlusoners :: Lens' Object (Maybe Plusoners)
oPlusoners
  = lens _oPlusoners (\ s a -> s{_oPlusoners = a})

-- | The media objects attached to this activity.
oAttachments :: Lens' Object [AttachmentsItem]
oAttachments
  = lens _oAttachments (\ s a -> s{_oAttachments = a})
      . _Default
      . _Coerce

-- | The type of the object. Possible values include, but are not limited to,
-- the following values: - \"note\" - Textual content. - \"activity\" - A
-- Google+ activity.
oObjectType :: Lens' Object (Maybe Text)
oObjectType
  = lens _oObjectType (\ s a -> s{_oObjectType = a})

-- | The content (text) as provided by the author, which is stored without
-- any HTML formatting. When creating or updating an activity, this value
-- must be supplied as plain text in the request.
oOriginalContent :: Lens' Object (Maybe Text)
oOriginalContent
  = lens _oOriginalContent
      (\ s a -> s{_oOriginalContent = a})

-- | The URL that points to the linked resource.
oURL :: Lens' Object (Maybe Text)
oURL = lens _oURL (\ s a -> s{_oURL = a})

-- | If this activity\'s object is itself another activity, such as when a
-- person reshares an activity, this property specifies the original
-- activity\'s actor.
oActor :: Lens' Object (Maybe ObjectActor)
oActor = lens _oActor (\ s a -> s{_oActor = a})

-- | The HTML-formatted content, which is suitable for display.
oContent :: Lens' Object (Maybe Text)
oContent = lens _oContent (\ s a -> s{_oContent = a})

-- | Comments in reply to this activity.
oReplies :: Lens' Object (Maybe Replies)
oReplies = lens _oReplies (\ s a -> s{_oReplies = a})

-- | The ID of the object. When resharing an activity, this is the ID of the
-- activity that is being reshared.
oId :: Lens' Object (Maybe Text)
oId = lens _oId (\ s a -> s{_oId = a})

-- | Status of the activity as seen by the viewer.
oStatusForViewer :: Lens' Object (Maybe StatusForViewer)
oStatusForViewer
  = lens _oStatusForViewer
      (\ s a -> s{_oStatusForViewer = a})

-- | People who reshared this activity.
oResharers :: Lens' Object (Maybe Resharers)
oResharers
  = lens _oResharers (\ s a -> s{_oResharers = a})

instance FromJSON Object where
        parseJSON
          = withObject "Object"
              (\ o ->
                 Object <$>
                   (o .:? "plusoners") <*>
                     (o .:? "attachments" .!= mempty)
                     <*> (o .:? "objectType")
                     <*> (o .:? "originalContent")
                     <*> (o .:? "url")
                     <*> (o .:? "actor")
                     <*> (o .:? "content")
                     <*> (o .:? "replies")
                     <*> (o .:? "id")
                     <*> (o .:? "statusForViewer")
                     <*> (o .:? "resharers"))

instance ToJSON Object where
        toJSON Object{..}
          = object
              (catMaybes
                 [("plusoners" .=) <$> _oPlusoners,
                  ("attachments" .=) <$> _oAttachments,
                  ("objectType" .=) <$> _oObjectType,
                  ("originalContent" .=) <$> _oOriginalContent,
                  ("url" .=) <$> _oURL, ("actor" .=) <$> _oActor,
                  ("content" .=) <$> _oContent,
                  ("replies" .=) <$> _oReplies, ("id" .=) <$> _oId,
                  ("statusForViewer" .=) <$> _oStatusForViewer,
                  ("resharers" .=) <$> _oResharers])

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
-- /See:/ 'urlsItem' smart constructor.
data URLsItem = URLsItem
    { _uiValue :: !(Maybe Text)
    , _uiType  :: !(Maybe Text)
    , _uiLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiValue'
--
-- * 'uiType'
--
-- * 'uiLabel'
urlsItem
    :: URLsItem
urlsItem =
    URLsItem
    { _uiValue = Nothing
    , _uiType = Nothing
    , _uiLabel = Nothing
    }

-- | The URL value.
uiValue :: Lens' URLsItem (Maybe Text)
uiValue = lens _uiValue (\ s a -> s{_uiValue = a})

-- | The type of URL. Possible values include, but are not limited to, the
-- following values: - \"otherProfile\" - URL for another profile. -
-- \"contributor\" - URL to a site for which this person is a contributor.
-- - \"website\" - URL for this Google+ Page\'s primary website. -
-- \"other\" - Other URL.
uiType :: Lens' URLsItem (Maybe Text)
uiType = lens _uiType (\ s a -> s{_uiType = a})

-- | The label of the URL.
uiLabel :: Lens' URLsItem (Maybe Text)
uiLabel = lens _uiLabel (\ s a -> s{_uiLabel = a})

instance FromJSON URLsItem where
        parseJSON
          = withObject "URLsItem"
              (\ o ->
                 URLsItem <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "label"))

instance ToJSON URLsItem where
        toJSON URLsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _uiValue, ("type" .=) <$> _uiType,
                  ("label" .=) <$> _uiLabel])

-- | The person who uploaded this media.
--
-- /See:/ 'author' smart constructor.
data Author = Author
    { _autImage       :: !(Maybe AuthorImage)
    , _autURL         :: !(Maybe Text)
    , _autDisplayName :: !(Maybe Text)
    , _autId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Author' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autImage'
--
-- * 'autURL'
--
-- * 'autDisplayName'
--
-- * 'autId'
author
    :: Author
author =
    Author
    { _autImage = Nothing
    , _autURL = Nothing
    , _autDisplayName = Nothing
    , _autId = Nothing
    }

-- | The author\'s Google profile image.
autImage :: Lens' Author (Maybe AuthorImage)
autImage = lens _autImage (\ s a -> s{_autImage = a})

-- | A link to the author\'s Google profile.
autURL :: Lens' Author (Maybe Text)
autURL = lens _autURL (\ s a -> s{_autURL = a})

-- | The author\'s name.
autDisplayName :: Lens' Author (Maybe Text)
autDisplayName
  = lens _autDisplayName
      (\ s a -> s{_autDisplayName = a})

-- | ID of the author.
autId :: Lens' Author (Maybe Text)
autId = lens _autId (\ s a -> s{_autId = a})

instance FromJSON Author where
        parseJSON
          = withObject "Author"
              (\ o ->
                 Author <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON Author where
        toJSON Author{..}
          = object
              (catMaybes
                 [("image" .=) <$> _autImage, ("url" .=) <$> _autURL,
                  ("displayName" .=) <$> _autDisplayName,
                  ("id" .=) <$> _autId])

--
-- /See:/ 'audiencesFeed' smart constructor.
data AudiencesFeed = AudiencesFeed
    { _audTotalItems    :: !(Maybe Int32)
    , _audEtag          :: !(Maybe Text)
    , _audNextPageToken :: !(Maybe Text)
    , _audKind          :: !Text
    , _audItems         :: !(Maybe [Audience])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
audItems :: Lens' AudiencesFeed [Audience]
audItems
  = lens _audItems (\ s a -> s{_audItems = a}) .
      _Default
      . _Coerce

instance FromJSON AudiencesFeed where
        parseJSON
          = withObject "AudiencesFeed"
              (\ o ->
                 AudiencesFeed <$>
                   (o .:? "totalItems") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "plus#audiencesFeed")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AudiencesFeed where
        toJSON AudiencesFeed{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _audTotalItems,
                  ("etag" .=) <$> _audEtag,
                  ("nextPageToken" .=) <$> _audNextPageToken,
                  Just ("kind" .= _audKind),
                  ("items" .=) <$> _audItems])

-- | Status of the activity as seen by the viewer.
--
-- /See:/ 'statusForViewer' smart constructor.
data StatusForViewer = StatusForViewer
    { _sfvCanComment        :: !(Maybe Bool)
    , _sfvResharingDisabled :: !(Maybe Bool)
    , _sfvCanUpdate         :: !(Maybe Bool)
    , _sfvIsPlusOned        :: !(Maybe Bool)
    , _sfvCanPlusone        :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusForViewer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfvCanComment'
--
-- * 'sfvResharingDisabled'
--
-- * 'sfvCanUpdate'
--
-- * 'sfvIsPlusOned'
--
-- * 'sfvCanPlusone'
statusForViewer
    :: StatusForViewer
statusForViewer =
    StatusForViewer
    { _sfvCanComment = Nothing
    , _sfvResharingDisabled = Nothing
    , _sfvCanUpdate = Nothing
    , _sfvIsPlusOned = Nothing
    , _sfvCanPlusone = Nothing
    }

-- | Whether the viewer can comment on the activity.
sfvCanComment :: Lens' StatusForViewer (Maybe Bool)
sfvCanComment
  = lens _sfvCanComment
      (\ s a -> s{_sfvCanComment = a})

-- | Whether reshares are disabled for the activity.
sfvResharingDisabled :: Lens' StatusForViewer (Maybe Bool)
sfvResharingDisabled
  = lens _sfvResharingDisabled
      (\ s a -> s{_sfvResharingDisabled = a})

-- | Whether the viewer can edit or delete the activity.
sfvCanUpdate :: Lens' StatusForViewer (Maybe Bool)
sfvCanUpdate
  = lens _sfvCanUpdate (\ s a -> s{_sfvCanUpdate = a})

-- | Whether the viewer has +1\'d the activity.
sfvIsPlusOned :: Lens' StatusForViewer (Maybe Bool)
sfvIsPlusOned
  = lens _sfvIsPlusOned
      (\ s a -> s{_sfvIsPlusOned = a})

-- | Whether the viewer can +1 the activity.
sfvCanPlusone :: Lens' StatusForViewer (Maybe Bool)
sfvCanPlusone
  = lens _sfvCanPlusone
      (\ s a -> s{_sfvCanPlusone = a})

instance FromJSON StatusForViewer where
        parseJSON
          = withObject "StatusForViewer"
              (\ o ->
                 StatusForViewer <$>
                   (o .:? "canComment") <*> (o .:? "resharingDisabled")
                     <*> (o .:? "canUpdate")
                     <*> (o .:? "isPlusOned")
                     <*> (o .:? "canPlusone"))

instance ToJSON StatusForViewer where
        toJSON StatusForViewer{..}
          = object
              (catMaybes
                 [("canComment" .=) <$> _sfvCanComment,
                  ("resharingDisabled" .=) <$> _sfvResharingDisabled,
                  ("canUpdate" .=) <$> _sfvCanUpdate,
                  ("isPlusOned" .=) <$> _sfvIsPlusOned,
                  ("canPlusone" .=) <$> _sfvCanPlusone])

--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aaAccess          :: !(Maybe ACL)
    , _aaPlaceName       :: !(Maybe Text)
    , _aaEtag            :: !(Maybe Text)
    , _aaAnnotation      :: !(Maybe Text)
    , _aaLocation        :: !(Maybe Place)
    , _aaGeocode         :: !(Maybe Text)
    , _aaKind            :: !Text
    , _aaRadius          :: !(Maybe Text)
    , _aaPublished       :: !(Maybe DateTime')
    , _aaURL             :: !(Maybe Text)
    , _aaActor           :: !(Maybe Actor)
    , _aaAddress         :: !(Maybe Text)
    , _aaObject          :: !(Maybe Object)
    , _aaId              :: !(Maybe Text)
    , _aaUpdated         :: !(Maybe DateTime')
    , _aaTitle           :: !(Maybe Text)
    , _aaVerb            :: !(Maybe Text)
    , _aaCrosspostSource :: !(Maybe Text)
    , _aaPlaceId         :: !(Maybe Text)
    , _aaProvider        :: !(Maybe Provider)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'aaURL'
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
    , _aaURL = Nothing
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
aaAccess :: Lens' Activity (Maybe ACL)
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
aaLocation :: Lens' Activity (Maybe Place)
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
  = lens _aaPublished (\ s a -> s{_aaPublished = a}) .
      mapping _DateTime

-- | The link to this activity.
aaURL :: Lens' Activity (Maybe Text)
aaURL = lens _aaURL (\ s a -> s{_aaURL = a})

-- | The person who performed this activity.
aaActor :: Lens' Activity (Maybe Actor)
aaActor = lens _aaActor (\ s a -> s{_aaActor = a})

-- | Street address where this activity occurred.
aaAddress :: Lens' Activity (Maybe Text)
aaAddress
  = lens _aaAddress (\ s a -> s{_aaAddress = a})

-- | The object of this activity.
aaObject :: Lens' Activity (Maybe Object)
aaObject = lens _aaObject (\ s a -> s{_aaObject = a})

-- | The ID of this activity.
aaId :: Lens' Activity (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | The time at which this activity was last updated. Formatted as an RFC
-- 3339 timestamp.
aaUpdated :: Lens' Activity (Maybe UTCTime)
aaUpdated
  = lens _aaUpdated (\ s a -> s{_aaUpdated = a}) .
      mapping _DateTime

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
aaProvider :: Lens' Activity (Maybe Provider)
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
                  ("url" .=) <$> _aaURL, ("actor" .=) <$> _aaActor,
                  ("address" .=) <$> _aaAddress,
                  ("object" .=) <$> _aaObject, ("id" .=) <$> _aaId,
                  ("updated" .=) <$> _aaUpdated,
                  ("title" .=) <$> _aaTitle, ("verb" .=) <$> _aaVerb,
                  ("crosspostSource" .=) <$> _aaCrosspostSource,
                  ("placeId" .=) <$> _aaPlaceId,
                  ("provider" .=) <$> _aaProvider])

--
-- /See:/ 'previewThumbnailsItem' smart constructor.
newtype PreviewThumbnailsItem = PreviewThumbnailsItem
    { _ptiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PreviewThumbnailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptiURL'
previewThumbnailsItem
    :: PreviewThumbnailsItem
previewThumbnailsItem =
    PreviewThumbnailsItem
    { _ptiURL = Nothing
    }

-- | URL of the thumbnail image.
ptiURL :: Lens' PreviewThumbnailsItem (Maybe Text)
ptiURL = lens _ptiURL (\ s a -> s{_ptiURL = a})

instance FromJSON PreviewThumbnailsItem where
        parseJSON
          = withObject "PreviewThumbnailsItem"
              (\ o -> PreviewThumbnailsItem <$> (o .:? "url"))

instance ToJSON PreviewThumbnailsItem where
        toJSON PreviewThumbnailsItem{..}
          = object (catMaybes [("url" .=) <$> _ptiURL])

--
-- /See:/ 'place' smart constructor.
data Place = Place
    { _plaKind        :: !Text
    , _plaAddress     :: !(Maybe PlaceAddress)
    , _plaDisplayName :: !(Maybe Text)
    , _plaId          :: !(Maybe Text)
    , _plaPosition    :: !(Maybe Position)
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
plaPosition :: Lens' Place (Maybe Position)
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
-- /See:/ 'inReplyToItem' smart constructor.
data InReplyToItem = InReplyToItem
    { _irtiURL :: !(Maybe Text)
    , _irtiId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InReplyToItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irtiURL'
--
-- * 'irtiId'
inReplyToItem
    :: InReplyToItem
inReplyToItem =
    InReplyToItem
    { _irtiURL = Nothing
    , _irtiId = Nothing
    }

-- | The URL of the activity.
irtiURL :: Lens' InReplyToItem (Maybe Text)
irtiURL = lens _irtiURL (\ s a -> s{_irtiURL = a})

-- | The ID of the activity.
irtiId :: Lens' InReplyToItem (Maybe Text)
irtiId = lens _irtiId (\ s a -> s{_irtiId = a})

instance FromJSON InReplyToItem where
        parseJSON
          = withObject "InReplyToItem"
              (\ o ->
                 InReplyToItem <$> (o .:? "url") <*> (o .:? "id"))

instance ToJSON InReplyToItem where
        toJSON InReplyToItem{..}
          = object
              (catMaybes
                 [("url" .=) <$> _irtiURL, ("id" .=) <$> _irtiId])

-- | People who reshared this activity.
--
-- /See:/ 'resharers' smart constructor.
data Resharers = Resharers
    { _resTotalItems :: !(Maybe Word32)
    , _resSelfLink   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Resharers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resTotalItems'
--
-- * 'resSelfLink'
resharers
    :: Resharers
resharers =
    Resharers
    { _resTotalItems = Nothing
    , _resSelfLink = Nothing
    }

-- | Total number of people who reshared this activity.
resTotalItems :: Lens' Resharers (Maybe Word32)
resTotalItems
  = lens _resTotalItems
      (\ s a -> s{_resTotalItems = a})

-- | The URL for the collection of resharers.
resSelfLink :: Lens' Resharers (Maybe Text)
resSelfLink
  = lens _resSelfLink (\ s a -> s{_resSelfLink = a})

instance FromJSON Resharers where
        parseJSON
          = withObject "Resharers"
              (\ o ->
                 Resharers <$>
                   (o .:? "totalItems") <*> (o .:? "selfLink"))

instance ToJSON Resharers where
        toJSON Resharers{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _resTotalItems,
                  ("selfLink" .=) <$> _resSelfLink])

--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _comEtag      :: !(Maybe Text)
    , _comPlusoners :: !(Maybe CommentPlusoners)
    , _comKind      :: !Text
    , _comPublished :: !(Maybe DateTime')
    , _comActor     :: !(Maybe CommentActor)
    , _comSelfLink  :: !(Maybe Text)
    , _comObject    :: !(Maybe CommentObject)
    , _comId        :: !(Maybe Text)
    , _comUpdated   :: !(Maybe DateTime')
    , _comVerb      :: !Text
    , _comInReplyTo :: !(Maybe [InReplyToItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _DateTime

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
  = lens _comUpdated (\ s a -> s{_comUpdated = a}) .
      mapping _DateTime

-- | This comment\'s verb, indicating what action was performed. Possible
-- values are: - \"post\" - Publish content to the stream.
comVerb :: Lens' Comment Text
comVerb = lens _comVerb (\ s a -> s{_comVerb = a})

-- | The activity this comment replied to.
comInReplyTo :: Lens' Comment [InReplyToItem]
comInReplyTo
  = lens _comInReplyTo (\ s a -> s{_comInReplyTo = a})
      . _Default
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
                 [("etag" .=) <$> _comEtag,
                  ("plusoners" .=) <$> _comPlusoners,
                  Just ("kind" .= _comKind),
                  ("published" .=) <$> _comPublished,
                  ("actor" .=) <$> _comActor,
                  ("selfLink" .=) <$> _comSelfLink,
                  ("object" .=) <$> _comObject, ("id" .=) <$> _comId,
                  ("updated" .=) <$> _comUpdated,
                  Just ("verb" .= _comVerb),
                  ("inReplyTo" .=) <$> _comInReplyTo])

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
-- /See:/ 'acl' smart constructor.
data ACL = ACL
    { _aclcKind             :: !Text
    , _aclcItems            :: !(Maybe [PlusDomainsACLentryResource])
    , _aclcDomainRestricted :: !(Maybe Bool)
    , _aclcDescription      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclcKind'
--
-- * 'aclcItems'
--
-- * 'aclcDomainRestricted'
--
-- * 'aclcDescription'
acl
    :: ACL
acl =
    ACL
    { _aclcKind = "plus#acl"
    , _aclcItems = Nothing
    , _aclcDomainRestricted = Nothing
    , _aclcDescription = Nothing
    }

-- | Identifies this resource as a collection of access controls. Value:
-- \"plus#acl\".
aclcKind :: Lens' ACL Text
aclcKind = lens _aclcKind (\ s a -> s{_aclcKind = a})

-- | The list of access entries.
aclcItems :: Lens' ACL [PlusDomainsACLentryResource]
aclcItems
  = lens _aclcItems (\ s a -> s{_aclcItems = a}) .
      _Default
      . _Coerce

-- | Whether access is restricted to the domain.
aclcDomainRestricted :: Lens' ACL (Maybe Bool)
aclcDomainRestricted
  = lens _aclcDomainRestricted
      (\ s a -> s{_aclcDomainRestricted = a})

-- | Description of the access granted, suitable for display.
aclcDescription :: Lens' ACL (Maybe Text)
aclcDescription
  = lens _aclcDescription
      (\ s a -> s{_aclcDescription = a})

instance FromJSON ACL where
        parseJSON
          = withObject "ACL"
              (\ o ->
                 ACL <$>
                   (o .:? "kind" .!= "plus#acl") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "domainRestricted")
                     <*> (o .:? "description"))

instance ToJSON ACL where
        toJSON ACL{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aclcKind),
                  ("items" .=) <$> _aclcItems,
                  ("domainRestricted" .=) <$> _aclcDomainRestricted,
                  ("description" .=) <$> _aclcDescription])

-- | If this activity\'s object is itself another activity, such as when a
-- person reshares an activity, this property specifies the original
-- activity\'s actor.
--
-- /See:/ 'objectActor' smart constructor.
data ObjectActor = ObjectActor
    { _oaImage        :: !(Maybe ObjectActorImage)
    , _oaURL          :: !(Maybe Text)
    , _oaDisplayName  :: !(Maybe Text)
    , _oaId           :: !(Maybe Text)
    , _oaVerification :: !(Maybe ObjectActorVerification)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectActor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaImage'
--
-- * 'oaURL'
--
-- * 'oaDisplayName'
--
-- * 'oaId'
--
-- * 'oaVerification'
objectActor
    :: ObjectActor
objectActor =
    ObjectActor
    { _oaImage = Nothing
    , _oaURL = Nothing
    , _oaDisplayName = Nothing
    , _oaId = Nothing
    , _oaVerification = Nothing
    }

-- | The image representation of the original actor.
oaImage :: Lens' ObjectActor (Maybe ObjectActorImage)
oaImage = lens _oaImage (\ s a -> s{_oaImage = a})

-- | A link to the original actor\'s Google profile.
oaURL :: Lens' ObjectActor (Maybe Text)
oaURL = lens _oaURL (\ s a -> s{_oaURL = a})

-- | The original actor\'s name, which is suitable for display.
oaDisplayName :: Lens' ObjectActor (Maybe Text)
oaDisplayName
  = lens _oaDisplayName
      (\ s a -> s{_oaDisplayName = a})

-- | ID of the original actor.
oaId :: Lens' ObjectActor (Maybe Text)
oaId = lens _oaId (\ s a -> s{_oaId = a})

-- | Verification status of actor.
oaVerification :: Lens' ObjectActor (Maybe ObjectActorVerification)
oaVerification
  = lens _oaVerification
      (\ s a -> s{_oaVerification = a})

instance FromJSON ObjectActor where
        parseJSON
          = withObject "ObjectActor"
              (\ o ->
                 ObjectActor <$>
                   (o .:? "image") <*> (o .:? "url") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "verification"))

instance ToJSON ObjectActor where
        toJSON ObjectActor{..}
          = object
              (catMaybes
                 [("image" .=) <$> _oaImage, ("url" .=) <$> _oaURL,
                  ("displayName" .=) <$> _oaDisplayName,
                  ("id" .=) <$> _oaId,
                  ("verification" .=) <$> _oaVerification])

-- | The person\'s primary cover image.
--
-- /See:/ 'coverPhoto' smart constructor.
data CoverPhoto = CoverPhoto
    { _cpHeight :: !(Maybe Int32)
    , _cpURL    :: !(Maybe Text)
    , _cpWidth  :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoverPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpHeight'
--
-- * 'cpURL'
--
-- * 'cpWidth'
coverPhoto
    :: CoverPhoto
coverPhoto =
    CoverPhoto
    { _cpHeight = Nothing
    , _cpURL = Nothing
    , _cpWidth = Nothing
    }

-- | The height of the image.
cpHeight :: Lens' CoverPhoto (Maybe Int32)
cpHeight = lens _cpHeight (\ s a -> s{_cpHeight = a})

-- | The URL of the image.
cpURL :: Lens' CoverPhoto (Maybe Text)
cpURL = lens _cpURL (\ s a -> s{_cpURL = a})

-- | The width of the image.
cpWidth :: Lens' CoverPhoto (Maybe Int32)
cpWidth = lens _cpWidth (\ s a -> s{_cpWidth = a})

instance FromJSON CoverPhoto where
        parseJSON
          = withObject "CoverPhoto"
              (\ o ->
                 CoverPhoto <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON CoverPhoto where
        toJSON CoverPhoto{..}
          = object
              (catMaybes
                 [("height" .=) <$> _cpHeight, ("url" .=) <$> _cpURL,
                  ("width" .=) <$> _cpWidth])

-- | The service provider that initially published this activity.
--
-- /See:/ 'provider' smart constructor.
newtype Provider = Provider
    { _pTitle :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Provider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pTitle'
provider
    :: Provider
provider =
    Provider
    { _pTitle = Nothing
    }

-- | Name of the service provider.
pTitle :: Lens' Provider (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

instance FromJSON Provider where
        parseJSON
          = withObject "Provider"
              (\ o -> Provider <$> (o .:? "title"))

instance ToJSON Provider where
        toJSON Provider{..}
          = object (catMaybes [("title" .=) <$> _pTitle])

--
-- /See:/ 'commentFeed' smart constructor.
data CommentFeed = CommentFeed
    { _cffEtag          :: !(Maybe Text)
    , _cffNextPageToken :: !(Maybe Text)
    , _cffNextLink      :: !(Maybe Text)
    , _cffKind          :: !Text
    , _cffItems         :: !(Maybe [Comment])
    , _cffId            :: !(Maybe Text)
    , _cffUpdated       :: !(Maybe DateTime')
    , _cffTitle         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentFeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cffEtag'
--
-- * 'cffNextPageToken'
--
-- * 'cffNextLink'
--
-- * 'cffKind'
--
-- * 'cffItems'
--
-- * 'cffId'
--
-- * 'cffUpdated'
--
-- * 'cffTitle'
commentFeed
    :: CommentFeed
commentFeed =
    CommentFeed
    { _cffEtag = Nothing
    , _cffNextPageToken = Nothing
    , _cffNextLink = Nothing
    , _cffKind = "plus#commentFeed"
    , _cffItems = Nothing
    , _cffId = Nothing
    , _cffUpdated = Nothing
    , _cffTitle = Nothing
    }

-- | ETag of this response for caching purposes.
cffEtag :: Lens' CommentFeed (Maybe Text)
cffEtag = lens _cffEtag (\ s a -> s{_cffEtag = a})

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
cffNextPageToken :: Lens' CommentFeed (Maybe Text)
cffNextPageToken
  = lens _cffNextPageToken
      (\ s a -> s{_cffNextPageToken = a})

-- | Link to the next page of activities.
cffNextLink :: Lens' CommentFeed (Maybe Text)
cffNextLink
  = lens _cffNextLink (\ s a -> s{_cffNextLink = a})

-- | Identifies this resource as a collection of comments. Value:
-- \"plus#commentFeed\".
cffKind :: Lens' CommentFeed Text
cffKind = lens _cffKind (\ s a -> s{_cffKind = a})

-- | The comments in this page of results.
cffItems :: Lens' CommentFeed [Comment]
cffItems
  = lens _cffItems (\ s a -> s{_cffItems = a}) .
      _Default
      . _Coerce

-- | The ID of this collection of comments.
cffId :: Lens' CommentFeed (Maybe Text)
cffId = lens _cffId (\ s a -> s{_cffId = a})

-- | The time at which this collection of comments was last updated.
-- Formatted as an RFC 3339 timestamp.
cffUpdated :: Lens' CommentFeed (Maybe UTCTime)
cffUpdated
  = lens _cffUpdated (\ s a -> s{_cffUpdated = a}) .
      mapping _DateTime

-- | The title of this collection of comments.
cffTitle :: Lens' CommentFeed (Maybe Text)
cffTitle = lens _cffTitle (\ s a -> s{_cffTitle = a})

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
                 [("etag" .=) <$> _cffEtag,
                  ("nextPageToken" .=) <$> _cffNextPageToken,
                  ("nextLink" .=) <$> _cffNextLink,
                  Just ("kind" .= _cffKind),
                  ("items" .=) <$> _cffItems, ("id" .=) <$> _cffId,
                  ("updated" .=) <$> _cffUpdated,
                  ("title" .=) <$> _cffTitle])

-- | The position of the place.
--
-- /See:/ 'position' smart constructor.
data Position = Position
    { _pLatitude  :: !(Maybe Double)
    , _pLongitude :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pLatitude'
--
-- * 'pLongitude'
position
    :: Position
position =
    Position
    { _pLatitude = Nothing
    , _pLongitude = Nothing
    }

-- | The latitude of this position.
pLatitude :: Lens' Position (Maybe Double)
pLatitude
  = lens _pLatitude (\ s a -> s{_pLatitude = a})

-- | The longitude of this position.
pLongitude :: Lens' Position (Maybe Double)
pLongitude
  = lens _pLongitude (\ s a -> s{_pLongitude = a})

instance FromJSON Position where
        parseJSON
          = withObject "Position"
              (\ o ->
                 Position <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON Position where
        toJSON Position{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _pLatitude,
                  ("longitude" .=) <$> _pLongitude])

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

-- | Verification status of actor.
--
-- /See:/ 'verification' smart constructor.
newtype Verification = Verification
    { _vAdHocVerified :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Verification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vAdHocVerified'
verification
    :: Verification
verification =
    Verification
    { _vAdHocVerified = Nothing
    }

-- | Verification for one-time or manual processes.
vAdHocVerified :: Lens' Verification (Maybe Text)
vAdHocVerified
  = lens _vAdHocVerified
      (\ s a -> s{_vAdHocVerified = a})

instance FromJSON Verification where
        parseJSON
          = withObject "Verification"
              (\ o -> Verification <$> (o .:? "adHocVerified"))

instance ToJSON Verification where
        toJSON Verification{..}
          = object
              (catMaybes
                 [("adHocVerified" .=) <$> _vAdHocVerified])

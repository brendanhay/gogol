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

-- | The age range of the person. Valid ranges are 17 or younger, 18 to 20,
-- and 21 or older. Age is determined from the user\'s birthday using
-- Western age reckoning.
--
-- /See:/ 'ageRange' smart constructor.
data AgeRange = AgeRange
    { _arMax :: !(Maybe Int32)
    , _arMin :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AgeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arMax'
--
-- * 'arMin'
ageRange
    :: AgeRange
ageRange =
    AgeRange
    { _arMax = Nothing
    , _arMin = Nothing
    }

-- | The age range\'s upper bound, if any. Possible values include, but are
-- not limited to, the following: - \"17\" - for age 17 - \"20\" - for age
-- 20
arMax :: Lens' AgeRange (Maybe Int32)
arMax = lens _arMax (\ s a -> s{_arMax = a})

-- | The age range\'s lower bound, if any. Possible values include, but are
-- not limited to, the following: - \"21\" - for age 21 - \"18\" - for age
-- 18
arMin :: Lens' AgeRange (Maybe Int32)
arMin = lens _arMin (\ s a -> s{_arMin = a})

instance FromJSON AgeRange where
        parseJSON
          = withObject "AgeRange"
              (\ o -> AgeRange <$> (o .:? "max") <*> (o .:? "min"))

instance ToJSON AgeRange where
        toJSON AgeRange{..}
          = object
              (catMaybes
                 [("max" .=) <$> _arMax, ("min" .=) <$> _arMin])

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
    , _pAgeRange           :: !(Maybe AgeRange)
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
    , _pLanguage           :: !(Maybe Text)
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
pAgeRange :: Lens' Person (Maybe AgeRange)
pAgeRange
  = lens _pAgeRange (\ s a -> s{_pAgeRange = a})

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
    { _aoPlusoners       :: !(Maybe Plusoners)
    , _aoAttachments     :: !(Maybe [AttachmentsItem])
    , _aoObjectType      :: !(Maybe Text)
    , _aoOriginalContent :: !(Maybe Text)
    , _aoURL             :: !(Maybe Text)
    , _aoActor           :: !(Maybe ActivityObjectActor)
    , _aoContent         :: !(Maybe Text)
    , _aoReplies         :: !(Maybe Replies)
    , _aoId              :: !(Maybe Text)
    , _aoResharers       :: !(Maybe Resharers)
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
aoPlusoners :: Lens' ActivityObject (Maybe Plusoners)
aoPlusoners
  = lens _aoPlusoners (\ s a -> s{_aoPlusoners = a})

-- | The media objects attached to this activity.
aoAttachments :: Lens' ActivityObject [AttachmentsItem]
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
aoReplies :: Lens' ActivityObject (Maybe Replies)
aoReplies
  = lens _aoReplies (\ s a -> s{_aoReplies = a})

-- | The ID of the object. When resharing an activity, this is the ID of the
-- activity that is being reshared.
aoId :: Lens' ActivityObject (Maybe Text)
aoId = lens _aoId (\ s a -> s{_aoId = a})

-- | People who reshared this activity.
aoResharers :: Lens' ActivityObject (Maybe Resharers)
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
    { _aiURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActorImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiURL'
actorImage
    :: ActorImage
actorImage =
    ActorImage
    { _aiURL = Nothing
    }

-- | The URL of the actor\'s profile photo. To resize the image and crop it
-- to a square, append the query string ?sz=x, where x is the dimension in
-- pixels of each side.
aiURL :: Lens' ActorImage (Maybe Text)
aiURL = lens _aiURL (\ s a -> s{_aiURL = a})

instance FromJSON ActorImage where
        parseJSON
          = withObject "ActorImage"
              (\ o -> ActorImage <$> (o .:? "url"))

instance ToJSON ActorImage where
        toJSON ActorImage{..}
          = object (catMaybes [("url" .=) <$> _aiURL])

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
    { _attFullImage   :: !(Maybe FullImage)
    , _attImage       :: !(Maybe AttachmentsItemImage)
    , _attObjectType  :: !(Maybe Text)
    , _attURL         :: !(Maybe Text)
    , _attEmbed       :: !(Maybe Embed)
    , _attContent     :: !(Maybe Text)
    , _attThumbnails  :: !(Maybe [ThumbnailsItem])
    , _attDisplayName :: !(Maybe Text)
    , _attId          :: !(Maybe Text)
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
                  ("url" .=) <$> _attURL, ("embed" .=) <$> _attEmbed,
                  ("content" .=) <$> _attContent,
                  ("thumbnails" .=) <$> _attThumbnails,
                  ("displayName" .=) <$> _attDisplayName,
                  ("id" .=) <$> _attId])

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
    , _actActor           :: !(Maybe Actor)
    , _actAddress         :: !(Maybe Text)
    , _actObject          :: !(Maybe ActivityObject)
    , _actId              :: !(Maybe Text)
    , _actUpdated         :: !(Maybe DateTime')
    , _actTitle           :: !(Maybe Text)
    , _actVerb            :: !(Maybe Text)
    , _actCrosspostSource :: !(Maybe Text)
    , _actPlaceId         :: !(Maybe Text)
    , _actProvider        :: !(Maybe Provider)
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
actActor :: Lens' Activity (Maybe Actor)
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
actProvider :: Lens' Activity (Maybe Provider)
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
    , _cInReplyTo :: !(Maybe [InReplyToItem])
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
cInReplyTo :: Lens' Comment [InReplyToItem]
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

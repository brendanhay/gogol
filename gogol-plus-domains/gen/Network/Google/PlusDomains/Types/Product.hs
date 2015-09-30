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

--
-- /See:/ 'audience' smart constructor.
data Audience = Audience
    { _aEtag        :: !(Maybe Text)
    , _aKind        :: !Text
    , _aVisibility  :: !(Maybe Text)
    , _aItem        :: !(Maybe (Maybe PlusDomainsACLentryResource))
    , _aMemberCount :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
aItem :: Lens' Audience (Maybe (Maybe PlusDomainsACLentryResource))
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

--
-- /See:/ 'circle' smart constructor.
data Circle = Circle
    { _cEtag        :: !(Maybe Text)
    , _cKind        :: !Text
    , _cPeople      :: !(Maybe CirclePeople)
    , _cSelfLink    :: !(Maybe Text)
    , _cDisplayName :: !(Maybe Text)
    , _cId          :: !(Maybe Text)
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

--
-- /See:/ 'person' smart constructor.
data Person = Person
    { _pCurrentLocation    :: !(Maybe Text)
    , _pEtag               :: !(Maybe Text)
    , _pImage              :: !(Maybe PersonImage)
    , _pBraggingRights     :: !(Maybe Text)
    , _pPlacesLived        :: !(Maybe [PersonPlacesLivedItem])
    , _pPlusOneCount       :: !(Maybe Int32)
    , _pObjectType         :: !(Maybe Text)
    , _pCover              :: !(Maybe PersonCover)
    , _pKind               :: !Text
    , _pRelationshipStatus :: !(Maybe Text)
    , _pUrls               :: !(Maybe [PersonURLsItem])
    , _pDomain             :: !(Maybe Text)
    , _pUrl                :: !(Maybe Text)
    , _pVerified           :: !(Maybe Bool)
    , _pBirthday           :: !(Maybe Text)
    , _pIsPlusUser         :: !(Maybe Bool)
    , _pTagline            :: !(Maybe Text)
    , _pGender             :: !(Maybe Text)
    , _pName               :: !(Maybe PersonName)
    , _pEmails             :: !(Maybe [PersonEmailsItem])
    , _pOccupation         :: !(Maybe Text)
    , _pSkills             :: !(Maybe Text)
    , _pAboutMe            :: !(Maybe Text)
    , _pDisplayName        :: !(Maybe Text)
    , _pId                 :: !(Maybe Text)
    , _pNickname           :: !(Maybe Text)
    , _pOrganizations      :: !(Maybe [PersonOrganizationsItem])
    , _pCircledByCount     :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pUrls :: Lens' Person [PersonURLsItem]
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
                  ("urls" .=) <$> _pUrls, ("domain" .=) <$> _pDomain,
                  ("url" .=) <$> _pUrl, ("verified" .=) <$> _pVerified,
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
    , _vUrl    :: !(Maybe Text)
    , _vWidth  :: !(Maybe Int32)
    , _vType   :: !(Maybe Text)
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
                 [("height" .=) <$> _vHeight, ("url" .=) <$> _vUrl,
                  ("width" .=) <$> _vWidth, ("type" .=) <$> _vType])

--
-- /See:/ 'circleFeed' smart constructor.
data CircleFeed = CircleFeed
    { _cfTotalItems    :: !(Maybe Int32)
    , _cfEtag          :: !(Maybe Text)
    , _cfNextPageToken :: !(Maybe Text)
    , _cfNextLink      :: !(Maybe Text)
    , _cfKind          :: !Text
    , _cfItems         :: !(Maybe [Maybe Circle])
    , _cfSelfLink      :: !(Maybe Text)
    , _cfTitle         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
cfItems :: Lens' CircleFeed [Maybe Circle]
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

--
-- /See:/ 'plusDomainsACLentryResource' smart constructor.
data PlusDomainsACLentryResource = PlusDomainsACLentryResource
    { _pdarDisplayName :: !(Maybe Text)
    , _pdarId          :: !(Maybe Text)
    , _pdarType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    , _mPublished        :: !(Maybe UTCTime)
    , _mUrl              :: !(Maybe Text)
    , _mWidth            :: !(Maybe Word32)
    , _mMediaUrl         :: !(Maybe Text)
    , _mStreams          :: !(Maybe [Maybe Videostream])
    , _mExif             :: !(Maybe MediaExif)
    , _mDisplayName      :: !(Maybe Text)
    , _mAuthor           :: !(Maybe MediaAuthor)
    , _mId               :: !(Maybe Text)
    , _mUpdated          :: !(Maybe UTCTime)
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
                  ("url" .=) <$> _mUrl, ("width" .=) <$> _mWidth,
                  ("mediaUrl" .=) <$> _mMediaUrl,
                  ("streams" .=) <$> _mStreams, ("exif" .=) <$> _mExif,
                  ("displayName" .=) <$> _mDisplayName,
                  ("author" .=) <$> _mAuthor, ("id" .=) <$> _mId,
                  ("updated" .=) <$> _mUpdated,
                  ("mediaCreatedTime" .=) <$> _mMediaCreatedTime])

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
-- /See:/ 'audiencesFeed' smart constructor.
data AudiencesFeed = AudiencesFeed
    { _audTotalItems    :: !(Maybe Int32)
    , _audEtag          :: !(Maybe Text)
    , _audNextPageToken :: !(Maybe Text)
    , _audKind          :: !Text
    , _audItems         :: !(Maybe [Maybe Audience])
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

--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _actAccess          :: !(Maybe (Maybe ACL))
    , _actPlaceName       :: !(Maybe Text)
    , _actEtag            :: !(Maybe Text)
    , _actAnnotation      :: !(Maybe Text)
    , _actLocation        :: !(Maybe (Maybe Place))
    , _actGeocode         :: !(Maybe Text)
    , _actKind            :: !Text
    , _actRadius          :: !(Maybe Text)
    , _actPublished       :: !(Maybe UTCTime)
    , _actUrl             :: !(Maybe Text)
    , _actActor           :: !(Maybe ActivityActor)
    , _actAddress         :: !(Maybe Text)
    , _actObject          :: !(Maybe ActivityObject)
    , _actId              :: !(Maybe Text)
    , _actUpdated         :: !(Maybe UTCTime)
    , _actTitle           :: !(Maybe Text)
    , _actVerb            :: !(Maybe Text)
    , _actCrosspostSource :: !(Maybe Text)
    , _actPlaceId         :: !(Maybe Text)
    , _actProvider        :: !(Maybe ActivityProvider)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'actUrl'
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
    , _actUrl = Nothing
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
actAccess :: Lens' Activity (Maybe (Maybe ACL))
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
actLocation :: Lens' Activity (Maybe (Maybe Place))
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

-- | The link to this activity.
actUrl :: Lens' Activity (Maybe Text)
actUrl = lens _actUrl (\ s a -> s{_actUrl = a})

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
  = lens _actUpdated (\ s a -> s{_actUpdated = a})

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
                  ("url" .=) <$> _actUrl, ("actor" .=) <$> _actActor,
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

--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _comEtag      :: !(Maybe Text)
    , _comPlusoners :: !(Maybe CommentPlusoners)
    , _comKind      :: !Text
    , _comPublished :: !(Maybe UTCTime)
    , _comActor     :: !(Maybe CommentActor)
    , _comSelfLink  :: !(Maybe Text)
    , _comObject    :: !(Maybe CommentObject)
    , _comId        :: !(Maybe Text)
    , _comUpdated   :: !(Maybe UTCTime)
    , _comVerb      :: !Text
    , _comInReplyTo :: !(Maybe [CommentInReplyToItem])
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
comInReplyTo :: Lens' Comment [CommentInReplyToItem]
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

--
-- /See:/ 'aCL' smart constructor.
data ACL = ACL
    { _aclKind             :: !Text
    , _aclItems            :: !(Maybe [Maybe PlusDomainsACLentryResource])
    , _aclDomainRestricted :: !(Maybe Bool)
    , _aclDescription      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACL' with the minimum fields required to make a request.
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
aCL
    :: ACL
aCL =
    ACL
    { _aclKind = "plus#acl"
    , _aclItems = Nothing
    , _aclDomainRestricted = Nothing
    , _aclDescription = Nothing
    }

-- | Identifies this resource as a collection of access controls. Value:
-- \"plus#acl\".
aclKind :: Lens' ACL Text
aclKind = lens _aclKind (\ s a -> s{_aclKind = a})

-- | The list of access entries.
aclItems :: Lens' ACL [Maybe PlusDomainsACLentryResource]
aclItems
  = lens _aclItems (\ s a -> s{_aclItems = a}) .
      _Default
      . _Coerce

-- | Whether access is restricted to the domain.
aclDomainRestricted :: Lens' ACL (Maybe Bool)
aclDomainRestricted
  = lens _aclDomainRestricted
      (\ s a -> s{_aclDomainRestricted = a})

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
                     <*> (o .:? "domainRestricted")
                     <*> (o .:? "description"))

instance ToJSON ACL where
        toJSON ACL{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aclKind),
                  ("items" .=) <$> _aclItems,
                  ("domainRestricted" .=) <$> _aclDomainRestricted,
                  ("description" .=) <$> _aclDescription])

--
-- /See:/ 'commentFeed' smart constructor.
data CommentFeed = CommentFeed
    { _cffEtag          :: !(Maybe Text)
    , _cffNextPageToken :: !(Maybe Text)
    , _cffNextLink      :: !(Maybe Text)
    , _cffKind          :: !Text
    , _cffItems         :: !(Maybe [Maybe Comment])
    , _cffId            :: !(Maybe Text)
    , _cffUpdated       :: !(Maybe UTCTime)
    , _cffTitle         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
cffItems :: Lens' CommentFeed [Maybe Comment]
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
  = lens _cffUpdated (\ s a -> s{_cffUpdated = a})

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

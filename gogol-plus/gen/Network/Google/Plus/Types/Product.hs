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
    , _pLanguage           :: !(Maybe Text)
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
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aAccess          :: !(Maybe (Maybe ACL))
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
aAccess :: Lens' Activity (Maybe (Maybe ACL))
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
                 [("access" .=) <$> _aAccess,
                  ("placeName" .=) <$> _aPlaceName,
                  ("etag" .=) <$> _aEtag,
                  ("annotation" .=) <$> _aAnnotation,
                  ("location" .=) <$> _aLocation,
                  ("geocode" .=) <$> _aGeocode,
                  Just ("kind" .= _aKind), ("radius" .=) <$> _aRadius,
                  ("published" .=) <$> _aPublished,
                  ("url" .=) <$> _aUrl, ("actor" .=) <$> _aActor,
                  ("address" .=) <$> _aAddress,
                  ("object" .=) <$> _aObject, ("id" .=) <$> _aId,
                  ("updated" .=) <$> _aUpdated,
                  ("title" .=) <$> _aTitle, ("verb" .=) <$> _aVerb,
                  ("crosspostSource" .=) <$> _aCrosspostSource,
                  ("placeId" .=) <$> _aPlaceId,
                  ("provider" .=) <$> _aProvider])

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
    , _cInReplyTo :: !(Maybe [CommentInReplyToItem])
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

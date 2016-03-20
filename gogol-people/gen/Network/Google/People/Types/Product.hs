{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.People.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.People.Types.Product where

import           Network.Google.People.Types.Sum
import           Network.Google.Prelude

-- | A person\'s photo. A picture shown next to the person\'s name to help
-- others recognize the person.
--
-- /See:/ 'photo' smart constructor.
data Photo = Photo
    { _pURL      :: !(Maybe Text)
    , _pMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pURL'
--
-- * 'pMetadata'
photo
    :: Photo
photo =
    Photo
    { _pURL = Nothing
    , _pMetadata = Nothing
    }

-- | The URL of the photo.
pURL :: Lens' Photo (Maybe Text)
pURL = lens _pURL (\ s a -> s{_pURL = a})

-- | Metadata about the photo.
pMetadata :: Lens' Photo (Maybe FieldMetadata)
pMetadata
  = lens _pMetadata (\ s a -> s{_pMetadata = a})

instance FromJSON Photo where
        parseJSON
          = withObject "Photo"
              (\ o ->
                 Photo <$> (o .:? "url") <*> (o .:? "metadata"))

instance ToJSON Photo where
        toJSON Photo{..}
          = object
              (catMaybes
                 [("url" .=) <$> _pURL,
                  ("metadata" .=) <$> _pMetadata])

-- | An event related to the person.
--
-- /See:/ 'event' smart constructor.
data Event = Event
    { _eDate          :: !(Maybe Date)
    , _eMetadata      :: !(Maybe FieldMetadata)
    , _eType          :: !(Maybe Text)
    , _eFormattedType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDate'
--
-- * 'eMetadata'
--
-- * 'eType'
--
-- * 'eFormattedType'
event
    :: Event
event =
    Event
    { _eDate = Nothing
    , _eMetadata = Nothing
    , _eType = Nothing
    , _eFormattedType = Nothing
    }

-- | The date of the event.
eDate :: Lens' Event (Maybe Date)
eDate = lens _eDate (\ s a -> s{_eDate = a})

-- | Metadata about the event.
eMetadata :: Lens' Event (Maybe FieldMetadata)
eMetadata
  = lens _eMetadata (\ s a -> s{_eMetadata = a})

-- | The type of the event. The type can be custom or predefined. Possible
-- values include, but are not limited to, the following: * \`anniversary\`
-- * \`other\`
eType :: Lens' Event (Maybe Text)
eType = lens _eType (\ s a -> s{_eType = a})

-- | The read-only type of the event translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
eFormattedType :: Lens' Event (Maybe Text)
eFormattedType
  = lens _eFormattedType
      (\ s a -> s{_eFormattedType = a})

instance FromJSON Event where
        parseJSON
          = withObject "Event"
              (\ o ->
                 Event <$>
                   (o .:? "date") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON Event where
        toJSON Event{..}
          = object
              (catMaybes
                 [("date" .=) <$> _eDate,
                  ("metadata" .=) <$> _eMetadata,
                  ("type" .=) <$> _eType,
                  ("formattedType" .=) <$> _eFormattedType])

--
-- /See:/ 'listConnectionsResponse' smart constructor.
data ListConnectionsResponse = ListConnectionsResponse
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrConnections   :: !(Maybe [Person])
    , _lcrNextSyncToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrConnections'
--
-- * 'lcrNextSyncToken'
listConnectionsResponse
    :: ListConnectionsResponse
listConnectionsResponse =
    ListConnectionsResponse
    { _lcrNextPageToken = Nothing
    , _lcrConnections = Nothing
    , _lcrNextSyncToken = Nothing
    }

-- | The token that can be used to retrieve the next page of results.
lcrNextPageToken :: Lens' ListConnectionsResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | The list of people that the requestor is connected to.
lcrConnections :: Lens' ListConnectionsResponse [Person]
lcrConnections
  = lens _lcrConnections
      (\ s a -> s{_lcrConnections = a})
      . _Default
      . _Coerce

-- | The token that can be used to retrieve changes since the last request.
lcrNextSyncToken :: Lens' ListConnectionsResponse (Maybe Text)
lcrNextSyncToken
  = lens _lcrNextSyncToken
      (\ s a -> s{_lcrNextSyncToken = a})

instance FromJSON ListConnectionsResponse where
        parseJSON
          = withObject "ListConnectionsResponse"
              (\ o ->
                 ListConnectionsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "connections" .!= mempty)
                     <*> (o .:? "nextSyncToken"))

instance ToJSON ListConnectionsResponse where
        toJSON ListConnectionsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("connections" .=) <$> _lcrConnections,
                  ("nextSyncToken" .=) <$> _lcrNextSyncToken])

-- | A Google Apps Domain membership.
--
-- /See:/ 'domainMembership' smart constructor.
newtype DomainMembership = DomainMembership
    { _dmInViewerDomain :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DomainMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmInViewerDomain'
domainMembership
    :: DomainMembership
domainMembership =
    DomainMembership
    { _dmInViewerDomain = Nothing
    }

-- | True if the person is in the viewer\'s Google Apps domain.
dmInViewerDomain :: Lens' DomainMembership (Maybe Bool)
dmInViewerDomain
  = lens _dmInViewerDomain
      (\ s a -> s{_dmInViewerDomain = a})

instance FromJSON DomainMembership where
        parseJSON
          = withObject "DomainMembership"
              (\ o ->
                 DomainMembership <$> (o .:? "inViewerDomain"))

instance ToJSON DomainMembership where
        toJSON DomainMembership{..}
          = object
              (catMaybes
                 [("inViewerDomain" .=) <$> _dmInViewerDomain])

-- | The kind of relationship the person is looking for.
--
-- /See:/ 'relationshipInterest' smart constructor.
data RelationshipInterest = RelationshipInterest
    { _riValue          :: !(Maybe Text)
    , _riMetadata       :: !(Maybe FieldMetadata)
    , _riFormattedValue :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelationshipInterest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riValue'
--
-- * 'riMetadata'
--
-- * 'riFormattedValue'
relationshipInterest
    :: RelationshipInterest
relationshipInterest =
    RelationshipInterest
    { _riValue = Nothing
    , _riMetadata = Nothing
    , _riFormattedValue = Nothing
    }

-- | The kind of relationship the person is looking for. The value can be
-- custom or predefined. Possible values include, but are not limited to,
-- the following values: * \`friend\` * \`date\` * \`relationship\` *
-- \`networking\`
riValue :: Lens' RelationshipInterest (Maybe Text)
riValue = lens _riValue (\ s a -> s{_riValue = a})

-- | Metadata about the relationship interest.
riMetadata :: Lens' RelationshipInterest (Maybe FieldMetadata)
riMetadata
  = lens _riMetadata (\ s a -> s{_riMetadata = a})

-- | The value of the relationship interest translated and formatted in the
-- viewer\'s account locale or the locale specified in the Accept-Language
-- HTTP header.
riFormattedValue :: Lens' RelationshipInterest (Maybe Text)
riFormattedValue
  = lens _riFormattedValue
      (\ s a -> s{_riFormattedValue = a})

instance FromJSON RelationshipInterest where
        parseJSON
          = withObject "RelationshipInterest"
              (\ o ->
                 RelationshipInterest <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "formattedValue"))

instance ToJSON RelationshipInterest where
        toJSON RelationshipInterest{..}
          = object
              (catMaybes
                 [("value" .=) <$> _riValue,
                  ("metadata" .=) <$> _riMetadata,
                  ("formattedValue" .=) <$> _riFormattedValue])

-- | A person\'s bragging rights.
--
-- /See:/ 'braggingRights' smart constructor.
data BraggingRights = BraggingRights
    { _brValue    :: !(Maybe Text)
    , _brMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BraggingRights' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brValue'
--
-- * 'brMetadata'
braggingRights
    :: BraggingRights
braggingRights =
    BraggingRights
    { _brValue = Nothing
    , _brMetadata = Nothing
    }

-- | The bragging rights; for example, \`climbed mount everest\`.
brValue :: Lens' BraggingRights (Maybe Text)
brValue = lens _brValue (\ s a -> s{_brValue = a})

-- | Metadata about the bragging rights.
brMetadata :: Lens' BraggingRights (Maybe FieldMetadata)
brMetadata
  = lens _brMetadata (\ s a -> s{_brMetadata = a})

instance FromJSON BraggingRights where
        parseJSON
          = withObject "BraggingRights"
              (\ o ->
                 BraggingRights <$>
                   (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON BraggingRights where
        toJSON BraggingRights{..}
          = object
              (catMaybes
                 [("value" .=) <$> _brValue,
                  ("metadata" .=) <$> _brMetadata])

-- | A person\'s membership in a group.
--
-- /See:/ 'membership' smart constructor.
data Membership = Membership
    { _mDomainMembership       :: !(Maybe DomainMembership)
    , _mContactGroupMembership :: !(Maybe ContactGroupMembership)
    , _mMetadata               :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Membership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mDomainMembership'
--
-- * 'mContactGroupMembership'
--
-- * 'mMetadata'
membership
    :: Membership
membership =
    Membership
    { _mDomainMembership = Nothing
    , _mContactGroupMembership = Nothing
    , _mMetadata = Nothing
    }

-- | The domain membership.
mDomainMembership :: Lens' Membership (Maybe DomainMembership)
mDomainMembership
  = lens _mDomainMembership
      (\ s a -> s{_mDomainMembership = a})

-- | The contact group membership.
mContactGroupMembership :: Lens' Membership (Maybe ContactGroupMembership)
mContactGroupMembership
  = lens _mContactGroupMembership
      (\ s a -> s{_mContactGroupMembership = a})

-- | Metadata about the membership.
mMetadata :: Lens' Membership (Maybe FieldMetadata)
mMetadata
  = lens _mMetadata (\ s a -> s{_mMetadata = a})

instance FromJSON Membership where
        parseJSON
          = withObject "Membership"
              (\ o ->
                 Membership <$>
                   (o .:? "domainMembership") <*>
                     (o .:? "contactGroupMembership")
                     <*> (o .:? "metadata"))

instance ToJSON Membership where
        toJSON Membership{..}
          = object
              (catMaybes
                 [("domainMembership" .=) <$> _mDomainMembership,
                  ("contactGroupMembership" .=) <$>
                    _mContactGroupMembership,
                  ("metadata" .=) <$> _mMetadata])

-- | Information about a person merged from various data sources such as the
-- authenticated user\'s contacts and profile data. Fields other than IDs,
-- metadata, and group memberships are user-edited. Most fields can have
-- multiple items. The items in a field have no guaranteed order, but each
-- non-empty field is guaranteed to have exactly one field with
-- \`metadata.primary\` set to true.
--
-- /See:/ 'person' smart constructor.
data Person = Person
    { _perEmailAddresses        :: !(Maybe [EmailAddress])
    , _perAgeRange              :: !(Maybe Text)
    , _perEtag                  :: !(Maybe Text)
    , _perResidences            :: !(Maybe [Residence])
    , _perBiographies           :: !(Maybe [Biography])
    , _perTaglines              :: !(Maybe [Tagline])
    , _perBraggingRights        :: !(Maybe [BraggingRights])
    , _perBirthdays             :: !(Maybe [Birthday])
    , _perResourceName          :: !(Maybe Text)
    , _perRelations             :: !(Maybe [Relation])
    , _perURLs                  :: !(Maybe [URL])
    , _perAddresses             :: !(Maybe [Address])
    , _perNicknames             :: !(Maybe [Nickname])
    , _perRelationshipStatuses  :: !(Maybe [RelationshipStatus])
    , _perImClients             :: !(Maybe [ImClient])
    , _perPhoneNumbers          :: !(Maybe [PhoneNumber])
    , _perOccupations           :: !(Maybe [Occupation])
    , _perNames                 :: !(Maybe [Name])
    , _perGenders               :: !(Maybe [Gender])
    , _perPhotos                :: !(Maybe [Photo])
    , _perEvents                :: !(Maybe [Event])
    , _perCoverPhotos           :: !(Maybe [CoverPhoto])
    , _perSkills                :: !(Maybe [Skill])
    , _perMetadata              :: !(Maybe PersonMetadata)
    , _perInterests             :: !(Maybe [Interest])
    , _perOrganizations         :: !(Maybe [Organization])
    , _perLocales               :: !(Maybe [Locale])
    , _perMemberships           :: !(Maybe [Membership])
    , _perRelationshipInterests :: !(Maybe [RelationshipInterest])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perEmailAddresses'
--
-- * 'perAgeRange'
--
-- * 'perEtag'
--
-- * 'perResidences'
--
-- * 'perBiographies'
--
-- * 'perTaglines'
--
-- * 'perBraggingRights'
--
-- * 'perBirthdays'
--
-- * 'perResourceName'
--
-- * 'perRelations'
--
-- * 'perURLs'
--
-- * 'perAddresses'
--
-- * 'perNicknames'
--
-- * 'perRelationshipStatuses'
--
-- * 'perImClients'
--
-- * 'perPhoneNumbers'
--
-- * 'perOccupations'
--
-- * 'perNames'
--
-- * 'perGenders'
--
-- * 'perPhotos'
--
-- * 'perEvents'
--
-- * 'perCoverPhotos'
--
-- * 'perSkills'
--
-- * 'perMetadata'
--
-- * 'perInterests'
--
-- * 'perOrganizations'
--
-- * 'perLocales'
--
-- * 'perMemberships'
--
-- * 'perRelationshipInterests'
person
    :: Person
person =
    Person
    { _perEmailAddresses = Nothing
    , _perAgeRange = Nothing
    , _perEtag = Nothing
    , _perResidences = Nothing
    , _perBiographies = Nothing
    , _perTaglines = Nothing
    , _perBraggingRights = Nothing
    , _perBirthdays = Nothing
    , _perResourceName = Nothing
    , _perRelations = Nothing
    , _perURLs = Nothing
    , _perAddresses = Nothing
    , _perNicknames = Nothing
    , _perRelationshipStatuses = Nothing
    , _perImClients = Nothing
    , _perPhoneNumbers = Nothing
    , _perOccupations = Nothing
    , _perNames = Nothing
    , _perGenders = Nothing
    , _perPhotos = Nothing
    , _perEvents = Nothing
    , _perCoverPhotos = Nothing
    , _perSkills = Nothing
    , _perMetadata = Nothing
    , _perInterests = Nothing
    , _perOrganizations = Nothing
    , _perLocales = Nothing
    , _perMemberships = Nothing
    , _perRelationshipInterests = Nothing
    }

-- | The person\'s email addresses.
perEmailAddresses :: Lens' Person [EmailAddress]
perEmailAddresses
  = lens _perEmailAddresses
      (\ s a -> s{_perEmailAddresses = a})
      . _Default
      . _Coerce

-- | The person\'s age range.
perAgeRange :: Lens' Person (Maybe Text)
perAgeRange
  = lens _perAgeRange (\ s a -> s{_perAgeRange = a})

-- | The [HTTP entity tag](https:\/\/en.wikipedia.org\/wiki\/HTTP_ETag) of
-- the resource. Used for web cache validation.
perEtag :: Lens' Person (Maybe Text)
perEtag = lens _perEtag (\ s a -> s{_perEtag = a})

-- | The person\'s residences.
perResidences :: Lens' Person [Residence]
perResidences
  = lens _perResidences
      (\ s a -> s{_perResidences = a})
      . _Default
      . _Coerce

-- | The person\'s biographies.
perBiographies :: Lens' Person [Biography]
perBiographies
  = lens _perBiographies
      (\ s a -> s{_perBiographies = a})
      . _Default
      . _Coerce

-- | The person\'s taglines.
perTaglines :: Lens' Person [Tagline]
perTaglines
  = lens _perTaglines (\ s a -> s{_perTaglines = a}) .
      _Default
      . _Coerce

-- | The person\'s bragging rights.
perBraggingRights :: Lens' Person [BraggingRights]
perBraggingRights
  = lens _perBraggingRights
      (\ s a -> s{_perBraggingRights = a})
      . _Default
      . _Coerce

-- | The person\'s birthdays.
perBirthdays :: Lens' Person [Birthday]
perBirthdays
  = lens _perBirthdays (\ s a -> s{_perBirthdays = a})
      . _Default
      . _Coerce

-- | The resource name for the person, assigned by the server. An ASCII
-- string with a max length of 27 characters. Always starts with
-- \`people\/\`.
perResourceName :: Lens' Person (Maybe Text)
perResourceName
  = lens _perResourceName
      (\ s a -> s{_perResourceName = a})

-- | The person\'s relations.
perRelations :: Lens' Person [Relation]
perRelations
  = lens _perRelations (\ s a -> s{_perRelations = a})
      . _Default
      . _Coerce

-- | The person\'s associated URLs.
perURLs :: Lens' Person [URL]
perURLs
  = lens _perURLs (\ s a -> s{_perURLs = a}) . _Default
      . _Coerce

-- | The person\'s street addresses.
perAddresses :: Lens' Person [Address]
perAddresses
  = lens _perAddresses (\ s a -> s{_perAddresses = a})
      . _Default
      . _Coerce

-- | The person\'s nicknames.
perNicknames :: Lens' Person [Nickname]
perNicknames
  = lens _perNicknames (\ s a -> s{_perNicknames = a})
      . _Default
      . _Coerce

-- | The person\'s relationship statuses.
perRelationshipStatuses :: Lens' Person [RelationshipStatus]
perRelationshipStatuses
  = lens _perRelationshipStatuses
      (\ s a -> s{_perRelationshipStatuses = a})
      . _Default
      . _Coerce

-- | The person\'s instant messaging clients.
perImClients :: Lens' Person [ImClient]
perImClients
  = lens _perImClients (\ s a -> s{_perImClients = a})
      . _Default
      . _Coerce

-- | The person\'s phone numbers.
perPhoneNumbers :: Lens' Person [PhoneNumber]
perPhoneNumbers
  = lens _perPhoneNumbers
      (\ s a -> s{_perPhoneNumbers = a})
      . _Default
      . _Coerce

-- | The person\'s occupations.
perOccupations :: Lens' Person [Occupation]
perOccupations
  = lens _perOccupations
      (\ s a -> s{_perOccupations = a})
      . _Default
      . _Coerce

-- | The person\'s names.
perNames :: Lens' Person [Name]
perNames
  = lens _perNames (\ s a -> s{_perNames = a}) .
      _Default
      . _Coerce

-- | The person\'s genders.
perGenders :: Lens' Person [Gender]
perGenders
  = lens _perGenders (\ s a -> s{_perGenders = a}) .
      _Default
      . _Coerce

-- | The person\'s photos.
perPhotos :: Lens' Person [Photo]
perPhotos
  = lens _perPhotos (\ s a -> s{_perPhotos = a}) .
      _Default
      . _Coerce

-- | The person\'s events.
perEvents :: Lens' Person [Event]
perEvents
  = lens _perEvents (\ s a -> s{_perEvents = a}) .
      _Default
      . _Coerce

-- | The person\'s cover photos.
perCoverPhotos :: Lens' Person [CoverPhoto]
perCoverPhotos
  = lens _perCoverPhotos
      (\ s a -> s{_perCoverPhotos = a})
      . _Default
      . _Coerce

-- | The person\'s skills.
perSkills :: Lens' Person [Skill]
perSkills
  = lens _perSkills (\ s a -> s{_perSkills = a}) .
      _Default
      . _Coerce

-- | Metadata about the person.
perMetadata :: Lens' Person (Maybe PersonMetadata)
perMetadata
  = lens _perMetadata (\ s a -> s{_perMetadata = a})

-- | The person\'s interests.
perInterests :: Lens' Person [Interest]
perInterests
  = lens _perInterests (\ s a -> s{_perInterests = a})
      . _Default
      . _Coerce

-- | The person\'s past or current organizations.
perOrganizations :: Lens' Person [Organization]
perOrganizations
  = lens _perOrganizations
      (\ s a -> s{_perOrganizations = a})
      . _Default
      . _Coerce

-- | The person\'s locale preferences.
perLocales :: Lens' Person [Locale]
perLocales
  = lens _perLocales (\ s a -> s{_perLocales = a}) .
      _Default
      . _Coerce

-- | The person\'s group memberships.
perMemberships :: Lens' Person [Membership]
perMemberships
  = lens _perMemberships
      (\ s a -> s{_perMemberships = a})
      . _Default
      . _Coerce

-- | The kind of relationship the person is looking for.
perRelationshipInterests :: Lens' Person [RelationshipInterest]
perRelationshipInterests
  = lens _perRelationshipInterests
      (\ s a -> s{_perRelationshipInterests = a})
      . _Default
      . _Coerce

instance FromJSON Person where
        parseJSON
          = withObject "Person"
              (\ o ->
                 Person <$>
                   (o .:? "emailAddresses" .!= mempty) <*>
                     (o .:? "ageRange")
                     <*> (o .:? "etag")
                     <*> (o .:? "residences" .!= mempty)
                     <*> (o .:? "biographies" .!= mempty)
                     <*> (o .:? "taglines" .!= mempty)
                     <*> (o .:? "braggingRights" .!= mempty)
                     <*> (o .:? "birthdays" .!= mempty)
                     <*> (o .:? "resourceName")
                     <*> (o .:? "relations" .!= mempty)
                     <*> (o .:? "urls" .!= mempty)
                     <*> (o .:? "addresses" .!= mempty)
                     <*> (o .:? "nicknames" .!= mempty)
                     <*> (o .:? "relationshipStatuses" .!= mempty)
                     <*> (o .:? "imClients" .!= mempty)
                     <*> (o .:? "phoneNumbers" .!= mempty)
                     <*> (o .:? "occupations" .!= mempty)
                     <*> (o .:? "names" .!= mempty)
                     <*> (o .:? "genders" .!= mempty)
                     <*> (o .:? "photos" .!= mempty)
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "coverPhotos" .!= mempty)
                     <*> (o .:? "skills" .!= mempty)
                     <*> (o .:? "metadata")
                     <*> (o .:? "interests" .!= mempty)
                     <*> (o .:? "organizations" .!= mempty)
                     <*> (o .:? "locales" .!= mempty)
                     <*> (o .:? "memberships" .!= mempty)
                     <*> (o .:? "relationshipInterests" .!= mempty))

instance ToJSON Person where
        toJSON Person{..}
          = object
              (catMaybes
                 [("emailAddresses" .=) <$> _perEmailAddresses,
                  ("ageRange" .=) <$> _perAgeRange,
                  ("etag" .=) <$> _perEtag,
                  ("residences" .=) <$> _perResidences,
                  ("biographies" .=) <$> _perBiographies,
                  ("taglines" .=) <$> _perTaglines,
                  ("braggingRights" .=) <$> _perBraggingRights,
                  ("birthdays" .=) <$> _perBirthdays,
                  ("resourceName" .=) <$> _perResourceName,
                  ("relations" .=) <$> _perRelations,
                  ("urls" .=) <$> _perURLs,
                  ("addresses" .=) <$> _perAddresses,
                  ("nicknames" .=) <$> _perNicknames,
                  ("relationshipStatuses" .=) <$>
                    _perRelationshipStatuses,
                  ("imClients" .=) <$> _perImClients,
                  ("phoneNumbers" .=) <$> _perPhoneNumbers,
                  ("occupations" .=) <$> _perOccupations,
                  ("names" .=) <$> _perNames,
                  ("genders" .=) <$> _perGenders,
                  ("photos" .=) <$> _perPhotos,
                  ("events" .=) <$> _perEvents,
                  ("coverPhotos" .=) <$> _perCoverPhotos,
                  ("skills" .=) <$> _perSkills,
                  ("metadata" .=) <$> _perMetadata,
                  ("interests" .=) <$> _perInterests,
                  ("organizations" .=) <$> _perOrganizations,
                  ("locales" .=) <$> _perLocales,
                  ("memberships" .=) <$> _perMemberships,
                  ("relationshipInterests" .=) <$>
                    _perRelationshipInterests])

-- | A Google contact group membership.
--
-- /See:/ 'contactGroupMembership' smart constructor.
newtype ContactGroupMembership = ContactGroupMembership
    { _cgmContactGroupId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactGroupMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgmContactGroupId'
contactGroupMembership
    :: ContactGroupMembership
contactGroupMembership =
    ContactGroupMembership
    { _cgmContactGroupId = Nothing
    }

-- | The contact group ID for the contact group membership. The contact group
-- ID can be custom or predefined. Possible values include, but are not
-- limited to, the following: * \`myContacts\` * \`starred\` * A numerical
-- ID for user-created groups.
cgmContactGroupId :: Lens' ContactGroupMembership (Maybe Text)
cgmContactGroupId
  = lens _cgmContactGroupId
      (\ s a -> s{_cgmContactGroupId = a})

instance FromJSON ContactGroupMembership where
        parseJSON
          = withObject "ContactGroupMembership"
              (\ o ->
                 ContactGroupMembership <$> (o .:? "contactGroupId"))

instance ToJSON ContactGroupMembership where
        toJSON ContactGroupMembership{..}
          = object
              (catMaybes
                 [("contactGroupId" .=) <$> _cgmContactGroupId])

-- | A person\'s locale preference.
--
-- /See:/ 'locale' smart constructor.
data Locale = Locale
    { _lValue    :: !(Maybe Text)
    , _lMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Locale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lValue'
--
-- * 'lMetadata'
locale
    :: Locale
locale =
    Locale
    { _lValue = Nothing
    , _lMetadata = Nothing
    }

-- | The well-formed [IETF BCP 47](https:\/\/tools.ietf.org\/html\/bcp47)
-- language tag representing the locale.
lValue :: Lens' Locale (Maybe Text)
lValue = lens _lValue (\ s a -> s{_lValue = a})

-- | Metadata about the locale.
lMetadata :: Lens' Locale (Maybe FieldMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

instance FromJSON Locale where
        parseJSON
          = withObject "Locale"
              (\ o ->
                 Locale <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Locale where
        toJSON Locale{..}
          = object
              (catMaybes
                 [("value" .=) <$> _lValue,
                  ("metadata" .=) <$> _lMetadata])

-- | A person\'s relationship status.
--
-- /See:/ 'relationshipStatus' smart constructor.
data RelationshipStatus = RelationshipStatus
    { _rsValue          :: !(Maybe Text)
    , _rsMetadata       :: !(Maybe FieldMetadata)
    , _rsFormattedValue :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelationshipStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsValue'
--
-- * 'rsMetadata'
--
-- * 'rsFormattedValue'
relationshipStatus
    :: RelationshipStatus
relationshipStatus =
    RelationshipStatus
    { _rsValue = Nothing
    , _rsMetadata = Nothing
    , _rsFormattedValue = Nothing
    }

-- | The relationship status. The value can be custom or predefined. Possible
-- values include, but are not limited to, the following: * \`single\` *
-- \`inARelationship\` * \`engaged\` * \`married\` * \`itsComplicated\` *
-- \`openRelationship\` * \`widowed\` * \`inDomesticPartnership\` *
-- \`inCivilUnion\`
rsValue :: Lens' RelationshipStatus (Maybe Text)
rsValue = lens _rsValue (\ s a -> s{_rsValue = a})

-- | Metadata about the relationship status.
rsMetadata :: Lens' RelationshipStatus (Maybe FieldMetadata)
rsMetadata
  = lens _rsMetadata (\ s a -> s{_rsMetadata = a})

-- | The read-only value of the relationship status translated and formatted
-- in the viewer\'s account locale or the \`Accept-Language\` HTTP header
-- locale.
rsFormattedValue :: Lens' RelationshipStatus (Maybe Text)
rsFormattedValue
  = lens _rsFormattedValue
      (\ s a -> s{_rsFormattedValue = a})

instance FromJSON RelationshipStatus where
        parseJSON
          = withObject "RelationshipStatus"
              (\ o ->
                 RelationshipStatus <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "formattedValue"))

instance ToJSON RelationshipStatus where
        toJSON RelationshipStatus{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rsValue,
                  ("metadata" .=) <$> _rsMetadata,
                  ("formattedValue" .=) <$> _rsFormattedValue])

-- | A person\'s associated URLs.
--
-- /See:/ 'url' smart constructor.
data URL = URL
    { _uValue         :: !(Maybe Text)
    , _uMetadata      :: !(Maybe FieldMetadata)
    , _uType          :: !(Maybe Text)
    , _uFormattedType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uValue'
--
-- * 'uMetadata'
--
-- * 'uType'
--
-- * 'uFormattedType'
url
    :: URL
url =
    URL
    { _uValue = Nothing
    , _uMetadata = Nothing
    , _uType = Nothing
    , _uFormattedType = Nothing
    }

-- | The URL.
uValue :: Lens' URL (Maybe Text)
uValue = lens _uValue (\ s a -> s{_uValue = a})

-- | Metadata about the URL.
uMetadata :: Lens' URL (Maybe FieldMetadata)
uMetadata
  = lens _uMetadata (\ s a -> s{_uMetadata = a})

-- | The type of the URL. The type can be custom or predefined. Possible
-- values include, but are not limited to, the following: * \`home\` *
-- \`work\` * \`blog\` * \`profile\` * \`homePage\` * \`ftp\` *
-- \`reservations\` * \`appInstallPage\`: website for a Google+
-- application. * \`other\`
uType :: Lens' URL (Maybe Text)
uType = lens _uType (\ s a -> s{_uType = a})

-- | The read-only type of the URL translated and formatted in the viewer\'s
-- account locale or the \`Accept-Language\` HTTP header locale.
uFormattedType :: Lens' URL (Maybe Text)
uFormattedType
  = lens _uFormattedType
      (\ s a -> s{_uFormattedType = a})

instance FromJSON URL where
        parseJSON
          = withObject "URL"
              (\ o ->
                 URL <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON URL where
        toJSON URL{..}
          = object
              (catMaybes
                 [("value" .=) <$> _uValue,
                  ("metadata" .=) <$> _uMetadata,
                  ("type" .=) <$> _uType,
                  ("formattedType" .=) <$> _uFormattedType])

-- | A person\'s physical address. May be a P.O. box or street address. All
-- fields are optional.
--
-- /See:/ 'address' smart constructor.
data Address = Address
    { _aStreetAddress   :: !(Maybe Text)
    , _aPoBox           :: !(Maybe Text)
    , _aCountry         :: !(Maybe Text)
    , _aPostalCode      :: !(Maybe Text)
    , _aExtendedAddress :: !(Maybe Text)
    , _aCity            :: !(Maybe Text)
    , _aMetadata        :: !(Maybe FieldMetadata)
    , _aCountryCode     :: !(Maybe Text)
    , _aFormattedValue  :: !(Maybe Text)
    , _aRegion          :: !(Maybe Text)
    , _aType            :: !(Maybe Text)
    , _aFormattedType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Address' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aStreetAddress'
--
-- * 'aPoBox'
--
-- * 'aCountry'
--
-- * 'aPostalCode'
--
-- * 'aExtendedAddress'
--
-- * 'aCity'
--
-- * 'aMetadata'
--
-- * 'aCountryCode'
--
-- * 'aFormattedValue'
--
-- * 'aRegion'
--
-- * 'aType'
--
-- * 'aFormattedType'
address
    :: Address
address =
    Address
    { _aStreetAddress = Nothing
    , _aPoBox = Nothing
    , _aCountry = Nothing
    , _aPostalCode = Nothing
    , _aExtendedAddress = Nothing
    , _aCity = Nothing
    , _aMetadata = Nothing
    , _aCountryCode = Nothing
    , _aFormattedValue = Nothing
    , _aRegion = Nothing
    , _aType = Nothing
    , _aFormattedType = Nothing
    }

-- | The street address.
aStreetAddress :: Lens' Address (Maybe Text)
aStreetAddress
  = lens _aStreetAddress
      (\ s a -> s{_aStreetAddress = a})

-- | The P.O. box of the address.
aPoBox :: Lens' Address (Maybe Text)
aPoBox = lens _aPoBox (\ s a -> s{_aPoBox = a})

-- | The country of the address.
aCountry :: Lens' Address (Maybe Text)
aCountry = lens _aCountry (\ s a -> s{_aCountry = a})

-- | The postal code of the address.
aPostalCode :: Lens' Address (Maybe Text)
aPostalCode
  = lens _aPostalCode (\ s a -> s{_aPostalCode = a})

-- | The extended address of the address; for example, the apartment number.
aExtendedAddress :: Lens' Address (Maybe Text)
aExtendedAddress
  = lens _aExtendedAddress
      (\ s a -> s{_aExtendedAddress = a})

-- | The city of the address.
aCity :: Lens' Address (Maybe Text)
aCity = lens _aCity (\ s a -> s{_aCity = a})

-- | Metadata about the address.
aMetadata :: Lens' Address (Maybe FieldMetadata)
aMetadata
  = lens _aMetadata (\ s a -> s{_aMetadata = a})

-- | The [ISO 3166-1 alpha-2](http:\/\/www.iso.org\/iso\/country_codes.htm)
-- country code of the address.
aCountryCode :: Lens' Address (Maybe Text)
aCountryCode
  = lens _aCountryCode (\ s a -> s{_aCountryCode = a})

-- | The read-only value of the address formatted in the viewer\'s account
-- locale or the \`Accept-Language\` HTTP header locale.
aFormattedValue :: Lens' Address (Maybe Text)
aFormattedValue
  = lens _aFormattedValue
      (\ s a -> s{_aFormattedValue = a})

-- | The region of the address; for example, the state or province.
aRegion :: Lens' Address (Maybe Text)
aRegion = lens _aRegion (\ s a -> s{_aRegion = a})

-- | The type of the address. The type can be custom or predefined. Possible
-- values include, but are not limited to, the following: * \`home\` *
-- \`work\` * \`other\`
aType :: Lens' Address (Maybe Text)
aType = lens _aType (\ s a -> s{_aType = a})

-- | The read-only type of the address translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
aFormattedType :: Lens' Address (Maybe Text)
aFormattedType
  = lens _aFormattedType
      (\ s a -> s{_aFormattedType = a})

instance FromJSON Address where
        parseJSON
          = withObject "Address"
              (\ o ->
                 Address <$>
                   (o .:? "streetAddress") <*> (o .:? "poBox") <*>
                     (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "extendedAddress")
                     <*> (o .:? "city")
                     <*> (o .:? "metadata")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "formattedValue")
                     <*> (o .:? "region")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON Address where
        toJSON Address{..}
          = object
              (catMaybes
                 [("streetAddress" .=) <$> _aStreetAddress,
                  ("poBox" .=) <$> _aPoBox,
                  ("country" .=) <$> _aCountry,
                  ("postalCode" .=) <$> _aPostalCode,
                  ("extendedAddress" .=) <$> _aExtendedAddress,
                  ("city" .=) <$> _aCity,
                  ("metadata" .=) <$> _aMetadata,
                  ("countryCode" .=) <$> _aCountryCode,
                  ("formattedValue" .=) <$> _aFormattedValue,
                  ("region" .=) <$> _aRegion, ("type" .=) <$> _aType,
                  ("formattedType" .=) <$> _aFormattedType])

-- | A person\'s relation to another person.
--
-- /See:/ 'relation' smart constructor.
data Relation = Relation
    { _rPerson        :: !(Maybe Text)
    , _rMetadata      :: !(Maybe FieldMetadata)
    , _rType          :: !(Maybe Text)
    , _rFormattedType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Relation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rPerson'
--
-- * 'rMetadata'
--
-- * 'rType'
--
-- * 'rFormattedType'
relation
    :: Relation
relation =
    Relation
    { _rPerson = Nothing
    , _rMetadata = Nothing
    , _rType = Nothing
    , _rFormattedType = Nothing
    }

-- | The name of the other person this relation refers to.
rPerson :: Lens' Relation (Maybe Text)
rPerson = lens _rPerson (\ s a -> s{_rPerson = a})

-- | Metadata about the relation.
rMetadata :: Lens' Relation (Maybe FieldMetadata)
rMetadata
  = lens _rMetadata (\ s a -> s{_rMetadata = a})

-- | The person\'s relation to the other person. The type can be custom or
-- predefined. Possible values include, but are not limited to, the
-- following values: * \`spouse\` * \`child\` * \`mother\` * \`father\` *
-- \`parent\` * \`brother\` * \`sister\` * \`friend\` * \`relative\` *
-- \`domesticPartner\` * \`manager\` * \`assistant\` * \`referredBy\` *
-- \`partner\`
rType :: Lens' Relation (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

-- | The type of the relation translated and formatted in the viewer\'s
-- account locale or the locale specified in the Accept-Language HTTP
-- header.
rFormattedType :: Lens' Relation (Maybe Text)
rFormattedType
  = lens _rFormattedType
      (\ s a -> s{_rFormattedType = a})

instance FromJSON Relation where
        parseJSON
          = withObject "Relation"
              (\ o ->
                 Relation <$>
                   (o .:? "person") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON Relation where
        toJSON Relation{..}
          = object
              (catMaybes
                 [("person" .=) <$> _rPerson,
                  ("metadata" .=) <$> _rMetadata,
                  ("type" .=) <$> _rType,
                  ("formattedType" .=) <$> _rFormattedType])

--
-- /See:/ 'getPeopleResponse' smart constructor.
newtype GetPeopleResponse = GetPeopleResponse
    { _gprResponses :: Maybe [PersonResponse]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetPeopleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprResponses'
getPeopleResponse
    :: GetPeopleResponse
getPeopleResponse =
    GetPeopleResponse
    { _gprResponses = Nothing
    }

-- | The response for each requested resource name.
gprResponses :: Lens' GetPeopleResponse [PersonResponse]
gprResponses
  = lens _gprResponses (\ s a -> s{_gprResponses = a})
      . _Default
      . _Coerce

instance FromJSON GetPeopleResponse where
        parseJSON
          = withObject "GetPeopleResponse"
              (\ o ->
                 GetPeopleResponse <$> (o .:? "responses" .!= mempty))

instance ToJSON GetPeopleResponse where
        toJSON GetPeopleResponse{..}
          = object
              (catMaybes [("responses" .=) <$> _gprResponses])

-- | A person\'s birthday. At least one of the \`date\` and \`text\` fields
-- are specified. The \`date\` and \`text\` fields typically represent the
-- same date, but are not guaranteed to.
--
-- /See:/ 'birthday' smart constructor.
data Birthday = Birthday
    { _bText     :: !(Maybe Text)
    , _bDate     :: !(Maybe Date)
    , _bMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Birthday' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bText'
--
-- * 'bDate'
--
-- * 'bMetadata'
birthday
    :: Birthday
birthday =
    Birthday
    { _bText = Nothing
    , _bDate = Nothing
    , _bMetadata = Nothing
    }

-- | A free-form string representing the user\'s birthday.
bText :: Lens' Birthday (Maybe Text)
bText = lens _bText (\ s a -> s{_bText = a})

-- | The date of the birthday.
bDate :: Lens' Birthday (Maybe Date)
bDate = lens _bDate (\ s a -> s{_bDate = a})

-- | Metadata about the birthday.
bMetadata :: Lens' Birthday (Maybe FieldMetadata)
bMetadata
  = lens _bMetadata (\ s a -> s{_bMetadata = a})

instance FromJSON Birthday where
        parseJSON
          = withObject "Birthday"
              (\ o ->
                 Birthday <$>
                   (o .:? "text") <*> (o .:? "date") <*>
                     (o .:? "metadata"))

instance ToJSON Birthday where
        toJSON Birthday{..}
          = object
              (catMaybes
                 [("text" .=) <$> _bText, ("date" .=) <$> _bDate,
                  ("metadata" .=) <$> _bMetadata])

-- | Represents a whole calendar date, for example a date of birth. The time
-- of day and time zone are either specified elsewhere or are not
-- significant. The date is relative to the [Proleptic Gregorian
-- Calendar](https:\/\/en.wikipedia.org\/wiki\/Proleptic_Gregorian_calendar).
-- The day may be 0 to represent a year and month where the day is not
-- significant. The year may be 0 to represent a month and day independent
-- of year; for example, anniversary date.
--
-- /See:/ 'date' smart constructor.
data Date = Date
    { _dDay   :: !(Maybe (Textual Int32))
    , _dYear  :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date =
    Date
    { _dDay = Nothing
    , _dYear = Nothing
    , _dMonth = Nothing
    }

-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year\/month where the day is not significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of year. Must be from 1 to 12.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | A brief one-line description of the person.
--
-- /See:/ 'tagline' smart constructor.
data Tagline = Tagline
    { _tValue    :: !(Maybe Text)
    , _tMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tagline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tValue'
--
-- * 'tMetadata'
tagline
    :: Tagline
tagline =
    Tagline
    { _tValue = Nothing
    , _tMetadata = Nothing
    }

-- | The tagline.
tValue :: Lens' Tagline (Maybe Text)
tValue = lens _tValue (\ s a -> s{_tValue = a})

-- | Metadata about the tagline.
tMetadata :: Lens' Tagline (Maybe FieldMetadata)
tMetadata
  = lens _tMetadata (\ s a -> s{_tMetadata = a})

instance FromJSON Tagline where
        parseJSON
          = withObject "Tagline"
              (\ o ->
                 Tagline <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Tagline where
        toJSON Tagline{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tValue,
                  ("metadata" .=) <$> _tMetadata])

-- | A person\'s past or current residence.
--
-- /See:/ 'residence' smart constructor.
data Residence = Residence
    { _resValue    :: !(Maybe Text)
    , _resCurrent  :: !(Maybe Bool)
    , _resMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Residence' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resValue'
--
-- * 'resCurrent'
--
-- * 'resMetadata'
residence
    :: Residence
residence =
    Residence
    { _resValue = Nothing
    , _resCurrent = Nothing
    , _resMetadata = Nothing
    }

-- | The address of the residence.
resValue :: Lens' Residence (Maybe Text)
resValue = lens _resValue (\ s a -> s{_resValue = a})

-- | True if the residence is the person\'s current residence; false if the
-- residence is a past residence.
resCurrent :: Lens' Residence (Maybe Bool)
resCurrent
  = lens _resCurrent (\ s a -> s{_resCurrent = a})

-- | Metadata about the residence.
resMetadata :: Lens' Residence (Maybe FieldMetadata)
resMetadata
  = lens _resMetadata (\ s a -> s{_resMetadata = a})

instance FromJSON Residence where
        parseJSON
          = withObject "Residence"
              (\ o ->
                 Residence <$>
                   (o .:? "value") <*> (o .:? "current") <*>
                     (o .:? "metadata"))

instance ToJSON Residence where
        toJSON Residence{..}
          = object
              (catMaybes
                 [("value" .=) <$> _resValue,
                  ("current" .=) <$> _resCurrent,
                  ("metadata" .=) <$> _resMetadata])

-- | A person\'s gender.
--
-- /See:/ 'gender' smart constructor.
data Gender = Gender
    { _gValue          :: !(Maybe Text)
    , _gMetadata       :: !(Maybe FieldMetadata)
    , _gFormattedValue :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Gender' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gValue'
--
-- * 'gMetadata'
--
-- * 'gFormattedValue'
gender
    :: Gender
gender =
    Gender
    { _gValue = Nothing
    , _gMetadata = Nothing
    , _gFormattedValue = Nothing
    }

-- | The gender for the person. The gender can be custom or predefined.
-- Possible values include, but are not limited to, the following: *
-- \`male\` * \`female\` * \`other\` * \`unknown\`
gValue :: Lens' Gender (Maybe Text)
gValue = lens _gValue (\ s a -> s{_gValue = a})

-- | Metadata about the gender.
gMetadata :: Lens' Gender (Maybe FieldMetadata)
gMetadata
  = lens _gMetadata (\ s a -> s{_gMetadata = a})

-- | The read-only value of the gender translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
gFormattedValue :: Lens' Gender (Maybe Text)
gFormattedValue
  = lens _gFormattedValue
      (\ s a -> s{_gFormattedValue = a})

instance FromJSON Gender where
        parseJSON
          = withObject "Gender"
              (\ o ->
                 Gender <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "formattedValue"))

instance ToJSON Gender where
        toJSON Gender{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gValue,
                  ("metadata" .=) <$> _gMetadata,
                  ("formattedValue" .=) <$> _gFormattedValue])

-- | A person\'s name. If the name is a mononym, the family name is empty.
--
-- /See:/ 'name' smart constructor.
data Name = Name
    { _nGivenName               :: !(Maybe Text)
    , _nPhoneticHonorificSuffix :: !(Maybe Text)
    , _nMiddleName              :: !(Maybe Text)
    , _nPhoneticMiddleName      :: !(Maybe Text)
    , _nPhoneticFamilyName      :: !(Maybe Text)
    , _nPhoneticHonorificPrefix :: !(Maybe Text)
    , _nHonorificPrefix         :: !(Maybe Text)
    , _nFamilyName              :: !(Maybe Text)
    , _nMetadata                :: !(Maybe FieldMetadata)
    , _nDisplayName             :: !(Maybe Text)
    , _nPhoneticGivenName       :: !(Maybe Text)
    , _nHonorificSuffix         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Name' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nGivenName'
--
-- * 'nPhoneticHonorificSuffix'
--
-- * 'nMiddleName'
--
-- * 'nPhoneticMiddleName'
--
-- * 'nPhoneticFamilyName'
--
-- * 'nPhoneticHonorificPrefix'
--
-- * 'nHonorificPrefix'
--
-- * 'nFamilyName'
--
-- * 'nMetadata'
--
-- * 'nDisplayName'
--
-- * 'nPhoneticGivenName'
--
-- * 'nHonorificSuffix'
name
    :: Name
name =
    Name
    { _nGivenName = Nothing
    , _nPhoneticHonorificSuffix = Nothing
    , _nMiddleName = Nothing
    , _nPhoneticMiddleName = Nothing
    , _nPhoneticFamilyName = Nothing
    , _nPhoneticHonorificPrefix = Nothing
    , _nHonorificPrefix = Nothing
    , _nFamilyName = Nothing
    , _nMetadata = Nothing
    , _nDisplayName = Nothing
    , _nPhoneticGivenName = Nothing
    , _nHonorificSuffix = Nothing
    }

-- | The given name.
nGivenName :: Lens' Name (Maybe Text)
nGivenName
  = lens _nGivenName (\ s a -> s{_nGivenName = a})

-- | The honorific suffixes spelled as they sound.
nPhoneticHonorificSuffix :: Lens' Name (Maybe Text)
nPhoneticHonorificSuffix
  = lens _nPhoneticHonorificSuffix
      (\ s a -> s{_nPhoneticHonorificSuffix = a})

-- | The middle name(s).
nMiddleName :: Lens' Name (Maybe Text)
nMiddleName
  = lens _nMiddleName (\ s a -> s{_nMiddleName = a})

-- | The middle name(s) spelled as they sound.
nPhoneticMiddleName :: Lens' Name (Maybe Text)
nPhoneticMiddleName
  = lens _nPhoneticMiddleName
      (\ s a -> s{_nPhoneticMiddleName = a})

-- | The family name spelled as it sounds.
nPhoneticFamilyName :: Lens' Name (Maybe Text)
nPhoneticFamilyName
  = lens _nPhoneticFamilyName
      (\ s a -> s{_nPhoneticFamilyName = a})

-- | The honorific prefixes spelled as they sound.
nPhoneticHonorificPrefix :: Lens' Name (Maybe Text)
nPhoneticHonorificPrefix
  = lens _nPhoneticHonorificPrefix
      (\ s a -> s{_nPhoneticHonorificPrefix = a})

-- | The honorific prefixes, such as \`Mrs.\` or \`Dr.\`
nHonorificPrefix :: Lens' Name (Maybe Text)
nHonorificPrefix
  = lens _nHonorificPrefix
      (\ s a -> s{_nHonorificPrefix = a})

-- | The family name.
nFamilyName :: Lens' Name (Maybe Text)
nFamilyName
  = lens _nFamilyName (\ s a -> s{_nFamilyName = a})

-- | Metadata about the name.
nMetadata :: Lens' Name (Maybe FieldMetadata)
nMetadata
  = lens _nMetadata (\ s a -> s{_nMetadata = a})

-- | The display name formatted according to the locale specified by the
-- viewer\'s account or the Accept-Language HTTP header.
nDisplayName :: Lens' Name (Maybe Text)
nDisplayName
  = lens _nDisplayName (\ s a -> s{_nDisplayName = a})

-- | The given name spelled as it sounds.
nPhoneticGivenName :: Lens' Name (Maybe Text)
nPhoneticGivenName
  = lens _nPhoneticGivenName
      (\ s a -> s{_nPhoneticGivenName = a})

-- | The honorific suffixes, such as \`Jr.\`
nHonorificSuffix :: Lens' Name (Maybe Text)
nHonorificSuffix
  = lens _nHonorificSuffix
      (\ s a -> s{_nHonorificSuffix = a})

instance FromJSON Name where
        parseJSON
          = withObject "Name"
              (\ o ->
                 Name <$>
                   (o .:? "givenName") <*>
                     (o .:? "phoneticHonorificSuffix")
                     <*> (o .:? "middleName")
                     <*> (o .:? "phoneticMiddleName")
                     <*> (o .:? "phoneticFamilyName")
                     <*> (o .:? "phoneticHonorificPrefix")
                     <*> (o .:? "honorificPrefix")
                     <*> (o .:? "familyName")
                     <*> (o .:? "metadata")
                     <*> (o .:? "displayName")
                     <*> (o .:? "phoneticGivenName")
                     <*> (o .:? "honorificSuffix"))

instance ToJSON Name where
        toJSON Name{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _nGivenName,
                  ("phoneticHonorificSuffix" .=) <$>
                    _nPhoneticHonorificSuffix,
                  ("middleName" .=) <$> _nMiddleName,
                  ("phoneticMiddleName" .=) <$> _nPhoneticMiddleName,
                  ("phoneticFamilyName" .=) <$> _nPhoneticFamilyName,
                  ("phoneticHonorificPrefix" .=) <$>
                    _nPhoneticHonorificPrefix,
                  ("honorificPrefix" .=) <$> _nHonorificPrefix,
                  ("familyName" .=) <$> _nFamilyName,
                  ("metadata" .=) <$> _nMetadata,
                  ("displayName" .=) <$> _nDisplayName,
                  ("phoneticGivenName" .=) <$> _nPhoneticGivenName,
                  ("honorificSuffix" .=) <$> _nHonorificSuffix])

-- | Metadata about a field.
--
-- /See:/ 'fieldMetadata' smart constructor.
data FieldMetadata = FieldMetadata
    { _fmVerified :: !(Maybe Bool)
    , _fmPrimary  :: !(Maybe Bool)
    , _fmSource   :: !(Maybe Source)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FieldMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmVerified'
--
-- * 'fmPrimary'
--
-- * 'fmSource'
fieldMetadata
    :: FieldMetadata
fieldMetadata =
    FieldMetadata
    { _fmVerified = Nothing
    , _fmPrimary = Nothing
    , _fmSource = Nothing
    }

-- | True if the field is verified; false if the field is unverified. A
-- verified field is typically a name, email address, phone number, or
-- website that has been confirmed to be owned by the person.
fmVerified :: Lens' FieldMetadata (Maybe Bool)
fmVerified
  = lens _fmVerified (\ s a -> s{_fmVerified = a})

-- | True if the field is the primary field; false if the field is a
-- secondary field.
fmPrimary :: Lens' FieldMetadata (Maybe Bool)
fmPrimary
  = lens _fmPrimary (\ s a -> s{_fmPrimary = a})

-- | The source of the field.
fmSource :: Lens' FieldMetadata (Maybe Source)
fmSource = lens _fmSource (\ s a -> s{_fmSource = a})

instance FromJSON FieldMetadata where
        parseJSON
          = withObject "FieldMetadata"
              (\ o ->
                 FieldMetadata <$>
                   (o .:? "verified") <*> (o .:? "primary") <*>
                     (o .:? "source"))

instance ToJSON FieldMetadata where
        toJSON FieldMetadata{..}
          = object
              (catMaybes
                 [("verified" .=) <$> _fmVerified,
                  ("primary" .=) <$> _fmPrimary,
                  ("source" .=) <$> _fmSource])

-- | A person\'s phone number.
--
-- /See:/ 'phoneNumber' smart constructor.
data PhoneNumber = PhoneNumber
    { _pnCanonicalForm :: !(Maybe Text)
    , _pnValue         :: !(Maybe Text)
    , _pnMetadata      :: !(Maybe FieldMetadata)
    , _pnType          :: !(Maybe Text)
    , _pnFormattedType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PhoneNumber' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnCanonicalForm'
--
-- * 'pnValue'
--
-- * 'pnMetadata'
--
-- * 'pnType'
--
-- * 'pnFormattedType'
phoneNumber
    :: PhoneNumber
phoneNumber =
    PhoneNumber
    { _pnCanonicalForm = Nothing
    , _pnValue = Nothing
    , _pnMetadata = Nothing
    , _pnType = Nothing
    , _pnFormattedType = Nothing
    }

-- | The read-only canonicalized [ITU-T
-- E.164](https:\/\/law.resource.org\/pub\/us\/cfr\/ibr\/004\/itu-t.E.164.1.2008.pdf)
-- form of the phone number.
pnCanonicalForm :: Lens' PhoneNumber (Maybe Text)
pnCanonicalForm
  = lens _pnCanonicalForm
      (\ s a -> s{_pnCanonicalForm = a})

-- | The phone number.
pnValue :: Lens' PhoneNumber (Maybe Text)
pnValue = lens _pnValue (\ s a -> s{_pnValue = a})

-- | Metadata about the phone number.
pnMetadata :: Lens' PhoneNumber (Maybe FieldMetadata)
pnMetadata
  = lens _pnMetadata (\ s a -> s{_pnMetadata = a})

-- | The type of the phone number. The type can be custom or predefined.
-- Possible values include, but are not limited to, the following: *
-- \`home\` * \`work\` * \`mobile\` * \`homeFax\` * \`workFax\` *
-- \`otherFax\` * \`pager\` * \`workMobile\` * \`workPager\` * \`main\` *
-- \`googleVoice\` * \`other\`
pnType :: Lens' PhoneNumber (Maybe Text)
pnType = lens _pnType (\ s a -> s{_pnType = a})

-- | The read-only type of the phone number translated and formatted in the
-- viewer\'s account locale or the the \`Accept-Language\` HTTP header
-- locale.
pnFormattedType :: Lens' PhoneNumber (Maybe Text)
pnFormattedType
  = lens _pnFormattedType
      (\ s a -> s{_pnFormattedType = a})

instance FromJSON PhoneNumber where
        parseJSON
          = withObject "PhoneNumber"
              (\ o ->
                 PhoneNumber <$>
                   (o .:? "canonicalForm") <*> (o .:? "value") <*>
                     (o .:? "metadata")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON PhoneNumber where
        toJSON PhoneNumber{..}
          = object
              (catMaybes
                 [("canonicalForm" .=) <$> _pnCanonicalForm,
                  ("value" .=) <$> _pnValue,
                  ("metadata" .=) <$> _pnMetadata,
                  ("type" .=) <$> _pnType,
                  ("formattedType" .=) <$> _pnFormattedType])

-- | A person\'s occupation.
--
-- /See:/ 'occupation' smart constructor.
data Occupation = Occupation
    { _oValue    :: !(Maybe Text)
    , _oMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Occupation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oValue'
--
-- * 'oMetadata'
occupation
    :: Occupation
occupation =
    Occupation
    { _oValue = Nothing
    , _oMetadata = Nothing
    }

-- | The occupation; for example, \`carpenter\`.
oValue :: Lens' Occupation (Maybe Text)
oValue = lens _oValue (\ s a -> s{_oValue = a})

-- | Metadata about the occupation.
oMetadata :: Lens' Occupation (Maybe FieldMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Occupation where
        parseJSON
          = withObject "Occupation"
              (\ o ->
                 Occupation <$>
                   (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Occupation where
        toJSON Occupation{..}
          = object
              (catMaybes
                 [("value" .=) <$> _oValue,
                  ("metadata" .=) <$> _oMetadata])

-- | A person\'s email address.
--
-- /See:/ 'emailAddress' smart constructor.
data EmailAddress = EmailAddress
    { _eaValue         :: !(Maybe Text)
    , _eaMetadata      :: !(Maybe FieldMetadata)
    , _eaType          :: !(Maybe Text)
    , _eaFormattedType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EmailAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaValue'
--
-- * 'eaMetadata'
--
-- * 'eaType'
--
-- * 'eaFormattedType'
emailAddress
    :: EmailAddress
emailAddress =
    EmailAddress
    { _eaValue = Nothing
    , _eaMetadata = Nothing
    , _eaType = Nothing
    , _eaFormattedType = Nothing
    }

-- | The email address.
eaValue :: Lens' EmailAddress (Maybe Text)
eaValue = lens _eaValue (\ s a -> s{_eaValue = a})

-- | Metadata about the email address.
eaMetadata :: Lens' EmailAddress (Maybe FieldMetadata)
eaMetadata
  = lens _eaMetadata (\ s a -> s{_eaMetadata = a})

-- | The type of the email address. The type can be custom or predefined.
-- Possible values include, but are not limited to, the following: *
-- \`home\` * \`work\` * \`other\`
eaType :: Lens' EmailAddress (Maybe Text)
eaType = lens _eaType (\ s a -> s{_eaType = a})

-- | The read-only type of the email address translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
eaFormattedType :: Lens' EmailAddress (Maybe Text)
eaFormattedType
  = lens _eaFormattedType
      (\ s a -> s{_eaFormattedType = a})

instance FromJSON EmailAddress where
        parseJSON
          = withObject "EmailAddress"
              (\ o ->
                 EmailAddress <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON EmailAddress where
        toJSON EmailAddress{..}
          = object
              (catMaybes
                 [("value" .=) <$> _eaValue,
                  ("metadata" .=) <$> _eaMetadata,
                  ("type" .=) <$> _eaType,
                  ("formattedType" .=) <$> _eaFormattedType])

-- | The source of a field.
--
-- /See:/ 'source' smart constructor.
data Source = Source
    { _sId   :: !(Maybe Text)
    , _sType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sId'
--
-- * 'sType'
source
    :: Source
source =
    Source
    { _sId = Nothing
    , _sType = Nothing
    }

-- | A unique identifier within the source type generated by the server.
sId :: Lens' Source (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | The source type.
sType :: Lens' Source (Maybe Text)
sType = lens _sType (\ s a -> s{_sType = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o -> Source <$> (o .:? "id") <*> (o .:? "type"))

instance ToJSON Source where
        toJSON Source{..}
          = object
              (catMaybes
                 [("id" .=) <$> _sId, ("type" .=) <$> _sType])

-- | A person\'s instant messaging client.
--
-- /See:/ 'imClient' smart constructor.
data ImClient = ImClient
    { _icFormattedProtocol :: !(Maybe Text)
    , _icUsername          :: !(Maybe Text)
    , _icProtocol          :: !(Maybe Text)
    , _icMetadata          :: !(Maybe FieldMetadata)
    , _icType              :: !(Maybe Text)
    , _icFormattedType     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icFormattedProtocol'
--
-- * 'icUsername'
--
-- * 'icProtocol'
--
-- * 'icMetadata'
--
-- * 'icType'
--
-- * 'icFormattedType'
imClient
    :: ImClient
imClient =
    ImClient
    { _icFormattedProtocol = Nothing
    , _icUsername = Nothing
    , _icProtocol = Nothing
    , _icMetadata = Nothing
    , _icType = Nothing
    , _icFormattedType = Nothing
    }

-- | The read-only protocol of the IM client formatted in the viewer\'s
-- account locale or the \`Accept-Language\` HTTP header locale.
icFormattedProtocol :: Lens' ImClient (Maybe Text)
icFormattedProtocol
  = lens _icFormattedProtocol
      (\ s a -> s{_icFormattedProtocol = a})

-- | The user name used in the IM client.
icUsername :: Lens' ImClient (Maybe Text)
icUsername
  = lens _icUsername (\ s a -> s{_icUsername = a})

-- | The protocol of the IM client. The protocol can be custom or predefined.
-- Possible values include, but are not limited to, the following: *
-- \`aim\` * \`msn\` * \`yahoo\` * \`skype\` * \`qq\` * \`googleTalk\` *
-- \`icq\` * \`jabber\` * \`netMeeting\`
icProtocol :: Lens' ImClient (Maybe Text)
icProtocol
  = lens _icProtocol (\ s a -> s{_icProtocol = a})

-- | Metadata about the IM client.
icMetadata :: Lens' ImClient (Maybe FieldMetadata)
icMetadata
  = lens _icMetadata (\ s a -> s{_icMetadata = a})

-- | The type of the IM client. The type can be custom or predefined.
-- Possible values include, but are not limited to, the following: *
-- \`home\` * \`work\` * \`other\`
icType :: Lens' ImClient (Maybe Text)
icType = lens _icType (\ s a -> s{_icType = a})

-- | The read-only type of the IM client translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
icFormattedType :: Lens' ImClient (Maybe Text)
icFormattedType
  = lens _icFormattedType
      (\ s a -> s{_icFormattedType = a})

instance FromJSON ImClient where
        parseJSON
          = withObject "ImClient"
              (\ o ->
                 ImClient <$>
                   (o .:? "formattedProtocol") <*> (o .:? "username")
                     <*> (o .:? "protocol")
                     <*> (o .:? "metadata")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON ImClient where
        toJSON ImClient{..}
          = object
              (catMaybes
                 [("formattedProtocol" .=) <$> _icFormattedProtocol,
                  ("username" .=) <$> _icUsername,
                  ("protocol" .=) <$> _icProtocol,
                  ("metadata" .=) <$> _icMetadata,
                  ("type" .=) <$> _icType,
                  ("formattedType" .=) <$> _icFormattedType])

-- | Metadata about a person.
--
-- /See:/ 'personMetadata' smart constructor.
data PersonMetadata = PersonMetadata
    { _pmPreviousResourceNames :: !(Maybe [Text])
    , _pmObjectType            :: !(Maybe Text)
    , _pmSources               :: !(Maybe [Source])
    , _pmDeleted               :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmPreviousResourceNames'
--
-- * 'pmObjectType'
--
-- * 'pmSources'
--
-- * 'pmDeleted'
personMetadata
    :: PersonMetadata
personMetadata =
    PersonMetadata
    { _pmPreviousResourceNames = Nothing
    , _pmObjectType = Nothing
    , _pmSources = Nothing
    , _pmDeleted = Nothing
    }

-- | Any former resource names this person has had. Populated only for
-- [\`connections.list\`](\/people\/api\/rest\/v1\/people.connections\/list)
-- requests that include a sync token. The resource name may change when
-- adding or removing fields that link a contact and profile such as a
-- verified email, verified phone number, or profile URL.
pmPreviousResourceNames :: Lens' PersonMetadata [Text]
pmPreviousResourceNames
  = lens _pmPreviousResourceNames
      (\ s a -> s{_pmPreviousResourceNames = a})
      . _Default
      . _Coerce

-- | The type of the person object.
pmObjectType :: Lens' PersonMetadata (Maybe Text)
pmObjectType
  = lens _pmObjectType (\ s a -> s{_pmObjectType = a})

-- | The sources of data for the person.
pmSources :: Lens' PersonMetadata [Source]
pmSources
  = lens _pmSources (\ s a -> s{_pmSources = a}) .
      _Default
      . _Coerce

-- | True if the person resource has been deleted. Populated only for
-- [\`connections.list\`](\/people\/api\/rest\/v1\/people.connections\/list)
-- requests that include a sync token.
pmDeleted :: Lens' PersonMetadata (Maybe Bool)
pmDeleted
  = lens _pmDeleted (\ s a -> s{_pmDeleted = a})

instance FromJSON PersonMetadata where
        parseJSON
          = withObject "PersonMetadata"
              (\ o ->
                 PersonMetadata <$>
                   (o .:? "previousResourceNames" .!= mempty) <*>
                     (o .:? "objectType")
                     <*> (o .:? "sources" .!= mempty)
                     <*> (o .:? "deleted"))

instance ToJSON PersonMetadata where
        toJSON PersonMetadata{..}
          = object
              (catMaybes
                 [("previousResourceNames" .=) <$>
                    _pmPreviousResourceNames,
                  ("objectType" .=) <$> _pmObjectType,
                  ("sources" .=) <$> _pmSources,
                  ("deleted" .=) <$> _pmDeleted])

-- | A person\'s nickname.
--
-- /See:/ 'nickname' smart constructor.
data Nickname = Nickname
    { _nicValue    :: !(Maybe Text)
    , _nicMetadata :: !(Maybe FieldMetadata)
    , _nicType     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Nickname' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nicValue'
--
-- * 'nicMetadata'
--
-- * 'nicType'
nickname
    :: Nickname
nickname =
    Nickname
    { _nicValue = Nothing
    , _nicMetadata = Nothing
    , _nicType = Nothing
    }

-- | The nickname.
nicValue :: Lens' Nickname (Maybe Text)
nicValue = lens _nicValue (\ s a -> s{_nicValue = a})

-- | Metadata about the nickname.
nicMetadata :: Lens' Nickname (Maybe FieldMetadata)
nicMetadata
  = lens _nicMetadata (\ s a -> s{_nicMetadata = a})

-- | The type of the nickname.
nicType :: Lens' Nickname (Maybe Text)
nicType = lens _nicType (\ s a -> s{_nicType = a})

instance FromJSON Nickname where
        parseJSON
          = withObject "Nickname"
              (\ o ->
                 Nickname <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "type"))

instance ToJSON Nickname where
        toJSON Nickname{..}
          = object
              (catMaybes
                 [("value" .=) <$> _nicValue,
                  ("metadata" .=) <$> _nicMetadata,
                  ("type" .=) <$> _nicType])

-- | A person\'s past or current organization. Overlapping date ranges are
-- permitted.
--
-- /See:/ 'organization' smart constructor.
data Organization = Organization
    { _orgDePartment     :: !(Maybe Text)
    , _orgLocation       :: !(Maybe Text)
    , _orgDomain         :: !(Maybe Text)
    , _orgEndDate        :: !(Maybe Date)
    , _orgSymbol         :: !(Maybe Text)
    , _orgJobDescription :: !(Maybe Text)
    , _orgCurrent        :: !(Maybe Bool)
    , _orgStartDate      :: !(Maybe Date)
    , _orgName           :: !(Maybe Text)
    , _orgMetadata       :: !(Maybe FieldMetadata)
    , _orgPhoneticName   :: !(Maybe Text)
    , _orgTitle          :: !(Maybe Text)
    , _orgType           :: !(Maybe Text)
    , _orgFormattedType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Organization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orgDePartment'
--
-- * 'orgLocation'
--
-- * 'orgDomain'
--
-- * 'orgEndDate'
--
-- * 'orgSymbol'
--
-- * 'orgJobDescription'
--
-- * 'orgCurrent'
--
-- * 'orgStartDate'
--
-- * 'orgName'
--
-- * 'orgMetadata'
--
-- * 'orgPhoneticName'
--
-- * 'orgTitle'
--
-- * 'orgType'
--
-- * 'orgFormattedType'
organization
    :: Organization
organization =
    Organization
    { _orgDePartment = Nothing
    , _orgLocation = Nothing
    , _orgDomain = Nothing
    , _orgEndDate = Nothing
    , _orgSymbol = Nothing
    , _orgJobDescription = Nothing
    , _orgCurrent = Nothing
    , _orgStartDate = Nothing
    , _orgName = Nothing
    , _orgMetadata = Nothing
    , _orgPhoneticName = Nothing
    , _orgTitle = Nothing
    , _orgType = Nothing
    , _orgFormattedType = Nothing
    }

-- | The person\'s department at the organization.
orgDePartment :: Lens' Organization (Maybe Text)
orgDePartment
  = lens _orgDePartment
      (\ s a -> s{_orgDePartment = a})

-- | The location of the organization office the person works at.
orgLocation :: Lens' Organization (Maybe Text)
orgLocation
  = lens _orgLocation (\ s a -> s{_orgLocation = a})

-- | The domain name associated with the organization; for example,
-- \`google.com\`.
orgDomain :: Lens' Organization (Maybe Text)
orgDomain
  = lens _orgDomain (\ s a -> s{_orgDomain = a})

-- | The end date when the person left the organization.
orgEndDate :: Lens' Organization (Maybe Date)
orgEndDate
  = lens _orgEndDate (\ s a -> s{_orgEndDate = a})

-- | The symbol associated with the organization; for example, a stock ticker
-- symbol, abbreviation, or acronym.
orgSymbol :: Lens' Organization (Maybe Text)
orgSymbol
  = lens _orgSymbol (\ s a -> s{_orgSymbol = a})

-- | The person\'s job description at the organization.
orgJobDescription :: Lens' Organization (Maybe Text)
orgJobDescription
  = lens _orgJobDescription
      (\ s a -> s{_orgJobDescription = a})

-- | True if the organization is the person\'s current organization; false if
-- the organization is a past organization.
orgCurrent :: Lens' Organization (Maybe Bool)
orgCurrent
  = lens _orgCurrent (\ s a -> s{_orgCurrent = a})

-- | The start date when the person joined the organization.
orgStartDate :: Lens' Organization (Maybe Date)
orgStartDate
  = lens _orgStartDate (\ s a -> s{_orgStartDate = a})

-- | The name of the organization.
orgName :: Lens' Organization (Maybe Text)
orgName = lens _orgName (\ s a -> s{_orgName = a})

-- | Metadata about the organization.
orgMetadata :: Lens' Organization (Maybe FieldMetadata)
orgMetadata
  = lens _orgMetadata (\ s a -> s{_orgMetadata = a})

-- | The phonetic name of the organization.
orgPhoneticName :: Lens' Organization (Maybe Text)
orgPhoneticName
  = lens _orgPhoneticName
      (\ s a -> s{_orgPhoneticName = a})

-- | The person\'s job title at the organization.
orgTitle :: Lens' Organization (Maybe Text)
orgTitle = lens _orgTitle (\ s a -> s{_orgTitle = a})

-- | The type of the organization. The type can be custom or predefined.
-- Possible values include, but are not limited to, the following: *
-- \`work\` * \`school\`
orgType :: Lens' Organization (Maybe Text)
orgType = lens _orgType (\ s a -> s{_orgType = a})

-- | The read-only type of the organization translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
orgFormattedType :: Lens' Organization (Maybe Text)
orgFormattedType
  = lens _orgFormattedType
      (\ s a -> s{_orgFormattedType = a})

instance FromJSON Organization where
        parseJSON
          = withObject "Organization"
              (\ o ->
                 Organization <$>
                   (o .:? "department") <*> (o .:? "location") <*>
                     (o .:? "domain")
                     <*> (o .:? "endDate")
                     <*> (o .:? "symbol")
                     <*> (o .:? "jobDescription")
                     <*> (o .:? "current")
                     <*> (o .:? "startDate")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata")
                     <*> (o .:? "phoneticName")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON Organization where
        toJSON Organization{..}
          = object
              (catMaybes
                 [("department" .=) <$> _orgDePartment,
                  ("location" .=) <$> _orgLocation,
                  ("domain" .=) <$> _orgDomain,
                  ("endDate" .=) <$> _orgEndDate,
                  ("symbol" .=) <$> _orgSymbol,
                  ("jobDescription" .=) <$> _orgJobDescription,
                  ("current" .=) <$> _orgCurrent,
                  ("startDate" .=) <$> _orgStartDate,
                  ("name" .=) <$> _orgName,
                  ("metadata" .=) <$> _orgMetadata,
                  ("phoneticName" .=) <$> _orgPhoneticName,
                  ("title" .=) <$> _orgTitle, ("type" .=) <$> _orgType,
                  ("formattedType" .=) <$> _orgFormattedType])

-- | One of the person\'s interests.
--
-- /See:/ 'interest' smart constructor.
data Interest = Interest
    { _iValue    :: !(Maybe Text)
    , _iMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Interest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iValue'
--
-- * 'iMetadata'
interest
    :: Interest
interest =
    Interest
    { _iValue = Nothing
    , _iMetadata = Nothing
    }

-- | The interest; for example, \`stargazing\`.
iValue :: Lens' Interest (Maybe Text)
iValue = lens _iValue (\ s a -> s{_iValue = a})

-- | Metadata about the interest.
iMetadata :: Lens' Interest (Maybe FieldMetadata)
iMetadata
  = lens _iMetadata (\ s a -> s{_iMetadata = a})

instance FromJSON Interest where
        parseJSON
          = withObject "Interest"
              (\ o ->
                 Interest <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Interest where
        toJSON Interest{..}
          = object
              (catMaybes
                 [("value" .=) <$> _iValue,
                  ("metadata" .=) <$> _iMetadata])

-- | The response for a single person
--
-- /See:/ 'personResponse' smart constructor.
data PersonResponse = PersonResponse
    { _prRequestedResourceName :: !(Maybe Text)
    , _prPerson                :: !(Maybe Person)
    , _prHTTPStatusCode        :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prRequestedResourceName'
--
-- * 'prPerson'
--
-- * 'prHTTPStatusCode'
personResponse
    :: PersonResponse
personResponse =
    PersonResponse
    { _prRequestedResourceName = Nothing
    , _prPerson = Nothing
    , _prHTTPStatusCode = Nothing
    }

-- | The original requested resource name. May be different than the resource
-- name on the returned person. The resource name can change when adding or
-- removing fields that link a contact and profile such as a verified
-- email, verified phone number, or a profile URL.
prRequestedResourceName :: Lens' PersonResponse (Maybe Text)
prRequestedResourceName
  = lens _prRequestedResourceName
      (\ s a -> s{_prRequestedResourceName = a})

-- | The person.
prPerson :: Lens' PersonResponse (Maybe Person)
prPerson = lens _prPerson (\ s a -> s{_prPerson = a})

-- | [HTTP 1.1 status
-- code](http:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616-sec10.html).
prHTTPStatusCode :: Lens' PersonResponse (Maybe Int32)
prHTTPStatusCode
  = lens _prHTTPStatusCode
      (\ s a -> s{_prHTTPStatusCode = a})
      . mapping _Coerce

instance FromJSON PersonResponse where
        parseJSON
          = withObject "PersonResponse"
              (\ o ->
                 PersonResponse <$>
                   (o .:? "requestedResourceName") <*> (o .:? "person")
                     <*> (o .:? "httpStatusCode"))

instance ToJSON PersonResponse where
        toJSON PersonResponse{..}
          = object
              (catMaybes
                 [("requestedResourceName" .=) <$>
                    _prRequestedResourceName,
                  ("person" .=) <$> _prPerson,
                  ("httpStatusCode" .=) <$> _prHTTPStatusCode])

-- | A skill that the person has.
--
-- /See:/ 'skill' smart constructor.
data Skill = Skill
    { _sValue    :: !(Maybe Text)
    , _sMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Skill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sValue'
--
-- * 'sMetadata'
skill
    :: Skill
skill =
    Skill
    { _sValue = Nothing
    , _sMetadata = Nothing
    }

-- | The skill; for example, \`underwater basket weaving\`.
sValue :: Lens' Skill (Maybe Text)
sValue = lens _sValue (\ s a -> s{_sValue = a})

-- | Metadata about the skill.
sMetadata :: Lens' Skill (Maybe FieldMetadata)
sMetadata
  = lens _sMetadata (\ s a -> s{_sMetadata = a})

instance FromJSON Skill where
        parseJSON
          = withObject "Skill"
              (\ o ->
                 Skill <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Skill where
        toJSON Skill{..}
          = object
              (catMaybes
                 [("value" .=) <$> _sValue,
                  ("metadata" .=) <$> _sMetadata])

-- | A person\'s short biography.
--
-- /See:/ 'biography' smart constructor.
data Biography = Biography
    { _bioValue    :: !(Maybe Text)
    , _bioMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Biography' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bioValue'
--
-- * 'bioMetadata'
biography
    :: Biography
biography =
    Biography
    { _bioValue = Nothing
    , _bioMetadata = Nothing
    }

-- | The short biography.
bioValue :: Lens' Biography (Maybe Text)
bioValue = lens _bioValue (\ s a -> s{_bioValue = a})

-- | Metadata about the biography.
bioMetadata :: Lens' Biography (Maybe FieldMetadata)
bioMetadata
  = lens _bioMetadata (\ s a -> s{_bioMetadata = a})

instance FromJSON Biography where
        parseJSON
          = withObject "Biography"
              (\ o ->
                 Biography <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Biography where
        toJSON Biography{..}
          = object
              (catMaybes
                 [("value" .=) <$> _bioValue,
                  ("metadata" .=) <$> _bioMetadata])

-- | A person\'s cover photo. A large image shown on the person\'s profile
-- page that represents who they are or what they care about.
--
-- /See:/ 'coverPhoto' smart constructor.
data CoverPhoto = CoverPhoto
    { _cpDefault  :: !(Maybe Bool)
    , _cpURL      :: !(Maybe Text)
    , _cpMetadata :: !(Maybe FieldMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoverPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpDefault'
--
-- * 'cpURL'
--
-- * 'cpMetadata'
coverPhoto
    :: CoverPhoto
coverPhoto =
    CoverPhoto
    { _cpDefault = Nothing
    , _cpURL = Nothing
    , _cpMetadata = Nothing
    }

-- | True if the cover photo is the default cover photo; false if the cover
-- photo is a user-provided cover photo.
cpDefault :: Lens' CoverPhoto (Maybe Bool)
cpDefault
  = lens _cpDefault (\ s a -> s{_cpDefault = a})

-- | The URL of the cover photo.
cpURL :: Lens' CoverPhoto (Maybe Text)
cpURL = lens _cpURL (\ s a -> s{_cpURL = a})

-- | Metadata about the cover photo.
cpMetadata :: Lens' CoverPhoto (Maybe FieldMetadata)
cpMetadata
  = lens _cpMetadata (\ s a -> s{_cpMetadata = a})

instance FromJSON CoverPhoto where
        parseJSON
          = withObject "CoverPhoto"
              (\ o ->
                 CoverPhoto <$>
                   (o .:? "default") <*> (o .:? "url") <*>
                     (o .:? "metadata"))

instance ToJSON CoverPhoto where
        toJSON CoverPhoto{..}
          = object
              (catMaybes
                 [("default" .=) <$> _cpDefault,
                  ("url" .=) <$> _cpURL,
                  ("metadata" .=) <$> _cpMetadata])

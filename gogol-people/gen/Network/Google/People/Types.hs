{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.People.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.People.Types
    (
    -- * Service Configuration
      peopleService

    -- * OAuth Scopes
    , userBirthdayReadScope
    , userInfoProFileScope
    , plusLoginScope
    , userPhoneNumbersReadScope
    , userInfoEmailScope
    , contactsReadOnlyScope
    , userAddressesReadScope
    , contactsScope
    , userEmailsReadScope

    -- * Photo
    , Photo
    , photo
    , pURL
    , pMetadata

    -- * Event
    , Event
    , event
    , eDate
    , eMetadata
    , eType
    , eFormattedType

    -- * ListConnectionsResponse
    , ListConnectionsResponse
    , listConnectionsResponse
    , lcrNextPageToken
    , lcrConnections
    , lcrNextSyncToken

    -- * DomainMembership
    , DomainMembership
    , domainMembership
    , dmInViewerDomain

    -- * RelationshipInterest
    , RelationshipInterest
    , relationshipInterest
    , riValue
    , riMetadata
    , riFormattedValue

    -- * BraggingRights
    , BraggingRights
    , braggingRights
    , brValue
    , brMetadata

    -- * Membership
    , Membership
    , membership
    , mDomainMembership
    , mContactGroupMembership
    , mMetadata

    -- * Person
    , Person
    , person
    , perEmailAddresses
    , perAgeRange
    , perEtag
    , perResidences
    , perBiographies
    , perTaglines
    , perBraggingRights
    , perBirthdays
    , perResourceName
    , perRelations
    , perURLs
    , perAddresses
    , perNicknames
    , perRelationshipStatuses
    , perImClients
    , perPhoneNumbers
    , perOccupations
    , perNames
    , perGenders
    , perPhotos
    , perEvents
    , perCoverPhotos
    , perSkills
    , perMetadata
    , perInterests
    , perOrganizations
    , perLocales
    , perMemberships
    , perRelationshipInterests

    -- * ContactGroupMembership
    , ContactGroupMembership
    , contactGroupMembership
    , cgmContactGroupId

    -- * Locale
    , Locale
    , locale
    , lValue
    , lMetadata

    -- * RelationshipStatus
    , RelationshipStatus
    , relationshipStatus
    , rsValue
    , rsMetadata
    , rsFormattedValue

    -- * URL
    , URL
    , url
    , uValue
    , uMetadata
    , uType
    , uFormattedType

    -- * Address
    , Address
    , address
    , aStreetAddress
    , aPoBox
    , aCountry
    , aPostalCode
    , aExtendedAddress
    , aCity
    , aMetadata
    , aCountryCode
    , aFormattedValue
    , aRegion
    , aType
    , aFormattedType

    -- * Relation
    , Relation
    , relation
    , rPerson
    , rMetadata
    , rType
    , rFormattedType

    -- * GetPeopleResponse
    , GetPeopleResponse
    , getPeopleResponse
    , gprResponses

    -- * Birthday
    , Birthday
    , birthday
    , bText
    , bDate
    , bMetadata

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * Tagline
    , Tagline
    , tagline
    , tValue
    , tMetadata

    -- * Residence
    , Residence
    , residence
    , resValue
    , resCurrent
    , resMetadata

    -- * Gender
    , Gender
    , gender
    , gValue
    , gMetadata
    , gFormattedValue

    -- * Name
    , Name
    , name
    , nGivenName
    , nPhoneticHonorificSuffix
    , nMiddleName
    , nPhoneticMiddleName
    , nPhoneticFamilyName
    , nPhoneticHonorificPrefix
    , nHonorificPrefix
    , nFamilyName
    , nMetadata
    , nDisplayName
    , nPhoneticGivenName
    , nHonorificSuffix

    -- * FieldMetadata
    , FieldMetadata
    , fieldMetadata
    , fmVerified
    , fmPrimary
    , fmSource

    -- * PhoneNumber
    , PhoneNumber
    , phoneNumber
    , pnCanonicalForm
    , pnValue
    , pnMetadata
    , pnType
    , pnFormattedType

    -- * Occupation
    , Occupation
    , occupation
    , oValue
    , oMetadata

    -- * EmailAddress
    , EmailAddress
    , emailAddress
    , eaValue
    , eaMetadata
    , eaType
    , eaFormattedType

    -- * Source
    , Source
    , source
    , sId
    , sType

    -- * ImClient
    , ImClient
    , imClient
    , icFormattedProtocol
    , icUsername
    , icProtocol
    , icMetadata
    , icType
    , icFormattedType

    -- * PersonMetadata
    , PersonMetadata
    , personMetadata
    , pmPreviousResourceNames
    , pmObjectType
    , pmSources
    , pmDeleted

    -- * Nickname
    , Nickname
    , nickname
    , nicValue
    , nicMetadata
    , nicType

    -- * Organization
    , Organization
    , organization
    , orgDePartment
    , orgLocation
    , orgDomain
    , orgEndDate
    , orgSymbol
    , orgJobDescription
    , orgCurrent
    , orgStartDate
    , orgName
    , orgMetadata
    , orgPhoneticName
    , orgTitle
    , orgType
    , orgFormattedType

    -- * Interest
    , Interest
    , interest
    , iValue
    , iMetadata

    -- * PersonResponse
    , PersonResponse
    , personResponse
    , prRequestedResourceName
    , prPerson
    , prHTTPStatusCode

    -- * Skill
    , Skill
    , skill
    , sValue
    , sMetadata

    -- * Biography
    , Biography
    , biography
    , bioValue
    , bioMetadata

    -- * CoverPhoto
    , CoverPhoto
    , coverPhoto
    , cpDefault
    , cpURL
    , cpMetadata
    ) where

import           Network.Google.People.Types.Product
import           Network.Google.People.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google People API. This contains the host and root path used as a starting point for constructing service requests.
peopleService :: ServiceConfig
peopleService
  = defaultService (ServiceId "people:v1")
      "people.googleapis.com"

-- | View your complete date of birth
userBirthdayReadScope :: Proxy '["https://www.googleapis.com/auth/user.birthday.read"]
userBirthdayReadScope = Proxy;

-- | View your basic profile info
userInfoProFileScope :: Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
userInfoProFileScope = Proxy;

-- | Know your basic profile info and list of people in your circles.
plusLoginScope :: Proxy '["https://www.googleapis.com/auth/plus.login"]
plusLoginScope = Proxy;

-- | View your phone numbers
userPhoneNumbersReadScope :: Proxy '["https://www.googleapis.com/auth/user.phonenumbers.read"]
userPhoneNumbersReadScope = Proxy;

-- | View your email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy;

-- | View your contacts
contactsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/contacts.readonly"]
contactsReadOnlyScope = Proxy;

-- | View your street addresses
userAddressesReadScope :: Proxy '["https://www.googleapis.com/auth/user.addresses.read"]
userAddressesReadScope = Proxy;

-- | Manage your contacts
contactsScope :: Proxy '["https://www.googleapis.com/auth/contacts"]
contactsScope = Proxy;

-- | View your email addresses
userEmailsReadScope :: Proxy '["https://www.googleapis.com/auth/user.emails.read"]
userEmailsReadScope = Proxy;

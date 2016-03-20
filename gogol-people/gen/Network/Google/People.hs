{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.People
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google People API service gives access to information about profiles
-- and contacts.
--
-- /See:/ <https://developers.google.com/people/ Google People API Reference>
module Network.Google.People
    (
    -- * Service Configuration
      peopleService

    -- * OAuth Scopes
    , authUserBirthdayReadScope
    , authUserinfoProfileScope
    , authPlusLoginScope
    , authUserPhonenumbersReadScope
    , authUserinfoEmailScope
    , authContactsReadonlyScope
    , authUserAddressesReadScope
    , authContactsScope
    , authUserEmailsReadScope

    -- * API Declaration
    , PeopleAPI

    -- * Resources

    -- ** people.people.connections.list
    , module Network.Google.Resource.People.People.Connections.List

    -- ** people.people.get
    , module Network.Google.Resource.People.People.Get

    -- ** people.people.getBatchGet
    , module Network.Google.Resource.People.People.GetBatchGet

    -- * Types

    -- ** Photo
    , Photo
    , photo
    , pURL
    , pMetadata

    -- ** Event
    , Event
    , event
    , eDate
    , eMetadata
    , eType
    , eFormattedType

    -- ** ListConnectionsResponse
    , ListConnectionsResponse
    , listConnectionsResponse
    , lcrNextPageToken
    , lcrConnections
    , lcrNextSyncToken

    -- ** DomainMembership
    , DomainMembership
    , domainMembership
    , dmInViewerDomain

    -- ** RelationshipInterest
    , RelationshipInterest
    , relationshipInterest
    , riValue
    , riMetadata
    , riFormattedValue

    -- ** BraggingRights
    , BraggingRights
    , braggingRights
    , brValue
    , brMetadata

    -- ** Membership
    , Membership
    , membership
    , mDomainMembership
    , mContactGroupMembership
    , mMetadata

    -- ** Person
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

    -- ** ContactGroupMembership
    , ContactGroupMembership
    , contactGroupMembership
    , cgmContactGroupId

    -- ** Locale
    , Locale
    , locale
    , lValue
    , lMetadata

    -- ** RelationshipStatus
    , RelationshipStatus
    , relationshipStatus
    , rsValue
    , rsMetadata
    , rsFormattedValue

    -- ** URL
    , URL
    , url
    , uValue
    , uMetadata
    , uType
    , uFormattedType

    -- ** Address
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

    -- ** Relation
    , Relation
    , relation
    , rPerson
    , rMetadata
    , rType
    , rFormattedType

    -- ** GetPeopleResponse
    , GetPeopleResponse
    , getPeopleResponse
    , gprResponses

    -- ** Birthday
    , Birthday
    , birthday
    , bText
    , bDate
    , bMetadata

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** Tagline
    , Tagline
    , tagline
    , tValue
    , tMetadata

    -- ** Residence
    , Residence
    , residence
    , resValue
    , resCurrent
    , resMetadata

    -- ** Gender
    , Gender
    , gender
    , gValue
    , gMetadata
    , gFormattedValue

    -- ** Name
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

    -- ** FieldMetadata
    , FieldMetadata
    , fieldMetadata
    , fmVerified
    , fmPrimary
    , fmSource

    -- ** PhoneNumber
    , PhoneNumber
    , phoneNumber
    , pnCanonicalForm
    , pnValue
    , pnMetadata
    , pnType
    , pnFormattedType

    -- ** Occupation
    , Occupation
    , occupation
    , oValue
    , oMetadata

    -- ** EmailAddress
    , EmailAddress
    , emailAddress
    , eaValue
    , eaMetadata
    , eaType
    , eaFormattedType

    -- ** Source
    , Source
    , source
    , sId
    , sType

    -- ** ImClient
    , ImClient
    , imClient
    , icFormattedProtocol
    , icUsername
    , icProtocol
    , icMetadata
    , icType
    , icFormattedType

    -- ** PersonMetadata
    , PersonMetadata
    , personMetadata
    , pmPreviousResourceNames
    , pmObjectType
    , pmSources
    , pmDeleted

    -- ** Nickname
    , Nickname
    , nickname
    , nicValue
    , nicMetadata
    , nicType

    -- ** Organization
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

    -- ** Interest
    , Interest
    , interest
    , iValue
    , iMetadata

    -- ** PersonResponse
    , PersonResponse
    , personResponse
    , prRequestedResourceName
    , prPerson
    , prHTTPStatusCode

    -- ** Skill
    , Skill
    , skill
    , sValue
    , sMetadata

    -- ** Biography
    , Biography
    , biography
    , bioValue
    , bioMetadata

    -- ** CoverPhoto
    , CoverPhoto
    , coverPhoto
    , cpDefault
    , cpURL
    , cpMetadata
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude
import           Network.Google.Resource.People.People.Connections.List
import           Network.Google.Resource.People.People.Get
import           Network.Google.Resource.People.People.GetBatchGet

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google People API service.
type PeopleAPI =
     PeopleConnectionsListResource :<|>
       PeopleGetBatchGetResource
       :<|> PeopleGetResource

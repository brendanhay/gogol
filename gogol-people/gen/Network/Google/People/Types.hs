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
    , userPhoneNumbersReadScope
    , userInfoEmailScope
    , contactsReadOnlyScope
    , userAddressesReadScope
    , contactsScope
    , userEmailsReadScope

    -- * SipAddress
    , SipAddress
    , sipAddress
    , saValue
    , saMetadata
    , saType
    , saFormattedType

    -- * Photo
    , Photo
    , photo
    , pDefault
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
    , lcrTotalItems
    , lcrNextPageToken
    , lcrConnections
    , lcrNextSyncToken
    , lcrTotalPeople

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ContactGroupResponse
    , ContactGroupResponse
    , contactGroupResponse
    , cgrStatus
    , cgrContactGroup
    , cgrRequestedResourceName

    -- * ContactGroup
    , ContactGroup
    , contactGroup
    , cgEtag
    , cgResourceName
    , cgMemberResourceNames
    , cgFormattedName
    , cgName
    , cgGroupType
    , cgMetadata
    , cgMemberCount

    -- * ModifyContactGroupMembersResponse
    , ModifyContactGroupMembersResponse
    , modifyContactGroupMembersResponse
    , mcgmrNotFoundResourceNames

    -- * UpdateContactGroupRequest
    , UpdateContactGroupRequest
    , updateContactGroupRequest
    , ucgrContactGroup

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
    , perUserDefined
    , perNicknames
    , perRelationshipStatuses
    , perImClients
    , perPhoneNumbers
    , perOccupations
    , perNames
    , perGenders
    , perPhotos
    , perAgeRanges
    , perEvents
    , perCoverPhotos
    , perSkills
    , perSipAddresses
    , perMetadata
    , perInterests
    , perOrganizations
    , perLocales
    , perMemberships
    , perRelationshipInterests

    -- * Empty
    , Empty
    , empty

    -- * SourceType
    , SourceType (..)

    -- * ListContactGroupsResponse
    , ListContactGroupsResponse
    , listContactGroupsResponse
    , lcgrContactGroups
    , lcgrTotalItems
    , lcgrNextPageToken
    , lcgrNextSyncToken

    -- * ContactGroupMembership
    , ContactGroupMembership
    , contactGroupMembership
    , cgmContactGroupResourceName
    , cgmContactGroupId

    -- * ContactGroupGroupType
    , ContactGroupGroupType (..)

    -- * UserDefined
    , UserDefined
    , userDefined
    , udValue
    , udKey
    , udMetadata

    -- * NicknameType
    , NicknameType (..)

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

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

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

    -- * ProFileMetadata
    , ProFileMetadata
    , proFileMetadata
    , pfmObjectType
    , pfmUserTypes

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

    -- * PersonAgeRange
    , PersonAgeRange (..)

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

    -- * AgeRangeType
    , AgeRangeType
    , ageRangeType
    , artAgeRange
    , artMetadata

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
    , nDisplayNameLastFirst
    , nPhoneticGivenName
    , nHonorificSuffix
    , nPhoneticFullName

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

    -- * Xgafv
    , Xgafv (..)

    -- * EmailAddress
    , EmailAddress
    , emailAddress
    , eaValue
    , eaMetadata
    , eaDisplayName
    , eaType
    , eaFormattedType

    -- * CreateContactGroupRequest
    , CreateContactGroupRequest
    , createContactGroupRequest
    , ccgrContactGroup

    -- * ContactGroupMetadata
    , ContactGroupMetadata
    , contactGroupMetadata
    , cgmUpdateTime
    , cgmDeleted

    -- * ModifyContactGroupMembersRequest
    , ModifyContactGroupMembersRequest
    , modifyContactGroupMembersRequest
    , mcgmrResourceNamesToAdd
    , mcgmrResourceNamesToRemove

    -- * PersonMetadataObjectType
    , PersonMetadataObjectType (..)

    -- * Source
    , Source
    , source
    , sEtag
    , sProFileMetadata
    , sUpdateTime
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

    -- * BatchGetContactGroupsResponse
    , BatchGetContactGroupsResponse
    , batchGetContactGroupsResponse
    , bgcgrResponses

    -- * BiographyContentType
    , BiographyContentType (..)

    -- * PersonMetadata
    , PersonMetadata
    , personMetadata
    , pmPreviousResourceNames
    , pmObjectType
    , pmSources
    , pmLinkedPeopleResourceNames
    , pmDeleted

    -- * AgeRangeTypeAgeRange
    , AgeRangeTypeAgeRange (..)

    -- * Nickname
    , Nickname
    , nickname
    , nicValue
    , nicMetadata
    , nicType

    -- * ProFileMetadataObjectType
    , ProFileMetadataObjectType (..)

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
    , prStatus
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
    , bioContentType

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

-- | Default request referring to version 'v1' of the People API. This contains the host and root path used as a starting point for constructing service requests.
peopleService :: ServiceConfig
peopleService
  = defaultService (ServiceId "people:v1")
      "people.googleapis.com"

-- | View your complete date of birth
userBirthdayReadScope :: Proxy '["https://www.googleapis.com/auth/user.birthday.read"]
userBirthdayReadScope = Proxy

-- | See your personal info, including any personal info you\'ve made
-- publicly available
userInfoProFileScope :: Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
userInfoProFileScope = Proxy

-- | View your phone numbers
userPhoneNumbersReadScope :: Proxy '["https://www.googleapis.com/auth/user.phonenumbers.read"]
userPhoneNumbersReadScope = Proxy

-- | View your email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy

-- | See and download your contacts
contactsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/contacts.readonly"]
contactsReadOnlyScope = Proxy

-- | View your street addresses
userAddressesReadScope :: Proxy '["https://www.googleapis.com/auth/user.addresses.read"]
userAddressesReadScope = Proxy

-- | See, edit, download, and permanently delete your contacts
contactsScope :: Proxy '["https://www.googleapis.com/auth/contacts"]
contactsScope = Proxy

-- | View your email addresses
userEmailsReadScope :: Proxy '["https://www.googleapis.com/auth/user.emails.read"]
userEmailsReadScope = Proxy

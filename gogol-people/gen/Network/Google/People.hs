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
-- Provides access to information about profiles and contacts.
--
-- /See:/ <https://developers.google.com/people/ People API Reference>
module Network.Google.People
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

    -- * API Declaration
    , PeopleAPI

    -- * Resources

    -- ** people.contactGroups.batchGet
    , module Network.Google.Resource.People.ContactGroups.BatchGet

    -- ** people.contactGroups.create
    , module Network.Google.Resource.People.ContactGroups.Create

    -- ** people.contactGroups.delete
    , module Network.Google.Resource.People.ContactGroups.Delete

    -- ** people.contactGroups.get
    , module Network.Google.Resource.People.ContactGroups.Get

    -- ** people.contactGroups.list
    , module Network.Google.Resource.People.ContactGroups.List

    -- ** people.contactGroups.members.modify
    , module Network.Google.Resource.People.ContactGroups.Members.Modify

    -- ** people.contactGroups.update
    , module Network.Google.Resource.People.ContactGroups.Update

    -- ** people.people.connections.list
    , module Network.Google.Resource.People.People.Connections.List

    -- ** people.people.createContact
    , module Network.Google.Resource.People.People.CreateContact

    -- ** people.people.deleteContact
    , module Network.Google.Resource.People.People.DeleteContact

    -- ** people.people.get
    , module Network.Google.Resource.People.People.Get

    -- ** people.people.getBatchGet
    , module Network.Google.Resource.People.People.GetBatchGet

    -- ** people.people.updateContact
    , module Network.Google.Resource.People.People.UpdateContact

    -- * Types

    -- ** SipAddress
    , SipAddress
    , sipAddress
    , saValue
    , saMetadata
    , saType
    , saFormattedType

    -- ** Photo
    , Photo
    , photo
    , pDefault
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
    , lcrTotalItems
    , lcrNextPageToken
    , lcrConnections
    , lcrNextSyncToken
    , lcrTotalPeople

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ContactGroupResponse
    , ContactGroupResponse
    , contactGroupResponse
    , cgrStatus
    , cgrContactGroup
    , cgrRequestedResourceName

    -- ** ContactGroup
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

    -- ** ModifyContactGroupMembersResponse
    , ModifyContactGroupMembersResponse
    , modifyContactGroupMembersResponse
    , mcgmrNotFoundResourceNames

    -- ** UpdateContactGroupRequest
    , UpdateContactGroupRequest
    , updateContactGroupRequest
    , ucgrContactGroup

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

    -- ** Empty
    , Empty
    , empty

    -- ** SourceType
    , SourceType (..)

    -- ** ListContactGroupsResponse
    , ListContactGroupsResponse
    , listContactGroupsResponse
    , lcgrContactGroups
    , lcgrTotalItems
    , lcgrNextPageToken
    , lcgrNextSyncToken

    -- ** ContactGroupMembership
    , ContactGroupMembership
    , contactGroupMembership
    , cgmContactGroupId

    -- ** ContactGroupGroupType
    , ContactGroupGroupType (..)

    -- ** UserDefined
    , UserDefined
    , userDefined
    , udValue
    , udKey
    , udMetadata

    -- ** NicknameType
    , NicknameType (..)

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

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

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

    -- ** ProFileMetadata
    , ProFileMetadata
    , proFileMetadata
    , pfmObjectType
    , pfmUserTypes

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

    -- ** PersonAgeRange
    , PersonAgeRange (..)

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

    -- ** AgeRangeType
    , AgeRangeType
    , ageRangeType
    , artAgeRange
    , artMetadata

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
    , nDisplayNameLastFirst
    , nPhoneticGivenName
    , nHonorificSuffix
    , nPhoneticFullName

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

    -- ** Xgafv
    , Xgafv (..)

    -- ** EmailAddress
    , EmailAddress
    , emailAddress
    , eaValue
    , eaMetadata
    , eaDisplayName
    , eaType
    , eaFormattedType

    -- ** CreateContactGroupRequest
    , CreateContactGroupRequest
    , createContactGroupRequest
    , ccgrContactGroup

    -- ** ContactGroupMetadata
    , ContactGroupMetadata
    , contactGroupMetadata
    , cgmUpdateTime
    , cgmDeleted

    -- ** ModifyContactGroupMembersRequest
    , ModifyContactGroupMembersRequest
    , modifyContactGroupMembersRequest
    , mcgmrResourceNamesToAdd
    , mcgmrResourceNamesToRemove

    -- ** PersonMetadataObjectType
    , PersonMetadataObjectType (..)

    -- ** Source
    , Source
    , source
    , sEtag
    , sProFileMetadata
    , sUpdateTime
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

    -- ** BatchGetContactGroupsResponse
    , BatchGetContactGroupsResponse
    , batchGetContactGroupsResponse
    , bgcgrResponses

    -- ** BiographyContentType
    , BiographyContentType (..)

    -- ** PersonMetadata
    , PersonMetadata
    , personMetadata
    , pmPreviousResourceNames
    , pmObjectType
    , pmSources
    , pmLinkedPeopleResourceNames
    , pmDeleted

    -- ** AgeRangeTypeAgeRange
    , AgeRangeTypeAgeRange (..)

    -- ** Nickname
    , Nickname
    , nickname
    , nicValue
    , nicMetadata
    , nicType

    -- ** ProFileMetadataObjectType
    , ProFileMetadataObjectType (..)

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
    , prStatus
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
    , bioContentType

    -- ** CoverPhoto
    , CoverPhoto
    , coverPhoto
    , cpDefault
    , cpURL
    , cpMetadata
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude
import           Network.Google.Resource.People.ContactGroups.BatchGet
import           Network.Google.Resource.People.ContactGroups.Create
import           Network.Google.Resource.People.ContactGroups.Delete
import           Network.Google.Resource.People.ContactGroups.Get
import           Network.Google.Resource.People.ContactGroups.List
import           Network.Google.Resource.People.ContactGroups.Members.Modify
import           Network.Google.Resource.People.ContactGroups.Update
import           Network.Google.Resource.People.People.Connections.List
import           Network.Google.Resource.People.People.CreateContact
import           Network.Google.Resource.People.People.DeleteContact
import           Network.Google.Resource.People.People.Get
import           Network.Google.Resource.People.People.GetBatchGet
import           Network.Google.Resource.People.People.UpdateContact

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the People API service.
type PeopleAPI =
     ContactGroupsMembersModifyResource :<|>
       ContactGroupsListResource
       :<|> ContactGroupsGetResource
       :<|> ContactGroupsCreateResource
       :<|> ContactGroupsBatchGetResource
       :<|> ContactGroupsDeleteResource
       :<|> ContactGroupsUpdateResource
       :<|> PeopleConnectionsListResource
       :<|> PeopleGetBatchGetResource
       :<|> PeopleGetResource
       :<|> PeopleDeleteContactResource
       :<|> PeopleUpdateContactResource
       :<|> PeopleCreateContactResource

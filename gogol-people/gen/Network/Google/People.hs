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
    , contactsOtherReadOnlyScope
    , directoryReadOnlyScope
    , userBirthdayReadScope
    , userInfoProFileScope
    , userPhoneNumbersReadScope
    , userInfoEmailScope
    , contactsReadOnlyScope
    , userAddressesReadScope
    , userOrganizationReadScope
    , contactsScope
    , userEmailsReadScope
    , userGenderReadScope

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

    -- ** people.otherContacts.copyOtherContactToMyContactsGroup
    , module Network.Google.Resource.People.OtherContacts.CopyOtherContactToMyContactsGroup

    -- ** people.otherContacts.list
    , module Network.Google.Resource.People.OtherContacts.List

    -- ** people.otherContacts.search
    , module Network.Google.Resource.People.OtherContacts.Search

    -- ** people.people.batchCreateContacts
    , module Network.Google.Resource.People.People.BatchCreateContacts

    -- ** people.people.batchDeleteContacts
    , module Network.Google.Resource.People.People.BatchDeleteContacts

    -- ** people.people.batchUpdateContacts
    , module Network.Google.Resource.People.People.BatchUpdateContacts

    -- ** people.people.connections.list
    , module Network.Google.Resource.People.People.Connections.List

    -- ** people.people.createContact
    , module Network.Google.Resource.People.People.CreateContact

    -- ** people.people.deleteContact
    , module Network.Google.Resource.People.People.DeleteContact

    -- ** people.people.deleteContactPhoto
    , module Network.Google.Resource.People.People.DeleteContactPhoto

    -- ** people.people.get
    , module Network.Google.Resource.People.People.Get

    -- ** people.people.getBatchGet
    , module Network.Google.Resource.People.People.GetBatchGet

    -- ** people.people.listDirectoryPeople
    , module Network.Google.Resource.People.People.ListDirectoryPeople

    -- ** people.people.searchContacts
    , module Network.Google.Resource.People.People.SearchContacts

    -- ** people.people.searchDirectoryPeople
    , module Network.Google.Resource.People.People.SearchDirectoryPeople

    -- ** people.people.updateContact
    , module Network.Google.Resource.People.People.UpdateContact

    -- ** people.people.updateContactPhoto
    , module Network.Google.Resource.People.People.UpdateContactPhoto

    -- * Types

    -- ** BatchUpdateContactsRequestSourcesItem
    , BatchUpdateContactsRequestSourcesItem (..)

    -- ** PeopleUpdateContactSources
    , PeopleUpdateContactSources (..)

    -- ** SipAddress
    , SipAddress
    , sipAddress
    , saValue
    , saMetadata
    , saType
    , saFormattedType

    -- ** BatchUpdateContactsRequestContacts
    , BatchUpdateContactsRequestContacts
    , batchUpdateContactsRequestContacts
    , bucrcAddtional

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

    -- ** FileAs
    , FileAs
    , fileAs
    , faValue
    , faMetadata

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
    , cgClientData

    -- ** ModifyContactGroupMembersResponse
    , ModifyContactGroupMembersResponse
    , modifyContactGroupMembersResponse
    , mcgmrCanNotRemoveLastContactGroupResourceNames
    , mcgmrNotFoundResourceNames

    -- ** UpdateContactGroupRequest
    , UpdateContactGroupRequest
    , updateContactGroupRequest
    , ucgrContactGroup
    , ucgrReadGroupFields
    , ucgrUpdateGroupFields

    -- ** SearchResult
    , SearchResult
    , searchResult
    , srPerson

    -- ** DomainMembership
    , DomainMembership
    , domainMembership
    , dmInViewerDomain

    -- ** PeopleConnectionsListSources
    , PeopleConnectionsListSources (..)

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

    -- ** BatchCreateContactsRequest
    , BatchCreateContactsRequest
    , batchCreateContactsRequest
    , bccrReadMask
    , bccrSources
    , bccrContacts

    -- ** Membership
    , Membership
    , membership
    , mDomainMembership
    , mContactGroupMembership
    , mMetadata

    -- ** SearchResponse
    , SearchResponse
    , searchResponse
    , srResults

    -- ** PeopleListDirectoryPeopleMergeSources
    , PeopleListDirectoryPeopleMergeSources (..)

    -- ** BatchUpdateContactsResponse
    , BatchUpdateContactsResponse
    , batchUpdateContactsResponse
    , bucrUpdateResult

    -- ** Location
    , Location
    , location
    , lFloor
    , lBuildingId
    , lValue
    , lCurrent
    , lDeskCode
    , lMetadata
    , lType
    , lFloorSection

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
    , perExternalIds
    , perRelationshipStatuses
    , perImClients
    , perPhoneNumbers
    , perOccupations
    , perNames
    , perGenders
    , perPhotos
    , perAgeRanges
    , perEvents
    , perCalendarURLs
    , perFileAses
    , perCoverPhotos
    , perSkills
    , perSipAddresses
    , perMetadata
    , perInterests
    , perOrganizations
    , perLocales
    , perLocations
    , perMiscKeywords
    , perMemberships
    , perRelationshipInterests
    , perClientData

    -- ** Empty
    , Empty
    , empty

    -- ** PeopleListDirectoryPeopleSources
    , PeopleListDirectoryPeopleSources (..)

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
    , cgmContactGroupResourceName
    , cgmContactGroupId

    -- ** MiscKeyword
    , MiscKeyword
    , miscKeyword
    , mkValue
    , mkMetadata
    , mkType
    , mkFormattedType

    -- ** BatchCreateContactsResponse
    , BatchCreateContactsResponse
    , batchCreateContactsResponse
    , bccrCreatedPeople

    -- ** ContactGroupGroupType
    , ContactGroupGroupType (..)

    -- ** UserDefined
    , UserDefined
    , userDefined
    , udValue
    , udKey
    , udMetadata

    -- ** PeopleSearchContactsSources
    , PeopleSearchContactsSources (..)

    -- ** CopyOtherContactToMyContactsGroupRequestSourcesItem
    , CopyOtherContactToMyContactsGroupRequestSourcesItem (..)

    -- ** NicknameType
    , NicknameType (..)

    -- ** Locale
    , Locale
    , locale
    , locValue
    , locMetadata

    -- ** PeopleConnectionsListSortOrder
    , PeopleConnectionsListSortOrder (..)

    -- ** RelationshipStatus
    , RelationshipStatus
    , relationshipStatus
    , rsValue
    , rsMetadata
    , rsFormattedValue

    -- ** PeopleDeleteContactPhotoSources
    , PeopleDeleteContactPhotoSources (..)

    -- ** URL
    , URL
    , url
    , uValue
    , uMetadata
    , uType
    , uFormattedType

    -- ** PeopleGetSources
    , PeopleGetSources (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** DeleteContactPhotoResponse
    , DeleteContactPhotoResponse
    , deleteContactPhotoResponse
    , dcprPerson

    -- ** UpdateContactPhotoResponse
    , UpdateContactPhotoResponse
    , updateContactPhotoResponse
    , ucprPerson

    -- ** GroupClientData
    , GroupClientData
    , groupClientData
    , gcdValue
    , gcdKey

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

    -- ** ListOtherContactsResponse
    , ListOtherContactsResponse
    , listOtherContactsResponse
    , locrNextPageToken
    , locrOtherContacts
    , locrTotalSize
    , locrNextSyncToken

    -- ** PeopleSearchDirectoryPeopleSources
    , PeopleSearchDirectoryPeopleSources (..)

    -- ** BatchCreateContactsRequestSourcesItem
    , BatchCreateContactsRequestSourcesItem (..)

    -- ** Birthday
    , Birthday
    , birthday
    , bText
    , bDate
    , bMetadata

    -- ** PeopleCreateContactSources
    , PeopleCreateContactSources (..)

    -- ** PersonAgeRange
    , PersonAgeRange (..)

    -- ** PeopleSearchDirectoryPeopleMergeSources
    , PeopleSearchDirectoryPeopleMergeSources (..)

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

    -- ** UpdateContactPhotoRequest
    , UpdateContactPhotoRequest
    , updateContactPhotoRequest
    , ucprSources
    , ucprPersonFields
    , ucprPhotoBytes

    -- ** AgeRangeType
    , AgeRangeType
    , ageRangeType
    , artAgeRange
    , artMetadata

    -- ** Gender
    , Gender
    , gender
    , gValue
    , gAddressMeAs
    , gMetadata
    , gFormattedValue

    -- ** UpdateContactPhotoRequestSourcesItem
    , UpdateContactPhotoRequestSourcesItem (..)

    -- ** Name
    , Name
    , name
    , nGivenName
    , nPhoneticHonorificSuffix
    , nMiddleName
    , nUnstructuredName
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

    -- ** BatchDeleteContactsRequest
    , BatchDeleteContactsRequest
    , batchDeleteContactsRequest
    , bdcrResourceNames

    -- ** FieldMetadata
    , FieldMetadata
    , fieldMetadata
    , fmVerified
    , fmPrimary
    , fmSource
    , fmSourcePrimary

    -- ** BatchUpdateContactsRequest
    , BatchUpdateContactsRequest
    , batchUpdateContactsRequest
    , bucrUpdateMask
    , bucrReadMask
    , bucrSources
    , bucrContacts

    -- ** SearchDirectoryPeopleResponse
    , SearchDirectoryPeopleResponse
    , searchDirectoryPeopleResponse
    , sdprNextPageToken
    , sdprPeople
    , sdprTotalSize

    -- ** PhoneNumber
    , PhoneNumber
    , phoneNumber
    , pnCanonicalForm
    , pnValue
    , pnMetadata
    , pnType
    , pnFormattedType

    -- ** ContactToCreate
    , ContactToCreate
    , contactToCreate
    , ctcContactPerson

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
    , ccgrReadGroupFields

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

    -- ** BatchUpdateContactsResponseUpdateResult
    , BatchUpdateContactsResponseUpdateResult
    , batchUpdateContactsResponseUpdateResult
    , bucrurAddtional

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

    -- ** MiscKeywordType
    , MiscKeywordType (..)

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

    -- ** ExternalId
    , ExternalId
    , externalId
    , eiValue
    , eiMetadata
    , eiType
    , eiFormattedType

    -- ** ProFileMetadataObjectType
    , ProFileMetadataObjectType (..)

    -- ** ListDirectoryPeopleResponse
    , ListDirectoryPeopleResponse
    , listDirectoryPeopleResponse
    , ldprNextPageToken
    , ldprPeople
    , ldprNextSyncToken

    -- ** CopyOtherContactToMyContactsGroupRequest
    , CopyOtherContactToMyContactsGroupRequest
    , copyOtherContactToMyContactsGroupRequest
    , coctmcgrReadMask
    , coctmcgrSources
    , coctmcgrCopyMask

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

    -- ** OtherContactsListSources
    , OtherContactsListSources (..)

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

    -- ** CalendarURL
    , CalendarURL
    , calendarURL
    , cuURL
    , cuMetadata
    , cuType
    , cuFormattedType

    -- ** ClientData
    , ClientData
    , clientData
    , cdValue
    , cdKey
    , cdMetadata

    -- ** PeopleGetBatchGetSources
    , PeopleGetBatchGetSources (..)

    -- ** ProFileMetadataUserTypesItem
    , ProFileMetadataUserTypesItem (..)

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

import Network.Google.Prelude
import Network.Google.People.Types
import Network.Google.Resource.People.ContactGroups.BatchGet
import Network.Google.Resource.People.ContactGroups.Create
import Network.Google.Resource.People.ContactGroups.Delete
import Network.Google.Resource.People.ContactGroups.Get
import Network.Google.Resource.People.ContactGroups.List
import Network.Google.Resource.People.ContactGroups.Members.Modify
import Network.Google.Resource.People.ContactGroups.Update
import Network.Google.Resource.People.OtherContacts.CopyOtherContactToMyContactsGroup
import Network.Google.Resource.People.OtherContacts.List
import Network.Google.Resource.People.OtherContacts.Search
import Network.Google.Resource.People.People.BatchCreateContacts
import Network.Google.Resource.People.People.BatchDeleteContacts
import Network.Google.Resource.People.People.BatchUpdateContacts
import Network.Google.Resource.People.People.Connections.List
import Network.Google.Resource.People.People.CreateContact
import Network.Google.Resource.People.People.DeleteContact
import Network.Google.Resource.People.People.DeleteContactPhoto
import Network.Google.Resource.People.People.Get
import Network.Google.Resource.People.People.GetBatchGet
import Network.Google.Resource.People.People.ListDirectoryPeople
import Network.Google.Resource.People.People.SearchContacts
import Network.Google.Resource.People.People.SearchDirectoryPeople
import Network.Google.Resource.People.People.UpdateContact
import Network.Google.Resource.People.People.UpdateContactPhoto

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
       :<|> PeopleBatchCreateContactsResource
       :<|> PeopleGetResource
       :<|> PeopleDeleteContactResource
       :<|> PeopleUpdateContactResource
       :<|> PeopleSearchDirectoryPeopleResource
       :<|> PeopleCreateContactResource
       :<|> PeopleDeleteContactPhotoResource
       :<|> PeopleUpdateContactPhotoResource
       :<|> PeopleSearchContactsResource
       :<|> PeopleListDirectoryPeopleResource
       :<|> PeopleBatchDeleteContactsResource
       :<|> PeopleBatchUpdateContactsResource
       :<|>
       OtherContactsCopyOtherContactToMyContactsGroupResource
       :<|> OtherContactsListResource
       :<|> OtherContactsSearchResource

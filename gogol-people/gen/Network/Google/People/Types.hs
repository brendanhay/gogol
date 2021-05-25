{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * BatchUpdateContactsRequestSourcesItem
    , BatchUpdateContactsRequestSourcesItem (..)

    -- * PeopleUpdateContactSources
    , PeopleUpdateContactSources (..)

    -- * SipAddress
    , SipAddress
    , sipAddress
    , saValue
    , saMetadata
    , saType
    , saFormattedType

    -- * BatchUpdateContactsRequestContacts
    , BatchUpdateContactsRequestContacts
    , batchUpdateContactsRequestContacts
    , bucrcAddtional

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

    -- * FileAs
    , FileAs
    , fileAs
    , faValue
    , faMetadata

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
    , cgClientData

    -- * ModifyContactGroupMembersResponse
    , ModifyContactGroupMembersResponse
    , modifyContactGroupMembersResponse
    , mcgmrCanNotRemoveLastContactGroupResourceNames
    , mcgmrNotFoundResourceNames

    -- * UpdateContactGroupRequest
    , UpdateContactGroupRequest
    , updateContactGroupRequest
    , ucgrContactGroup
    , ucgrReadGroupFields
    , ucgrUpdateGroupFields

    -- * SearchResult
    , SearchResult
    , searchResult
    , srPerson

    -- * DomainMembership
    , DomainMembership
    , domainMembership
    , dmInViewerDomain

    -- * PeopleConnectionsListSources
    , PeopleConnectionsListSources (..)

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

    -- * BatchCreateContactsRequest
    , BatchCreateContactsRequest
    , batchCreateContactsRequest
    , bccrReadMask
    , bccrSources
    , bccrContacts

    -- * Membership
    , Membership
    , membership
    , mDomainMembership
    , mContactGroupMembership
    , mMetadata

    -- * SearchResponse
    , SearchResponse
    , searchResponse
    , srResults

    -- * PeopleListDirectoryPeopleMergeSources
    , PeopleListDirectoryPeopleMergeSources (..)

    -- * BatchUpdateContactsResponse
    , BatchUpdateContactsResponse
    , batchUpdateContactsResponse
    , bucrUpdateResult

    -- * Location
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

    -- * Empty
    , Empty
    , empty

    -- * PeopleListDirectoryPeopleSources
    , PeopleListDirectoryPeopleSources (..)

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

    -- * MiscKeyword
    , MiscKeyword
    , miscKeyword
    , mkValue
    , mkMetadata
    , mkType
    , mkFormattedType

    -- * BatchCreateContactsResponse
    , BatchCreateContactsResponse
    , batchCreateContactsResponse
    , bccrCreatedPeople

    -- * ContactGroupGroupType
    , ContactGroupGroupType (..)

    -- * UserDefined
    , UserDefined
    , userDefined
    , udValue
    , udKey
    , udMetadata

    -- * PeopleSearchContactsSources
    , PeopleSearchContactsSources (..)

    -- * CopyOtherContactToMyContactsGroupRequestSourcesItem
    , CopyOtherContactToMyContactsGroupRequestSourcesItem (..)

    -- * NicknameType
    , NicknameType (..)

    -- * Locale
    , Locale
    , locale
    , locValue
    , locMetadata

    -- * PeopleConnectionsListSortOrder
    , PeopleConnectionsListSortOrder (..)

    -- * RelationshipStatus
    , RelationshipStatus
    , relationshipStatus
    , rsValue
    , rsMetadata
    , rsFormattedValue

    -- * PeopleDeleteContactPhotoSources
    , PeopleDeleteContactPhotoSources (..)

    -- * URL
    , URL
    , url
    , uValue
    , uMetadata
    , uType
    , uFormattedType

    -- * PeopleGetSources
    , PeopleGetSources (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * DeleteContactPhotoResponse
    , DeleteContactPhotoResponse
    , deleteContactPhotoResponse
    , dcprPerson

    -- * UpdateContactPhotoResponse
    , UpdateContactPhotoResponse
    , updateContactPhotoResponse
    , ucprPerson

    -- * GroupClientData
    , GroupClientData
    , groupClientData
    , gcdValue
    , gcdKey

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

    -- * ListOtherContactsResponse
    , ListOtherContactsResponse
    , listOtherContactsResponse
    , locrNextPageToken
    , locrOtherContacts
    , locrTotalSize
    , locrNextSyncToken

    -- * PeopleSearchDirectoryPeopleSources
    , PeopleSearchDirectoryPeopleSources (..)

    -- * BatchCreateContactsRequestSourcesItem
    , BatchCreateContactsRequestSourcesItem (..)

    -- * Birthday
    , Birthday
    , birthday
    , bText
    , bDate
    , bMetadata

    -- * PeopleCreateContactSources
    , PeopleCreateContactSources (..)

    -- * PersonAgeRange
    , PersonAgeRange (..)

    -- * PeopleSearchDirectoryPeopleMergeSources
    , PeopleSearchDirectoryPeopleMergeSources (..)

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

    -- * UpdateContactPhotoRequest
    , UpdateContactPhotoRequest
    , updateContactPhotoRequest
    , ucprSources
    , ucprPersonFields
    , ucprPhotoBytes

    -- * AgeRangeType
    , AgeRangeType
    , ageRangeType
    , artAgeRange
    , artMetadata

    -- * Gender
    , Gender
    , gender
    , gValue
    , gAddressMeAs
    , gMetadata
    , gFormattedValue

    -- * UpdateContactPhotoRequestSourcesItem
    , UpdateContactPhotoRequestSourcesItem (..)

    -- * Name
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

    -- * BatchDeleteContactsRequest
    , BatchDeleteContactsRequest
    , batchDeleteContactsRequest
    , bdcrResourceNames

    -- * FieldMetadata
    , FieldMetadata
    , fieldMetadata
    , fmVerified
    , fmPrimary
    , fmSource
    , fmSourcePrimary

    -- * BatchUpdateContactsRequest
    , BatchUpdateContactsRequest
    , batchUpdateContactsRequest
    , bucrUpdateMask
    , bucrReadMask
    , bucrSources
    , bucrContacts

    -- * SearchDirectoryPeopleResponse
    , SearchDirectoryPeopleResponse
    , searchDirectoryPeopleResponse
    , sdprNextPageToken
    , sdprPeople
    , sdprTotalSize

    -- * PhoneNumber
    , PhoneNumber
    , phoneNumber
    , pnCanonicalForm
    , pnValue
    , pnMetadata
    , pnType
    , pnFormattedType

    -- * ContactToCreate
    , ContactToCreate
    , contactToCreate
    , ctcContactPerson

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
    , ccgrReadGroupFields

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

    -- * BatchUpdateContactsResponseUpdateResult
    , BatchUpdateContactsResponseUpdateResult
    , batchUpdateContactsResponseUpdateResult
    , bucrurAddtional

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

    -- * MiscKeywordType
    , MiscKeywordType (..)

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

    -- * ExternalId
    , ExternalId
    , externalId
    , eiValue
    , eiMetadata
    , eiType
    , eiFormattedType

    -- * ProFileMetadataObjectType
    , ProFileMetadataObjectType (..)

    -- * ListDirectoryPeopleResponse
    , ListDirectoryPeopleResponse
    , listDirectoryPeopleResponse
    , ldprNextPageToken
    , ldprPeople
    , ldprNextSyncToken

    -- * CopyOtherContactToMyContactsGroupRequest
    , CopyOtherContactToMyContactsGroupRequest
    , copyOtherContactToMyContactsGroupRequest
    , coctmcgrReadMask
    , coctmcgrSources
    , coctmcgrCopyMask

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

    -- * OtherContactsListSources
    , OtherContactsListSources (..)

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

    -- * CalendarURL
    , CalendarURL
    , calendarURL
    , cuURL
    , cuMetadata
    , cuType
    , cuFormattedType

    -- * ClientData
    , ClientData
    , clientData
    , cdValue
    , cdKey
    , cdMetadata

    -- * PeopleGetBatchGetSources
    , PeopleGetBatchGetSources (..)

    -- * ProFileMetadataUserTypesItem
    , ProFileMetadataUserTypesItem (..)

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

import Network.Google.People.Types.Product
import Network.Google.People.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the People API. This contains the host and root path used as a starting point for constructing service requests.
peopleService :: ServiceConfig
peopleService
  = defaultService (ServiceId "people:v1")
      "people.googleapis.com"

-- | See and download contact info automatically saved in your \"Other
-- contacts\"
contactsOtherReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/contacts.other.readonly"]
contactsOtherReadOnlyScope = Proxy

-- | See and download your organization\'s GSuite directory
directoryReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/directory.readonly"]
directoryReadOnlyScope = Proxy

-- | See and download your exact date of birth
userBirthdayReadScope :: Proxy '["https://www.googleapis.com/auth/user.birthday.read"]
userBirthdayReadScope = Proxy

-- | See your personal info, including any personal info you\'ve made
-- publicly available
userInfoProFileScope :: Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
userInfoProFileScope = Proxy

-- | See and download your personal phone numbers
userPhoneNumbersReadScope :: Proxy '["https://www.googleapis.com/auth/user.phonenumbers.read"]
userPhoneNumbersReadScope = Proxy

-- | See your primary Google Account email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy

-- | See and download your contacts
contactsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/contacts.readonly"]
contactsReadOnlyScope = Proxy

-- | View your street addresses
userAddressesReadScope :: Proxy '["https://www.googleapis.com/auth/user.addresses.read"]
userAddressesReadScope = Proxy

-- | See your education, work history and org info
userOrganizationReadScope :: Proxy '["https://www.googleapis.com/auth/user.organization.read"]
userOrganizationReadScope = Proxy

-- | See, edit, download, and permanently delete your contacts
contactsScope :: Proxy '["https://www.googleapis.com/auth/contacts"]
contactsScope = Proxy

-- | See and download all of your Google Account email addresses
userEmailsReadScope :: Proxy '["https://www.googleapis.com/auth/user.emails.read"]
userEmailsReadScope = Proxy

-- | See your gender
userGenderReadScope :: Proxy '["https://www.googleapis.com/auth/user.gender.read"]
userGenderReadScope = Proxy

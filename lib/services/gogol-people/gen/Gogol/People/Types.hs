{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.People.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.People.Types
  ( -- * Configuration
    peopleService,

    -- * OAuth Scopes
    contactsScope,
    contactsOtherReadOnlyScope,
    contactsReadOnlyScope,
    directoryReadOnlyScope,
    userAddressesReadScope,
    userBirthdayReadScope,
    userEmailsReadScope,
    userGenderReadScope,
    userOrganizationReadScope,
    userPhoneNumbersReadScope,
    userinfoEmailScope,
    userinfoProfileScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Address
    Address (..),
    newAddress,

    -- ** AgeRangeType
    AgeRangeType (..),
    newAgeRangeType,

    -- ** AgeRangeType_AgeRange
    AgeRangeType_AgeRange (..),

    -- ** BatchCreateContactsRequest
    BatchCreateContactsRequest (..),
    newBatchCreateContactsRequest,

    -- ** BatchCreateContactsRequest_SourcesItem
    BatchCreateContactsRequest_SourcesItem (..),

    -- ** BatchCreateContactsResponse
    BatchCreateContactsResponse (..),
    newBatchCreateContactsResponse,

    -- ** BatchDeleteContactsRequest
    BatchDeleteContactsRequest (..),
    newBatchDeleteContactsRequest,

    -- ** BatchGetContactGroupsResponse
    BatchGetContactGroupsResponse (..),
    newBatchGetContactGroupsResponse,

    -- ** BatchUpdateContactsRequest
    BatchUpdateContactsRequest (..),
    newBatchUpdateContactsRequest,

    -- ** BatchUpdateContactsRequest_Contacts
    BatchUpdateContactsRequest_Contacts (..),
    newBatchUpdateContactsRequest_Contacts,

    -- ** BatchUpdateContactsRequest_SourcesItem
    BatchUpdateContactsRequest_SourcesItem (..),

    -- ** BatchUpdateContactsResponse
    BatchUpdateContactsResponse (..),
    newBatchUpdateContactsResponse,

    -- ** BatchUpdateContactsResponse_UpdateResult
    BatchUpdateContactsResponse_UpdateResult (..),
    newBatchUpdateContactsResponse_UpdateResult,

    -- ** Biography
    Biography (..),
    newBiography,

    -- ** Biography_ContentType
    Biography_ContentType (..),

    -- ** Birthday
    Birthday (..),
    newBirthday,

    -- ** BraggingRights
    BraggingRights (..),
    newBraggingRights,

    -- ** CalendarUrl
    CalendarUrl (..),
    newCalendarUrl,

    -- ** ClientData
    ClientData (..),
    newClientData,

    -- ** ContactGroup
    ContactGroup (..),
    newContactGroup,

    -- ** ContactGroup_GroupType
    ContactGroup_GroupType (..),

    -- ** ContactGroupMembership
    ContactGroupMembership (..),
    newContactGroupMembership,

    -- ** ContactGroupMetadata
    ContactGroupMetadata (..),
    newContactGroupMetadata,

    -- ** ContactGroupResponse
    ContactGroupResponse (..),
    newContactGroupResponse,

    -- ** ContactToCreate
    ContactToCreate (..),
    newContactToCreate,

    -- ** CopyOtherContactToMyContactsGroupRequest
    CopyOtherContactToMyContactsGroupRequest (..),
    newCopyOtherContactToMyContactsGroupRequest,

    -- ** CopyOtherContactToMyContactsGroupRequest_SourcesItem
    CopyOtherContactToMyContactsGroupRequest_SourcesItem (..),

    -- ** CoverPhoto
    CoverPhoto (..),
    newCoverPhoto,

    -- ** CreateContactGroupRequest
    CreateContactGroupRequest (..),
    newCreateContactGroupRequest,

    -- ** Date
    Date (..),
    newDate,

    -- ** DeleteContactPhotoResponse
    DeleteContactPhotoResponse (..),
    newDeleteContactPhotoResponse,

    -- ** DomainMembership
    DomainMembership (..),
    newDomainMembership,

    -- ** EmailAddress
    EmailAddress (..),
    newEmailAddress,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Event
    Event (..),
    newEvent,

    -- ** ExternalId
    ExternalId (..),
    newExternalId,

    -- ** FieldMetadata
    FieldMetadata (..),
    newFieldMetadata,

    -- ** FileAs
    FileAs (..),
    newFileAs,

    -- ** Gender
    Gender (..),
    newGender,

    -- ** GetPeopleResponse
    GetPeopleResponse (..),
    newGetPeopleResponse,

    -- ** GroupClientData
    GroupClientData (..),
    newGroupClientData,

    -- ** ImClient
    ImClient (..),
    newImClient,

    -- ** Interest
    Interest (..),
    newInterest,

    -- ** ListConnectionsResponse
    ListConnectionsResponse (..),
    newListConnectionsResponse,

    -- ** ListContactGroupsResponse
    ListContactGroupsResponse (..),
    newListContactGroupsResponse,

    -- ** ListDirectoryPeopleResponse
    ListDirectoryPeopleResponse (..),
    newListDirectoryPeopleResponse,

    -- ** ListOtherContactsResponse
    ListOtherContactsResponse (..),
    newListOtherContactsResponse,

    -- ** Locale
    Locale (..),
    newLocale,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Membership
    Membership (..),
    newMembership,

    -- ** MiscKeyword
    MiscKeyword (..),
    newMiscKeyword,

    -- ** MiscKeyword_Type
    MiscKeyword_Type (..),

    -- ** ModifyContactGroupMembersRequest
    ModifyContactGroupMembersRequest (..),
    newModifyContactGroupMembersRequest,

    -- ** ModifyContactGroupMembersResponse
    ModifyContactGroupMembersResponse (..),
    newModifyContactGroupMembersResponse,

    -- ** Name
    Name (..),
    newName,

    -- ** Nickname
    Nickname (..),
    newNickname,

    -- ** Nickname_Type
    Nickname_Type (..),

    -- ** Occupation
    Occupation (..),
    newOccupation,

    -- ** Organization
    Organization (..),
    newOrganization,

    -- ** Person
    Person (..),
    newPerson,

    -- ** Person_AgeRange
    Person_AgeRange (..),

    -- ** PersonMetadata
    PersonMetadata (..),
    newPersonMetadata,

    -- ** PersonMetadata_ObjectType
    PersonMetadata_ObjectType (..),

    -- ** PersonResponse
    PersonResponse (..),
    newPersonResponse,

    -- ** PhoneNumber
    PhoneNumber (..),
    newPhoneNumber,

    -- ** Photo
    Photo (..),
    newPhoto,

    -- ** ProfileMetadata
    ProfileMetadata (..),
    newProfileMetadata,

    -- ** ProfileMetadata_ObjectType
    ProfileMetadata_ObjectType (..),

    -- ** ProfileMetadata_UserTypesItem
    ProfileMetadata_UserTypesItem (..),

    -- ** Relation
    Relation (..),
    newRelation,

    -- ** RelationshipInterest
    RelationshipInterest (..),
    newRelationshipInterest,

    -- ** RelationshipStatus
    RelationshipStatus (..),
    newRelationshipStatus,

    -- ** Residence
    Residence (..),
    newResidence,

    -- ** SearchDirectoryPeopleResponse
    SearchDirectoryPeopleResponse (..),
    newSearchDirectoryPeopleResponse,

    -- ** SearchResponse
    SearchResponse (..),
    newSearchResponse,

    -- ** SearchResult
    SearchResult (..),
    newSearchResult,

    -- ** SipAddress
    SipAddress (..),
    newSipAddress,

    -- ** Skill
    Skill (..),
    newSkill,

    -- ** Source
    Source (..),
    newSource,

    -- ** Source_Type
    Source_Type (..),

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Tagline
    Tagline (..),
    newTagline,

    -- ** UpdateContactGroupRequest
    UpdateContactGroupRequest (..),
    newUpdateContactGroupRequest,

    -- ** UpdateContactPhotoRequest
    UpdateContactPhotoRequest (..),
    newUpdateContactPhotoRequest,

    -- ** UpdateContactPhotoRequest_SourcesItem
    UpdateContactPhotoRequest_SourcesItem (..),

    -- ** UpdateContactPhotoResponse
    UpdateContactPhotoResponse (..),
    newUpdateContactPhotoResponse,

    -- ** Url
    Url (..),
    newUrl,

    -- ** UserDefined
    UserDefined (..),
    newUserDefined,

    -- ** OtherContactsListSources
    OtherContactsListSources (..),

    -- ** PeopleConnectionsListSortOrder
    PeopleConnectionsListSortOrder (..),

    -- ** PeopleConnectionsListSources
    PeopleConnectionsListSources (..),

    -- ** PeopleCreateContactSources
    PeopleCreateContactSources (..),

    -- ** PeopleDeleteContactPhotoSources
    PeopleDeleteContactPhotoSources (..),

    -- ** PeopleGetSources
    PeopleGetSources (..),

    -- ** PeopleGetBatchGetSources
    PeopleGetBatchGetSources (..),

    -- ** PeopleListDirectoryPeopleMergeSources
    PeopleListDirectoryPeopleMergeSources (..),

    -- ** PeopleListDirectoryPeopleSources
    PeopleListDirectoryPeopleSources (..),

    -- ** PeopleSearchContactsSources
    PeopleSearchContactsSources (..),

    -- ** PeopleSearchDirectoryPeopleMergeSources
    PeopleSearchDirectoryPeopleMergeSources (..),

    -- ** PeopleSearchDirectoryPeopleSources
    PeopleSearchDirectoryPeopleSources (..),

    -- ** PeopleUpdateContactSources
    PeopleUpdateContactSources (..),
  )
where

import Gogol.People.Internal.Product
import Gogol.People.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the People API. This contains the host and root path used as a starting point for constructing service requests.
peopleService :: Core.ServiceConfig
peopleService =
  Core.defaultService
    (Core.ServiceId "people:v1")
    "people.googleapis.com"

-- | See, edit, download, and permanently delete your contacts
contactsScope :: Core.Proxy '["https://www.googleapis.com/auth/contacts"]
contactsScope = Core.Proxy

-- | See and download contact info automatically saved in your \"Other contacts\"
contactsOtherReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/contacts.other.readonly"]
contactsOtherReadOnlyScope = Core.Proxy

-- | See and download your contacts
contactsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/contacts.readonly"]
contactsReadOnlyScope = Core.Proxy

-- | See and download your organization\'s GSuite directory
directoryReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/directory.readonly"]
directoryReadOnlyScope = Core.Proxy

-- | View your street addresses
userAddressesReadScope :: Core.Proxy '["https://www.googleapis.com/auth/user.addresses.read"]
userAddressesReadScope = Core.Proxy

-- | See and download your exact date of birth
userBirthdayReadScope :: Core.Proxy '["https://www.googleapis.com/auth/user.birthday.read"]
userBirthdayReadScope = Core.Proxy

-- | See and download all of your Google Account email addresses
userEmailsReadScope :: Core.Proxy '["https://www.googleapis.com/auth/user.emails.read"]
userEmailsReadScope = Core.Proxy

-- | See your gender
userGenderReadScope :: Core.Proxy '["https://www.googleapis.com/auth/user.gender.read"]
userGenderReadScope = Core.Proxy

-- | See your education, work history and org info
userOrganizationReadScope :: Core.Proxy '["https://www.googleapis.com/auth/user.organization.read"]
userOrganizationReadScope = Core.Proxy

-- | See and download your personal phone numbers
userPhoneNumbersReadScope :: Core.Proxy '["https://www.googleapis.com/auth/user.phonenumbers.read"]
userPhoneNumbersReadScope = Core.Proxy

-- | See your primary Google Account email address
userinfoEmailScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Core.Proxy

-- | See your personal info, including any personal info you\'ve made publicly available
userinfoProfileScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
userinfoProfileScope = Core.Proxy

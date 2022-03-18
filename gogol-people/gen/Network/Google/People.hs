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
-- Module      : Network.Google.People
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides access to information about profiles and contacts.
--
-- /See:/ <https://developers.google.com/people/ People API Reference>
module Network.Google.People
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

    -- * Resources

    -- ** people.contactGroups.batchGet
    PeopleContactGroupsBatchGetResource,
    newPeopleContactGroupsBatchGet,
    PeopleContactGroupsBatchGet,

    -- ** people.contactGroups.create
    PeopleContactGroupsCreateResource,
    newPeopleContactGroupsCreate,
    PeopleContactGroupsCreate,

    -- ** people.contactGroups.delete
    PeopleContactGroupsDeleteResource,
    newPeopleContactGroupsDelete,
    PeopleContactGroupsDelete,

    -- ** people.contactGroups.get
    PeopleContactGroupsGetResource,
    newPeopleContactGroupsGet,
    PeopleContactGroupsGet,

    -- ** people.contactGroups.list
    PeopleContactGroupsListResource,
    newPeopleContactGroupsList,
    PeopleContactGroupsList,

    -- ** people.contactGroups.members.modify
    PeopleContactGroupsMembersModifyResource,
    newPeopleContactGroupsMembersModify,
    PeopleContactGroupsMembersModify,

    -- ** people.contactGroups.update
    PeopleContactGroupsUpdateResource,
    newPeopleContactGroupsUpdate,
    PeopleContactGroupsUpdate,

    -- ** people.otherContacts.copyOtherContactToMyContactsGroup
    PeopleOtherContactsCopyOtherContactToMyContactsGroupResource,
    newPeopleOtherContactsCopyOtherContactToMyContactsGroup,
    PeopleOtherContactsCopyOtherContactToMyContactsGroup,

    -- ** people.otherContacts.list
    PeopleOtherContactsListResource,
    newPeopleOtherContactsList,
    PeopleOtherContactsList,

    -- ** people.otherContacts.search
    PeopleOtherContactsSearchResource,
    newPeopleOtherContactsSearch,
    PeopleOtherContactsSearch,

    -- ** people.people.batchCreateContacts
    PeoplePeopleBatchCreateContactsResource,
    newPeoplePeopleBatchCreateContacts,
    PeoplePeopleBatchCreateContacts,

    -- ** people.people.batchDeleteContacts
    PeoplePeopleBatchDeleteContactsResource,
    newPeoplePeopleBatchDeleteContacts,
    PeoplePeopleBatchDeleteContacts,

    -- ** people.people.batchUpdateContacts
    PeoplePeopleBatchUpdateContactsResource,
    newPeoplePeopleBatchUpdateContacts,
    PeoplePeopleBatchUpdateContacts,

    -- ** people.people.connections.list
    PeoplePeopleConnectionsListResource,
    newPeoplePeopleConnectionsList,
    PeoplePeopleConnectionsList,

    -- ** people.people.createContact
    PeoplePeopleCreateContactResource,
    newPeoplePeopleCreateContact,
    PeoplePeopleCreateContact,

    -- ** people.people.deleteContact
    PeoplePeopleDeleteContactResource,
    newPeoplePeopleDeleteContact,
    PeoplePeopleDeleteContact,

    -- ** people.people.deleteContactPhoto
    PeoplePeopleDeleteContactPhotoResource,
    newPeoplePeopleDeleteContactPhoto,
    PeoplePeopleDeleteContactPhoto,

    -- ** people.people.get
    PeoplePeopleGetResource,
    newPeoplePeopleGet,
    PeoplePeopleGet,

    -- ** people.people.getBatchGet
    PeoplePeopleGetBatchGetResource,
    newPeoplePeopleGetBatchGet,
    PeoplePeopleGetBatchGet,

    -- ** people.people.listDirectoryPeople
    PeoplePeopleListDirectoryPeopleResource,
    newPeoplePeopleListDirectoryPeople,
    PeoplePeopleListDirectoryPeople,

    -- ** people.people.searchContacts
    PeoplePeopleSearchContactsResource,
    newPeoplePeopleSearchContacts,
    PeoplePeopleSearchContacts,

    -- ** people.people.searchDirectoryPeople
    PeoplePeopleSearchDirectoryPeopleResource,
    newPeoplePeopleSearchDirectoryPeople,
    PeoplePeopleSearchDirectoryPeople,

    -- ** people.people.updateContact
    PeoplePeopleUpdateContactResource,
    newPeoplePeopleUpdateContact,
    PeoplePeopleUpdateContact,

    -- ** people.people.updateContactPhoto
    PeoplePeopleUpdateContactPhotoResource,
    newPeoplePeopleUpdateContactPhoto,
    PeoplePeopleUpdateContactPhoto,

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

import Network.Google.People.BatchCreateContacts
import Network.Google.People.BatchDeleteContacts
import Network.Google.People.BatchUpdateContacts
import Network.Google.People.Connections.List
import Network.Google.People.ContactGroups.BatchGet
import Network.Google.People.ContactGroups.Create
import Network.Google.People.ContactGroups.Delete
import Network.Google.People.ContactGroups.Get
import Network.Google.People.ContactGroups.List
import Network.Google.People.ContactGroups.Members.Modify
import Network.Google.People.ContactGroups.Update
import Network.Google.People.CreateContact
import Network.Google.People.DeleteContact
import Network.Google.People.DeleteContactPhoto
import Network.Google.People.Get
import Network.Google.People.GetBatchGet
import Network.Google.People.ListDirectoryPeople
import Network.Google.People.OtherContacts.CopyOtherContactToMyContactsGroup
import Network.Google.People.OtherContacts.List
import Network.Google.People.OtherContacts.Search
import Network.Google.People.SearchContacts
import Network.Google.People.SearchDirectoryPeople
import Network.Google.People.Types
import Network.Google.People.UpdateContact
import Network.Google.People.UpdateContactPhoto

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.People
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides access to information about profiles and contacts.
--
-- /See:/ <https://developers.google.com/people/ People API Reference>
module Gogol.People
  ( -- * Configuration
    peopleService,

    -- * OAuth Scopes
    Contacts'FullControl,
    Contacts'Other'Readonly,
    Contacts'Readonly,
    Directory'Readonly,
    User'Addresses'Read,
    User'Birthday'Read,
    User'Emails'Read,
    User'Gender'Read,
    User'Organization'Read,
    User'Phonenumbers'Read,
    Userinfo'Email,
    Userinfo'Profile,

    -- * Resources

    -- ** people.contactGroups.batchGet
    PeopleContactGroupsBatchGetResource,
    PeopleContactGroupsBatchGet (..),
    newPeopleContactGroupsBatchGet,

    -- ** people.contactGroups.create
    PeopleContactGroupsCreateResource,
    PeopleContactGroupsCreate (..),
    newPeopleContactGroupsCreate,

    -- ** people.contactGroups.delete
    PeopleContactGroupsDeleteResource,
    PeopleContactGroupsDelete (..),
    newPeopleContactGroupsDelete,

    -- ** people.contactGroups.get
    PeopleContactGroupsGetResource,
    PeopleContactGroupsGet (..),
    newPeopleContactGroupsGet,

    -- ** people.contactGroups.list
    PeopleContactGroupsListResource,
    PeopleContactGroupsList (..),
    newPeopleContactGroupsList,

    -- ** people.contactGroups.members.modify
    PeopleContactGroupsMembersModifyResource,
    PeopleContactGroupsMembersModify (..),
    newPeopleContactGroupsMembersModify,

    -- ** people.contactGroups.update
    PeopleContactGroupsUpdateResource,
    PeopleContactGroupsUpdate (..),
    newPeopleContactGroupsUpdate,

    -- ** people.otherContacts.copyOtherContactToMyContactsGroup
    PeopleOtherContactsCopyOtherContactToMyContactsGroupResource,
    PeopleOtherContactsCopyOtherContactToMyContactsGroup (..),
    newPeopleOtherContactsCopyOtherContactToMyContactsGroup,

    -- ** people.otherContacts.list
    PeopleOtherContactsListResource,
    PeopleOtherContactsList (..),
    newPeopleOtherContactsList,

    -- ** people.otherContacts.search
    PeopleOtherContactsSearchResource,
    PeopleOtherContactsSearch (..),
    newPeopleOtherContactsSearch,

    -- ** people.people.batchCreateContacts
    PeoplePeopleBatchCreateContactsResource,
    PeoplePeopleBatchCreateContacts (..),
    newPeoplePeopleBatchCreateContacts,

    -- ** people.people.batchDeleteContacts
    PeoplePeopleBatchDeleteContactsResource,
    PeoplePeopleBatchDeleteContacts (..),
    newPeoplePeopleBatchDeleteContacts,

    -- ** people.people.batchUpdateContacts
    PeoplePeopleBatchUpdateContactsResource,
    PeoplePeopleBatchUpdateContacts (..),
    newPeoplePeopleBatchUpdateContacts,

    -- ** people.people.connections.list
    PeoplePeopleConnectionsListResource,
    PeoplePeopleConnectionsList (..),
    newPeoplePeopleConnectionsList,

    -- ** people.people.createContact
    PeoplePeopleCreateContactResource,
    PeoplePeopleCreateContact (..),
    newPeoplePeopleCreateContact,

    -- ** people.people.deleteContact
    PeoplePeopleDeleteContactResource,
    PeoplePeopleDeleteContact (..),
    newPeoplePeopleDeleteContact,

    -- ** people.people.deleteContactPhoto
    PeoplePeopleDeleteContactPhotoResource,
    PeoplePeopleDeleteContactPhoto (..),
    newPeoplePeopleDeleteContactPhoto,

    -- ** people.people.get
    PeoplePeopleGetResource,
    PeoplePeopleGet (..),
    newPeoplePeopleGet,

    -- ** people.people.getBatchGet
    PeoplePeopleGetBatchGetResource,
    PeoplePeopleGetBatchGet (..),
    newPeoplePeopleGetBatchGet,

    -- ** people.people.listDirectoryPeople
    PeoplePeopleListDirectoryPeopleResource,
    PeoplePeopleListDirectoryPeople (..),
    newPeoplePeopleListDirectoryPeople,

    -- ** people.people.searchContacts
    PeoplePeopleSearchContactsResource,
    PeoplePeopleSearchContacts (..),
    newPeoplePeopleSearchContacts,

    -- ** people.people.searchDirectoryPeople
    PeoplePeopleSearchDirectoryPeopleResource,
    PeoplePeopleSearchDirectoryPeople (..),
    newPeoplePeopleSearchDirectoryPeople,

    -- ** people.people.updateContact
    PeoplePeopleUpdateContactResource,
    PeoplePeopleUpdateContact (..),
    newPeoplePeopleUpdateContact,

    -- ** people.people.updateContactPhoto
    PeoplePeopleUpdateContactPhotoResource,
    PeoplePeopleUpdateContactPhoto (..),
    newPeoplePeopleUpdateContactPhoto,

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

import Gogol.People.BatchCreateContacts
import Gogol.People.BatchDeleteContacts
import Gogol.People.BatchUpdateContacts
import Gogol.People.Connections.List
import Gogol.People.ContactGroups.BatchGet
import Gogol.People.ContactGroups.Create
import Gogol.People.ContactGroups.Delete
import Gogol.People.ContactGroups.Get
import Gogol.People.ContactGroups.List
import Gogol.People.ContactGroups.Members.Modify
import Gogol.People.ContactGroups.Update
import Gogol.People.CreateContact
import Gogol.People.DeleteContact
import Gogol.People.DeleteContactPhoto
import Gogol.People.Get
import Gogol.People.GetBatchGet
import Gogol.People.ListDirectoryPeople
import Gogol.People.OtherContacts.CopyOtherContactToMyContactsGroup
import Gogol.People.OtherContacts.List
import Gogol.People.OtherContacts.Search
import Gogol.People.SearchContacts
import Gogol.People.SearchDirectoryPeople
import Gogol.People.Types
import Gogol.People.UpdateContact
import Gogol.People.UpdateContactPhoto

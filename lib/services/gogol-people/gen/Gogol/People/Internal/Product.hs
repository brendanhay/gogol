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
-- Module      : Gogol.People.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.People.Internal.Product
  ( -- * Address
    Address (..),
    newAddress,

    -- * AgeRangeType
    AgeRangeType (..),
    newAgeRangeType,

    -- * BatchCreateContactsRequest
    BatchCreateContactsRequest (..),
    newBatchCreateContactsRequest,

    -- * BatchCreateContactsResponse
    BatchCreateContactsResponse (..),
    newBatchCreateContactsResponse,

    -- * BatchDeleteContactsRequest
    BatchDeleteContactsRequest (..),
    newBatchDeleteContactsRequest,

    -- * BatchGetContactGroupsResponse
    BatchGetContactGroupsResponse (..),
    newBatchGetContactGroupsResponse,

    -- * BatchUpdateContactsRequest
    BatchUpdateContactsRequest (..),
    newBatchUpdateContactsRequest,

    -- * BatchUpdateContactsRequest_Contacts
    BatchUpdateContactsRequest_Contacts (..),
    newBatchUpdateContactsRequest_Contacts,

    -- * BatchUpdateContactsResponse
    BatchUpdateContactsResponse (..),
    newBatchUpdateContactsResponse,

    -- * BatchUpdateContactsResponse_UpdateResult
    BatchUpdateContactsResponse_UpdateResult (..),
    newBatchUpdateContactsResponse_UpdateResult,

    -- * Biography
    Biography (..),
    newBiography,

    -- * Birthday
    Birthday (..),
    newBirthday,

    -- * BraggingRights
    BraggingRights (..),
    newBraggingRights,

    -- * CalendarUrl
    CalendarUrl (..),
    newCalendarUrl,

    -- * ClientData
    ClientData (..),
    newClientData,

    -- * ContactGroup
    ContactGroup (..),
    newContactGroup,

    -- * ContactGroupMembership
    ContactGroupMembership (..),
    newContactGroupMembership,

    -- * ContactGroupMetadata
    ContactGroupMetadata (..),
    newContactGroupMetadata,

    -- * ContactGroupResponse
    ContactGroupResponse (..),
    newContactGroupResponse,

    -- * ContactToCreate
    ContactToCreate (..),
    newContactToCreate,

    -- * CopyOtherContactToMyContactsGroupRequest
    CopyOtherContactToMyContactsGroupRequest (..),
    newCopyOtherContactToMyContactsGroupRequest,

    -- * CoverPhoto
    CoverPhoto (..),
    newCoverPhoto,

    -- * CreateContactGroupRequest
    CreateContactGroupRequest (..),
    newCreateContactGroupRequest,

    -- * Date
    Date (..),
    newDate,

    -- * DeleteContactPhotoResponse
    DeleteContactPhotoResponse (..),
    newDeleteContactPhotoResponse,

    -- * DomainMembership
    DomainMembership (..),
    newDomainMembership,

    -- * EmailAddress
    EmailAddress (..),
    newEmailAddress,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Event
    Event (..),
    newEvent,

    -- * ExternalId
    ExternalId (..),
    newExternalId,

    -- * FieldMetadata
    FieldMetadata (..),
    newFieldMetadata,

    -- * FileAs
    FileAs (..),
    newFileAs,

    -- * Gender
    Gender (..),
    newGender,

    -- * GetPeopleResponse
    GetPeopleResponse (..),
    newGetPeopleResponse,

    -- * GroupClientData
    GroupClientData (..),
    newGroupClientData,

    -- * ImClient
    ImClient (..),
    newImClient,

    -- * Interest
    Interest (..),
    newInterest,

    -- * ListConnectionsResponse
    ListConnectionsResponse (..),
    newListConnectionsResponse,

    -- * ListContactGroupsResponse
    ListContactGroupsResponse (..),
    newListContactGroupsResponse,

    -- * ListDirectoryPeopleResponse
    ListDirectoryPeopleResponse (..),
    newListDirectoryPeopleResponse,

    -- * ListOtherContactsResponse
    ListOtherContactsResponse (..),
    newListOtherContactsResponse,

    -- * Locale
    Locale (..),
    newLocale,

    -- * Location
    Location (..),
    newLocation,

    -- * Membership
    Membership (..),
    newMembership,

    -- * MiscKeyword
    MiscKeyword (..),
    newMiscKeyword,

    -- * ModifyContactGroupMembersRequest
    ModifyContactGroupMembersRequest (..),
    newModifyContactGroupMembersRequest,

    -- * ModifyContactGroupMembersResponse
    ModifyContactGroupMembersResponse (..),
    newModifyContactGroupMembersResponse,

    -- * Name
    Name (..),
    newName,

    -- * Nickname
    Nickname (..),
    newNickname,

    -- * Occupation
    Occupation (..),
    newOccupation,

    -- * Organization
    Organization (..),
    newOrganization,

    -- * Person
    Person (..),
    newPerson,

    -- * PersonMetadata
    PersonMetadata (..),
    newPersonMetadata,

    -- * PersonResponse
    PersonResponse (..),
    newPersonResponse,

    -- * PhoneNumber
    PhoneNumber (..),
    newPhoneNumber,

    -- * Photo
    Photo (..),
    newPhoto,

    -- * ProfileMetadata
    ProfileMetadata (..),
    newProfileMetadata,

    -- * Relation
    Relation (..),
    newRelation,

    -- * RelationshipInterest
    RelationshipInterest (..),
    newRelationshipInterest,

    -- * RelationshipStatus
    RelationshipStatus (..),
    newRelationshipStatus,

    -- * Residence
    Residence (..),
    newResidence,

    -- * SearchDirectoryPeopleResponse
    SearchDirectoryPeopleResponse (..),
    newSearchDirectoryPeopleResponse,

    -- * SearchResponse
    SearchResponse (..),
    newSearchResponse,

    -- * SearchResult
    SearchResult (..),
    newSearchResult,

    -- * SipAddress
    SipAddress (..),
    newSipAddress,

    -- * Skill
    Skill (..),
    newSkill,

    -- * Source
    Source (..),
    newSource,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Tagline
    Tagline (..),
    newTagline,

    -- * UpdateContactGroupRequest
    UpdateContactGroupRequest (..),
    newUpdateContactGroupRequest,

    -- * UpdateContactPhotoRequest
    UpdateContactPhotoRequest (..),
    newUpdateContactPhotoRequest,

    -- * UpdateContactPhotoResponse
    UpdateContactPhotoResponse (..),
    newUpdateContactPhotoResponse,

    -- * Url
    Url (..),
    newUrl,

    -- * UserDefined
    UserDefined (..),
    newUserDefined,
  )
where

import Gogol.People.Internal.Sum
import qualified Gogol.Prelude as Core

-- | A person\'s physical address. May be a P.O. box or street address. All fields are optional.
--
-- /See:/ 'newAddress' smart constructor.
data Address = Address
  { -- | The city of the address.
    city :: (Core.Maybe Core.Text),
    -- | The country of the address.
    country :: (Core.Maybe Core.Text),
    -- | The <http://www.iso.org/iso/country_codes.htm ISO 3166-1 alpha-2> country code of the address.
    countryCode :: (Core.Maybe Core.Text),
    -- | The extended address of the address; for example, the apartment number.
    extendedAddress :: (Core.Maybe Core.Text),
    -- | Output only. The type of the address translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | The unstructured value of the address. If this is not set by the user it will be automatically constructed from structured values.
    formattedValue :: (Core.Maybe Core.Text),
    -- | Metadata about the address.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The P.O. box of the address.
    poBox :: (Core.Maybe Core.Text),
    -- | The postal code of the address.
    postalCode :: (Core.Maybe Core.Text),
    -- | The region of the address; for example, the state or province.
    region :: (Core.Maybe Core.Text),
    -- | The street address.
    streetAddress :: (Core.Maybe Core.Text),
    -- | The type of the address. The type can be custom or one of these predefined values: * @home@ * @work@ * @other@
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Address' with the minimum fields required to make a request.
newAddress ::
  Address
newAddress =
  Address
    { city = Core.Nothing,
      country = Core.Nothing,
      countryCode = Core.Nothing,
      extendedAddress = Core.Nothing,
      formattedType = Core.Nothing,
      formattedValue = Core.Nothing,
      metadata = Core.Nothing,
      poBox = Core.Nothing,
      postalCode = Core.Nothing,
      region = Core.Nothing,
      streetAddress = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Address where
  parseJSON =
    Core.withObject
      "Address"
      ( \o ->
          Address
            Core.<$> (o Core..:? "city")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "extendedAddress")
            Core.<*> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "formattedValue")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "poBox")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "streetAddress")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Address where
  toJSON Address {..} =
    Core.object
      ( Core.catMaybes
          [ ("city" Core..=) Core.<$> city,
            ("country" Core..=) Core.<$> country,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("extendedAddress" Core..=) Core.<$> extendedAddress,
            ("formattedType" Core..=) Core.<$> formattedType,
            ("formattedValue" Core..=) Core.<$> formattedValue,
            ("metadata" Core..=) Core.<$> metadata,
            ("poBox" Core..=) Core.<$> poBox,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("region" Core..=) Core.<$> region,
            ("streetAddress" Core..=) Core.<$> streetAddress,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A person\'s age range.
--
-- /See:/ 'newAgeRangeType' smart constructor.
data AgeRangeType = AgeRangeType
  { -- | The age range.
    ageRange :: (Core.Maybe AgeRangeType_AgeRange),
    -- | Metadata about the age range.
    metadata :: (Core.Maybe FieldMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AgeRangeType' with the minimum fields required to make a request.
newAgeRangeType ::
  AgeRangeType
newAgeRangeType =
  AgeRangeType {ageRange = Core.Nothing, metadata = Core.Nothing}

instance Core.FromJSON AgeRangeType where
  parseJSON =
    Core.withObject
      "AgeRangeType"
      ( \o ->
          AgeRangeType
            Core.<$> (o Core..:? "ageRange")
            Core.<*> (o Core..:? "metadata")
      )

instance Core.ToJSON AgeRangeType where
  toJSON AgeRangeType {..} =
    Core.object
      ( Core.catMaybes
          [ ("ageRange" Core..=) Core.<$> ageRange,
            ("metadata" Core..=) Core.<$> metadata
          ]
      )

-- | A request to create a batch of contacts.
--
-- /See:/ 'newBatchCreateContactsRequest' smart constructor.
data BatchCreateContactsRequest = BatchCreateContactsRequest
  { -- | Required. The contact to create. Allows up to 200 contacts in a single request.
    contacts :: (Core.Maybe [ContactToCreate]),
    -- | Required. A field mask to restrict which fields on each person are returned in the response. Multiple fields can be specified by separating them with commas. If read mask is left empty, the post-mutate-get is skipped and no data will be returned in the response. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    readMask :: (Core.Maybe Core.FieldMask),
    -- | Optional. A mask of what source types to return in the post mutate read. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [BatchCreateContactsRequest_SourcesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateContactsRequest' with the minimum fields required to make a request.
newBatchCreateContactsRequest ::
  BatchCreateContactsRequest
newBatchCreateContactsRequest =
  BatchCreateContactsRequest
    { contacts = Core.Nothing,
      readMask = Core.Nothing,
      sources = Core.Nothing
    }

instance Core.FromJSON BatchCreateContactsRequest where
  parseJSON =
    Core.withObject
      "BatchCreateContactsRequest"
      ( \o ->
          BatchCreateContactsRequest
            Core.<$> (o Core..:? "contacts")
            Core.<*> (o Core..:? "readMask")
            Core.<*> (o Core..:? "sources")
      )

instance Core.ToJSON BatchCreateContactsRequest where
  toJSON BatchCreateContactsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contacts" Core..=) Core.<$> contacts,
            ("readMask" Core..=) Core.<$> readMask,
            ("sources" Core..=) Core.<$> sources
          ]
      )

-- | If not successful, returns BatchCreateContactsErrorDetails which contains a list of errors for each invalid contact. The response to a request to create a batch of contacts.
--
-- /See:/ 'newBatchCreateContactsResponse' smart constructor.
newtype BatchCreateContactsResponse = BatchCreateContactsResponse
  { -- | The contacts that were created, unless the request @read_mask@ is empty.
    createdPeople :: (Core.Maybe [PersonResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateContactsResponse' with the minimum fields required to make a request.
newBatchCreateContactsResponse ::
  BatchCreateContactsResponse
newBatchCreateContactsResponse =
  BatchCreateContactsResponse {createdPeople = Core.Nothing}

instance Core.FromJSON BatchCreateContactsResponse where
  parseJSON =
    Core.withObject
      "BatchCreateContactsResponse"
      ( \o ->
          BatchCreateContactsResponse
            Core.<$> (o Core..:? "createdPeople")
      )

instance Core.ToJSON BatchCreateContactsResponse where
  toJSON BatchCreateContactsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("createdPeople" Core..=) Core.<$> createdPeople]
      )

-- | A request to delete a batch of existing contacts.
--
-- /See:/ 'newBatchDeleteContactsRequest' smart constructor.
newtype BatchDeleteContactsRequest = BatchDeleteContactsRequest
  { -- | Required. The resource names of the contact to delete. It\'s repeatable. Allows up to 500 resource names in a single request.
    resourceNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeleteContactsRequest' with the minimum fields required to make a request.
newBatchDeleteContactsRequest ::
  BatchDeleteContactsRequest
newBatchDeleteContactsRequest =
  BatchDeleteContactsRequest {resourceNames = Core.Nothing}

instance Core.FromJSON BatchDeleteContactsRequest where
  parseJSON =
    Core.withObject
      "BatchDeleteContactsRequest"
      ( \o ->
          BatchDeleteContactsRequest
            Core.<$> (o Core..:? "resourceNames")
      )

instance Core.ToJSON BatchDeleteContactsRequest where
  toJSON BatchDeleteContactsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("resourceNames" Core..=) Core.<$> resourceNames]
      )

-- | The response to a batch get contact groups request.
--
-- /See:/ 'newBatchGetContactGroupsResponse' smart constructor.
newtype BatchGetContactGroupsResponse = BatchGetContactGroupsResponse
  { -- | The list of responses for each requested contact group resource.
    responses :: (Core.Maybe [ContactGroupResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetContactGroupsResponse' with the minimum fields required to make a request.
newBatchGetContactGroupsResponse ::
  BatchGetContactGroupsResponse
newBatchGetContactGroupsResponse =
  BatchGetContactGroupsResponse {responses = Core.Nothing}

instance Core.FromJSON BatchGetContactGroupsResponse where
  parseJSON =
    Core.withObject
      "BatchGetContactGroupsResponse"
      ( \o ->
          BatchGetContactGroupsResponse
            Core.<$> (o Core..:? "responses")
      )

instance Core.ToJSON BatchGetContactGroupsResponse where
  toJSON BatchGetContactGroupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("responses" Core..=) Core.<$> responses]
      )

-- | A request to update a batch of contacts.
--
-- /See:/ 'newBatchUpdateContactsRequest' smart constructor.
data BatchUpdateContactsRequest = BatchUpdateContactsRequest
  { -- | Required. A map of resource names to the person data to be updated. Allows up to 200 contacts in a single request.
    contacts :: (Core.Maybe BatchUpdateContactsRequest_Contacts),
    -- | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. If read mask is left empty, the post-mutate-get is skipped and no data will be returned in the response. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    readMask :: (Core.Maybe Core.FieldMask),
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [BatchUpdateContactsRequest_SourcesItem]),
    -- | Required. A field mask to restrict which fields on the person are updated. Multiple fields can be specified by separating them with commas. All specified fields will be replaced, or cleared if left empty for each person. Valid values are: * addresses * biographies * birthdays * calendarUrls * clientData * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * relations * sipAddresses * urls * userDefined
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateContactsRequest' with the minimum fields required to make a request.
newBatchUpdateContactsRequest ::
  BatchUpdateContactsRequest
newBatchUpdateContactsRequest =
  BatchUpdateContactsRequest
    { contacts = Core.Nothing,
      readMask = Core.Nothing,
      sources = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON BatchUpdateContactsRequest where
  parseJSON =
    Core.withObject
      "BatchUpdateContactsRequest"
      ( \o ->
          BatchUpdateContactsRequest
            Core.<$> (o Core..:? "contacts")
            Core.<*> (o Core..:? "readMask")
            Core.<*> (o Core..:? "sources")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON BatchUpdateContactsRequest where
  toJSON BatchUpdateContactsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contacts" Core..=) Core.<$> contacts,
            ("readMask" Core..=) Core.<$> readMask,
            ("sources" Core..=) Core.<$> sources,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Required. A map of resource names to the person data to be updated. Allows up to 200 contacts in a single request.
--
-- /See:/ 'newBatchUpdateContactsRequest_Contacts' smart constructor.
newtype BatchUpdateContactsRequest_Contacts = BatchUpdateContactsRequest_Contacts
  { -- |
    additional :: (Core.HashMap Core.Text Person)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateContactsRequest_Contacts' with the minimum fields required to make a request.
newBatchUpdateContactsRequest_Contacts ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Person ->
  BatchUpdateContactsRequest_Contacts
newBatchUpdateContactsRequest_Contacts additional =
  BatchUpdateContactsRequest_Contacts {additional = additional}

instance
  Core.FromJSON
    BatchUpdateContactsRequest_Contacts
  where
  parseJSON =
    Core.withObject
      "BatchUpdateContactsRequest_Contacts"
      ( \o ->
          BatchUpdateContactsRequest_Contacts
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    BatchUpdateContactsRequest_Contacts
  where
  toJSON BatchUpdateContactsRequest_Contacts {..} =
    Core.toJSON additional

-- | If not successful, returns BatchUpdateContactsErrorDetails, a list of errors corresponding to each contact. The response to a request to update a batch of contacts.
--
-- /See:/ 'newBatchUpdateContactsResponse' smart constructor.
newtype BatchUpdateContactsResponse = BatchUpdateContactsResponse
  { -- | A map of resource names to the contacts that were updated, unless the request @read_mask@ is empty.
    updateResult :: (Core.Maybe BatchUpdateContactsResponse_UpdateResult)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateContactsResponse' with the minimum fields required to make a request.
newBatchUpdateContactsResponse ::
  BatchUpdateContactsResponse
newBatchUpdateContactsResponse =
  BatchUpdateContactsResponse {updateResult = Core.Nothing}

instance Core.FromJSON BatchUpdateContactsResponse where
  parseJSON =
    Core.withObject
      "BatchUpdateContactsResponse"
      ( \o ->
          BatchUpdateContactsResponse
            Core.<$> (o Core..:? "updateResult")
      )

instance Core.ToJSON BatchUpdateContactsResponse where
  toJSON BatchUpdateContactsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("updateResult" Core..=) Core.<$> updateResult]
      )

-- | A map of resource names to the contacts that were updated, unless the request @read_mask@ is empty.
--
-- /See:/ 'newBatchUpdateContactsResponse_UpdateResult' smart constructor.
newtype BatchUpdateContactsResponse_UpdateResult = BatchUpdateContactsResponse_UpdateResult
  { -- |
    additional :: (Core.HashMap Core.Text PersonResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateContactsResponse_UpdateResult' with the minimum fields required to make a request.
newBatchUpdateContactsResponse_UpdateResult ::
  -- |  See 'additional'.
  Core.HashMap Core.Text PersonResponse ->
  BatchUpdateContactsResponse_UpdateResult
newBatchUpdateContactsResponse_UpdateResult additional =
  BatchUpdateContactsResponse_UpdateResult {additional = additional}

instance
  Core.FromJSON
    BatchUpdateContactsResponse_UpdateResult
  where
  parseJSON =
    Core.withObject
      "BatchUpdateContactsResponse_UpdateResult"
      ( \o ->
          BatchUpdateContactsResponse_UpdateResult
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    BatchUpdateContactsResponse_UpdateResult
  where
  toJSON BatchUpdateContactsResponse_UpdateResult {..} =
    Core.toJSON additional

-- | A person\'s short biography.
--
-- /See:/ 'newBiography' smart constructor.
data Biography = Biography
  { -- | The content type of the biography.
    contentType :: (Core.Maybe Biography_ContentType),
    -- | Metadata about the biography.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The short biography.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Biography' with the minimum fields required to make a request.
newBiography ::
  Biography
newBiography =
  Biography
    { contentType = Core.Nothing,
      metadata = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON Biography where
  parseJSON =
    Core.withObject
      "Biography"
      ( \o ->
          Biography
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Biography where
  toJSON Biography {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s birthday. At least one of the @date@ and @text@ fields are specified. The @date@ and @text@ fields typically represent the same date, but are not guaranteed to. Clients should always set the @date@ field when mutating birthdays.
--
-- /See:/ 'newBirthday' smart constructor.
data Birthday = Birthday
  { -- | The structured date of the birthday.
    date :: (Core.Maybe Date),
    -- | Metadata about the birthday.
    metadata :: (Core.Maybe FieldMetadata),
    -- | Prefer to use the @date@ field if set. A free-form string representing the user\'s birthday. This value is not validated.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Birthday' with the minimum fields required to make a request.
newBirthday ::
  Birthday
newBirthday =
  Birthday {date = Core.Nothing, metadata = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON Birthday where
  parseJSON =
    Core.withObject
      "Birthday"
      ( \o ->
          Birthday
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Birthday where
  toJSON Birthday {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("metadata" Core..=) Core.<$> metadata,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | __DEPRECATED__: No data will be returned A person\'s bragging rights.
--
-- /See:/ 'newBraggingRights' smart constructor.
data BraggingRights = BraggingRights
  { -- | Metadata about the bragging rights.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The bragging rights; for example, @climbed mount everest@.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BraggingRights' with the minimum fields required to make a request.
newBraggingRights ::
  BraggingRights
newBraggingRights =
  BraggingRights {metadata = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON BraggingRights where
  parseJSON =
    Core.withObject
      "BraggingRights"
      ( \o ->
          BraggingRights
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON BraggingRights where
  toJSON BraggingRights {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s calendar URL.
--
-- /See:/ 'newCalendarUrl' smart constructor.
data CalendarUrl = CalendarUrl
  { -- | Output only. The type of the calendar URL translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the calendar URL.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the calendar URL. The type can be custom or one of these predefined values: * @home@ * @freeBusy@ * @work@
    type' :: (Core.Maybe Core.Text),
    -- | The calendar URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CalendarUrl' with the minimum fields required to make a request.
newCalendarUrl ::
  CalendarUrl
newCalendarUrl =
  CalendarUrl
    { formattedType = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON CalendarUrl where
  parseJSON =
    Core.withObject
      "CalendarUrl"
      ( \o ->
          CalendarUrl
            Core.<$> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON CalendarUrl where
  toJSON CalendarUrl {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Arbitrary client data that is populated by clients. Duplicate keys and values are allowed.
--
-- /See:/ 'newClientData' smart constructor.
data ClientData = ClientData
  { -- | The client specified key of the client data.
    key :: (Core.Maybe Core.Text),
    -- | Metadata about the client data.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The client specified value of the client data.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClientData' with the minimum fields required to make a request.
newClientData ::
  ClientData
newClientData =
  ClientData {key = Core.Nothing, metadata = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ClientData where
  parseJSON =
    Core.withObject
      "ClientData"
      ( \o ->
          ClientData
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ClientData where
  toJSON ClientData {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A contact group.
--
-- /See:/ 'newContactGroup' smart constructor.
data ContactGroup = ContactGroup
  { -- | The group\'s client data.
    clientData :: (Core.Maybe [GroupClientData]),
    -- | The <https://en.wikipedia.org/wiki/HTTP_ETag HTTP entity tag> of the resource. Used for web cache validation.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. The name translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale for system groups names. Group names set by the owner are the same as name.
    formattedName :: (Core.Maybe Core.Text),
    -- | Output only. The contact group type.
    groupType :: (Core.Maybe ContactGroup_GroupType),
    -- | Output only. The total number of contacts in the group irrespective of max members in specified in the request.
    memberCount :: (Core.Maybe Core.Int32),
    -- | Output only. The list of contact person resource names that are members of the contact group. The field is only populated for GET requests and will only return as many members as @maxMembers@ in the get request.
    memberResourceNames :: (Core.Maybe [Core.Text]),
    -- | Output only. Metadata about the contact group.
    metadata :: (Core.Maybe ContactGroupMetadata),
    -- | The contact group name set by the group owner or a system provided name for system groups. For </people/api/rest/v1/contactGroups/create contactGroups.create> or </people/api/rest/v1/contactGroups/update contactGroups.update> the name must be unique to the users contact groups. Attempting to create a group with a duplicate name will return a HTTP 409 error.
    name :: (Core.Maybe Core.Text),
    -- | The resource name for the contact group, assigned by the server. An ASCII string, in the form of @contactGroups\/{contact_group_id}@.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContactGroup' with the minimum fields required to make a request.
newContactGroup ::
  ContactGroup
newContactGroup =
  ContactGroup
    { clientData = Core.Nothing,
      etag = Core.Nothing,
      formattedName = Core.Nothing,
      groupType = Core.Nothing,
      memberCount = Core.Nothing,
      memberResourceNames = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      resourceName = Core.Nothing
    }

instance Core.FromJSON ContactGroup where
  parseJSON =
    Core.withObject
      "ContactGroup"
      ( \o ->
          ContactGroup
            Core.<$> (o Core..:? "clientData")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "formattedName")
            Core.<*> (o Core..:? "groupType")
            Core.<*> (o Core..:? "memberCount")
            Core.<*> (o Core..:? "memberResourceNames")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "resourceName")
      )

instance Core.ToJSON ContactGroup where
  toJSON ContactGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientData" Core..=) Core.<$> clientData,
            ("etag" Core..=) Core.<$> etag,
            ("formattedName" Core..=) Core.<$> formattedName,
            ("groupType" Core..=) Core.<$> groupType,
            ("memberCount" Core..=) Core.<$> memberCount,
            ("memberResourceNames" Core..=)
              Core.<$> memberResourceNames,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("resourceName" Core..=) Core.<$> resourceName
          ]
      )

-- | A Google contact group membership.
--
-- /See:/ 'newContactGroupMembership' smart constructor.
data ContactGroupMembership = ContactGroupMembership
  { -- | Output only. The contact group ID for the contact group membership.
    contactGroupId :: (Core.Maybe Core.Text),
    -- | The resource name for the contact group, assigned by the server. An ASCII string, in the form of @contactGroups\/{contact_group_id}@. Only contact/group/resource_name can be used for modifying memberships. Any contact group membership can be removed, but only user group or \"myContacts\" or \"starred\" system groups memberships can be added. A contact must always have at least one contact group membership.
    contactGroupResourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContactGroupMembership' with the minimum fields required to make a request.
newContactGroupMembership ::
  ContactGroupMembership
newContactGroupMembership =
  ContactGroupMembership
    { contactGroupId = Core.Nothing,
      contactGroupResourceName = Core.Nothing
    }

instance Core.FromJSON ContactGroupMembership where
  parseJSON =
    Core.withObject
      "ContactGroupMembership"
      ( \o ->
          ContactGroupMembership
            Core.<$> (o Core..:? "contactGroupId")
            Core.<*> (o Core..:? "contactGroupResourceName")
      )

instance Core.ToJSON ContactGroupMembership where
  toJSON ContactGroupMembership {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactGroupId" Core..=) Core.<$> contactGroupId,
            ("contactGroupResourceName" Core..=)
              Core.<$> contactGroupResourceName
          ]
      )

-- | The metadata about a contact group.
--
-- /See:/ 'newContactGroupMetadata' smart constructor.
data ContactGroupMetadata = ContactGroupMetadata
  { -- | Output only. True if the contact group resource has been deleted. Populated only for </people/api/rest/v1/contactgroups/list ListContactGroups> requests that include a sync token.
    deleted :: (Core.Maybe Core.Bool),
    -- | Output only. The time the group was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContactGroupMetadata' with the minimum fields required to make a request.
newContactGroupMetadata ::
  ContactGroupMetadata
newContactGroupMetadata =
  ContactGroupMetadata {deleted = Core.Nothing, updateTime = Core.Nothing}

instance Core.FromJSON ContactGroupMetadata where
  parseJSON =
    Core.withObject
      "ContactGroupMetadata"
      ( \o ->
          ContactGroupMetadata
            Core.<$> (o Core..:? "deleted")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON ContactGroupMetadata where
  toJSON ContactGroupMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("deleted" Core..=) Core.<$> deleted,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The response for a specific contact group.
--
-- /See:/ 'newContactGroupResponse' smart constructor.
data ContactGroupResponse = ContactGroupResponse
  { -- | The contact group.
    contactGroup :: (Core.Maybe ContactGroup),
    -- | The original requested resource name.
    requestedResourceName :: (Core.Maybe Core.Text),
    -- | The status of the response.
    status :: (Core.Maybe Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContactGroupResponse' with the minimum fields required to make a request.
newContactGroupResponse ::
  ContactGroupResponse
newContactGroupResponse =
  ContactGroupResponse
    { contactGroup = Core.Nothing,
      requestedResourceName = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON ContactGroupResponse where
  parseJSON =
    Core.withObject
      "ContactGroupResponse"
      ( \o ->
          ContactGroupResponse
            Core.<$> (o Core..:? "contactGroup")
            Core.<*> (o Core..:? "requestedResourceName")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON ContactGroupResponse where
  toJSON ContactGroupResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactGroup" Core..=) Core.<$> contactGroup,
            ("requestedResourceName" Core..=)
              Core.<$> requestedResourceName,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | A wrapper that contains the person data to populate a newly created source.
--
-- /See:/ 'newContactToCreate' smart constructor.
newtype ContactToCreate = ContactToCreate
  { -- | Required. The person data to populate a newly created source.
    contactPerson :: (Core.Maybe Person)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContactToCreate' with the minimum fields required to make a request.
newContactToCreate ::
  ContactToCreate
newContactToCreate = ContactToCreate {contactPerson = Core.Nothing}

instance Core.FromJSON ContactToCreate where
  parseJSON =
    Core.withObject
      "ContactToCreate"
      ( \o ->
          ContactToCreate
            Core.<$> (o Core..:? "contactPerson")
      )

instance Core.ToJSON ContactToCreate where
  toJSON ContactToCreate {..} =
    Core.object
      ( Core.catMaybes
          [("contactPerson" Core..=) Core.<$> contactPerson]
      )

-- | A request to copy an \"Other contact\" to my contacts group.
--
-- /See:/ 'newCopyOtherContactToMyContactsGroupRequest' smart constructor.
data CopyOtherContactToMyContactsGroupRequest = CopyOtherContactToMyContactsGroupRequest
  { -- | Required. A field mask to restrict which fields are copied into the new contact. Valid values are: * emailAddresses * names * phoneNumbers
    copyMask :: (Core.Maybe Core.FieldMask),
    -- | Optional. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Defaults to the copy mask with metadata and membership fields if not set. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    readMask :: (Core.Maybe Core.FieldMask),
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [CopyOtherContactToMyContactsGroupRequest_SourcesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyOtherContactToMyContactsGroupRequest' with the minimum fields required to make a request.
newCopyOtherContactToMyContactsGroupRequest ::
  CopyOtherContactToMyContactsGroupRequest
newCopyOtherContactToMyContactsGroupRequest =
  CopyOtherContactToMyContactsGroupRequest
    { copyMask = Core.Nothing,
      readMask = Core.Nothing,
      sources = Core.Nothing
    }

instance
  Core.FromJSON
    CopyOtherContactToMyContactsGroupRequest
  where
  parseJSON =
    Core.withObject
      "CopyOtherContactToMyContactsGroupRequest"
      ( \o ->
          CopyOtherContactToMyContactsGroupRequest
            Core.<$> (o Core..:? "copyMask")
            Core.<*> (o Core..:? "readMask")
            Core.<*> (o Core..:? "sources")
      )

instance
  Core.ToJSON
    CopyOtherContactToMyContactsGroupRequest
  where
  toJSON CopyOtherContactToMyContactsGroupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("copyMask" Core..=) Core.<$> copyMask,
            ("readMask" Core..=) Core.<$> readMask,
            ("sources" Core..=) Core.<$> sources
          ]
      )

-- | A person\'s cover photo. A large image shown on the person\'s profile page that represents who they are or what they care about.
--
-- /See:/ 'newCoverPhoto' smart constructor.
data CoverPhoto = CoverPhoto
  { -- | True if the cover photo is the default cover photo; false if the cover photo is a user-provided cover photo.
    default' :: (Core.Maybe Core.Bool),
    -- | Metadata about the cover photo.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The URL of the cover photo.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CoverPhoto' with the minimum fields required to make a request.
newCoverPhoto ::
  CoverPhoto
newCoverPhoto =
  CoverPhoto
    { default' = Core.Nothing,
      metadata = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON CoverPhoto where
  parseJSON =
    Core.withObject
      "CoverPhoto"
      ( \o ->
          CoverPhoto
            Core.<$> (o Core..:? "default")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON CoverPhoto where
  toJSON CoverPhoto {..} =
    Core.object
      ( Core.catMaybes
          [ ("default" Core..=) Core.<$> default',
            ("metadata" Core..=) Core.<$> metadata,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A request to create a new contact group.
--
-- /See:/ 'newCreateContactGroupRequest' smart constructor.
data CreateContactGroupRequest = CreateContactGroupRequest
  { -- | Required. The contact group to create.
    contactGroup :: (Core.Maybe ContactGroup),
    -- | Optional. A field mask to restrict which fields on the group are returned. Defaults to @metadata@, @groupType@, and @name@ if not set or set to empty. Valid fields are: * clientData * groupType * metadata * name
    readGroupFields :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateContactGroupRequest' with the minimum fields required to make a request.
newCreateContactGroupRequest ::
  CreateContactGroupRequest
newCreateContactGroupRequest =
  CreateContactGroupRequest
    { contactGroup = Core.Nothing,
      readGroupFields = Core.Nothing
    }

instance Core.FromJSON CreateContactGroupRequest where
  parseJSON =
    Core.withObject
      "CreateContactGroupRequest"
      ( \o ->
          CreateContactGroupRequest
            Core.<$> (o Core..:? "contactGroup")
            Core.<*> (o Core..:? "readGroupFields")
      )

instance Core.ToJSON CreateContactGroupRequest where
  toJSON CreateContactGroupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactGroup" Core..=) Core.<$> contactGroup,
            ("readGroupFields" Core..=)
              Core.<$> readGroupFields
          ]
      )

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | The response for deleting a contact\'s photo.
--
-- /See:/ 'newDeleteContactPhotoResponse' smart constructor.
newtype DeleteContactPhotoResponse = DeleteContactPhotoResponse
  { -- | The updated person, if person_fields is set in the DeleteContactPhotoRequest; otherwise this will be unset.
    person :: (Core.Maybe Person)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteContactPhotoResponse' with the minimum fields required to make a request.
newDeleteContactPhotoResponse ::
  DeleteContactPhotoResponse
newDeleteContactPhotoResponse =
  DeleteContactPhotoResponse {person = Core.Nothing}

instance Core.FromJSON DeleteContactPhotoResponse where
  parseJSON =
    Core.withObject
      "DeleteContactPhotoResponse"
      ( \o ->
          DeleteContactPhotoResponse
            Core.<$> (o Core..:? "person")
      )

instance Core.ToJSON DeleteContactPhotoResponse where
  toJSON DeleteContactPhotoResponse {..} =
    Core.object
      (Core.catMaybes [("person" Core..=) Core.<$> person])

-- | A Google Workspace Domain membership.
--
-- /See:/ 'newDomainMembership' smart constructor.
newtype DomainMembership = DomainMembership
  { -- | True if the person is in the viewer\'s Google Workspace domain.
    inViewerDomain :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DomainMembership' with the minimum fields required to make a request.
newDomainMembership ::
  DomainMembership
newDomainMembership = DomainMembership {inViewerDomain = Core.Nothing}

instance Core.FromJSON DomainMembership where
  parseJSON =
    Core.withObject
      "DomainMembership"
      ( \o ->
          DomainMembership
            Core.<$> (o Core..:? "inViewerDomain")
      )

instance Core.ToJSON DomainMembership where
  toJSON DomainMembership {..} =
    Core.object
      ( Core.catMaybes
          [("inViewerDomain" Core..=) Core.<$> inViewerDomain]
      )

-- | A person\'s email address.
--
-- /See:/ 'newEmailAddress' smart constructor.
data EmailAddress = EmailAddress
  { -- | The display name of the email.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The type of the email address translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the email address.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the email address. The type can be custom or one of these predefined values: * @home@ * @work@ * @other@
    type' :: (Core.Maybe Core.Text),
    -- | The email address.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmailAddress' with the minimum fields required to make a request.
newEmailAddress ::
  EmailAddress
newEmailAddress =
  EmailAddress
    { displayName = Core.Nothing,
      formattedType = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON EmailAddress where
  parseJSON =
    Core.withObject
      "EmailAddress"
      ( \o ->
          EmailAddress
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON EmailAddress where
  toJSON EmailAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | An event related to the person.
--
-- /See:/ 'newEvent' smart constructor.
data Event = Event
  { -- | The date of the event.
    date :: (Core.Maybe Date),
    -- | Output only. The type of the event translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the event.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the event. The type can be custom or one of these predefined values: * @anniversary@ * @other@
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
newEvent ::
  Event
newEvent =
  Event
    { date = Core.Nothing,
      formattedType = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Event where
  parseJSON =
    Core.withObject
      "Event"
      ( \o ->
          Event
            Core.<$> (o Core..:? "date")
            Core.<*> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Event where
  toJSON Event {..} =
    Core.object
      ( Core.catMaybes
          [ ("date" Core..=) Core.<$> date,
            ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | An identifier from an external entity related to the person.
--
-- /See:/ 'newExternalId' smart constructor.
data ExternalId = ExternalId
  { -- | Output only. The type of the event translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the external ID.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the external ID. The type can be custom or one of these predefined values: * @account@ * @customer@ * @loginId@ * @network@ * @organization@
    type' :: (Core.Maybe Core.Text),
    -- | The value of the external ID.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExternalId' with the minimum fields required to make a request.
newExternalId ::
  ExternalId
newExternalId =
  ExternalId
    { formattedType = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON ExternalId where
  parseJSON =
    Core.withObject
      "ExternalId"
      ( \o ->
          ExternalId
            Core.<$> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ExternalId where
  toJSON ExternalId {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Metadata about a field.
--
-- /See:/ 'newFieldMetadata' smart constructor.
data FieldMetadata = FieldMetadata
  { -- | Output only. True if the field is the primary field for all sources in the person. Each person will have at most one field with @primary@ set to true.
    primary :: (Core.Maybe Core.Bool),
    -- | The source of the field.
    source :: (Core.Maybe Source),
    -- | True if the field is the primary field for the source. Each source must have at most one field with @source_primary@ set to true.
    sourcePrimary :: (Core.Maybe Core.Bool),
    -- | Output only. True if the field is verified; false if the field is unverified. A verified field is typically a name, email address, phone number, or website that has been confirmed to be owned by the person.
    verified :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldMetadata' with the minimum fields required to make a request.
newFieldMetadata ::
  FieldMetadata
newFieldMetadata =
  FieldMetadata
    { primary = Core.Nothing,
      source = Core.Nothing,
      sourcePrimary = Core.Nothing,
      verified = Core.Nothing
    }

instance Core.FromJSON FieldMetadata where
  parseJSON =
    Core.withObject
      "FieldMetadata"
      ( \o ->
          FieldMetadata
            Core.<$> (o Core..:? "primary")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "sourcePrimary")
            Core.<*> (o Core..:? "verified")
      )

instance Core.ToJSON FieldMetadata where
  toJSON FieldMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("primary" Core..=) Core.<$> primary,
            ("source" Core..=) Core.<$> source,
            ("sourcePrimary" Core..=) Core.<$> sourcePrimary,
            ("verified" Core..=) Core.<$> verified
          ]
      )

-- | The name that should be used to sort the person in a list.
--
-- /See:/ 'newFileAs' smart constructor.
data FileAs = FileAs
  { -- | Metadata about the file-as.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The file-as value
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileAs' with the minimum fields required to make a request.
newFileAs ::
  FileAs
newFileAs = FileAs {metadata = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON FileAs where
  parseJSON =
    Core.withObject
      "FileAs"
      ( \o ->
          FileAs
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON FileAs where
  toJSON FileAs {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s gender.
--
-- /See:/ 'newGender' smart constructor.
data Gender = Gender
  { -- | Free form text field for pronouns that should be used to address the person. Common values are: * @he@\/@him@ * @she@\/@her@ * @they@\/@them@
    addressMeAs :: (Core.Maybe Core.Text),
    -- | Output only. The value of the gender translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale. Unspecified or custom value are not localized.
    formattedValue :: (Core.Maybe Core.Text),
    -- | Metadata about the gender.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The gender for the person. The gender can be custom or one of these predefined values: * @male@ * @female@ * @unspecified@
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Gender' with the minimum fields required to make a request.
newGender ::
  Gender
newGender =
  Gender
    { addressMeAs = Core.Nothing,
      formattedValue = Core.Nothing,
      metadata = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON Gender where
  parseJSON =
    Core.withObject
      "Gender"
      ( \o ->
          Gender
            Core.<$> (o Core..:? "addressMeAs")
            Core.<*> (o Core..:? "formattedValue")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Gender where
  toJSON Gender {..} =
    Core.object
      ( Core.catMaybes
          [ ("addressMeAs" Core..=) Core.<$> addressMeAs,
            ("formattedValue" Core..=) Core.<$> formattedValue,
            ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The response to a get request for a list of people by resource name.
--
-- /See:/ 'newGetPeopleResponse' smart constructor.
newtype GetPeopleResponse = GetPeopleResponse
  { -- | The response for each requested resource name.
    responses :: (Core.Maybe [PersonResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPeopleResponse' with the minimum fields required to make a request.
newGetPeopleResponse ::
  GetPeopleResponse
newGetPeopleResponse = GetPeopleResponse {responses = Core.Nothing}

instance Core.FromJSON GetPeopleResponse where
  parseJSON =
    Core.withObject
      "GetPeopleResponse"
      ( \o ->
          GetPeopleResponse Core.<$> (o Core..:? "responses")
      )

instance Core.ToJSON GetPeopleResponse where
  toJSON GetPeopleResponse {..} =
    Core.object
      ( Core.catMaybes
          [("responses" Core..=) Core.<$> responses]
      )

-- | Arbitrary client data that is populated by clients. Duplicate keys and values are allowed.
--
-- /See:/ 'newGroupClientData' smart constructor.
data GroupClientData = GroupClientData
  { -- | The client specified key of the client data.
    key :: (Core.Maybe Core.Text),
    -- | The client specified value of the client data.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupClientData' with the minimum fields required to make a request.
newGroupClientData ::
  GroupClientData
newGroupClientData = GroupClientData {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON GroupClientData where
  parseJSON =
    Core.withObject
      "GroupClientData"
      ( \o ->
          GroupClientData
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GroupClientData where
  toJSON GroupClientData {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s instant messaging client.
--
-- /See:/ 'newImClient' smart constructor.
data ImClient = ImClient
  { -- | Output only. The protocol of the IM client formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedProtocol :: (Core.Maybe Core.Text),
    -- | Output only. The type of the IM client translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the IM client.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The protocol of the IM client. The protocol can be custom or one of these predefined values: * @aim@ * @msn@ * @yahoo@ * @skype@ * @qq@ * @googleTalk@ * @icq@ * @jabber@ * @netMeeting@
    protocol :: (Core.Maybe Core.Text),
    -- | The type of the IM client. The type can be custom or one of these predefined values: * @home@ * @work@ * @other@
    type' :: (Core.Maybe Core.Text),
    -- | The user name used in the IM client.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImClient' with the minimum fields required to make a request.
newImClient ::
  ImClient
newImClient =
  ImClient
    { formattedProtocol = Core.Nothing,
      formattedType = Core.Nothing,
      metadata = Core.Nothing,
      protocol = Core.Nothing,
      type' = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON ImClient where
  parseJSON =
    Core.withObject
      "ImClient"
      ( \o ->
          ImClient
            Core.<$> (o Core..:? "formattedProtocol")
            Core.<*> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "protocol")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON ImClient where
  toJSON ImClient {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedProtocol" Core..=)
              Core.<$> formattedProtocol,
            ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("protocol" Core..=) Core.<$> protocol,
            ("type" Core..=) Core.<$> type',
            ("username" Core..=) Core.<$> username
          ]
      )

-- | One of the person\'s interests.
--
-- /See:/ 'newInterest' smart constructor.
data Interest = Interest
  { -- | Metadata about the interest.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The interest; for example, @stargazing@.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Interest' with the minimum fields required to make a request.
newInterest ::
  Interest
newInterest = Interest {metadata = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Interest where
  parseJSON =
    Core.withObject
      "Interest"
      ( \o ->
          Interest
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Interest where
  toJSON Interest {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The response to a request for the authenticated user\'s connections.
--
-- /See:/ 'newListConnectionsResponse' smart constructor.
data ListConnectionsResponse = ListConnectionsResponse
  { -- | The list of people that the requestor is connected to.
    connections :: (Core.Maybe [Person]),
    -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A token, which can be sent as @sync_token@ to retrieve changes since the last request. Request must set @request_sync_token@ to return the sync token. When the response is paginated, only the last page will contain @nextSyncToken@.
    nextSyncToken :: (Core.Maybe Core.Text),
    -- | The total number of items in the list without pagination.
    totalItems :: (Core.Maybe Core.Int32),
    -- | __DEPRECATED__ (Please use totalItems) The total number of people in the list without pagination.
    totalPeople :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListConnectionsResponse' with the minimum fields required to make a request.
newListConnectionsResponse ::
  ListConnectionsResponse
newListConnectionsResponse =
  ListConnectionsResponse
    { connections = Core.Nothing,
      nextPageToken = Core.Nothing,
      nextSyncToken = Core.Nothing,
      totalItems = Core.Nothing,
      totalPeople = Core.Nothing
    }

instance Core.FromJSON ListConnectionsResponse where
  parseJSON =
    Core.withObject
      "ListConnectionsResponse"
      ( \o ->
          ListConnectionsResponse
            Core.<$> (o Core..:? "connections")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nextSyncToken")
            Core.<*> (o Core..:? "totalItems")
            Core.<*> (o Core..:? "totalPeople")
      )

instance Core.ToJSON ListConnectionsResponse where
  toJSON ListConnectionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("connections" Core..=) Core.<$> connections,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nextSyncToken" Core..=) Core.<$> nextSyncToken,
            ("totalItems" Core..=) Core.<$> totalItems,
            ("totalPeople" Core..=) Core.<$> totalPeople
          ]
      )

-- | The response to a list contact groups request.
--
-- /See:/ 'newListContactGroupsResponse' smart constructor.
data ListContactGroupsResponse = ListContactGroupsResponse
  { -- | The list of contact groups. Members of the contact groups are not populated.
    contactGroups :: (Core.Maybe [ContactGroup]),
    -- | The token that can be used to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The token that can be used to retrieve changes since the last request.
    nextSyncToken :: (Core.Maybe Core.Text),
    -- | The total number of items in the list without pagination.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListContactGroupsResponse' with the minimum fields required to make a request.
newListContactGroupsResponse ::
  ListContactGroupsResponse
newListContactGroupsResponse =
  ListContactGroupsResponse
    { contactGroups = Core.Nothing,
      nextPageToken = Core.Nothing,
      nextSyncToken = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON ListContactGroupsResponse where
  parseJSON =
    Core.withObject
      "ListContactGroupsResponse"
      ( \o ->
          ListContactGroupsResponse
            Core.<$> (o Core..:? "contactGroups")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nextSyncToken")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON ListContactGroupsResponse where
  toJSON ListContactGroupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactGroups" Core..=) Core.<$> contactGroups,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nextSyncToken" Core..=) Core.<$> nextSyncToken,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

-- | The response to a request for the authenticated user\'s domain directory.
--
-- /See:/ 'newListDirectoryPeopleResponse' smart constructor.
data ListDirectoryPeopleResponse = ListDirectoryPeopleResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A token, which can be sent as @sync_token@ to retrieve changes since the last request. Request must set @request_sync_token@ to return the sync token.
    nextSyncToken :: (Core.Maybe Core.Text),
    -- | The list of people in the domain directory.
    people :: (Core.Maybe [Person])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDirectoryPeopleResponse' with the minimum fields required to make a request.
newListDirectoryPeopleResponse ::
  ListDirectoryPeopleResponse
newListDirectoryPeopleResponse =
  ListDirectoryPeopleResponse
    { nextPageToken = Core.Nothing,
      nextSyncToken = Core.Nothing,
      people = Core.Nothing
    }

instance Core.FromJSON ListDirectoryPeopleResponse where
  parseJSON =
    Core.withObject
      "ListDirectoryPeopleResponse"
      ( \o ->
          ListDirectoryPeopleResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nextSyncToken")
            Core.<*> (o Core..:? "people")
      )

instance Core.ToJSON ListDirectoryPeopleResponse where
  toJSON ListDirectoryPeopleResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nextSyncToken" Core..=) Core.<$> nextSyncToken,
            ("people" Core..=) Core.<$> people
          ]
      )

-- | The response to a request for the authenticated user\'s \"Other contacts\".
--
-- /See:/ 'newListOtherContactsResponse' smart constructor.
data ListOtherContactsResponse = ListOtherContactsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A token, which can be sent as @sync_token@ to retrieve changes since the last request. Request must set @request_sync_token@ to return the sync token.
    nextSyncToken :: (Core.Maybe Core.Text),
    -- | The list of \"Other contacts\" returned as Person resources. \"Other contacts\" support a limited subset of fields. See ListOtherContactsRequest.request_mask for more detailed information.
    otherContacts :: (Core.Maybe [Person]),
    -- | The total number of other contacts in the list without pagination.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOtherContactsResponse' with the minimum fields required to make a request.
newListOtherContactsResponse ::
  ListOtherContactsResponse
newListOtherContactsResponse =
  ListOtherContactsResponse
    { nextPageToken = Core.Nothing,
      nextSyncToken = Core.Nothing,
      otherContacts = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListOtherContactsResponse where
  parseJSON =
    Core.withObject
      "ListOtherContactsResponse"
      ( \o ->
          ListOtherContactsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nextSyncToken")
            Core.<*> (o Core..:? "otherContacts")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListOtherContactsResponse where
  toJSON ListOtherContactsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nextSyncToken" Core..=) Core.<$> nextSyncToken,
            ("otherContacts" Core..=) Core.<$> otherContacts,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | A person\'s locale preference.
--
-- /See:/ 'newLocale' smart constructor.
data Locale = Locale
  { -- | Metadata about the locale.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The well-formed <https://tools.ietf.org/html/bcp47 IETF BCP 47> language tag representing the locale.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Locale' with the minimum fields required to make a request.
newLocale ::
  Locale
newLocale = Locale {metadata = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Locale where
  parseJSON =
    Core.withObject
      "Locale"
      ( \o ->
          Locale
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Locale where
  toJSON Locale {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The building identifier.
    buildingId :: (Core.Maybe Core.Text),
    -- | Whether the location is the current location.
    current :: (Core.Maybe Core.Bool),
    -- | The individual desk location.
    deskCode :: (Core.Maybe Core.Text),
    -- | The floor name or number.
    floor :: (Core.Maybe Core.Text),
    -- | The floor section in @floor_name@.
    floorSection :: (Core.Maybe Core.Text),
    -- | Metadata about the location.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the location. The type can be custom or one of these predefined values: * @desk@ * @grewUp@
    type' :: (Core.Maybe Core.Text),
    -- | The free-form value of the location.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { buildingId = Core.Nothing,
      current = Core.Nothing,
      deskCode = Core.Nothing,
      floor = Core.Nothing,
      floorSection = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "buildingId")
            Core.<*> (o Core..:? "current")
            Core.<*> (o Core..:? "deskCode")
            Core.<*> (o Core..:? "floor")
            Core.<*> (o Core..:? "floorSection")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("buildingId" Core..=) Core.<$> buildingId,
            ("current" Core..=) Core.<$> current,
            ("deskCode" Core..=) Core.<$> deskCode,
            ("floor" Core..=) Core.<$> floor,
            ("floorSection" Core..=) Core.<$> floorSection,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s membership in a group. Only contact group memberships can be modified.
--
-- /See:/ 'newMembership' smart constructor.
data Membership = Membership
  { -- | The contact group membership.
    contactGroupMembership :: (Core.Maybe ContactGroupMembership),
    -- | Output only. The domain membership.
    domainMembership :: (Core.Maybe DomainMembership),
    -- | Metadata about the membership.
    metadata :: (Core.Maybe FieldMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Membership' with the minimum fields required to make a request.
newMembership ::
  Membership
newMembership =
  Membership
    { contactGroupMembership = Core.Nothing,
      domainMembership = Core.Nothing,
      metadata = Core.Nothing
    }

instance Core.FromJSON Membership where
  parseJSON =
    Core.withObject
      "Membership"
      ( \o ->
          Membership
            Core.<$> (o Core..:? "contactGroupMembership")
            Core.<*> (o Core..:? "domainMembership")
            Core.<*> (o Core..:? "metadata")
      )

instance Core.ToJSON Membership where
  toJSON Membership {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactGroupMembership" Core..=)
              Core.<$> contactGroupMembership,
            ("domainMembership" Core..=)
              Core.<$> domainMembership,
            ("metadata" Core..=) Core.<$> metadata
          ]
      )

-- | A person\'s miscellaneous keyword.
--
-- /See:/ 'newMiscKeyword' smart constructor.
data MiscKeyword = MiscKeyword
  { -- | Output only. The type of the miscellaneous keyword translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the miscellaneous keyword.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The miscellaneous keyword type.
    type' :: (Core.Maybe MiscKeyword_Type),
    -- | The value of the miscellaneous keyword.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MiscKeyword' with the minimum fields required to make a request.
newMiscKeyword ::
  MiscKeyword
newMiscKeyword =
  MiscKeyword
    { formattedType = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON MiscKeyword where
  parseJSON =
    Core.withObject
      "MiscKeyword"
      ( \o ->
          MiscKeyword
            Core.<$> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON MiscKeyword where
  toJSON MiscKeyword {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A request to modify an existing contact group\'s members. Contacts can be removed from any group but they can only be added to a user group or \"myContacts\" or \"starred\" system groups.
--
-- /See:/ 'newModifyContactGroupMembersRequest' smart constructor.
data ModifyContactGroupMembersRequest = ModifyContactGroupMembersRequest
  { -- | Optional. The resource names of the contact people to add in the form of @people\/{person_id}@. The total number of resource names in @resource_names_to_add@ and @resource_names_to_remove@ must be less than or equal to 1000.
    resourceNamesToAdd :: (Core.Maybe [Core.Text]),
    -- | Optional. The resource names of the contact people to remove in the form of @people\/{person_id}@. The total number of resource names in @resource_names_to_add@ and @resource_names_to_remove@ must be less than or equal to 1000.
    resourceNamesToRemove :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyContactGroupMembersRequest' with the minimum fields required to make a request.
newModifyContactGroupMembersRequest ::
  ModifyContactGroupMembersRequest
newModifyContactGroupMembersRequest =
  ModifyContactGroupMembersRequest
    { resourceNamesToAdd = Core.Nothing,
      resourceNamesToRemove = Core.Nothing
    }

instance
  Core.FromJSON
    ModifyContactGroupMembersRequest
  where
  parseJSON =
    Core.withObject
      "ModifyContactGroupMembersRequest"
      ( \o ->
          ModifyContactGroupMembersRequest
            Core.<$> (o Core..:? "resourceNamesToAdd")
            Core.<*> (o Core..:? "resourceNamesToRemove")
      )

instance Core.ToJSON ModifyContactGroupMembersRequest where
  toJSON ModifyContactGroupMembersRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("resourceNamesToAdd" Core..=)
              Core.<$> resourceNamesToAdd,
            ("resourceNamesToRemove" Core..=)
              Core.<$> resourceNamesToRemove
          ]
      )

-- | The response to a modify contact group members request.
--
-- /See:/ 'newModifyContactGroupMembersResponse' smart constructor.
data ModifyContactGroupMembersResponse = ModifyContactGroupMembersResponse
  { -- | The contact people resource names that cannot be removed from their last contact group.
    canNotRemoveLastContactGroupResourceNames :: (Core.Maybe [Core.Text]),
    -- | The contact people resource names that were not found.
    notFoundResourceNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyContactGroupMembersResponse' with the minimum fields required to make a request.
newModifyContactGroupMembersResponse ::
  ModifyContactGroupMembersResponse
newModifyContactGroupMembersResponse =
  ModifyContactGroupMembersResponse
    { canNotRemoveLastContactGroupResourceNames = Core.Nothing,
      notFoundResourceNames = Core.Nothing
    }

instance
  Core.FromJSON
    ModifyContactGroupMembersResponse
  where
  parseJSON =
    Core.withObject
      "ModifyContactGroupMembersResponse"
      ( \o ->
          ModifyContactGroupMembersResponse
            Core.<$> ( o
                         Core..:? "canNotRemoveLastContactGroupResourceNames"
                     )
            Core.<*> (o Core..:? "notFoundResourceNames")
      )

instance
  Core.ToJSON
    ModifyContactGroupMembersResponse
  where
  toJSON ModifyContactGroupMembersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ( "canNotRemoveLastContactGroupResourceNames"
                Core..=
            )
              Core.<$> canNotRemoveLastContactGroupResourceNames,
            ("notFoundResourceNames" Core..=)
              Core.<$> notFoundResourceNames
          ]
      )

-- | A person\'s name. If the name is a mononym, the family name is empty.
--
-- /See:/ 'newName' smart constructor.
data Name = Name
  { -- | Output only. The display name formatted according to the locale specified by the viewer\'s account or the @Accept-Language@ HTTP header.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The display name with the last name first formatted according to the locale specified by the viewer\'s account or the @Accept-Language@ HTTP header.
    displayNameLastFirst :: (Core.Maybe Core.Text),
    -- | The family name.
    familyName :: (Core.Maybe Core.Text),
    -- | The given name.
    givenName :: (Core.Maybe Core.Text),
    -- | The honorific prefixes, such as @Mrs.@ or @Dr.@
    honorificPrefix :: (Core.Maybe Core.Text),
    -- | The honorific suffixes, such as @Jr.@
    honorificSuffix :: (Core.Maybe Core.Text),
    -- | Metadata about the name.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The middle name(s).
    middleName :: (Core.Maybe Core.Text),
    -- | The family name spelled as it sounds.
    phoneticFamilyName :: (Core.Maybe Core.Text),
    -- | The full name spelled as it sounds.
    phoneticFullName :: (Core.Maybe Core.Text),
    -- | The given name spelled as it sounds.
    phoneticGivenName :: (Core.Maybe Core.Text),
    -- | The honorific prefixes spelled as they sound.
    phoneticHonorificPrefix :: (Core.Maybe Core.Text),
    -- | The honorific suffixes spelled as they sound.
    phoneticHonorificSuffix :: (Core.Maybe Core.Text),
    -- | The middle name(s) spelled as they sound.
    phoneticMiddleName :: (Core.Maybe Core.Text),
    -- | The free form name value.
    unstructuredName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Name' with the minimum fields required to make a request.
newName ::
  Name
newName =
  Name
    { displayName = Core.Nothing,
      displayNameLastFirst = Core.Nothing,
      familyName = Core.Nothing,
      givenName = Core.Nothing,
      honorificPrefix = Core.Nothing,
      honorificSuffix = Core.Nothing,
      metadata = Core.Nothing,
      middleName = Core.Nothing,
      phoneticFamilyName = Core.Nothing,
      phoneticFullName = Core.Nothing,
      phoneticGivenName = Core.Nothing,
      phoneticHonorificPrefix = Core.Nothing,
      phoneticHonorificSuffix = Core.Nothing,
      phoneticMiddleName = Core.Nothing,
      unstructuredName = Core.Nothing
    }

instance Core.FromJSON Name where
  parseJSON =
    Core.withObject
      "Name"
      ( \o ->
          Name
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "displayNameLastFirst")
            Core.<*> (o Core..:? "familyName")
            Core.<*> (o Core..:? "givenName")
            Core.<*> (o Core..:? "honorificPrefix")
            Core.<*> (o Core..:? "honorificSuffix")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "middleName")
            Core.<*> (o Core..:? "phoneticFamilyName")
            Core.<*> (o Core..:? "phoneticFullName")
            Core.<*> (o Core..:? "phoneticGivenName")
            Core.<*> (o Core..:? "phoneticHonorificPrefix")
            Core.<*> (o Core..:? "phoneticHonorificSuffix")
            Core.<*> (o Core..:? "phoneticMiddleName")
            Core.<*> (o Core..:? "unstructuredName")
      )

instance Core.ToJSON Name where
  toJSON Name {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("displayNameLastFirst" Core..=)
              Core.<$> displayNameLastFirst,
            ("familyName" Core..=) Core.<$> familyName,
            ("givenName" Core..=) Core.<$> givenName,
            ("honorificPrefix" Core..=) Core.<$> honorificPrefix,
            ("honorificSuffix" Core..=) Core.<$> honorificSuffix,
            ("metadata" Core..=) Core.<$> metadata,
            ("middleName" Core..=) Core.<$> middleName,
            ("phoneticFamilyName" Core..=)
              Core.<$> phoneticFamilyName,
            ("phoneticFullName" Core..=)
              Core.<$> phoneticFullName,
            ("phoneticGivenName" Core..=)
              Core.<$> phoneticGivenName,
            ("phoneticHonorificPrefix" Core..=)
              Core.<$> phoneticHonorificPrefix,
            ("phoneticHonorificSuffix" Core..=)
              Core.<$> phoneticHonorificSuffix,
            ("phoneticMiddleName" Core..=)
              Core.<$> phoneticMiddleName,
            ("unstructuredName" Core..=)
              Core.<$> unstructuredName
          ]
      )

-- | A person\'s nickname.
--
-- /See:/ 'newNickname' smart constructor.
data Nickname = Nickname
  { -- | Metadata about the nickname.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the nickname.
    type' :: (Core.Maybe Nickname_Type),
    -- | The nickname.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Nickname' with the minimum fields required to make a request.
newNickname ::
  Nickname
newNickname =
  Nickname {metadata = Core.Nothing, type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Nickname where
  parseJSON =
    Core.withObject
      "Nickname"
      ( \o ->
          Nickname
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Nickname where
  toJSON Nickname {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s occupation.
--
-- /See:/ 'newOccupation' smart constructor.
data Occupation = Occupation
  { -- | Metadata about the occupation.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The occupation; for example, @carpenter@.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Occupation' with the minimum fields required to make a request.
newOccupation ::
  Occupation
newOccupation = Occupation {metadata = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Occupation where
  parseJSON =
    Core.withObject
      "Occupation"
      ( \o ->
          Occupation
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Occupation where
  toJSON Occupation {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s past or current organization. Overlapping date ranges are permitted.
--
-- /See:/ 'newOrganization' smart constructor.
data Organization = Organization
  { -- | The person\'s cost center at the organization.
    costCenter :: (Core.Maybe Core.Text),
    -- | True if the organization is the person\'s current organization; false if the organization is a past organization.
    current :: (Core.Maybe Core.Bool),
    -- | The person\'s department at the organization.
    department :: (Core.Maybe Core.Text),
    -- | The domain name associated with the organization; for example, @google.com@.
    domain :: (Core.Maybe Core.Text),
    -- | The end date when the person left the organization.
    endDate :: (Core.Maybe Date),
    -- | Output only. The type of the organization translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | The person\'s full-time equivalent millipercent within the organization (100000 = 100%).
    fullTimeEquivalentMillipercent :: (Core.Maybe Core.Int32),
    -- | The person\'s job description at the organization.
    jobDescription :: (Core.Maybe Core.Text),
    -- | The location of the organization office the person works at.
    location :: (Core.Maybe Core.Text),
    -- | Metadata about the organization.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The name of the organization.
    name :: (Core.Maybe Core.Text),
    -- | The phonetic name of the organization.
    phoneticName :: (Core.Maybe Core.Text),
    -- | The start date when the person joined the organization.
    startDate :: (Core.Maybe Date),
    -- | The symbol associated with the organization; for example, a stock ticker symbol, abbreviation, or acronym.
    symbol :: (Core.Maybe Core.Text),
    -- | The person\'s job title at the organization.
    title :: (Core.Maybe Core.Text),
    -- | The type of the organization. The type can be custom or one of these predefined values: * @work@ * @school@
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Organization' with the minimum fields required to make a request.
newOrganization ::
  Organization
newOrganization =
  Organization
    { costCenter = Core.Nothing,
      current = Core.Nothing,
      department = Core.Nothing,
      domain = Core.Nothing,
      endDate = Core.Nothing,
      formattedType = Core.Nothing,
      fullTimeEquivalentMillipercent = Core.Nothing,
      jobDescription = Core.Nothing,
      location = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      phoneticName = Core.Nothing,
      startDate = Core.Nothing,
      symbol = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Organization where
  parseJSON =
    Core.withObject
      "Organization"
      ( \o ->
          Organization
            Core.<$> (o Core..:? "costCenter")
            Core.<*> (o Core..:? "current")
            Core.<*> (o Core..:? "department")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "endDate")
            Core.<*> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "fullTimeEquivalentMillipercent")
            Core.<*> (o Core..:? "jobDescription")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "phoneticName")
            Core.<*> (o Core..:? "startDate")
            Core.<*> (o Core..:? "symbol")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Organization where
  toJSON Organization {..} =
    Core.object
      ( Core.catMaybes
          [ ("costCenter" Core..=) Core.<$> costCenter,
            ("current" Core..=) Core.<$> current,
            ("department" Core..=) Core.<$> department,
            ("domain" Core..=) Core.<$> domain,
            ("endDate" Core..=) Core.<$> endDate,
            ("formattedType" Core..=) Core.<$> formattedType,
            ("fullTimeEquivalentMillipercent" Core..=)
              Core.<$> fullTimeEquivalentMillipercent,
            ("jobDescription" Core..=) Core.<$> jobDescription,
            ("location" Core..=) Core.<$> location,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("phoneticName" Core..=) Core.<$> phoneticName,
            ("startDate" Core..=) Core.<$> startDate,
            ("symbol" Core..=) Core.<$> symbol,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Information about a person merged from various data sources such as the authenticated user\'s contacts and profile data. Most fields can have multiple items. The items in a field have no guaranteed order, but each non-empty field is guaranteed to have exactly one field with @metadata.primary@ set to true.
--
-- /See:/ 'newPerson' smart constructor.
data Person = Person
  { -- | The person\'s street addresses.
    addresses :: (Core.Maybe [Address]),
    -- | Output only. __DEPRECATED__ (Please use @person.ageRanges@ instead) The person\'s age range.
    ageRange :: (Core.Maybe Person_AgeRange),
    -- | Output only. The person\'s age ranges.
    ageRanges :: (Core.Maybe [AgeRangeType]),
    -- | The person\'s biographies. This field is a singleton for contact sources.
    biographies :: (Core.Maybe [Biography]),
    -- | The person\'s birthdays. This field is a singleton for contact sources.
    birthdays :: (Core.Maybe [Birthday]),
    -- | __DEPRECATED__: No data will be returned The person\'s bragging rights.
    braggingRights :: (Core.Maybe [BraggingRights]),
    -- | The person\'s calendar URLs.
    calendarUrls :: (Core.Maybe [CalendarUrl]),
    -- | The person\'s client data.
    clientData :: (Core.Maybe [ClientData]),
    -- | Output only. The person\'s cover photos.
    coverPhotos :: (Core.Maybe [CoverPhoto]),
    -- | The person\'s email addresses. For @people.connections.list@ and @otherContacts.list@ the number of email addresses is limited to 100. If a Person has more email addresses the entire set can be obtained by calling GetPeople.
    emailAddresses :: (Core.Maybe [EmailAddress]),
    -- | The <https://en.wikipedia.org/wiki/HTTP_ETag HTTP entity tag> of the resource. Used for web cache validation.
    etag :: (Core.Maybe Core.Text),
    -- | The person\'s events.
    events :: (Core.Maybe [Event]),
    -- | The person\'s external IDs.
    externalIds :: (Core.Maybe [ExternalId]),
    -- | The person\'s file-ases.
    fileAses :: (Core.Maybe [FileAs]),
    -- | The person\'s genders. This field is a singleton for contact sources.
    genders :: (Core.Maybe [Gender]),
    -- | The person\'s instant messaging clients.
    imClients :: (Core.Maybe [ImClient]),
    -- | The person\'s interests.
    interests :: (Core.Maybe [Interest]),
    -- | The person\'s locale preferences.
    locales :: (Core.Maybe [Locale]),
    -- | The person\'s locations.
    locations :: (Core.Maybe [Location]),
    -- | The person\'s group memberships.
    memberships :: (Core.Maybe [Membership]),
    -- | Output only. Metadata about the person.
    metadata :: (Core.Maybe PersonMetadata),
    -- | The person\'s miscellaneous keywords.
    miscKeywords :: (Core.Maybe [MiscKeyword]),
    -- | The person\'s names. This field is a singleton for contact sources.
    names :: (Core.Maybe [Name]),
    -- | The person\'s nicknames.
    nicknames :: (Core.Maybe [Nickname]),
    -- | The person\'s occupations.
    occupations :: (Core.Maybe [Occupation]),
    -- | The person\'s past or current organizations.
    organizations :: (Core.Maybe [Organization]),
    -- | The person\'s phone numbers. For @people.connections.list@ and @otherContacts.list@ the number of phone numbers is limited to 100. If a Person has more phone numbers the entire set can be obtained by calling GetPeople.
    phoneNumbers :: (Core.Maybe [PhoneNumber]),
    -- | Output only. The person\'s photos.
    photos :: (Core.Maybe [Photo]),
    -- | The person\'s relations.
    relations :: (Core.Maybe [Relation]),
    -- | Output only. __DEPRECATED__: No data will be returned The person\'s relationship interests.
    relationshipInterests :: (Core.Maybe [RelationshipInterest]),
    -- | Output only. __DEPRECATED__: No data will be returned The person\'s relationship statuses.
    relationshipStatuses :: (Core.Maybe [RelationshipStatus]),
    -- | __DEPRECATED__: (Please use @person.locations@ instead) The person\'s residences.
    residences :: (Core.Maybe [Residence]),
    -- | The resource name for the person, assigned by the server. An ASCII string in the form of @people\/{person_id}@.
    resourceName :: (Core.Maybe Core.Text),
    -- | The person\'s SIP addresses.
    sipAddresses :: (Core.Maybe [SipAddress]),
    -- | The person\'s skills.
    skills :: (Core.Maybe [Skill]),
    -- | Output only. __DEPRECATED__: No data will be returned The person\'s taglines.
    taglines :: (Core.Maybe [Tagline]),
    -- | The person\'s associated URLs.
    urls :: (Core.Maybe [Url]),
    -- | The person\'s user defined data.
    userDefined :: (Core.Maybe [UserDefined])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
newPerson ::
  Person
newPerson =
  Person
    { addresses = Core.Nothing,
      ageRange = Core.Nothing,
      ageRanges = Core.Nothing,
      biographies = Core.Nothing,
      birthdays = Core.Nothing,
      braggingRights = Core.Nothing,
      calendarUrls = Core.Nothing,
      clientData = Core.Nothing,
      coverPhotos = Core.Nothing,
      emailAddresses = Core.Nothing,
      etag = Core.Nothing,
      events = Core.Nothing,
      externalIds = Core.Nothing,
      fileAses = Core.Nothing,
      genders = Core.Nothing,
      imClients = Core.Nothing,
      interests = Core.Nothing,
      locales = Core.Nothing,
      locations = Core.Nothing,
      memberships = Core.Nothing,
      metadata = Core.Nothing,
      miscKeywords = Core.Nothing,
      names = Core.Nothing,
      nicknames = Core.Nothing,
      occupations = Core.Nothing,
      organizations = Core.Nothing,
      phoneNumbers = Core.Nothing,
      photos = Core.Nothing,
      relations = Core.Nothing,
      relationshipInterests = Core.Nothing,
      relationshipStatuses = Core.Nothing,
      residences = Core.Nothing,
      resourceName = Core.Nothing,
      sipAddresses = Core.Nothing,
      skills = Core.Nothing,
      taglines = Core.Nothing,
      urls = Core.Nothing,
      userDefined = Core.Nothing
    }

instance Core.FromJSON Person where
  parseJSON =
    Core.withObject
      "Person"
      ( \o ->
          Person
            Core.<$> (o Core..:? "addresses")
            Core.<*> (o Core..:? "ageRange")
            Core.<*> (o Core..:? "ageRanges")
            Core.<*> (o Core..:? "biographies")
            Core.<*> (o Core..:? "birthdays")
            Core.<*> (o Core..:? "braggingRights")
            Core.<*> (o Core..:? "calendarUrls")
            Core.<*> (o Core..:? "clientData")
            Core.<*> (o Core..:? "coverPhotos")
            Core.<*> (o Core..:? "emailAddresses")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "events")
            Core.<*> (o Core..:? "externalIds")
            Core.<*> (o Core..:? "fileAses")
            Core.<*> (o Core..:? "genders")
            Core.<*> (o Core..:? "imClients")
            Core.<*> (o Core..:? "interests")
            Core.<*> (o Core..:? "locales")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "memberships")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "miscKeywords")
            Core.<*> (o Core..:? "names")
            Core.<*> (o Core..:? "nicknames")
            Core.<*> (o Core..:? "occupations")
            Core.<*> (o Core..:? "organizations")
            Core.<*> (o Core..:? "phoneNumbers")
            Core.<*> (o Core..:? "photos")
            Core.<*> (o Core..:? "relations")
            Core.<*> (o Core..:? "relationshipInterests")
            Core.<*> (o Core..:? "relationshipStatuses")
            Core.<*> (o Core..:? "residences")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "sipAddresses")
            Core.<*> (o Core..:? "skills")
            Core.<*> (o Core..:? "taglines")
            Core.<*> (o Core..:? "urls")
            Core.<*> (o Core..:? "userDefined")
      )

instance Core.ToJSON Person where
  toJSON Person {..} =
    Core.object
      ( Core.catMaybes
          [ ("addresses" Core..=) Core.<$> addresses,
            ("ageRange" Core..=) Core.<$> ageRange,
            ("ageRanges" Core..=) Core.<$> ageRanges,
            ("biographies" Core..=) Core.<$> biographies,
            ("birthdays" Core..=) Core.<$> birthdays,
            ("braggingRights" Core..=) Core.<$> braggingRights,
            ("calendarUrls" Core..=) Core.<$> calendarUrls,
            ("clientData" Core..=) Core.<$> clientData,
            ("coverPhotos" Core..=) Core.<$> coverPhotos,
            ("emailAddresses" Core..=) Core.<$> emailAddresses,
            ("etag" Core..=) Core.<$> etag,
            ("events" Core..=) Core.<$> events,
            ("externalIds" Core..=) Core.<$> externalIds,
            ("fileAses" Core..=) Core.<$> fileAses,
            ("genders" Core..=) Core.<$> genders,
            ("imClients" Core..=) Core.<$> imClients,
            ("interests" Core..=) Core.<$> interests,
            ("locales" Core..=) Core.<$> locales,
            ("locations" Core..=) Core.<$> locations,
            ("memberships" Core..=) Core.<$> memberships,
            ("metadata" Core..=) Core.<$> metadata,
            ("miscKeywords" Core..=) Core.<$> miscKeywords,
            ("names" Core..=) Core.<$> names,
            ("nicknames" Core..=) Core.<$> nicknames,
            ("occupations" Core..=) Core.<$> occupations,
            ("organizations" Core..=) Core.<$> organizations,
            ("phoneNumbers" Core..=) Core.<$> phoneNumbers,
            ("photos" Core..=) Core.<$> photos,
            ("relations" Core..=) Core.<$> relations,
            ("relationshipInterests" Core..=)
              Core.<$> relationshipInterests,
            ("relationshipStatuses" Core..=)
              Core.<$> relationshipStatuses,
            ("residences" Core..=) Core.<$> residences,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("sipAddresses" Core..=) Core.<$> sipAddresses,
            ("skills" Core..=) Core.<$> skills,
            ("taglines" Core..=) Core.<$> taglines,
            ("urls" Core..=) Core.<$> urls,
            ("userDefined" Core..=) Core.<$> userDefined
          ]
      )

-- | The metadata about a person.
--
-- /See:/ 'newPersonMetadata' smart constructor.
data PersonMetadata = PersonMetadata
  { -- | Output only. True if the person resource has been deleted. Populated only for @people.connections.list@ and @otherContacts.list@ sync requests.
    deleted :: (Core.Maybe Core.Bool),
    -- | Output only. Resource names of people linked to this resource.
    linkedPeopleResourceNames :: (Core.Maybe [Core.Text]),
    -- | Output only. __DEPRECATED__ (Please use @person.metadata.sources.profileMetadata.objectType@ instead) The type of the person object.
    objectType :: (Core.Maybe PersonMetadata_ObjectType),
    -- | Output only. Any former resource names this person has had. Populated only for @people.connections.list@ requests that include a sync token. The resource name may change when adding or removing fields that link a contact and profile such as a verified email, verified phone number, or profile URL.
    previousResourceNames :: (Core.Maybe [Core.Text]),
    -- | The sources of data for the person.
    sources :: (Core.Maybe [Source])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersonMetadata' with the minimum fields required to make a request.
newPersonMetadata ::
  PersonMetadata
newPersonMetadata =
  PersonMetadata
    { deleted = Core.Nothing,
      linkedPeopleResourceNames = Core.Nothing,
      objectType = Core.Nothing,
      previousResourceNames = Core.Nothing,
      sources = Core.Nothing
    }

instance Core.FromJSON PersonMetadata where
  parseJSON =
    Core.withObject
      "PersonMetadata"
      ( \o ->
          PersonMetadata
            Core.<$> (o Core..:? "deleted")
            Core.<*> (o Core..:? "linkedPeopleResourceNames")
            Core.<*> (o Core..:? "objectType")
            Core.<*> (o Core..:? "previousResourceNames")
            Core.<*> (o Core..:? "sources")
      )

instance Core.ToJSON PersonMetadata where
  toJSON PersonMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("deleted" Core..=) Core.<$> deleted,
            ("linkedPeopleResourceNames" Core..=)
              Core.<$> linkedPeopleResourceNames,
            ("objectType" Core..=) Core.<$> objectType,
            ("previousResourceNames" Core..=)
              Core.<$> previousResourceNames,
            ("sources" Core..=) Core.<$> sources
          ]
      )

-- | The response for a single person
--
-- /See:/ 'newPersonResponse' smart constructor.
data PersonResponse = PersonResponse
  { -- | __DEPRECATED__ (Please use status instead) [HTTP 1.1 status code] (http:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616-sec10.html).
    httpStatusCode :: (Core.Maybe Core.Int32),
    -- | The person.
    person :: (Core.Maybe Person),
    -- | The original requested resource name. May be different than the resource name on the returned person. The resource name can change when adding or removing fields that link a contact and profile such as a verified email, verified phone number, or a profile URL.
    requestedResourceName :: (Core.Maybe Core.Text),
    -- | The status of the response.
    status :: (Core.Maybe Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersonResponse' with the minimum fields required to make a request.
newPersonResponse ::
  PersonResponse
newPersonResponse =
  PersonResponse
    { httpStatusCode = Core.Nothing,
      person = Core.Nothing,
      requestedResourceName = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON PersonResponse where
  parseJSON =
    Core.withObject
      "PersonResponse"
      ( \o ->
          PersonResponse
            Core.<$> (o Core..:? "httpStatusCode")
            Core.<*> (o Core..:? "person")
            Core.<*> (o Core..:? "requestedResourceName")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON PersonResponse where
  toJSON PersonResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("httpStatusCode" Core..=) Core.<$> httpStatusCode,
            ("person" Core..=) Core.<$> person,
            ("requestedResourceName" Core..=)
              Core.<$> requestedResourceName,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | A person\'s phone number.
--
-- /See:/ 'newPhoneNumber' smart constructor.
data PhoneNumber = PhoneNumber
  { -- | Output only. The canonicalized <https://law.resource.org/pub/us/cfr/ibr/004/itu-t.E.164.1.2008.pdf ITU-T E.164> form of the phone number.
    canonicalForm :: (Core.Maybe Core.Text),
    -- | Output only. The type of the phone number translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the phone number.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the phone number. The type can be custom or one of these predefined values: * @home@ * @work@ * @mobile@ * @homeFax@ * @workFax@ * @otherFax@ * @pager@ * @workMobile@ * @workPager@ * @main@ * @googleVoice@ * @other@
    type' :: (Core.Maybe Core.Text),
    -- | The phone number.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhoneNumber' with the minimum fields required to make a request.
newPhoneNumber ::
  PhoneNumber
newPhoneNumber =
  PhoneNumber
    { canonicalForm = Core.Nothing,
      formattedType = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON PhoneNumber where
  parseJSON =
    Core.withObject
      "PhoneNumber"
      ( \o ->
          PhoneNumber
            Core.<$> (o Core..:? "canonicalForm")
            Core.<*> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON PhoneNumber where
  toJSON PhoneNumber {..} =
    Core.object
      ( Core.catMaybes
          [ ("canonicalForm" Core..=) Core.<$> canonicalForm,
            ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A person\'s photo. A picture shown next to the person\'s name to help others recognize the person.
--
-- /See:/ 'newPhoto' smart constructor.
data Photo = Photo
  { -- | True if the photo is a default photo; false if the photo is a user-provided photo.
    default' :: (Core.Maybe Core.Bool),
    -- | Metadata about the photo.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The URL of the photo. You can change the desired size by appending a query parameter @sz={size}@ at the end of the url, where {size} is the size in pixels. Example: https:\/\/lh3.googleusercontent.com\/-T_wVWLlmg7w\/AAAAAAAAAAI\/AAAAAAAABa8\/00gzXvDBYqw\/s100\/photo.jpg?sz=50
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
newPhoto ::
  Photo
newPhoto =
  Photo {default' = Core.Nothing, metadata = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON Photo where
  parseJSON =
    Core.withObject
      "Photo"
      ( \o ->
          Photo
            Core.<$> (o Core..:? "default")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Photo where
  toJSON Photo {..} =
    Core.object
      ( Core.catMaybes
          [ ("default" Core..=) Core.<$> default',
            ("metadata" Core..=) Core.<$> metadata,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The metadata about a profile.
--
-- /See:/ 'newProfileMetadata' smart constructor.
data ProfileMetadata = ProfileMetadata
  { -- | Output only. The profile object type.
    objectType :: (Core.Maybe ProfileMetadata_ObjectType),
    -- | Output only. The user types.
    userTypes :: (Core.Maybe [ProfileMetadata_UserTypesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProfileMetadata' with the minimum fields required to make a request.
newProfileMetadata ::
  ProfileMetadata
newProfileMetadata =
  ProfileMetadata {objectType = Core.Nothing, userTypes = Core.Nothing}

instance Core.FromJSON ProfileMetadata where
  parseJSON =
    Core.withObject
      "ProfileMetadata"
      ( \o ->
          ProfileMetadata
            Core.<$> (o Core..:? "objectType")
            Core.<*> (o Core..:? "userTypes")
      )

instance Core.ToJSON ProfileMetadata where
  toJSON ProfileMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("objectType" Core..=) Core.<$> objectType,
            ("userTypes" Core..=) Core.<$> userTypes
          ]
      )

-- | A person\'s relation to another person.
--
-- /See:/ 'newRelation' smart constructor.
data Relation = Relation
  { -- | Output only. The type of the relation translated and formatted in the viewer\'s account locale or the locale specified in the Accept-Language HTTP header.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the relation.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The name of the other person this relation refers to.
    person :: (Core.Maybe Core.Text),
    -- | The person\'s relation to the other person. The type can be custom or one of these predefined values: * @spouse@ * @child@ * @mother@ * @father@ * @parent@ * @brother@ * @sister@ * @friend@ * @relative@ * @domesticPartner@ * @manager@ * @assistant@ * @referredBy@ * @partner@
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Relation' with the minimum fields required to make a request.
newRelation ::
  Relation
newRelation =
  Relation
    { formattedType = Core.Nothing,
      metadata = Core.Nothing,
      person = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Relation where
  parseJSON =
    Core.withObject
      "Relation"
      ( \o ->
          Relation
            Core.<$> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "person")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Relation where
  toJSON Relation {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("person" Core..=) Core.<$> person,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | __DEPRECATED__: No data will be returned A person\'s relationship interest .
--
-- /See:/ 'newRelationshipInterest' smart constructor.
data RelationshipInterest = RelationshipInterest
  { -- | Output only. The value of the relationship interest translated and formatted in the viewer\'s account locale or the locale specified in the Accept-Language HTTP header.
    formattedValue :: (Core.Maybe Core.Text),
    -- | Metadata about the relationship interest.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The kind of relationship the person is looking for. The value can be custom or one of these predefined values: * @friend@ * @date@ * @relationship@ * @networking@
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RelationshipInterest' with the minimum fields required to make a request.
newRelationshipInterest ::
  RelationshipInterest
newRelationshipInterest =
  RelationshipInterest
    { formattedValue = Core.Nothing,
      metadata = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON RelationshipInterest where
  parseJSON =
    Core.withObject
      "RelationshipInterest"
      ( \o ->
          RelationshipInterest
            Core.<$> (o Core..:? "formattedValue")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON RelationshipInterest where
  toJSON RelationshipInterest {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedValue" Core..=) Core.<$> formattedValue,
            ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | __DEPRECATED__: No data will be returned A person\'s relationship status.
--
-- /See:/ 'newRelationshipStatus' smart constructor.
data RelationshipStatus = RelationshipStatus
  { -- | Output only. The value of the relationship status translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedValue :: (Core.Maybe Core.Text),
    -- | Metadata about the relationship status.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The relationship status. The value can be custom or one of these predefined values: * @single@ * @inARelationship@ * @engaged@ * @married@ * @itsComplicated@ * @openRelationship@ * @widowed@ * @inDomesticPartnership@ * @inCivilUnion@
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RelationshipStatus' with the minimum fields required to make a request.
newRelationshipStatus ::
  RelationshipStatus
newRelationshipStatus =
  RelationshipStatus
    { formattedValue = Core.Nothing,
      metadata = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON RelationshipStatus where
  parseJSON =
    Core.withObject
      "RelationshipStatus"
      ( \o ->
          RelationshipStatus
            Core.<$> (o Core..:? "formattedValue")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON RelationshipStatus where
  toJSON RelationshipStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedValue" Core..=) Core.<$> formattedValue,
            ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | __DEPRECATED__: Please use @person.locations@ instead. A person\'s past or current residence.
--
-- /See:/ 'newResidence' smart constructor.
data Residence = Residence
  { -- | True if the residence is the person\'s current residence; false if the residence is a past residence.
    current :: (Core.Maybe Core.Bool),
    -- | Metadata about the residence.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The address of the residence.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Residence' with the minimum fields required to make a request.
newResidence ::
  Residence
newResidence =
  Residence
    { current = Core.Nothing,
      metadata = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON Residence where
  parseJSON =
    Core.withObject
      "Residence"
      ( \o ->
          Residence
            Core.<$> (o Core..:? "current")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Residence where
  toJSON Residence {..} =
    Core.object
      ( Core.catMaybes
          [ ("current" Core..=) Core.<$> current,
            ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The response to a request for people in the authenticated user\'s domain directory that match the specified query.
--
-- /See:/ 'newSearchDirectoryPeopleResponse' smart constructor.
data SearchDirectoryPeopleResponse = SearchDirectoryPeopleResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of people in the domain directory that match the query.
    people :: (Core.Maybe [Person]),
    -- | The total number of items in the list without pagination.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchDirectoryPeopleResponse' with the minimum fields required to make a request.
newSearchDirectoryPeopleResponse ::
  SearchDirectoryPeopleResponse
newSearchDirectoryPeopleResponse =
  SearchDirectoryPeopleResponse
    { nextPageToken = Core.Nothing,
      people = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON SearchDirectoryPeopleResponse where
  parseJSON =
    Core.withObject
      "SearchDirectoryPeopleResponse"
      ( \o ->
          SearchDirectoryPeopleResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "people")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON SearchDirectoryPeopleResponse where
  toJSON SearchDirectoryPeopleResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("people" Core..=) Core.<$> people,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | The response to a search request for the authenticated user, given a query.
--
-- /See:/ 'newSearchResponse' smart constructor.
newtype SearchResponse = SearchResponse
  { -- | The results of the request.
    results :: (Core.Maybe [SearchResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
newSearchResponse ::
  SearchResponse
newSearchResponse = SearchResponse {results = Core.Nothing}

instance Core.FromJSON SearchResponse where
  parseJSON =
    Core.withObject
      "SearchResponse"
      ( \o ->
          SearchResponse Core.<$> (o Core..:? "results")
      )

instance Core.ToJSON SearchResponse where
  toJSON SearchResponse {..} =
    Core.object
      ( Core.catMaybes
          [("results" Core..=) Core.<$> results]
      )

-- | A result of a search query.
--
-- /See:/ 'newSearchResult' smart constructor.
newtype SearchResult = SearchResult
  { -- | The matched Person.
    person :: (Core.Maybe Person)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResult' with the minimum fields required to make a request.
newSearchResult ::
  SearchResult
newSearchResult = SearchResult {person = Core.Nothing}

instance Core.FromJSON SearchResult where
  parseJSON =
    Core.withObject
      "SearchResult"
      (\o -> SearchResult Core.<$> (o Core..:? "person"))

instance Core.ToJSON SearchResult where
  toJSON SearchResult {..} =
    Core.object
      (Core.catMaybes [("person" Core..=) Core.<$> person])

-- | A person\'s SIP address. Session Initial Protocol addresses are used for VoIP communications to make voice or video calls over the internet.
--
-- /See:/ 'newSipAddress' smart constructor.
data SipAddress = SipAddress
  { -- | Output only. The type of the SIP address translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the SIP address.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the SIP address. The type can be custom or or one of these predefined values: * @home@ * @work@ * @mobile@ * @other@
    type' :: (Core.Maybe Core.Text),
    -- | The SIP address in the <https://tools.ietf.org/html/rfc3261#section-19.1 RFC 3261 19.1> SIP URI format.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SipAddress' with the minimum fields required to make a request.
newSipAddress ::
  SipAddress
newSipAddress =
  SipAddress
    { formattedType = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON SipAddress where
  parseJSON =
    Core.withObject
      "SipAddress"
      ( \o ->
          SipAddress
            Core.<$> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON SipAddress where
  toJSON SipAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A skill that the person has.
--
-- /See:/ 'newSkill' smart constructor.
data Skill = Skill
  { -- | Metadata about the skill.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The skill; for example, @underwater basket weaving@.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Skill' with the minimum fields required to make a request.
newSkill ::
  Skill
newSkill = Skill {metadata = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Skill where
  parseJSON =
    Core.withObject
      "Skill"
      ( \o ->
          Skill
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Skill where
  toJSON Skill {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The source of a field.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source
  { -- | __Only populated in @person.metadata.sources@.__ The <https://en.wikipedia.org/wiki/HTTP_ETag HTTP entity tag> of the source. Used for web cache validation.
    etag :: (Core.Maybe Core.Text),
    -- | The unique identifier within the source type generated by the server.
    id :: (Core.Maybe Core.Text),
    -- | Output only. __Only populated in @person.metadata.sources@.__ Metadata about a source of type PROFILE.
    profileMetadata :: (Core.Maybe ProfileMetadata),
    -- | The source type.
    type' :: (Core.Maybe Source_Type),
    -- | Output only. __Only populated in @person.metadata.sources@.__ Last update timestamp of this source.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource ::
  Source
newSource =
  Source
    { etag = Core.Nothing,
      id = Core.Nothing,
      profileMetadata = Core.Nothing,
      type' = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \o ->
          Source
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "profileMetadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Source where
  toJSON Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            ("profileMetadata" Core..=) Core.<$> profileMetadata,
            ("type" Core..=) Core.<$> type',
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | __DEPRECATED__: No data will be returned A brief one-line description of the person.
--
-- /See:/ 'newTagline' smart constructor.
data Tagline = Tagline
  { -- | Metadata about the tagline.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The tagline.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tagline' with the minimum fields required to make a request.
newTagline ::
  Tagline
newTagline = Tagline {metadata = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Tagline where
  parseJSON =
    Core.withObject
      "Tagline"
      ( \o ->
          Tagline
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Tagline where
  toJSON Tagline {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A request to update an existing user contact group. All updated fields will be replaced.
--
-- /See:/ 'newUpdateContactGroupRequest' smart constructor.
data UpdateContactGroupRequest = UpdateContactGroupRequest
  { -- | Required. The contact group to update.
    contactGroup :: (Core.Maybe ContactGroup),
    -- | Optional. A field mask to restrict which fields on the group are returned. Defaults to @metadata@, @groupType@, and @name@ if not set or set to empty. Valid fields are: * clientData * groupType * memberCount * metadata * name
    readGroupFields :: (Core.Maybe Core.FieldMask),
    -- | Optional. A field mask to restrict which fields on the group are updated. Multiple fields can be specified by separating them with commas. Defaults to @name@ if not set or set to empty. Updated fields are replaced. Valid values are: * clientData * name
    updateGroupFields :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateContactGroupRequest' with the minimum fields required to make a request.
newUpdateContactGroupRequest ::
  UpdateContactGroupRequest
newUpdateContactGroupRequest =
  UpdateContactGroupRequest
    { contactGroup = Core.Nothing,
      readGroupFields = Core.Nothing,
      updateGroupFields = Core.Nothing
    }

instance Core.FromJSON UpdateContactGroupRequest where
  parseJSON =
    Core.withObject
      "UpdateContactGroupRequest"
      ( \o ->
          UpdateContactGroupRequest
            Core.<$> (o Core..:? "contactGroup")
            Core.<*> (o Core..:? "readGroupFields")
            Core.<*> (o Core..:? "updateGroupFields")
      )

instance Core.ToJSON UpdateContactGroupRequest where
  toJSON UpdateContactGroupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactGroup" Core..=) Core.<$> contactGroup,
            ("readGroupFields" Core..=) Core.<$> readGroupFields,
            ("updateGroupFields" Core..=)
              Core.<$> updateGroupFields
          ]
      )

-- | A request to update an existing contact\'s photo. All requests must have a valid photo format: JPEG or PNG.
--
-- /See:/ 'newUpdateContactPhotoRequest' smart constructor.
data UpdateContactPhotoRequest = UpdateContactPhotoRequest
  { -- | Optional. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Defaults to empty if not set, which will skip the post mutate get. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    personFields :: (Core.Maybe Core.FieldMask),
    -- | Required. Raw photo bytes
    photoBytes :: (Core.Maybe Core.Base64),
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [UpdateContactPhotoRequest_SourcesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateContactPhotoRequest' with the minimum fields required to make a request.
newUpdateContactPhotoRequest ::
  UpdateContactPhotoRequest
newUpdateContactPhotoRequest =
  UpdateContactPhotoRequest
    { personFields = Core.Nothing,
      photoBytes = Core.Nothing,
      sources = Core.Nothing
    }

instance Core.FromJSON UpdateContactPhotoRequest where
  parseJSON =
    Core.withObject
      "UpdateContactPhotoRequest"
      ( \o ->
          UpdateContactPhotoRequest
            Core.<$> (o Core..:? "personFields")
            Core.<*> (o Core..:? "photoBytes")
            Core.<*> (o Core..:? "sources")
      )

instance Core.ToJSON UpdateContactPhotoRequest where
  toJSON UpdateContactPhotoRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("personFields" Core..=) Core.<$> personFields,
            ("photoBytes" Core..=) Core.<$> photoBytes,
            ("sources" Core..=) Core.<$> sources
          ]
      )

-- | The response for updating a contact\'s photo.
--
-- /See:/ 'newUpdateContactPhotoResponse' smart constructor.
newtype UpdateContactPhotoResponse = UpdateContactPhotoResponse
  { -- | The updated person, if person_fields is set in the UpdateContactPhotoRequest; otherwise this will be unset.
    person :: (Core.Maybe Person)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateContactPhotoResponse' with the minimum fields required to make a request.
newUpdateContactPhotoResponse ::
  UpdateContactPhotoResponse
newUpdateContactPhotoResponse =
  UpdateContactPhotoResponse {person = Core.Nothing}

instance Core.FromJSON UpdateContactPhotoResponse where
  parseJSON =
    Core.withObject
      "UpdateContactPhotoResponse"
      ( \o ->
          UpdateContactPhotoResponse
            Core.<$> (o Core..:? "person")
      )

instance Core.ToJSON UpdateContactPhotoResponse where
  toJSON UpdateContactPhotoResponse {..} =
    Core.object
      (Core.catMaybes [("person" Core..=) Core.<$> person])

-- | A person\'s associated URLs.
--
-- /See:/ 'newUrl' smart constructor.
data Url = Url
  { -- | Output only. The type of the URL translated and formatted in the viewer\'s account locale or the @Accept-Language@ HTTP header locale.
    formattedType :: (Core.Maybe Core.Text),
    -- | Metadata about the URL.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The type of the URL. The type can be custom or one of these predefined values: * @home@ * @work@ * @blog@ * @profile@ * @homePage@ * @ftp@ * @reservations@ * @appInstallPage@: website for a Currents application. * @other@
    type' :: (Core.Maybe Core.Text),
    -- | The URL.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Url' with the minimum fields required to make a request.
newUrl ::
  Url
newUrl =
  Url
    { formattedType = Core.Nothing,
      metadata = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON Url where
  parseJSON =
    Core.withObject
      "Url"
      ( \o ->
          Url
            Core.<$> (o Core..:? "formattedType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Url where
  toJSON Url {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedType" Core..=) Core.<$> formattedType,
            ("metadata" Core..=) Core.<$> metadata,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Arbitrary user data that is populated by the end users.
--
-- /See:/ 'newUserDefined' smart constructor.
data UserDefined = UserDefined
  { -- | The end user specified key of the user defined data.
    key :: (Core.Maybe Core.Text),
    -- | Metadata about the user defined data.
    metadata :: (Core.Maybe FieldMetadata),
    -- | The end user specified value of the user defined data.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserDefined' with the minimum fields required to make a request.
newUserDefined ::
  UserDefined
newUserDefined =
  UserDefined
    { key = Core.Nothing,
      metadata = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON UserDefined where
  parseJSON =
    Core.withObject
      "UserDefined"
      ( \o ->
          UserDefined
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON UserDefined where
  toJSON UserDefined {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("metadata" Core..=) Core.<$> metadata,
            ("value" Core..=) Core.<$> value
          ]
      )

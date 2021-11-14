{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.People.People.UpdateContact
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update contact data for an existing contact person. Any non-contact data
-- will not be modified. Any non-contact data in the person to update will
-- be ignored. All fields specified in the \`update_mask\` will be
-- replaced. The server returns a 400 error if \`person.metadata.sources\`
-- is not specified for the contact to be updated or if there is no contact
-- source. The server returns a 400 error with reason
-- \`\"failedPrecondition\"\` if \`person.metadata.sources.etag\` is
-- different than the contact\'s etag, which indicates the contact has
-- changed since its data was read. Clients should get the latest person
-- and merge their updates into the latest person. The server returns a 400
-- error if \`memberships\` are being updated and there are no contact
-- group memberships specified on the person. The server returns a 400
-- error if more than one field is specified on a field that is a singleton
-- for contact sources: * biographies * birthdays * genders * names
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.updateContact@.
module Network.Google.Resource.People.People.UpdateContact
    (
    -- * REST Resource
      PeopleUpdateContactResource

    -- * Creating a Request
    , peopleUpdateContact
    , PeopleUpdateContact

    -- * Request Lenses
    , pucXgafv
    , pucUploadProtocol
    , pucResourceName
    , pucUpdatePersonFields
    , pucAccessToken
    , pucUploadType
    , pucSources
    , pucPayload
    , pucPersonFields
    , pucCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.updateContact@ method which the
-- 'PeopleUpdateContact' request conforms to.
type PeopleUpdateContactResource =
     "v1" :>
       CaptureMode "resourceName" "updateContact" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updatePersonFields" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParams "sources" PeopleUpdateContactSources :>
                     QueryParam "personFields" GFieldMask :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Person :> Patch '[JSON] Person

-- | Update contact data for an existing contact person. Any non-contact data
-- will not be modified. Any non-contact data in the person to update will
-- be ignored. All fields specified in the \`update_mask\` will be
-- replaced. The server returns a 400 error if \`person.metadata.sources\`
-- is not specified for the contact to be updated or if there is no contact
-- source. The server returns a 400 error with reason
-- \`\"failedPrecondition\"\` if \`person.metadata.sources.etag\` is
-- different than the contact\'s etag, which indicates the contact has
-- changed since its data was read. Clients should get the latest person
-- and merge their updates into the latest person. The server returns a 400
-- error if \`memberships\` are being updated and there are no contact
-- group memberships specified on the person. The server returns a 400
-- error if more than one field is specified on a field that is a singleton
-- for contact sources: * biographies * birthdays * genders * names
--
-- /See:/ 'peopleUpdateContact' smart constructor.
data PeopleUpdateContact =
  PeopleUpdateContact'
    { _pucXgafv :: !(Maybe Xgafv)
    , _pucUploadProtocol :: !(Maybe Text)
    , _pucResourceName :: !Text
    , _pucUpdatePersonFields :: !(Maybe GFieldMask)
    , _pucAccessToken :: !(Maybe Text)
    , _pucUploadType :: !(Maybe Text)
    , _pucSources :: !(Maybe [PeopleUpdateContactSources])
    , _pucPayload :: !Person
    , _pucPersonFields :: !(Maybe GFieldMask)
    , _pucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleUpdateContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pucXgafv'
--
-- * 'pucUploadProtocol'
--
-- * 'pucResourceName'
--
-- * 'pucUpdatePersonFields'
--
-- * 'pucAccessToken'
--
-- * 'pucUploadType'
--
-- * 'pucSources'
--
-- * 'pucPayload'
--
-- * 'pucPersonFields'
--
-- * 'pucCallback'
peopleUpdateContact
    :: Text -- ^ 'pucResourceName'
    -> Person -- ^ 'pucPayload'
    -> PeopleUpdateContact
peopleUpdateContact pPucResourceName_ pPucPayload_ =
  PeopleUpdateContact'
    { _pucXgafv = Nothing
    , _pucUploadProtocol = Nothing
    , _pucResourceName = pPucResourceName_
    , _pucUpdatePersonFields = Nothing
    , _pucAccessToken = Nothing
    , _pucUploadType = Nothing
    , _pucSources = Nothing
    , _pucPayload = pPucPayload_
    , _pucPersonFields = Nothing
    , _pucCallback = Nothing
    }


-- | V1 error format.
pucXgafv :: Lens' PeopleUpdateContact (Maybe Xgafv)
pucXgafv = lens _pucXgafv (\ s a -> s{_pucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pucUploadProtocol :: Lens' PeopleUpdateContact (Maybe Text)
pucUploadProtocol
  = lens _pucUploadProtocol
      (\ s a -> s{_pucUploadProtocol = a})

-- | The resource name for the person, assigned by the server. An ASCII
-- string with a max length of 27 characters, in the form of
-- \`people\/{person_id}\`.
pucResourceName :: Lens' PeopleUpdateContact Text
pucResourceName
  = lens _pucResourceName
      (\ s a -> s{_pucResourceName = a})

-- | Required. A field mask to restrict which fields on the person are
-- updated. Multiple fields can be specified by separating them with
-- commas. All updated fields will be replaced. Valid values are: *
-- addresses * biographies * birthdays * calendarUrls * clientData *
-- emailAddresses * events * externalIds * genders * imClients * interests
-- * locales * locations * memberships * miscKeywords * names * nicknames *
-- occupations * organizations * phoneNumbers * relations * sipAddresses *
-- urls * userDefined
pucUpdatePersonFields :: Lens' PeopleUpdateContact (Maybe GFieldMask)
pucUpdatePersonFields
  = lens _pucUpdatePersonFields
      (\ s a -> s{_pucUpdatePersonFields = a})

-- | OAuth access token.
pucAccessToken :: Lens' PeopleUpdateContact (Maybe Text)
pucAccessToken
  = lens _pucAccessToken
      (\ s a -> s{_pucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pucUploadType :: Lens' PeopleUpdateContact (Maybe Text)
pucUploadType
  = lens _pucUploadType
      (\ s a -> s{_pucUploadType = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
pucSources :: Lens' PeopleUpdateContact [PeopleUpdateContactSources]
pucSources
  = lens _pucSources (\ s a -> s{_pucSources = a}) .
      _Default
      . _Coerce

-- | Multipart request metadata.
pucPayload :: Lens' PeopleUpdateContact Person
pucPayload
  = lens _pucPayload (\ s a -> s{_pucPayload = a})

-- | Optional. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Defaults to all fields if not set. Valid values are: * addresses
-- * ageRanges * biographies * birthdays * calendarUrls * clientData *
-- coverPhotos * emailAddresses * events * externalIds * genders *
-- imClients * interests * locales * locations * memberships * metadata *
-- miscKeywords * names * nicknames * occupations * organizations *
-- phoneNumbers * photos * relations * sipAddresses * skills * urls *
-- userDefined
pucPersonFields :: Lens' PeopleUpdateContact (Maybe GFieldMask)
pucPersonFields
  = lens _pucPersonFields
      (\ s a -> s{_pucPersonFields = a})

-- | JSONP
pucCallback :: Lens' PeopleUpdateContact (Maybe Text)
pucCallback
  = lens _pucCallback (\ s a -> s{_pucCallback = a})

instance GoogleRequest PeopleUpdateContact where
        type Rs PeopleUpdateContact = Person
        type Scopes PeopleUpdateContact =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleUpdateContact'{..}
          = go _pucResourceName _pucXgafv _pucUploadProtocol
              _pucUpdatePersonFields
              _pucAccessToken
              _pucUploadType
              (_pucSources ^. _Default)
              _pucPersonFields
              _pucCallback
              (Just AltJSON)
              _pucPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleUpdateContactResource)
                      mempty

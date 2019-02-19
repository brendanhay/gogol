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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update contact data for an existing contact person. Any non-contact data
-- will not be modified. The request throws a 400 error if
-- \`updatePersonFields\` is not specified.
-- The request throws a 400 error if \`person.metadata.sources\` is not
-- specified for the contact to be updated.
-- The request throws a 412 error if \`person.metadata.sources.etag\` is
-- different than the contact\'s etag, which indicates the contact has
-- changed since its data was read. Clients should get the latest person
-- and re-apply their updates to the latest person.
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
    , pucPayload
    , pucCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

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
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Person :> Patch '[JSON] Person

-- | Update contact data for an existing contact person. Any non-contact data
-- will not be modified. The request throws a 400 error if
-- \`updatePersonFields\` is not specified.
-- The request throws a 400 error if \`person.metadata.sources\` is not
-- specified for the contact to be updated.
-- The request throws a 412 error if \`person.metadata.sources.etag\` is
-- different than the contact\'s etag, which indicates the contact has
-- changed since its data was read. Clients should get the latest person
-- and re-apply their updates to the latest person.
--
-- /See:/ 'peopleUpdateContact' smart constructor.
data PeopleUpdateContact =
  PeopleUpdateContact'
    { _pucXgafv              :: !(Maybe Xgafv)
    , _pucUploadProtocol     :: !(Maybe Text)
    , _pucResourceName       :: !Text
    , _pucUpdatePersonFields :: !(Maybe GFieldMask)
    , _pucAccessToken        :: !(Maybe Text)
    , _pucUploadType         :: !(Maybe Text)
    , _pucPayload            :: !Person
    , _pucCallback           :: !(Maybe Text)
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
-- * 'pucPayload'
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
    , _pucPayload = pPucPayload_
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
-- \`people\/\`person_id.
pucResourceName :: Lens' PeopleUpdateContact Text
pucResourceName
  = lens _pucResourceName
      (\ s a -> s{_pucResourceName = a})

-- | **Required.** A field mask to restrict which fields on the person are
-- updated. Multiple fields can be specified by separating them with
-- commas. All updated fields will be replaced. Valid values are: *
-- addresses * biographies * birthdays * emailAddresses * events * genders
-- * imClients * interests * locales * names * nicknames * occupations *
-- organizations * phoneNumbers * relations * residences * sipAddresses *
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

-- | Multipart request metadata.
pucPayload :: Lens' PeopleUpdateContact Person
pucPayload
  = lens _pucPayload (\ s a -> s{_pucPayload = a})

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
              _pucCallback
              (Just AltJSON)
              _pucPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleUpdateContactResource)
                      mempty

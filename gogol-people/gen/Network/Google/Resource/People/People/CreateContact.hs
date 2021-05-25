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
-- Module      : Network.Google.Resource.People.People.CreateContact
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new contact and return the person resource for that contact.
-- The request returns a 400 error if more than one field is specified on a
-- field that is a singleton for contact sources: * biographies * birthdays
-- * genders * names
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.createContact@.
module Network.Google.Resource.People.People.CreateContact
    (
    -- * REST Resource
      PeopleCreateContactResource

    -- * Creating a Request
    , peopleCreateContact
    , PeopleCreateContact

    -- * Request Lenses
    , pccXgafv
    , pccUploadProtocol
    , pccAccessToken
    , pccUploadType
    , pccSources
    , pccPayload
    , pccPersonFields
    , pccCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.createContact@ method which the
-- 'PeopleCreateContact' request conforms to.
type PeopleCreateContactResource =
     "v1" :>
       "people:createContact" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParams "sources" PeopleCreateContactSources :>
                   QueryParam "personFields" GFieldMask :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Person :> Post '[JSON] Person

-- | Create a new contact and return the person resource for that contact.
-- The request returns a 400 error if more than one field is specified on a
-- field that is a singleton for contact sources: * biographies * birthdays
-- * genders * names
--
-- /See:/ 'peopleCreateContact' smart constructor.
data PeopleCreateContact =
  PeopleCreateContact'
    { _pccXgafv :: !(Maybe Xgafv)
    , _pccUploadProtocol :: !(Maybe Text)
    , _pccAccessToken :: !(Maybe Text)
    , _pccUploadType :: !(Maybe Text)
    , _pccSources :: !(Maybe [PeopleCreateContactSources])
    , _pccPayload :: !Person
    , _pccPersonFields :: !(Maybe GFieldMask)
    , _pccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleCreateContact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccXgafv'
--
-- * 'pccUploadProtocol'
--
-- * 'pccAccessToken'
--
-- * 'pccUploadType'
--
-- * 'pccSources'
--
-- * 'pccPayload'
--
-- * 'pccPersonFields'
--
-- * 'pccCallback'
peopleCreateContact
    :: Person -- ^ 'pccPayload'
    -> PeopleCreateContact
peopleCreateContact pPccPayload_ =
  PeopleCreateContact'
    { _pccXgafv = Nothing
    , _pccUploadProtocol = Nothing
    , _pccAccessToken = Nothing
    , _pccUploadType = Nothing
    , _pccSources = Nothing
    , _pccPayload = pPccPayload_
    , _pccPersonFields = Nothing
    , _pccCallback = Nothing
    }


-- | V1 error format.
pccXgafv :: Lens' PeopleCreateContact (Maybe Xgafv)
pccXgafv = lens _pccXgafv (\ s a -> s{_pccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pccUploadProtocol :: Lens' PeopleCreateContact (Maybe Text)
pccUploadProtocol
  = lens _pccUploadProtocol
      (\ s a -> s{_pccUploadProtocol = a})

-- | OAuth access token.
pccAccessToken :: Lens' PeopleCreateContact (Maybe Text)
pccAccessToken
  = lens _pccAccessToken
      (\ s a -> s{_pccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pccUploadType :: Lens' PeopleCreateContact (Maybe Text)
pccUploadType
  = lens _pccUploadType
      (\ s a -> s{_pccUploadType = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
pccSources :: Lens' PeopleCreateContact [PeopleCreateContactSources]
pccSources
  = lens _pccSources (\ s a -> s{_pccSources = a}) .
      _Default
      . _Coerce

-- | Multipart request metadata.
pccPayload :: Lens' PeopleCreateContact Person
pccPayload
  = lens _pccPayload (\ s a -> s{_pccPayload = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Defaults to all fields if not set. Valid values are: * addresses
-- * ageRanges * biographies * birthdays * calendarUrls * clientData *
-- coverPhotos * emailAddresses * events * externalIds * genders *
-- imClients * interests * locales * locations * memberships * metadata *
-- miscKeywords * names * nicknames * occupations * organizations *
-- phoneNumbers * photos * relations * sipAddresses * skills * urls *
-- userDefined
pccPersonFields :: Lens' PeopleCreateContact (Maybe GFieldMask)
pccPersonFields
  = lens _pccPersonFields
      (\ s a -> s{_pccPersonFields = a})

-- | JSONP
pccCallback :: Lens' PeopleCreateContact (Maybe Text)
pccCallback
  = lens _pccCallback (\ s a -> s{_pccCallback = a})

instance GoogleRequest PeopleCreateContact where
        type Rs PeopleCreateContact = Person
        type Scopes PeopleCreateContact =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleCreateContact'{..}
          = go _pccXgafv _pccUploadProtocol _pccAccessToken
              _pccUploadType
              (_pccSources ^. _Default)
              _pccPersonFields
              _pccCallback
              (Just AltJSON)
              _pccPayload
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleCreateContactResource)
                      mempty

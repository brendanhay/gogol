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
-- Module      : Network.Google.Resource.People.People.SearchContacts
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of contacts in the authenticated user\'s grouped
-- contacts that matches the search query. The query matches on a
-- contact\'s \`names\`, \`nickNames\`, \`emailAddresses\`,
-- \`phoneNumbers\`, and \`organizations\` fields that are from the
-- CONTACT\" source. **IMPORTANT**: Before searching, clients should send a
-- warmup request with an empty query to update the cache. See
-- https:\/\/developers.google.com\/people\/v1\/contacts#search_the_users_contacts
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.searchContacts@.
module Network.Google.Resource.People.People.SearchContacts
    (
    -- * REST Resource
      PeopleSearchContactsResource

    -- * Creating a Request
    , peopleSearchContacts
    , PeopleSearchContacts

    -- * Request Lenses
    , pscXgafv
    , pscUploadProtocol
    , pscAccessToken
    , pscUploadType
    , pscReadMask
    , pscSources
    , pscQuery
    , pscPageSize
    , pscCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.searchContacts@ method which the
-- 'PeopleSearchContacts' request conforms to.
type PeopleSearchContactsResource =
     "v1" :>
       "people:searchContacts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "readMask" GFieldMask :>
                   QueryParams "sources" PeopleSearchContactsSources :>
                     QueryParam "query" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] SearchResponse

-- | Provides a list of contacts in the authenticated user\'s grouped
-- contacts that matches the search query. The query matches on a
-- contact\'s \`names\`, \`nickNames\`, \`emailAddresses\`,
-- \`phoneNumbers\`, and \`organizations\` fields that are from the
-- CONTACT\" source. **IMPORTANT**: Before searching, clients should send a
-- warmup request with an empty query to update the cache. See
-- https:\/\/developers.google.com\/people\/v1\/contacts#search_the_users_contacts
--
-- /See:/ 'peopleSearchContacts' smart constructor.
data PeopleSearchContacts =
  PeopleSearchContacts'
    { _pscXgafv :: !(Maybe Xgafv)
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscAccessToken :: !(Maybe Text)
    , _pscUploadType :: !(Maybe Text)
    , _pscReadMask :: !(Maybe GFieldMask)
    , _pscSources :: !(Maybe [PeopleSearchContactsSources])
    , _pscQuery :: !(Maybe Text)
    , _pscPageSize :: !(Maybe (Textual Int32))
    , _pscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleSearchContacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscXgafv'
--
-- * 'pscUploadProtocol'
--
-- * 'pscAccessToken'
--
-- * 'pscUploadType'
--
-- * 'pscReadMask'
--
-- * 'pscSources'
--
-- * 'pscQuery'
--
-- * 'pscPageSize'
--
-- * 'pscCallback'
peopleSearchContacts
    :: PeopleSearchContacts
peopleSearchContacts =
  PeopleSearchContacts'
    { _pscXgafv = Nothing
    , _pscUploadProtocol = Nothing
    , _pscAccessToken = Nothing
    , _pscUploadType = Nothing
    , _pscReadMask = Nothing
    , _pscSources = Nothing
    , _pscQuery = Nothing
    , _pscPageSize = Nothing
    , _pscCallback = Nothing
    }


-- | V1 error format.
pscXgafv :: Lens' PeopleSearchContacts (Maybe Xgafv)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' PeopleSearchContacts (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | OAuth access token.
pscAccessToken :: Lens' PeopleSearchContacts (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' PeopleSearchContacts (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * addresses * ageRanges * biographies *
-- birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
-- events * externalIds * genders * imClients * interests * locales *
-- locations * memberships * metadata * miscKeywords * names * nicknames *
-- occupations * organizations * phoneNumbers * photos * relations *
-- sipAddresses * skills * urls * userDefined
pscReadMask :: Lens' PeopleSearchContacts (Maybe GFieldMask)
pscReadMask
  = lens _pscReadMask (\ s a -> s{_pscReadMask = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT if not set.
pscSources :: Lens' PeopleSearchContacts [PeopleSearchContactsSources]
pscSources
  = lens _pscSources (\ s a -> s{_pscSources = a}) .
      _Default
      . _Coerce

-- | Required. The plain-text query for the request. The query is used to
-- match prefix phrases of the fields on a person. For example, a person
-- with name \"foo name\" matches queries such as \"f\", \"fo\", \"foo\",
-- \"foo n\", \"nam\", etc., but not \"oo n\".
pscQuery :: Lens' PeopleSearchContacts (Maybe Text)
pscQuery = lens _pscQuery (\ s a -> s{_pscQuery = a})

-- | Optional. The number of results to return. Defaults to 10 if field is
-- not set, or set to 0. Values greater than 30 will be capped to 30.
pscPageSize :: Lens' PeopleSearchContacts (Maybe Int32)
pscPageSize
  = lens _pscPageSize (\ s a -> s{_pscPageSize = a}) .
      mapping _Coerce

-- | JSONP
pscCallback :: Lens' PeopleSearchContacts (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

instance GoogleRequest PeopleSearchContacts where
        type Rs PeopleSearchContacts = SearchResponse
        type Scopes PeopleSearchContacts =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.readonly"]
        requestClient PeopleSearchContacts'{..}
          = go _pscXgafv _pscUploadProtocol _pscAccessToken
              _pscUploadType
              _pscReadMask
              (_pscSources ^. _Default)
              _pscQuery
              _pscPageSize
              _pscCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleSearchContactsResource)
                      mempty

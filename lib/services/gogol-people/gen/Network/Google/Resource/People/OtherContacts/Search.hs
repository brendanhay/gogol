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
-- Module      : Network.Google.Resource.People.OtherContacts.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of contacts in the authenticated user\'s other contacts
-- that matches the search query. The query matches on a contact\'s
-- \`names\`, \`emailAddresses\`, and \`phoneNumbers\` fields that are from
-- the OTHER_CONTACT source. **IMPORTANT**: Before searching, clients
-- should send a warmup request with an empty query to update the cache.
-- See
-- https:\/\/developers.google.com\/people\/v1\/other-contacts#search_the_users_other_contacts
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.otherContacts.search@.
module Network.Google.Resource.People.OtherContacts.Search
    (
    -- * REST Resource
      OtherContactsSearchResource

    -- * Creating a Request
    , otherContactsSearch
    , OtherContactsSearch

    -- * Request Lenses
    , ocsXgafv
    , ocsUploadProtocol
    , ocsAccessToken
    , ocsUploadType
    , ocsReadMask
    , ocsQuery
    , ocsPageSize
    , ocsCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.otherContacts.search@ method which the
-- 'OtherContactsSearch' request conforms to.
type OtherContactsSearchResource =
     "v1" :>
       "otherContacts:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "readMask" GFieldMask :>
                   QueryParam "query" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SearchResponse

-- | Provides a list of contacts in the authenticated user\'s other contacts
-- that matches the search query. The query matches on a contact\'s
-- \`names\`, \`emailAddresses\`, and \`phoneNumbers\` fields that are from
-- the OTHER_CONTACT source. **IMPORTANT**: Before searching, clients
-- should send a warmup request with an empty query to update the cache.
-- See
-- https:\/\/developers.google.com\/people\/v1\/other-contacts#search_the_users_other_contacts
--
-- /See:/ 'otherContactsSearch' smart constructor.
data OtherContactsSearch =
  OtherContactsSearch'
    { _ocsXgafv :: !(Maybe Xgafv)
    , _ocsUploadProtocol :: !(Maybe Text)
    , _ocsAccessToken :: !(Maybe Text)
    , _ocsUploadType :: !(Maybe Text)
    , _ocsReadMask :: !(Maybe GFieldMask)
    , _ocsQuery :: !(Maybe Text)
    , _ocsPageSize :: !(Maybe (Textual Int32))
    , _ocsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OtherContactsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocsXgafv'
--
-- * 'ocsUploadProtocol'
--
-- * 'ocsAccessToken'
--
-- * 'ocsUploadType'
--
-- * 'ocsReadMask'
--
-- * 'ocsQuery'
--
-- * 'ocsPageSize'
--
-- * 'ocsCallback'
otherContactsSearch
    :: OtherContactsSearch
otherContactsSearch =
  OtherContactsSearch'
    { _ocsXgafv = Nothing
    , _ocsUploadProtocol = Nothing
    , _ocsAccessToken = Nothing
    , _ocsUploadType = Nothing
    , _ocsReadMask = Nothing
    , _ocsQuery = Nothing
    , _ocsPageSize = Nothing
    , _ocsCallback = Nothing
    }


-- | V1 error format.
ocsXgafv :: Lens' OtherContactsSearch (Maybe Xgafv)
ocsXgafv = lens _ocsXgafv (\ s a -> s{_ocsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ocsUploadProtocol :: Lens' OtherContactsSearch (Maybe Text)
ocsUploadProtocol
  = lens _ocsUploadProtocol
      (\ s a -> s{_ocsUploadProtocol = a})

-- | OAuth access token.
ocsAccessToken :: Lens' OtherContactsSearch (Maybe Text)
ocsAccessToken
  = lens _ocsAccessToken
      (\ s a -> s{_ocsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ocsUploadType :: Lens' OtherContactsSearch (Maybe Text)
ocsUploadType
  = lens _ocsUploadType
      (\ s a -> s{_ocsUploadType = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * emailAddresses * metadata * names *
-- phoneNumbers
ocsReadMask :: Lens' OtherContactsSearch (Maybe GFieldMask)
ocsReadMask
  = lens _ocsReadMask (\ s a -> s{_ocsReadMask = a})

-- | Required. The plain-text query for the request. The query is used to
-- match prefix phrases of the fields on a person. For example, a person
-- with name \"foo name\" matches queries such as \"f\", \"fo\", \"foo\",
-- \"foo n\", \"nam\", etc., but not \"oo n\".
ocsQuery :: Lens' OtherContactsSearch (Maybe Text)
ocsQuery = lens _ocsQuery (\ s a -> s{_ocsQuery = a})

-- | Optional. The number of results to return. Defaults to 10 if field is
-- not set, or set to 0. Values greater than 30 will be capped to 30.
ocsPageSize :: Lens' OtherContactsSearch (Maybe Int32)
ocsPageSize
  = lens _ocsPageSize (\ s a -> s{_ocsPageSize = a}) .
      mapping _Coerce

-- | JSONP
ocsCallback :: Lens' OtherContactsSearch (Maybe Text)
ocsCallback
  = lens _ocsCallback (\ s a -> s{_ocsCallback = a})

instance GoogleRequest OtherContactsSearch where
        type Rs OtherContactsSearch = SearchResponse
        type Scopes OtherContactsSearch =
             '["https://www.googleapis.com/auth/contacts.other.readonly"]
        requestClient OtherContactsSearch'{..}
          = go _ocsXgafv _ocsUploadProtocol _ocsAccessToken
              _ocsUploadType
              _ocsReadMask
              _ocsQuery
              _ocsPageSize
              _ocsCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy OtherContactsSearchResource)
                      mempty

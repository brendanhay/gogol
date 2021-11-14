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
-- Module      : Network.Google.Resource.People.OtherContacts.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all \"Other contacts\", that is contacts that are not in a contact
-- group. \"Other contacts\" are typically auto created contacts from
-- interactions. Sync tokens expire 7 days after the full sync. A request
-- with an expired sync token will result in a 410 error. In the case of
-- such an error clients should make a full sync request without a
-- \`sync_token\`. The first page of a full sync request has an additional
-- quota. If the quota is exceeded, a 429 error will be returned. This
-- quota is fixed and can not be increased. When the \`sync_token\` is
-- specified, resources deleted since the last sync will be returned as a
-- person with \`PersonMetadata.deleted\` set to true. When the
-- \`page_token\` or \`sync_token\` is specified, all other request
-- parameters must match the first call. Writes may have a propagation
-- delay of several minutes for sync requests. Incremental syncs are not
-- intended for read-after-write use cases. See example usage at [List the
-- user\'s other contacts that have
-- changed](\/people\/v1\/other-contacts#list_the_users_other_contacts_that_have_changed).
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.otherContacts.list@.
module Network.Google.Resource.People.OtherContacts.List
    (
    -- * REST Resource
      OtherContactsListResource

    -- * Creating a Request
    , otherContactsList
    , OtherContactsList

    -- * Request Lenses
    , oclSyncToken
    , oclXgafv
    , oclUploadProtocol
    , oclRequestSyncToken
    , oclAccessToken
    , oclUploadType
    , oclReadMask
    , oclSources
    , oclPageToken
    , oclPageSize
    , oclCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.otherContacts.list@ method which the
-- 'OtherContactsList' request conforms to.
type OtherContactsListResource =
     "v1" :>
       "otherContacts" :>
         QueryParam "syncToken" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "requestSyncToken" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "readMask" GFieldMask :>
                       QueryParams "sources" OtherContactsListSources :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListOtherContactsResponse

-- | List all \"Other contacts\", that is contacts that are not in a contact
-- group. \"Other contacts\" are typically auto created contacts from
-- interactions. Sync tokens expire 7 days after the full sync. A request
-- with an expired sync token will result in a 410 error. In the case of
-- such an error clients should make a full sync request without a
-- \`sync_token\`. The first page of a full sync request has an additional
-- quota. If the quota is exceeded, a 429 error will be returned. This
-- quota is fixed and can not be increased. When the \`sync_token\` is
-- specified, resources deleted since the last sync will be returned as a
-- person with \`PersonMetadata.deleted\` set to true. When the
-- \`page_token\` or \`sync_token\` is specified, all other request
-- parameters must match the first call. Writes may have a propagation
-- delay of several minutes for sync requests. Incremental syncs are not
-- intended for read-after-write use cases. See example usage at [List the
-- user\'s other contacts that have
-- changed](\/people\/v1\/other-contacts#list_the_users_other_contacts_that_have_changed).
--
-- /See:/ 'otherContactsList' smart constructor.
data OtherContactsList =
  OtherContactsList'
    { _oclSyncToken :: !(Maybe Text)
    , _oclXgafv :: !(Maybe Xgafv)
    , _oclUploadProtocol :: !(Maybe Text)
    , _oclRequestSyncToken :: !(Maybe Bool)
    , _oclAccessToken :: !(Maybe Text)
    , _oclUploadType :: !(Maybe Text)
    , _oclReadMask :: !(Maybe GFieldMask)
    , _oclSources :: !(Maybe [OtherContactsListSources])
    , _oclPageToken :: !(Maybe Text)
    , _oclPageSize :: !(Maybe (Textual Int32))
    , _oclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OtherContactsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclSyncToken'
--
-- * 'oclXgafv'
--
-- * 'oclUploadProtocol'
--
-- * 'oclRequestSyncToken'
--
-- * 'oclAccessToken'
--
-- * 'oclUploadType'
--
-- * 'oclReadMask'
--
-- * 'oclSources'
--
-- * 'oclPageToken'
--
-- * 'oclPageSize'
--
-- * 'oclCallback'
otherContactsList
    :: OtherContactsList
otherContactsList =
  OtherContactsList'
    { _oclSyncToken = Nothing
    , _oclXgafv = Nothing
    , _oclUploadProtocol = Nothing
    , _oclRequestSyncToken = Nothing
    , _oclAccessToken = Nothing
    , _oclUploadType = Nothing
    , _oclReadMask = Nothing
    , _oclSources = Nothing
    , _oclPageToken = Nothing
    , _oclPageSize = Nothing
    , _oclCallback = Nothing
    }


-- | Optional. A sync token, received from a previous response
-- \`next_sync_token\` Provide this to retrieve only the resources changed
-- since the last request. When syncing, all other parameters provided to
-- \`otherContacts.list\` must match the first call that provided the sync
-- token. More details about sync behavior at \`otherContacts.list\`.
oclSyncToken :: Lens' OtherContactsList (Maybe Text)
oclSyncToken
  = lens _oclSyncToken (\ s a -> s{_oclSyncToken = a})

-- | V1 error format.
oclXgafv :: Lens' OtherContactsList (Maybe Xgafv)
oclXgafv = lens _oclXgafv (\ s a -> s{_oclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oclUploadProtocol :: Lens' OtherContactsList (Maybe Text)
oclUploadProtocol
  = lens _oclUploadProtocol
      (\ s a -> s{_oclUploadProtocol = a})

-- | Optional. Whether the response should return \`next_sync_token\` on the
-- last page of results. It can be used to get incremental changes since
-- the last request by setting it on the request \`sync_token\`. More
-- details about sync behavior at \`otherContacts.list\`.
oclRequestSyncToken :: Lens' OtherContactsList (Maybe Bool)
oclRequestSyncToken
  = lens _oclRequestSyncToken
      (\ s a -> s{_oclRequestSyncToken = a})

-- | OAuth access token.
oclAccessToken :: Lens' OtherContactsList (Maybe Text)
oclAccessToken
  = lens _oclAccessToken
      (\ s a -> s{_oclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oclUploadType :: Lens' OtherContactsList (Maybe Text)
oclUploadType
  = lens _oclUploadType
      (\ s a -> s{_oclUploadType = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * emailAddresses * metadata * names *
-- phoneNumbers * photos
oclReadMask :: Lens' OtherContactsList (Maybe GFieldMask)
oclReadMask
  = lens _oclReadMask (\ s a -> s{_oclReadMask = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT if not set.
oclSources :: Lens' OtherContactsList [OtherContactsListSources]
oclSources
  = lens _oclSources (\ s a -> s{_oclSources = a}) .
      _Default
      . _Coerce

-- | Optional. A page token, received from a previous response
-- \`next_page_token\`. Provide this to retrieve the subsequent page. When
-- paginating, all other parameters provided to \`otherContacts.list\` must
-- match the first call that provided the page token.
oclPageToken :: Lens' OtherContactsList (Maybe Text)
oclPageToken
  = lens _oclPageToken (\ s a -> s{_oclPageToken = a})

-- | Optional. The number of \"Other contacts\" to include in the response.
-- Valid values are between 1 and 1000, inclusive. Defaults to 100 if not
-- set or set to 0.
oclPageSize :: Lens' OtherContactsList (Maybe Int32)
oclPageSize
  = lens _oclPageSize (\ s a -> s{_oclPageSize = a}) .
      mapping _Coerce

-- | JSONP
oclCallback :: Lens' OtherContactsList (Maybe Text)
oclCallback
  = lens _oclCallback (\ s a -> s{_oclCallback = a})

instance GoogleRequest OtherContactsList where
        type Rs OtherContactsList = ListOtherContactsResponse
        type Scopes OtherContactsList =
             '["https://www.googleapis.com/auth/contacts.other.readonly"]
        requestClient OtherContactsList'{..}
          = go _oclSyncToken _oclXgafv _oclUploadProtocol
              _oclRequestSyncToken
              _oclAccessToken
              _oclUploadType
              _oclReadMask
              (_oclSources ^. _Default)
              _oclPageToken
              _oclPageSize
              _oclCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy OtherContactsListResource)
                      mempty

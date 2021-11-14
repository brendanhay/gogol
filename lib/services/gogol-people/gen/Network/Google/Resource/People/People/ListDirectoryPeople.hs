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
-- Module      : Network.Google.Resource.People.People.ListDirectoryPeople
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of domain profiles and domain contacts in the
-- authenticated user\'s domain directory. When the \`sync_token\` is
-- specified, resources deleted since the last sync will be returned as a
-- person with \`PersonMetadata.deleted\` set to true. When the
-- \`page_token\` or \`sync_token\` is specified, all other request
-- parameters must match the first call. Writes may have a propagation
-- delay of several minutes for sync requests. Incremental syncs are not
-- intended for read-after-write use cases. See example usage at [List the
-- directory people that have
-- changed](\/people\/v1\/directory#list_the_directory_people_that_have_changed).
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.listDirectoryPeople@.
module Network.Google.Resource.People.People.ListDirectoryPeople
    (
    -- * REST Resource
      PeopleListDirectoryPeopleResource

    -- * Creating a Request
    , peopleListDirectoryPeople
    , PeopleListDirectoryPeople

    -- * Request Lenses
    , pldpSyncToken
    , pldpXgafv
    , pldpUploadProtocol
    , pldpRequestSyncToken
    , pldpAccessToken
    , pldpUploadType
    , pldpReadMask
    , pldpSources
    , pldpPageToken
    , pldpPageSize
    , pldpMergeSources
    , pldpCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.listDirectoryPeople@ method which the
-- 'PeopleListDirectoryPeople' request conforms to.
type PeopleListDirectoryPeopleResource =
     "v1" :>
       "people:listDirectoryPeople" :>
         QueryParam "syncToken" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "requestSyncToken" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "readMask" GFieldMask :>
                       QueryParams "sources"
                         PeopleListDirectoryPeopleSources
                         :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParams "mergeSources"
                               PeopleListDirectoryPeopleMergeSources
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListDirectoryPeopleResponse

-- | Provides a list of domain profiles and domain contacts in the
-- authenticated user\'s domain directory. When the \`sync_token\` is
-- specified, resources deleted since the last sync will be returned as a
-- person with \`PersonMetadata.deleted\` set to true. When the
-- \`page_token\` or \`sync_token\` is specified, all other request
-- parameters must match the first call. Writes may have a propagation
-- delay of several minutes for sync requests. Incremental syncs are not
-- intended for read-after-write use cases. See example usage at [List the
-- directory people that have
-- changed](\/people\/v1\/directory#list_the_directory_people_that_have_changed).
--
-- /See:/ 'peopleListDirectoryPeople' smart constructor.
data PeopleListDirectoryPeople =
  PeopleListDirectoryPeople'
    { _pldpSyncToken :: !(Maybe Text)
    , _pldpXgafv :: !(Maybe Xgafv)
    , _pldpUploadProtocol :: !(Maybe Text)
    , _pldpRequestSyncToken :: !(Maybe Bool)
    , _pldpAccessToken :: !(Maybe Text)
    , _pldpUploadType :: !(Maybe Text)
    , _pldpReadMask :: !(Maybe GFieldMask)
    , _pldpSources :: !(Maybe [PeopleListDirectoryPeopleSources])
    , _pldpPageToken :: !(Maybe Text)
    , _pldpPageSize :: !(Maybe (Textual Int32))
    , _pldpMergeSources :: !(Maybe [PeopleListDirectoryPeopleMergeSources])
    , _pldpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleListDirectoryPeople' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldpSyncToken'
--
-- * 'pldpXgafv'
--
-- * 'pldpUploadProtocol'
--
-- * 'pldpRequestSyncToken'
--
-- * 'pldpAccessToken'
--
-- * 'pldpUploadType'
--
-- * 'pldpReadMask'
--
-- * 'pldpSources'
--
-- * 'pldpPageToken'
--
-- * 'pldpPageSize'
--
-- * 'pldpMergeSources'
--
-- * 'pldpCallback'
peopleListDirectoryPeople
    :: PeopleListDirectoryPeople
peopleListDirectoryPeople =
  PeopleListDirectoryPeople'
    { _pldpSyncToken = Nothing
    , _pldpXgafv = Nothing
    , _pldpUploadProtocol = Nothing
    , _pldpRequestSyncToken = Nothing
    , _pldpAccessToken = Nothing
    , _pldpUploadType = Nothing
    , _pldpReadMask = Nothing
    , _pldpSources = Nothing
    , _pldpPageToken = Nothing
    , _pldpPageSize = Nothing
    , _pldpMergeSources = Nothing
    , _pldpCallback = Nothing
    }


-- | Optional. A sync token, received from a previous response
-- \`next_sync_token\` Provide this to retrieve only the resources changed
-- since the last request. When syncing, all other parameters provided to
-- \`people.listDirectoryPeople\` must match the first call that provided
-- the sync token. More details about sync behavior at
-- \`people.listDirectoryPeople\`.
pldpSyncToken :: Lens' PeopleListDirectoryPeople (Maybe Text)
pldpSyncToken
  = lens _pldpSyncToken
      (\ s a -> s{_pldpSyncToken = a})

-- | V1 error format.
pldpXgafv :: Lens' PeopleListDirectoryPeople (Maybe Xgafv)
pldpXgafv
  = lens _pldpXgafv (\ s a -> s{_pldpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldpUploadProtocol :: Lens' PeopleListDirectoryPeople (Maybe Text)
pldpUploadProtocol
  = lens _pldpUploadProtocol
      (\ s a -> s{_pldpUploadProtocol = a})

-- | Optional. Whether the response should return \`next_sync_token\`. It can
-- be used to get incremental changes since the last request by setting it
-- on the request \`sync_token\`. More details about sync behavior at
-- \`people.listDirectoryPeople\`.
pldpRequestSyncToken :: Lens' PeopleListDirectoryPeople (Maybe Bool)
pldpRequestSyncToken
  = lens _pldpRequestSyncToken
      (\ s a -> s{_pldpRequestSyncToken = a})

-- | OAuth access token.
pldpAccessToken :: Lens' PeopleListDirectoryPeople (Maybe Text)
pldpAccessToken
  = lens _pldpAccessToken
      (\ s a -> s{_pldpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldpUploadType :: Lens' PeopleListDirectoryPeople (Maybe Text)
pldpUploadType
  = lens _pldpUploadType
      (\ s a -> s{_pldpUploadType = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * addresses * ageRanges * biographies *
-- birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
-- events * externalIds * genders * imClients * interests * locales *
-- locations * memberships * metadata * miscKeywords * names * nicknames *
-- occupations * organizations * phoneNumbers * photos * relations *
-- sipAddresses * skills * urls * userDefined
pldpReadMask :: Lens' PeopleListDirectoryPeople (Maybe GFieldMask)
pldpReadMask
  = lens _pldpReadMask (\ s a -> s{_pldpReadMask = a})

-- | Required. Directory sources to return.
pldpSources :: Lens' PeopleListDirectoryPeople [PeopleListDirectoryPeopleSources]
pldpSources
  = lens _pldpSources (\ s a -> s{_pldpSources = a}) .
      _Default
      . _Coerce

-- | Optional. A page token, received from a previous response
-- \`next_page_token\`. Provide this to retrieve the subsequent page. When
-- paginating, all other parameters provided to
-- \`people.listDirectoryPeople\` must match the first call that provided
-- the page token.
pldpPageToken :: Lens' PeopleListDirectoryPeople (Maybe Text)
pldpPageToken
  = lens _pldpPageToken
      (\ s a -> s{_pldpPageToken = a})

-- | Optional. The number of people to include in the response. Valid values
-- are between 1 and 1000, inclusive. Defaults to 100 if not set or set to
-- 0.
pldpPageSize :: Lens' PeopleListDirectoryPeople (Maybe Int32)
pldpPageSize
  = lens _pldpPageSize (\ s a -> s{_pldpPageSize = a})
      . mapping _Coerce

-- | Optional. Additional data to merge into the directory sources if they
-- are connected through verified join keys such as email addresses or
-- phone numbers.
pldpMergeSources :: Lens' PeopleListDirectoryPeople [PeopleListDirectoryPeopleMergeSources]
pldpMergeSources
  = lens _pldpMergeSources
      (\ s a -> s{_pldpMergeSources = a})
      . _Default
      . _Coerce

-- | JSONP
pldpCallback :: Lens' PeopleListDirectoryPeople (Maybe Text)
pldpCallback
  = lens _pldpCallback (\ s a -> s{_pldpCallback = a})

instance GoogleRequest PeopleListDirectoryPeople
         where
        type Rs PeopleListDirectoryPeople =
             ListDirectoryPeopleResponse
        type Scopes PeopleListDirectoryPeople =
             '["https://www.googleapis.com/auth/directory.readonly"]
        requestClient PeopleListDirectoryPeople'{..}
          = go _pldpSyncToken _pldpXgafv _pldpUploadProtocol
              _pldpRequestSyncToken
              _pldpAccessToken
              _pldpUploadType
              _pldpReadMask
              (_pldpSources ^. _Default)
              _pldpPageToken
              _pldpPageSize
              (_pldpMergeSources ^. _Default)
              _pldpCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleListDirectoryPeopleResource)
                      mempty

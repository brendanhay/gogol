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
-- Module      : Network.Google.Resource.People.People.SearchDirectoryPeople
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of domain profiles and domain contacts in the
-- authenticated user\'s domain directory that match the search query.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.searchDirectoryPeople@.
module Network.Google.Resource.People.People.SearchDirectoryPeople
    (
    -- * REST Resource
      PeopleSearchDirectoryPeopleResource

    -- * Creating a Request
    , peopleSearchDirectoryPeople
    , PeopleSearchDirectoryPeople

    -- * Request Lenses
    , psdpXgafv
    , psdpUploadProtocol
    , psdpAccessToken
    , psdpUploadType
    , psdpReadMask
    , psdpSources
    , psdpQuery
    , psdpPageToken
    , psdpPageSize
    , psdpMergeSources
    , psdpCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.searchDirectoryPeople@ method which the
-- 'PeopleSearchDirectoryPeople' request conforms to.
type PeopleSearchDirectoryPeopleResource =
     "v1" :>
       "people:searchDirectoryPeople" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "readMask" GFieldMask :>
                   QueryParams "sources"
                     PeopleSearchDirectoryPeopleSources
                     :>
                     QueryParam "query" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParams "mergeSources"
                             PeopleSearchDirectoryPeopleMergeSources
                             :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] SearchDirectoryPeopleResponse

-- | Provides a list of domain profiles and domain contacts in the
-- authenticated user\'s domain directory that match the search query.
--
-- /See:/ 'peopleSearchDirectoryPeople' smart constructor.
data PeopleSearchDirectoryPeople =
  PeopleSearchDirectoryPeople'
    { _psdpXgafv :: !(Maybe Xgafv)
    , _psdpUploadProtocol :: !(Maybe Text)
    , _psdpAccessToken :: !(Maybe Text)
    , _psdpUploadType :: !(Maybe Text)
    , _psdpReadMask :: !(Maybe GFieldMask)
    , _psdpSources :: !(Maybe [PeopleSearchDirectoryPeopleSources])
    , _psdpQuery :: !(Maybe Text)
    , _psdpPageToken :: !(Maybe Text)
    , _psdpPageSize :: !(Maybe (Textual Int32))
    , _psdpMergeSources :: !(Maybe [PeopleSearchDirectoryPeopleMergeSources])
    , _psdpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleSearchDirectoryPeople' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdpXgafv'
--
-- * 'psdpUploadProtocol'
--
-- * 'psdpAccessToken'
--
-- * 'psdpUploadType'
--
-- * 'psdpReadMask'
--
-- * 'psdpSources'
--
-- * 'psdpQuery'
--
-- * 'psdpPageToken'
--
-- * 'psdpPageSize'
--
-- * 'psdpMergeSources'
--
-- * 'psdpCallback'
peopleSearchDirectoryPeople
    :: PeopleSearchDirectoryPeople
peopleSearchDirectoryPeople =
  PeopleSearchDirectoryPeople'
    { _psdpXgafv = Nothing
    , _psdpUploadProtocol = Nothing
    , _psdpAccessToken = Nothing
    , _psdpUploadType = Nothing
    , _psdpReadMask = Nothing
    , _psdpSources = Nothing
    , _psdpQuery = Nothing
    , _psdpPageToken = Nothing
    , _psdpPageSize = Nothing
    , _psdpMergeSources = Nothing
    , _psdpCallback = Nothing
    }


-- | V1 error format.
psdpXgafv :: Lens' PeopleSearchDirectoryPeople (Maybe Xgafv)
psdpXgafv
  = lens _psdpXgafv (\ s a -> s{_psdpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdpUploadProtocol :: Lens' PeopleSearchDirectoryPeople (Maybe Text)
psdpUploadProtocol
  = lens _psdpUploadProtocol
      (\ s a -> s{_psdpUploadProtocol = a})

-- | OAuth access token.
psdpAccessToken :: Lens' PeopleSearchDirectoryPeople (Maybe Text)
psdpAccessToken
  = lens _psdpAccessToken
      (\ s a -> s{_psdpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdpUploadType :: Lens' PeopleSearchDirectoryPeople (Maybe Text)
psdpUploadType
  = lens _psdpUploadType
      (\ s a -> s{_psdpUploadType = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * addresses * ageRanges * biographies *
-- birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
-- events * externalIds * genders * imClients * interests * locales *
-- locations * memberships * metadata * miscKeywords * names * nicknames *
-- occupations * organizations * phoneNumbers * photos * relations *
-- sipAddresses * skills * urls * userDefined
psdpReadMask :: Lens' PeopleSearchDirectoryPeople (Maybe GFieldMask)
psdpReadMask
  = lens _psdpReadMask (\ s a -> s{_psdpReadMask = a})

-- | Required. Directory sources to return.
psdpSources :: Lens' PeopleSearchDirectoryPeople [PeopleSearchDirectoryPeopleSources]
psdpSources
  = lens _psdpSources (\ s a -> s{_psdpSources = a}) .
      _Default
      . _Coerce

-- | Required. Prefix query that matches fields in the person. Does NOT use
-- the read_mask for determining what fields to match.
psdpQuery :: Lens' PeopleSearchDirectoryPeople (Maybe Text)
psdpQuery
  = lens _psdpQuery (\ s a -> s{_psdpQuery = a})

-- | Optional. A page token, received from a previous response
-- \`next_page_token\`. Provide this to retrieve the subsequent page. When
-- paginating, all other parameters provided to \`SearchDirectoryPeople\`
-- must match the first call that provided the page token.
psdpPageToken :: Lens' PeopleSearchDirectoryPeople (Maybe Text)
psdpPageToken
  = lens _psdpPageToken
      (\ s a -> s{_psdpPageToken = a})

-- | Optional. The number of people to include in the response. Valid values
-- are between 1 and 500, inclusive. Defaults to 100 if not set or set to
-- 0.
psdpPageSize :: Lens' PeopleSearchDirectoryPeople (Maybe Int32)
psdpPageSize
  = lens _psdpPageSize (\ s a -> s{_psdpPageSize = a})
      . mapping _Coerce

-- | Optional. Additional data to merge into the directory sources if they
-- are connected through verified join keys such as email addresses or
-- phone numbers.
psdpMergeSources :: Lens' PeopleSearchDirectoryPeople [PeopleSearchDirectoryPeopleMergeSources]
psdpMergeSources
  = lens _psdpMergeSources
      (\ s a -> s{_psdpMergeSources = a})
      . _Default
      . _Coerce

-- | JSONP
psdpCallback :: Lens' PeopleSearchDirectoryPeople (Maybe Text)
psdpCallback
  = lens _psdpCallback (\ s a -> s{_psdpCallback = a})

instance GoogleRequest PeopleSearchDirectoryPeople
         where
        type Rs PeopleSearchDirectoryPeople =
             SearchDirectoryPeopleResponse
        type Scopes PeopleSearchDirectoryPeople =
             '["https://www.googleapis.com/auth/directory.readonly"]
        requestClient PeopleSearchDirectoryPeople'{..}
          = go _psdpXgafv _psdpUploadProtocol _psdpAccessToken
              _psdpUploadType
              _psdpReadMask
              (_psdpSources ^. _Default)
              _psdpQuery
              _psdpPageToken
              _psdpPageSize
              (_psdpMergeSources ^. _Default)
              _psdpCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleSearchDirectoryPeopleResource)
                      mempty

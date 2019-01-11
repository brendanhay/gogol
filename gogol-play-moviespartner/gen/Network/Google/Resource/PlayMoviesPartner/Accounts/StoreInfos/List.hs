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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List StoreInfos owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.storeInfos.list@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.List
    (
    -- * REST Resource
      AccountsStoreInfosListResource

    -- * Creating a Request
    , accountsStoreInfosList
    , AccountsStoreInfosList

    -- * Request Lenses
    , asilPphNames
    , asilXgafv
    , asilStudioNames
    , asilVideoIds
    , asilUploadProtocol
    , asilPp
    , asilAccessToken
    , asilSeasonIds
    , asilMids
    , asilUploadType
    , asilCountries
    , asilVideoId
    , asilAccountId
    , asilBearerToken
    , asilName
    , asilPageToken
    , asilPageSize
    , asilCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.storeInfos.list@ method which the
-- 'AccountsStoreInfosList' request conforms to.
type AccountsStoreInfosListResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "storeInfos" :>
             QueryParams "pphNames" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParams "studioNames" Text :>
                   QueryParams "videoIds" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParams "seasonIds" Text :>
                             QueryParams "mids" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParams "countries" Text :>
                                   QueryParam "videoId" Text :>
                                     QueryParam "bearer_token" Text :>
                                       QueryParam "name" Text :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "pageSize" (Textual Int32)
                                             :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON]
                                                   ListStoreInfosResponse

-- | List StoreInfos owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsStoreInfosList' smart constructor.
data AccountsStoreInfosList = AccountsStoreInfosList'
    { _asilPphNames       :: !(Maybe [Text])
    , _asilXgafv          :: !(Maybe Xgafv)
    , _asilStudioNames    :: !(Maybe [Text])
    , _asilVideoIds       :: !(Maybe [Text])
    , _asilUploadProtocol :: !(Maybe Text)
    , _asilPp             :: !Bool
    , _asilAccessToken    :: !(Maybe Text)
    , _asilSeasonIds      :: !(Maybe [Text])
    , _asilMids           :: !(Maybe [Text])
    , _asilUploadType     :: !(Maybe Text)
    , _asilCountries      :: !(Maybe [Text])
    , _asilVideoId        :: !(Maybe Text)
    , _asilAccountId      :: !Text
    , _asilBearerToken    :: !(Maybe Text)
    , _asilName           :: !(Maybe Text)
    , _asilPageToken      :: !(Maybe Text)
    , _asilPageSize       :: !(Maybe (Textual Int32))
    , _asilCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsStoreInfosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asilPphNames'
--
-- * 'asilXgafv'
--
-- * 'asilStudioNames'
--
-- * 'asilVideoIds'
--
-- * 'asilUploadProtocol'
--
-- * 'asilPp'
--
-- * 'asilAccessToken'
--
-- * 'asilSeasonIds'
--
-- * 'asilMids'
--
-- * 'asilUploadType'
--
-- * 'asilCountries'
--
-- * 'asilVideoId'
--
-- * 'asilAccountId'
--
-- * 'asilBearerToken'
--
-- * 'asilName'
--
-- * 'asilPageToken'
--
-- * 'asilPageSize'
--
-- * 'asilCallback'
accountsStoreInfosList
    :: Text -- ^ 'asilAccountId'
    -> AccountsStoreInfosList
accountsStoreInfosList pAsilAccountId_ =
    AccountsStoreInfosList'
    { _asilPphNames = Nothing
    , _asilXgafv = Nothing
    , _asilStudioNames = Nothing
    , _asilVideoIds = Nothing
    , _asilUploadProtocol = Nothing
    , _asilPp = True
    , _asilAccessToken = Nothing
    , _asilSeasonIds = Nothing
    , _asilMids = Nothing
    , _asilUploadType = Nothing
    , _asilCountries = Nothing
    , _asilVideoId = Nothing
    , _asilAccountId = pAsilAccountId_
    , _asilBearerToken = Nothing
    , _asilName = Nothing
    , _asilPageToken = Nothing
    , _asilPageSize = Nothing
    , _asilCallback = Nothing
    }

-- | See _List methods rules_ for info about this field.
asilPphNames :: Lens' AccountsStoreInfosList [Text]
asilPphNames
  = lens _asilPphNames (\ s a -> s{_asilPphNames = a})
      . _Default
      . _Coerce

-- | V1 error format.
asilXgafv :: Lens' AccountsStoreInfosList (Maybe Xgafv)
asilXgafv
  = lens _asilXgafv (\ s a -> s{_asilXgafv = a})

-- | See _List methods rules_ for info about this field.
asilStudioNames :: Lens' AccountsStoreInfosList [Text]
asilStudioNames
  = lens _asilStudioNames
      (\ s a -> s{_asilStudioNames = a})
      . _Default
      . _Coerce

-- | Filter StoreInfos that match any of the given \`video_id\`s.
asilVideoIds :: Lens' AccountsStoreInfosList [Text]
asilVideoIds
  = lens _asilVideoIds (\ s a -> s{_asilVideoIds = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asilUploadProtocol :: Lens' AccountsStoreInfosList (Maybe Text)
asilUploadProtocol
  = lens _asilUploadProtocol
      (\ s a -> s{_asilUploadProtocol = a})

-- | Pretty-print response.
asilPp :: Lens' AccountsStoreInfosList Bool
asilPp = lens _asilPp (\ s a -> s{_asilPp = a})

-- | OAuth access token.
asilAccessToken :: Lens' AccountsStoreInfosList (Maybe Text)
asilAccessToken
  = lens _asilAccessToken
      (\ s a -> s{_asilAccessToken = a})

-- | Filter StoreInfos that match any of the given \`season_id\`s.
asilSeasonIds :: Lens' AccountsStoreInfosList [Text]
asilSeasonIds
  = lens _asilSeasonIds
      (\ s a -> s{_asilSeasonIds = a})
      . _Default
      . _Coerce

-- | Filter StoreInfos that match any of the given \`mid\`s.
asilMids :: Lens' AccountsStoreInfosList [Text]
asilMids
  = lens _asilMids (\ s a -> s{_asilMids = a}) .
      _Default
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asilUploadType :: Lens' AccountsStoreInfosList (Maybe Text)
asilUploadType
  = lens _asilUploadType
      (\ s a -> s{_asilUploadType = a})

-- | Filter StoreInfos that match (case-insensitive) any of the given country
-- codes, using the \"ISO 3166-1 alpha-2\" format (examples: \"US\",
-- \"us\", \"Us\").
asilCountries :: Lens' AccountsStoreInfosList [Text]
asilCountries
  = lens _asilCountries
      (\ s a -> s{_asilCountries = a})
      . _Default
      . _Coerce

-- | Filter StoreInfos that match a given \`video_id\`. NOTE: this field is
-- deprecated and will be removed on V2; \`video_ids\` should be used
-- instead.
asilVideoId :: Lens' AccountsStoreInfosList (Maybe Text)
asilVideoId
  = lens _asilVideoId (\ s a -> s{_asilVideoId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
asilAccountId :: Lens' AccountsStoreInfosList Text
asilAccountId
  = lens _asilAccountId
      (\ s a -> s{_asilAccountId = a})

-- | OAuth bearer token.
asilBearerToken :: Lens' AccountsStoreInfosList (Maybe Text)
asilBearerToken
  = lens _asilBearerToken
      (\ s a -> s{_asilBearerToken = a})

-- | Filter that matches StoreInfos with a \`name\` or \`show_name\` that
-- contains the given case-insensitive name.
asilName :: Lens' AccountsStoreInfosList (Maybe Text)
asilName = lens _asilName (\ s a -> s{_asilName = a})

-- | See _List methods rules_ for info about this field.
asilPageToken :: Lens' AccountsStoreInfosList (Maybe Text)
asilPageToken
  = lens _asilPageToken
      (\ s a -> s{_asilPageToken = a})

-- | See _List methods rules_ for info about this field.
asilPageSize :: Lens' AccountsStoreInfosList (Maybe Int32)
asilPageSize
  = lens _asilPageSize (\ s a -> s{_asilPageSize = a})
      . mapping _Coerce

-- | JSONP
asilCallback :: Lens' AccountsStoreInfosList (Maybe Text)
asilCallback
  = lens _asilCallback (\ s a -> s{_asilCallback = a})

instance GoogleRequest AccountsStoreInfosList where
        type Rs AccountsStoreInfosList =
             ListStoreInfosResponse
        type Scopes AccountsStoreInfosList =
             '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
        requestClient AccountsStoreInfosList'{..}
          = go _asilAccountId (_asilPphNames ^. _Default)
              _asilXgafv
              (_asilStudioNames ^. _Default)
              (_asilVideoIds ^. _Default)
              _asilUploadProtocol
              (Just _asilPp)
              _asilAccessToken
              (_asilSeasonIds ^. _Default)
              (_asilMids ^. _Default)
              _asilUploadType
              (_asilCountries ^. _Default)
              _asilVideoId
              _asilBearerToken
              _asilName
              _asilPageToken
              _asilPageSize
              _asilCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsStoreInfosListResource)
                      mempty

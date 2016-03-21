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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Avails owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.avails.list@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.List
    (
    -- * REST Resource
      AccountsAvailsListResource

    -- * Creating a Request
    , accountsAvailsList
    , AccountsAvailsList

    -- * Request Lenses
    , aalAltId
    , aalPphNames
    , aalXgafv
    , aalStudioNames
    , aalVideoIds
    , aalUploadProtocol
    , aalPp
    , aalAccessToken
    , aalUploadType
    , aalTerritories
    , aalAccountId
    , aalBearerToken
    , aalPageToken
    , aalTitle
    , aalPageSize
    , aalCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.avails.list@ method which the
-- 'AccountsAvailsList' request conforms to.
type AccountsAvailsListResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "avails" :>
             QueryParam "altId" Text :>
               QueryParams "pphNames" Text :>
                 QueryParam "$.xgafv" Text :>
                   QueryParams "studioNames" Text :>
                     QueryParams "videoIds" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParams "territories" Text :>
                                 QueryParam "bearer_token" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "title" Text :>
                                       QueryParam "pageSize" (Textual Int32) :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] ListAvailsResponse

-- | List Avails owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsAvailsList' smart constructor.
data AccountsAvailsList = AccountsAvailsList'
    { _aalAltId          :: !(Maybe Text)
    , _aalPphNames       :: !(Maybe [Text])
    , _aalXgafv          :: !(Maybe Text)
    , _aalStudioNames    :: !(Maybe [Text])
    , _aalVideoIds       :: !(Maybe [Text])
    , _aalUploadProtocol :: !(Maybe Text)
    , _aalPp             :: !Bool
    , _aalAccessToken    :: !(Maybe Text)
    , _aalUploadType     :: !(Maybe Text)
    , _aalTerritories    :: !(Maybe [Text])
    , _aalAccountId      :: !Text
    , _aalBearerToken    :: !(Maybe Text)
    , _aalPageToken      :: !(Maybe Text)
    , _aalTitle          :: !(Maybe Text)
    , _aalPageSize       :: !(Maybe (Textual Int32))
    , _aalCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAvailsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalAltId'
--
-- * 'aalPphNames'
--
-- * 'aalXgafv'
--
-- * 'aalStudioNames'
--
-- * 'aalVideoIds'
--
-- * 'aalUploadProtocol'
--
-- * 'aalPp'
--
-- * 'aalAccessToken'
--
-- * 'aalUploadType'
--
-- * 'aalTerritories'
--
-- * 'aalAccountId'
--
-- * 'aalBearerToken'
--
-- * 'aalPageToken'
--
-- * 'aalTitle'
--
-- * 'aalPageSize'
--
-- * 'aalCallback'
accountsAvailsList
    :: Text -- ^ 'aalAccountId'
    -> AccountsAvailsList
accountsAvailsList pAalAccountId_ =
    AccountsAvailsList'
    { _aalAltId = Nothing
    , _aalPphNames = Nothing
    , _aalXgafv = Nothing
    , _aalStudioNames = Nothing
    , _aalVideoIds = Nothing
    , _aalUploadProtocol = Nothing
    , _aalPp = True
    , _aalAccessToken = Nothing
    , _aalUploadType = Nothing
    , _aalTerritories = Nothing
    , _aalAccountId = pAalAccountId_
    , _aalBearerToken = Nothing
    , _aalPageToken = Nothing
    , _aalTitle = Nothing
    , _aalPageSize = Nothing
    , _aalCallback = Nothing
    }

-- | Filter Avails that match a case-insensitive, partner-specific custom id.
aalAltId :: Lens' AccountsAvailsList (Maybe Text)
aalAltId = lens _aalAltId (\ s a -> s{_aalAltId = a})

-- | See _List methods rules_ for info about this field.
aalPphNames :: Lens' AccountsAvailsList [Text]
aalPphNames
  = lens _aalPphNames (\ s a -> s{_aalPphNames = a}) .
      _Default
      . _Coerce

-- | V1 error format.
aalXgafv :: Lens' AccountsAvailsList (Maybe Text)
aalXgafv = lens _aalXgafv (\ s a -> s{_aalXgafv = a})

-- | See _List methods rules_ for info about this field.
aalStudioNames :: Lens' AccountsAvailsList [Text]
aalStudioNames
  = lens _aalStudioNames
      (\ s a -> s{_aalStudioNames = a})
      . _Default
      . _Coerce

-- | Filter Avails that match any of the given \`video_id\`s.
aalVideoIds :: Lens' AccountsAvailsList [Text]
aalVideoIds
  = lens _aalVideoIds (\ s a -> s{_aalVideoIds = a}) .
      _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aalUploadProtocol :: Lens' AccountsAvailsList (Maybe Text)
aalUploadProtocol
  = lens _aalUploadProtocol
      (\ s a -> s{_aalUploadProtocol = a})

-- | Pretty-print response.
aalPp :: Lens' AccountsAvailsList Bool
aalPp = lens _aalPp (\ s a -> s{_aalPp = a})

-- | OAuth access token.
aalAccessToken :: Lens' AccountsAvailsList (Maybe Text)
aalAccessToken
  = lens _aalAccessToken
      (\ s a -> s{_aalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aalUploadType :: Lens' AccountsAvailsList (Maybe Text)
aalUploadType
  = lens _aalUploadType
      (\ s a -> s{_aalUploadType = a})

-- | Filter Avails that match (case-insensitive) any of the given country
-- codes, using the \"ISO 3166-1 alpha-2\" format (examples: \"US\",
-- \"us\", \"Us\").
aalTerritories :: Lens' AccountsAvailsList [Text]
aalTerritories
  = lens _aalTerritories
      (\ s a -> s{_aalTerritories = a})
      . _Default
      . _Coerce

-- | REQUIRED. See _General rules_ for more information about this field.
aalAccountId :: Lens' AccountsAvailsList Text
aalAccountId
  = lens _aalAccountId (\ s a -> s{_aalAccountId = a})

-- | OAuth bearer token.
aalBearerToken :: Lens' AccountsAvailsList (Maybe Text)
aalBearerToken
  = lens _aalBearerToken
      (\ s a -> s{_aalBearerToken = a})

-- | See _List methods rules_ for info about this field.
aalPageToken :: Lens' AccountsAvailsList (Maybe Text)
aalPageToken
  = lens _aalPageToken (\ s a -> s{_aalPageToken = a})

-- | Filter Avails that match a case-insensitive substring of the default
-- Title name.
aalTitle :: Lens' AccountsAvailsList (Maybe Text)
aalTitle = lens _aalTitle (\ s a -> s{_aalTitle = a})

-- | See _List methods rules_ for info about this field.
aalPageSize :: Lens' AccountsAvailsList (Maybe Int32)
aalPageSize
  = lens _aalPageSize (\ s a -> s{_aalPageSize = a}) .
      mapping _Coerce

-- | JSONP
aalCallback :: Lens' AccountsAvailsList (Maybe Text)
aalCallback
  = lens _aalCallback (\ s a -> s{_aalCallback = a})

instance GoogleRequest AccountsAvailsList where
        type Rs AccountsAvailsList = ListAvailsResponse
        type Scopes AccountsAvailsList =
             '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
        requestClient AccountsAvailsList'{..}
          = go _aalAccountId _aalAltId
              (_aalPphNames ^. _Default)
              _aalXgafv
              (_aalStudioNames ^. _Default)
              (_aalVideoIds ^. _Default)
              _aalUploadProtocol
              (Just _aalPp)
              _aalAccessToken
              _aalUploadType
              (_aalTerritories ^. _Default)
              _aalBearerToken
              _aalPageToken
              _aalTitle
              _aalPageSize
              _aalCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAvailsListResource)
                      mempty

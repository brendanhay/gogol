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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Orders owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.orders.list@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.List
    (
    -- * REST Resource
      AccountsOrdersListResource

    -- * Creating a Request
    , accountsOrdersList
    , AccountsOrdersList

    -- * Request Lenses
    , aolStatus
    , aolPphNames
    , aolXgafv
    , aolStudioNames
    , aolVideoIds
    , aolUploadProtocol
    , aolPp
    , aolAccessToken
    , aolUploadType
    , aolCustomId
    , aolAccountId
    , aolBearerToken
    , aolName
    , aolPageToken
    , aolPageSize
    , aolCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.orders.list@ method which the
-- 'AccountsOrdersList' request conforms to.
type AccountsOrdersListResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "orders" :>
             QueryParams "status" Text :>
               QueryParams "pphNames" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParams "studioNames" Text :>
                     QueryParams "videoIds" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "customId" Text :>
                                 QueryParam "bearer_token" Text :>
                                   QueryParam "name" Text :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "pageSize" (Textual Int32) :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] ListOrdersResponse

-- | List Orders owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsOrdersList' smart constructor.
data AccountsOrdersList =
  AccountsOrdersList'
    { _aolStatus         :: !(Maybe [Text])
    , _aolPphNames       :: !(Maybe [Text])
    , _aolXgafv          :: !(Maybe Xgafv)
    , _aolStudioNames    :: !(Maybe [Text])
    , _aolVideoIds       :: !(Maybe [Text])
    , _aolUploadProtocol :: !(Maybe Text)
    , _aolPp             :: !Bool
    , _aolAccessToken    :: !(Maybe Text)
    , _aolUploadType     :: !(Maybe Text)
    , _aolCustomId       :: !(Maybe Text)
    , _aolAccountId      :: !Text
    , _aolBearerToken    :: !(Maybe Text)
    , _aolName           :: !(Maybe Text)
    , _aolPageToken      :: !(Maybe Text)
    , _aolPageSize       :: !(Maybe (Textual Int32))
    , _aolCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsOrdersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aolStatus'
--
-- * 'aolPphNames'
--
-- * 'aolXgafv'
--
-- * 'aolStudioNames'
--
-- * 'aolVideoIds'
--
-- * 'aolUploadProtocol'
--
-- * 'aolPp'
--
-- * 'aolAccessToken'
--
-- * 'aolUploadType'
--
-- * 'aolCustomId'
--
-- * 'aolAccountId'
--
-- * 'aolBearerToken'
--
-- * 'aolName'
--
-- * 'aolPageToken'
--
-- * 'aolPageSize'
--
-- * 'aolCallback'
accountsOrdersList
    :: Text -- ^ 'aolAccountId'
    -> AccountsOrdersList
accountsOrdersList pAolAccountId_ =
  AccountsOrdersList'
    { _aolStatus = Nothing
    , _aolPphNames = Nothing
    , _aolXgafv = Nothing
    , _aolStudioNames = Nothing
    , _aolVideoIds = Nothing
    , _aolUploadProtocol = Nothing
    , _aolPp = True
    , _aolAccessToken = Nothing
    , _aolUploadType = Nothing
    , _aolCustomId = Nothing
    , _aolAccountId = pAolAccountId_
    , _aolBearerToken = Nothing
    , _aolName = Nothing
    , _aolPageToken = Nothing
    , _aolPageSize = Nothing
    , _aolCallback = Nothing
    }


-- | Filter Orders that match one of the given status.
aolStatus :: Lens' AccountsOrdersList [Text]
aolStatus
  = lens _aolStatus (\ s a -> s{_aolStatus = a}) .
      _Default
      . _Coerce

-- | See _List methods rules_ for info about this field.
aolPphNames :: Lens' AccountsOrdersList [Text]
aolPphNames
  = lens _aolPphNames (\ s a -> s{_aolPphNames = a}) .
      _Default
      . _Coerce

-- | V1 error format.
aolXgafv :: Lens' AccountsOrdersList (Maybe Xgafv)
aolXgafv = lens _aolXgafv (\ s a -> s{_aolXgafv = a})

-- | See _List methods rules_ for info about this field.
aolStudioNames :: Lens' AccountsOrdersList [Text]
aolStudioNames
  = lens _aolStudioNames
      (\ s a -> s{_aolStudioNames = a})
      . _Default
      . _Coerce

-- | Filter Orders that match any of the given \`video_id\`s.
aolVideoIds :: Lens' AccountsOrdersList [Text]
aolVideoIds
  = lens _aolVideoIds (\ s a -> s{_aolVideoIds = a}) .
      _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aolUploadProtocol :: Lens' AccountsOrdersList (Maybe Text)
aolUploadProtocol
  = lens _aolUploadProtocol
      (\ s a -> s{_aolUploadProtocol = a})

-- | Pretty-print response.
aolPp :: Lens' AccountsOrdersList Bool
aolPp = lens _aolPp (\ s a -> s{_aolPp = a})

-- | OAuth access token.
aolAccessToken :: Lens' AccountsOrdersList (Maybe Text)
aolAccessToken
  = lens _aolAccessToken
      (\ s a -> s{_aolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aolUploadType :: Lens' AccountsOrdersList (Maybe Text)
aolUploadType
  = lens _aolUploadType
      (\ s a -> s{_aolUploadType = a})

-- | Filter Orders that match a case-insensitive, partner-specific custom id.
aolCustomId :: Lens' AccountsOrdersList (Maybe Text)
aolCustomId
  = lens _aolCustomId (\ s a -> s{_aolCustomId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aolAccountId :: Lens' AccountsOrdersList Text
aolAccountId
  = lens _aolAccountId (\ s a -> s{_aolAccountId = a})

-- | OAuth bearer token.
aolBearerToken :: Lens' AccountsOrdersList (Maybe Text)
aolBearerToken
  = lens _aolBearerToken
      (\ s a -> s{_aolBearerToken = a})

-- | Filter that matches Orders with a \`name\`, \`show\`, \`season\` or
-- \`episode\` that contains the given case-insensitive name.
aolName :: Lens' AccountsOrdersList (Maybe Text)
aolName = lens _aolName (\ s a -> s{_aolName = a})

-- | See _List methods rules_ for info about this field.
aolPageToken :: Lens' AccountsOrdersList (Maybe Text)
aolPageToken
  = lens _aolPageToken (\ s a -> s{_aolPageToken = a})

-- | See _List methods rules_ for info about this field.
aolPageSize :: Lens' AccountsOrdersList (Maybe Int32)
aolPageSize
  = lens _aolPageSize (\ s a -> s{_aolPageSize = a}) .
      mapping _Coerce

-- | JSONP
aolCallback :: Lens' AccountsOrdersList (Maybe Text)
aolCallback
  = lens _aolCallback (\ s a -> s{_aolCallback = a})

instance GoogleRequest AccountsOrdersList where
        type Rs AccountsOrdersList = ListOrdersResponse
        type Scopes AccountsOrdersList =
             '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
        requestClient AccountsOrdersList'{..}
          = go _aolAccountId (_aolStatus ^. _Default)
              (_aolPphNames ^. _Default)
              _aolXgafv
              (_aolStudioNames ^. _Default)
              (_aolVideoIds ^. _Default)
              _aolUploadProtocol
              (Just _aolPp)
              _aolAccessToken
              _aolUploadType
              _aolCustomId
              _aolBearerToken
              _aolName
              _aolPageToken
              _aolPageSize
              _aolCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsOrdersListResource)
                      mempty

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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the custom channels available in an ad client.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.customchannels.list@.
module Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.List
    (
    -- * REST Resource
      AccountsAdClientsCustomChannelsListResource

    -- * Creating a Request
    , accountsAdClientsCustomChannelsList
    , AccountsAdClientsCustomChannelsList

    -- * Request Lenses
    , aaccclParent
    , aaccclXgafv
    , aaccclUploadProtocol
    , aaccclAccessToken
    , aaccclUploadType
    , aaccclPageToken
    , aaccclPageSize
    , aaccclCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.customchannels.list@ method which the
-- 'AccountsAdClientsCustomChannelsList' request conforms to.
type AccountsAdClientsCustomChannelsListResource =
     "v2" :>
       Capture "parent" Text :>
         "customchannels" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListCustomChannelsResponse

-- | Lists all the custom channels available in an ad client.
--
-- /See:/ 'accountsAdClientsCustomChannelsList' smart constructor.
data AccountsAdClientsCustomChannelsList =
  AccountsAdClientsCustomChannelsList'
    { _aaccclParent :: !Text
    , _aaccclXgafv :: !(Maybe Xgafv)
    , _aaccclUploadProtocol :: !(Maybe Text)
    , _aaccclAccessToken :: !(Maybe Text)
    , _aaccclUploadType :: !(Maybe Text)
    , _aaccclPageToken :: !(Maybe Text)
    , _aaccclPageSize :: !(Maybe (Textual Int32))
    , _aaccclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsCustomChannelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaccclParent'
--
-- * 'aaccclXgafv'
--
-- * 'aaccclUploadProtocol'
--
-- * 'aaccclAccessToken'
--
-- * 'aaccclUploadType'
--
-- * 'aaccclPageToken'
--
-- * 'aaccclPageSize'
--
-- * 'aaccclCallback'
accountsAdClientsCustomChannelsList
    :: Text -- ^ 'aaccclParent'
    -> AccountsAdClientsCustomChannelsList
accountsAdClientsCustomChannelsList pAaccclParent_ =
  AccountsAdClientsCustomChannelsList'
    { _aaccclParent = pAaccclParent_
    , _aaccclXgafv = Nothing
    , _aaccclUploadProtocol = Nothing
    , _aaccclAccessToken = Nothing
    , _aaccclUploadType = Nothing
    , _aaccclPageToken = Nothing
    , _aaccclPageSize = Nothing
    , _aaccclCallback = Nothing
    }


-- | Required. The ad client which owns the collection of custom channels.
-- Format: accounts\/{account}\/adclients\/{adclient}
aaccclParent :: Lens' AccountsAdClientsCustomChannelsList Text
aaccclParent
  = lens _aaccclParent (\ s a -> s{_aaccclParent = a})

-- | V1 error format.
aaccclXgafv :: Lens' AccountsAdClientsCustomChannelsList (Maybe Xgafv)
aaccclXgafv
  = lens _aaccclXgafv (\ s a -> s{_aaccclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aaccclUploadProtocol :: Lens' AccountsAdClientsCustomChannelsList (Maybe Text)
aaccclUploadProtocol
  = lens _aaccclUploadProtocol
      (\ s a -> s{_aaccclUploadProtocol = a})

-- | OAuth access token.
aaccclAccessToken :: Lens' AccountsAdClientsCustomChannelsList (Maybe Text)
aaccclAccessToken
  = lens _aaccclAccessToken
      (\ s a -> s{_aaccclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aaccclUploadType :: Lens' AccountsAdClientsCustomChannelsList (Maybe Text)
aaccclUploadType
  = lens _aaccclUploadType
      (\ s a -> s{_aaccclUploadType = a})

-- | A page token, received from a previous \`ListCustomChannels\` call.
-- Provide this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListCustomChannels\` must match the call that
-- provided the page token.
aaccclPageToken :: Lens' AccountsAdClientsCustomChannelsList (Maybe Text)
aaccclPageToken
  = lens _aaccclPageToken
      (\ s a -> s{_aaccclPageToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging. If unspecified, at most 10000 custom channels will be
-- returned. The maximum value is 10000; values above 10000 will be coerced
-- to 10000.
aaccclPageSize :: Lens' AccountsAdClientsCustomChannelsList (Maybe Int32)
aaccclPageSize
  = lens _aaccclPageSize
      (\ s a -> s{_aaccclPageSize = a})
      . mapping _Coerce

-- | JSONP
aaccclCallback :: Lens' AccountsAdClientsCustomChannelsList (Maybe Text)
aaccclCallback
  = lens _aaccclCallback
      (\ s a -> s{_aaccclCallback = a})

instance GoogleRequest
           AccountsAdClientsCustomChannelsList
         where
        type Rs AccountsAdClientsCustomChannelsList =
             ListCustomChannelsResponse
        type Scopes AccountsAdClientsCustomChannelsList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient
          AccountsAdClientsCustomChannelsList'{..}
          = go _aaccclParent _aaccclXgafv _aaccclUploadProtocol
              _aaccclAccessToken
              _aaccclUploadType
              _aaccclPageToken
              _aaccclPageSize
              _aaccclCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsAdClientsCustomChannelsListResource)
                      mempty

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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.URLChannels.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists active url channels.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.urlchannels.list@.
module Network.Google.Resource.AdSense.Accounts.AdClients.URLChannels.List
    (
    -- * REST Resource
      AccountsAdClientsURLChannelsListResource

    -- * Creating a Request
    , accountsAdClientsURLChannelsList
    , AccountsAdClientsURLChannelsList

    -- * Request Lenses
    , aacuclParent
    , aacuclXgafv
    , aacuclUploadProtocol
    , aacuclAccessToken
    , aacuclUploadType
    , aacuclPageToken
    , aacuclPageSize
    , aacuclCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.urlchannels.list@ method which the
-- 'AccountsAdClientsURLChannelsList' request conforms to.
type AccountsAdClientsURLChannelsListResource =
     "v2" :>
       Capture "parent" Text :>
         "urlchannels" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListURLChannelsResponse

-- | Lists active url channels.
--
-- /See:/ 'accountsAdClientsURLChannelsList' smart constructor.
data AccountsAdClientsURLChannelsList =
  AccountsAdClientsURLChannelsList'
    { _aacuclParent :: !Text
    , _aacuclXgafv :: !(Maybe Xgafv)
    , _aacuclUploadProtocol :: !(Maybe Text)
    , _aacuclAccessToken :: !(Maybe Text)
    , _aacuclUploadType :: !(Maybe Text)
    , _aacuclPageToken :: !(Maybe Text)
    , _aacuclPageSize :: !(Maybe (Textual Int32))
    , _aacuclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsURLChannelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacuclParent'
--
-- * 'aacuclXgafv'
--
-- * 'aacuclUploadProtocol'
--
-- * 'aacuclAccessToken'
--
-- * 'aacuclUploadType'
--
-- * 'aacuclPageToken'
--
-- * 'aacuclPageSize'
--
-- * 'aacuclCallback'
accountsAdClientsURLChannelsList
    :: Text -- ^ 'aacuclParent'
    -> AccountsAdClientsURLChannelsList
accountsAdClientsURLChannelsList pAacuclParent_ =
  AccountsAdClientsURLChannelsList'
    { _aacuclParent = pAacuclParent_
    , _aacuclXgafv = Nothing
    , _aacuclUploadProtocol = Nothing
    , _aacuclAccessToken = Nothing
    , _aacuclUploadType = Nothing
    , _aacuclPageToken = Nothing
    , _aacuclPageSize = Nothing
    , _aacuclCallback = Nothing
    }


-- | Required. The ad client which owns the collection of url channels.
-- Format: accounts\/{account}\/adclients\/{adclient}
aacuclParent :: Lens' AccountsAdClientsURLChannelsList Text
aacuclParent
  = lens _aacuclParent (\ s a -> s{_aacuclParent = a})

-- | V1 error format.
aacuclXgafv :: Lens' AccountsAdClientsURLChannelsList (Maybe Xgafv)
aacuclXgafv
  = lens _aacuclXgafv (\ s a -> s{_aacuclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacuclUploadProtocol :: Lens' AccountsAdClientsURLChannelsList (Maybe Text)
aacuclUploadProtocol
  = lens _aacuclUploadProtocol
      (\ s a -> s{_aacuclUploadProtocol = a})

-- | OAuth access token.
aacuclAccessToken :: Lens' AccountsAdClientsURLChannelsList (Maybe Text)
aacuclAccessToken
  = lens _aacuclAccessToken
      (\ s a -> s{_aacuclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacuclUploadType :: Lens' AccountsAdClientsURLChannelsList (Maybe Text)
aacuclUploadType
  = lens _aacuclUploadType
      (\ s a -> s{_aacuclUploadType = a})

-- | A page token, received from a previous \`ListUrlChannels\` call. Provide
-- this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListUrlChannels\` must match the call that
-- provided the page token.
aacuclPageToken :: Lens' AccountsAdClientsURLChannelsList (Maybe Text)
aacuclPageToken
  = lens _aacuclPageToken
      (\ s a -> s{_aacuclPageToken = a})

-- | The maximum number of url channels to include in the response, used for
-- paging. If unspecified, at most 10000 url channels will be returned. The
-- maximum value is 10000; values above 10000 will be coerced to 10000.
aacuclPageSize :: Lens' AccountsAdClientsURLChannelsList (Maybe Int32)
aacuclPageSize
  = lens _aacuclPageSize
      (\ s a -> s{_aacuclPageSize = a})
      . mapping _Coerce

-- | JSONP
aacuclCallback :: Lens' AccountsAdClientsURLChannelsList (Maybe Text)
aacuclCallback
  = lens _aacuclCallback
      (\ s a -> s{_aacuclCallback = a})

instance GoogleRequest
           AccountsAdClientsURLChannelsList
         where
        type Rs AccountsAdClientsURLChannelsList =
             ListURLChannelsResponse
        type Scopes AccountsAdClientsURLChannelsList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdClientsURLChannelsList'{..}
          = go _aacuclParent _aacuclXgafv _aacuclUploadProtocol
              _aacuclAccessToken
              _aacuclUploadType
              _aacuclPageToken
              _aacuclPageSize
              _aacuclCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsAdClientsURLChannelsListResource)
                      mempty

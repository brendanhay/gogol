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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the selected custom channel.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.customchannels.get@.
module Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.Get
    (
    -- * REST Resource
      AccountsAdClientsCustomChannelsGetResource

    -- * Creating a Request
    , accountsAdClientsCustomChannelsGet
    , AccountsAdClientsCustomChannelsGet

    -- * Request Lenses
    , aacccgXgafv
    , aacccgUploadProtocol
    , aacccgAccessToken
    , aacccgUploadType
    , aacccgName
    , aacccgCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.customchannels.get@ method which the
-- 'AccountsAdClientsCustomChannelsGet' request conforms to.
type AccountsAdClientsCustomChannelsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] CustomChannel

-- | Gets information about the selected custom channel.
--
-- /See:/ 'accountsAdClientsCustomChannelsGet' smart constructor.
data AccountsAdClientsCustomChannelsGet =
  AccountsAdClientsCustomChannelsGet'
    { _aacccgXgafv :: !(Maybe Xgafv)
    , _aacccgUploadProtocol :: !(Maybe Text)
    , _aacccgAccessToken :: !(Maybe Text)
    , _aacccgUploadType :: !(Maybe Text)
    , _aacccgName :: !Text
    , _aacccgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsCustomChannelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacccgXgafv'
--
-- * 'aacccgUploadProtocol'
--
-- * 'aacccgAccessToken'
--
-- * 'aacccgUploadType'
--
-- * 'aacccgName'
--
-- * 'aacccgCallback'
accountsAdClientsCustomChannelsGet
    :: Text -- ^ 'aacccgName'
    -> AccountsAdClientsCustomChannelsGet
accountsAdClientsCustomChannelsGet pAacccgName_ =
  AccountsAdClientsCustomChannelsGet'
    { _aacccgXgafv = Nothing
    , _aacccgUploadProtocol = Nothing
    , _aacccgAccessToken = Nothing
    , _aacccgUploadType = Nothing
    , _aacccgName = pAacccgName_
    , _aacccgCallback = Nothing
    }


-- | V1 error format.
aacccgXgafv :: Lens' AccountsAdClientsCustomChannelsGet (Maybe Xgafv)
aacccgXgafv
  = lens _aacccgXgafv (\ s a -> s{_aacccgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacccgUploadProtocol :: Lens' AccountsAdClientsCustomChannelsGet (Maybe Text)
aacccgUploadProtocol
  = lens _aacccgUploadProtocol
      (\ s a -> s{_aacccgUploadProtocol = a})

-- | OAuth access token.
aacccgAccessToken :: Lens' AccountsAdClientsCustomChannelsGet (Maybe Text)
aacccgAccessToken
  = lens _aacccgAccessToken
      (\ s a -> s{_aacccgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacccgUploadType :: Lens' AccountsAdClientsCustomChannelsGet (Maybe Text)
aacccgUploadType
  = lens _aacccgUploadType
      (\ s a -> s{_aacccgUploadType = a})

-- | Required. Name of the custom channel. Format:
-- accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel}
aacccgName :: Lens' AccountsAdClientsCustomChannelsGet Text
aacccgName
  = lens _aacccgName (\ s a -> s{_aacccgName = a})

-- | JSONP
aacccgCallback :: Lens' AccountsAdClientsCustomChannelsGet (Maybe Text)
aacccgCallback
  = lens _aacccgCallback
      (\ s a -> s{_aacccgCallback = a})

instance GoogleRequest
           AccountsAdClientsCustomChannelsGet
         where
        type Rs AccountsAdClientsCustomChannelsGet =
             CustomChannel
        type Scopes AccountsAdClientsCustomChannelsGet =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdClientsCustomChannelsGet'{..}
          = go _aacccgName _aacccgXgafv _aacccgUploadProtocol
              _aacccgAccessToken
              _aacccgUploadType
              _aacccgCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsAdClientsCustomChannelsGetResource)
                      mempty

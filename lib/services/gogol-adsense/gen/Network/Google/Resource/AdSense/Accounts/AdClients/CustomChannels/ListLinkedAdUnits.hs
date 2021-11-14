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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.ListLinkedAdUnits
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the ad units available for a custom channel.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.customchannels.listLinkedAdUnits@.
module Network.Google.Resource.AdSense.Accounts.AdClients.CustomChannels.ListLinkedAdUnits
    (
    -- * REST Resource
      AccountsAdClientsCustomChannelsListLinkedAdUnitsResource

    -- * Creating a Request
    , accountsAdClientsCustomChannelsListLinkedAdUnits
    , AccountsAdClientsCustomChannelsListLinkedAdUnits

    -- * Request Lenses
    , aacccllauParent
    , aacccllauXgafv
    , aacccllauUploadProtocol
    , aacccllauAccessToken
    , aacccllauUploadType
    , aacccllauPageToken
    , aacccllauPageSize
    , aacccllauCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.customchannels.listLinkedAdUnits@ method which the
-- 'AccountsAdClientsCustomChannelsListLinkedAdUnits' request conforms to.
type AccountsAdClientsCustomChannelsListLinkedAdUnitsResource
     =
     "v2" :>
       CaptureMode "parent" "listLinkedAdUnits" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListLinkedAdUnitsResponse

-- | Lists all the ad units available for a custom channel.
--
-- /See:/ 'accountsAdClientsCustomChannelsListLinkedAdUnits' smart constructor.
data AccountsAdClientsCustomChannelsListLinkedAdUnits =
  AccountsAdClientsCustomChannelsListLinkedAdUnits'
    { _aacccllauParent :: !Text
    , _aacccllauXgafv :: !(Maybe Xgafv)
    , _aacccllauUploadProtocol :: !(Maybe Text)
    , _aacccllauAccessToken :: !(Maybe Text)
    , _aacccllauUploadType :: !(Maybe Text)
    , _aacccllauPageToken :: !(Maybe Text)
    , _aacccllauPageSize :: !(Maybe (Textual Int32))
    , _aacccllauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsCustomChannelsListLinkedAdUnits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacccllauParent'
--
-- * 'aacccllauXgafv'
--
-- * 'aacccllauUploadProtocol'
--
-- * 'aacccllauAccessToken'
--
-- * 'aacccllauUploadType'
--
-- * 'aacccllauPageToken'
--
-- * 'aacccllauPageSize'
--
-- * 'aacccllauCallback'
accountsAdClientsCustomChannelsListLinkedAdUnits
    :: Text -- ^ 'aacccllauParent'
    -> AccountsAdClientsCustomChannelsListLinkedAdUnits
accountsAdClientsCustomChannelsListLinkedAdUnits pAacccllauParent_ =
  AccountsAdClientsCustomChannelsListLinkedAdUnits'
    { _aacccllauParent = pAacccllauParent_
    , _aacccllauXgafv = Nothing
    , _aacccllauUploadProtocol = Nothing
    , _aacccllauAccessToken = Nothing
    , _aacccllauUploadType = Nothing
    , _aacccllauPageToken = Nothing
    , _aacccllauPageSize = Nothing
    , _aacccllauCallback = Nothing
    }


-- | Required. The custom channel which owns the collection of ad units.
-- Format:
-- accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel}
aacccllauParent :: Lens' AccountsAdClientsCustomChannelsListLinkedAdUnits Text
aacccllauParent
  = lens _aacccllauParent
      (\ s a -> s{_aacccllauParent = a})

-- | V1 error format.
aacccllauXgafv :: Lens' AccountsAdClientsCustomChannelsListLinkedAdUnits (Maybe Xgafv)
aacccllauXgafv
  = lens _aacccllauXgafv
      (\ s a -> s{_aacccllauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacccllauUploadProtocol :: Lens' AccountsAdClientsCustomChannelsListLinkedAdUnits (Maybe Text)
aacccllauUploadProtocol
  = lens _aacccllauUploadProtocol
      (\ s a -> s{_aacccllauUploadProtocol = a})

-- | OAuth access token.
aacccllauAccessToken :: Lens' AccountsAdClientsCustomChannelsListLinkedAdUnits (Maybe Text)
aacccllauAccessToken
  = lens _aacccllauAccessToken
      (\ s a -> s{_aacccllauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacccllauUploadType :: Lens' AccountsAdClientsCustomChannelsListLinkedAdUnits (Maybe Text)
aacccllauUploadType
  = lens _aacccllauUploadType
      (\ s a -> s{_aacccllauUploadType = a})

-- | A page token, received from a previous \`ListLinkedAdUnits\` call.
-- Provide this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListLinkedAdUnits\` must match the call that
-- provided the page token.
aacccllauPageToken :: Lens' AccountsAdClientsCustomChannelsListLinkedAdUnits (Maybe Text)
aacccllauPageToken
  = lens _aacccllauPageToken
      (\ s a -> s{_aacccllauPageToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging. If unspecified, at most 10000 ad units will be returned. The
-- maximum value is 10000; values above 10000 will be coerced to 10000.
aacccllauPageSize :: Lens' AccountsAdClientsCustomChannelsListLinkedAdUnits (Maybe Int32)
aacccllauPageSize
  = lens _aacccllauPageSize
      (\ s a -> s{_aacccllauPageSize = a})
      . mapping _Coerce

-- | JSONP
aacccllauCallback :: Lens' AccountsAdClientsCustomChannelsListLinkedAdUnits (Maybe Text)
aacccllauCallback
  = lens _aacccllauCallback
      (\ s a -> s{_aacccllauCallback = a})

instance GoogleRequest
           AccountsAdClientsCustomChannelsListLinkedAdUnits
         where
        type Rs
               AccountsAdClientsCustomChannelsListLinkedAdUnits
             = ListLinkedAdUnitsResponse
        type Scopes
               AccountsAdClientsCustomChannelsListLinkedAdUnits
             =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient
          AccountsAdClientsCustomChannelsListLinkedAdUnits'{..}
          = go _aacccllauParent _aacccllauXgafv
              _aacccllauUploadProtocol
              _aacccllauAccessToken
              _aacccllauUploadType
              _aacccllauPageToken
              _aacccllauPageSize
              _aacccllauCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsAdClientsCustomChannelsListLinkedAdUnitsResource)
                      mempty

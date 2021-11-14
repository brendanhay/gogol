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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.ListLinkedCustomChannels
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the custom channels available for an ad unit.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.adunits.listLinkedCustomChannels@.
module Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.ListLinkedCustomChannels
    (
    -- * REST Resource
      AccountsAdClientsAdUnitsListLinkedCustomChannelsResource

    -- * Creating a Request
    , accountsAdClientsAdUnitsListLinkedCustomChannels
    , AccountsAdClientsAdUnitsListLinkedCustomChannels

    -- * Request Lenses
    , aacaullccParent
    , aacaullccXgafv
    , aacaullccUploadProtocol
    , aacaullccAccessToken
    , aacaullccUploadType
    , aacaullccPageToken
    , aacaullccPageSize
    , aacaullccCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.adunits.listLinkedCustomChannels@ method which the
-- 'AccountsAdClientsAdUnitsListLinkedCustomChannels' request conforms to.
type AccountsAdClientsAdUnitsListLinkedCustomChannelsResource
     =
     "v2" :>
       CaptureMode "parent" "listLinkedCustomChannels" Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListLinkedCustomChannelsResponse

-- | Lists all the custom channels available for an ad unit.
--
-- /See:/ 'accountsAdClientsAdUnitsListLinkedCustomChannels' smart constructor.
data AccountsAdClientsAdUnitsListLinkedCustomChannels =
  AccountsAdClientsAdUnitsListLinkedCustomChannels'
    { _aacaullccParent :: !Text
    , _aacaullccXgafv :: !(Maybe Xgafv)
    , _aacaullccUploadProtocol :: !(Maybe Text)
    , _aacaullccAccessToken :: !(Maybe Text)
    , _aacaullccUploadType :: !(Maybe Text)
    , _aacaullccPageToken :: !(Maybe Text)
    , _aacaullccPageSize :: !(Maybe (Textual Int32))
    , _aacaullccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsAdUnitsListLinkedCustomChannels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacaullccParent'
--
-- * 'aacaullccXgafv'
--
-- * 'aacaullccUploadProtocol'
--
-- * 'aacaullccAccessToken'
--
-- * 'aacaullccUploadType'
--
-- * 'aacaullccPageToken'
--
-- * 'aacaullccPageSize'
--
-- * 'aacaullccCallback'
accountsAdClientsAdUnitsListLinkedCustomChannels
    :: Text -- ^ 'aacaullccParent'
    -> AccountsAdClientsAdUnitsListLinkedCustomChannels
accountsAdClientsAdUnitsListLinkedCustomChannels pAacaullccParent_ =
  AccountsAdClientsAdUnitsListLinkedCustomChannels'
    { _aacaullccParent = pAacaullccParent_
    , _aacaullccXgafv = Nothing
    , _aacaullccUploadProtocol = Nothing
    , _aacaullccAccessToken = Nothing
    , _aacaullccUploadType = Nothing
    , _aacaullccPageToken = Nothing
    , _aacaullccPageSize = Nothing
    , _aacaullccCallback = Nothing
    }


-- | Required. The ad unit which owns the collection of custom channels.
-- Format: accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit}
aacaullccParent :: Lens' AccountsAdClientsAdUnitsListLinkedCustomChannels Text
aacaullccParent
  = lens _aacaullccParent
      (\ s a -> s{_aacaullccParent = a})

-- | V1 error format.
aacaullccXgafv :: Lens' AccountsAdClientsAdUnitsListLinkedCustomChannels (Maybe Xgafv)
aacaullccXgafv
  = lens _aacaullccXgafv
      (\ s a -> s{_aacaullccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacaullccUploadProtocol :: Lens' AccountsAdClientsAdUnitsListLinkedCustomChannels (Maybe Text)
aacaullccUploadProtocol
  = lens _aacaullccUploadProtocol
      (\ s a -> s{_aacaullccUploadProtocol = a})

-- | OAuth access token.
aacaullccAccessToken :: Lens' AccountsAdClientsAdUnitsListLinkedCustomChannels (Maybe Text)
aacaullccAccessToken
  = lens _aacaullccAccessToken
      (\ s a -> s{_aacaullccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacaullccUploadType :: Lens' AccountsAdClientsAdUnitsListLinkedCustomChannels (Maybe Text)
aacaullccUploadType
  = lens _aacaullccUploadType
      (\ s a -> s{_aacaullccUploadType = a})

-- | A page token, received from a previous \`ListLinkedCustomChannels\`
-- call. Provide this to retrieve the subsequent page. When paginating, all
-- other parameters provided to \`ListLinkedCustomChannels\` must match the
-- call that provided the page token.
aacaullccPageToken :: Lens' AccountsAdClientsAdUnitsListLinkedCustomChannels (Maybe Text)
aacaullccPageToken
  = lens _aacaullccPageToken
      (\ s a -> s{_aacaullccPageToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging. If unspecified, at most 10000 custom channels will be
-- returned. The maximum value is 10000; values above 10000 will be coerced
-- to 10000.
aacaullccPageSize :: Lens' AccountsAdClientsAdUnitsListLinkedCustomChannels (Maybe Int32)
aacaullccPageSize
  = lens _aacaullccPageSize
      (\ s a -> s{_aacaullccPageSize = a})
      . mapping _Coerce

-- | JSONP
aacaullccCallback :: Lens' AccountsAdClientsAdUnitsListLinkedCustomChannels (Maybe Text)
aacaullccCallback
  = lens _aacaullccCallback
      (\ s a -> s{_aacaullccCallback = a})

instance GoogleRequest
           AccountsAdClientsAdUnitsListLinkedCustomChannels
         where
        type Rs
               AccountsAdClientsAdUnitsListLinkedCustomChannels
             = ListLinkedCustomChannelsResponse
        type Scopes
               AccountsAdClientsAdUnitsListLinkedCustomChannels
             =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient
          AccountsAdClientsAdUnitsListLinkedCustomChannels'{..}
          = go _aacaullccParent _aacaullccXgafv
              _aacaullccUploadProtocol
              _aacaullccAccessToken
              _aacaullccUploadType
              _aacaullccPageToken
              _aacaullccPageSize
              _aacaullccCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsAdClientsAdUnitsListLinkedCustomChannelsResource)
                      mempty

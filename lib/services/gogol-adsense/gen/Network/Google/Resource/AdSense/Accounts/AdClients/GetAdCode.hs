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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.GetAdcode
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the AdSense code for a given ad client. This returns what was
-- previously known as the \'auto ad code\'. This is only supported for ad
-- clients with a product_code of AFC. For more information, see [About the
-- AdSense code](https:\/\/support.google.com\/adsense\/answer\/9274634).
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.getAdcode@.
module Network.Google.Resource.AdSense.Accounts.AdClients.GetAdcode
    (
    -- * REST Resource
      AccountsAdClientsGetAdcodeResource

    -- * Creating a Request
    , accountsAdClientsGetAdcode
    , AccountsAdClientsGetAdcode

    -- * Request Lenses
    , aacgaXgafv
    , aacgaUploadProtocol
    , aacgaAccessToken
    , aacgaUploadType
    , aacgaName
    , aacgaCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.getAdcode@ method which the
-- 'AccountsAdClientsGetAdcode' request conforms to.
type AccountsAdClientsGetAdcodeResource =
     "v2" :>
       Capture "name" Text :>
         "adcode" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] AdClientAdCode

-- | Gets the AdSense code for a given ad client. This returns what was
-- previously known as the \'auto ad code\'. This is only supported for ad
-- clients with a product_code of AFC. For more information, see [About the
-- AdSense code](https:\/\/support.google.com\/adsense\/answer\/9274634).
--
-- /See:/ 'accountsAdClientsGetAdcode' smart constructor.
data AccountsAdClientsGetAdcode =
  AccountsAdClientsGetAdcode'
    { _aacgaXgafv :: !(Maybe Xgafv)
    , _aacgaUploadProtocol :: !(Maybe Text)
    , _aacgaAccessToken :: !(Maybe Text)
    , _aacgaUploadType :: !(Maybe Text)
    , _aacgaName :: !Text
    , _aacgaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsGetAdcode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacgaXgafv'
--
-- * 'aacgaUploadProtocol'
--
-- * 'aacgaAccessToken'
--
-- * 'aacgaUploadType'
--
-- * 'aacgaName'
--
-- * 'aacgaCallback'
accountsAdClientsGetAdcode
    :: Text -- ^ 'aacgaName'
    -> AccountsAdClientsGetAdcode
accountsAdClientsGetAdcode pAacgaName_ =
  AccountsAdClientsGetAdcode'
    { _aacgaXgafv = Nothing
    , _aacgaUploadProtocol = Nothing
    , _aacgaAccessToken = Nothing
    , _aacgaUploadType = Nothing
    , _aacgaName = pAacgaName_
    , _aacgaCallback = Nothing
    }


-- | V1 error format.
aacgaXgafv :: Lens' AccountsAdClientsGetAdcode (Maybe Xgafv)
aacgaXgafv
  = lens _aacgaXgafv (\ s a -> s{_aacgaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacgaUploadProtocol :: Lens' AccountsAdClientsGetAdcode (Maybe Text)
aacgaUploadProtocol
  = lens _aacgaUploadProtocol
      (\ s a -> s{_aacgaUploadProtocol = a})

-- | OAuth access token.
aacgaAccessToken :: Lens' AccountsAdClientsGetAdcode (Maybe Text)
aacgaAccessToken
  = lens _aacgaAccessToken
      (\ s a -> s{_aacgaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacgaUploadType :: Lens' AccountsAdClientsGetAdcode (Maybe Text)
aacgaUploadType
  = lens _aacgaUploadType
      (\ s a -> s{_aacgaUploadType = a})

-- | Required. Name of the ad client for which to get the adcode. Format:
-- accounts\/{account}\/adclients\/{adclient}
aacgaName :: Lens' AccountsAdClientsGetAdcode Text
aacgaName
  = lens _aacgaName (\ s a -> s{_aacgaName = a})

-- | JSONP
aacgaCallback :: Lens' AccountsAdClientsGetAdcode (Maybe Text)
aacgaCallback
  = lens _aacgaCallback
      (\ s a -> s{_aacgaCallback = a})

instance GoogleRequest AccountsAdClientsGetAdcode
         where
        type Rs AccountsAdClientsGetAdcode = AdClientAdCode
        type Scopes AccountsAdClientsGetAdcode =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdClientsGetAdcode'{..}
          = go _aacgaName _aacgaXgafv _aacgaUploadProtocol
              _aacgaAccessToken
              _aacgaUploadType
              _aacgaCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdClientsGetAdcodeResource)
                      mempty

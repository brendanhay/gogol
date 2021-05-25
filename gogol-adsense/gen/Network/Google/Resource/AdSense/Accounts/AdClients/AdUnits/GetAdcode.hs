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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.GetAdcode
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the AdSense code for a given ad unit.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.adunits.getAdcode@.
module Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.GetAdcode
    (
    -- * REST Resource
      AccountsAdClientsAdUnitsGetAdcodeResource

    -- * Creating a Request
    , accountsAdClientsAdUnitsGetAdcode
    , AccountsAdClientsAdUnitsGetAdcode

    -- * Request Lenses
    , aacaugaXgafv
    , aacaugaUploadProtocol
    , aacaugaAccessToken
    , aacaugaUploadType
    , aacaugaName
    , aacaugaCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.adunits.getAdcode@ method which the
-- 'AccountsAdClientsAdUnitsGetAdcode' request conforms to.
type AccountsAdClientsAdUnitsGetAdcodeResource =
     "v2" :>
       Capture "name" Text :>
         "adcode" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] AdUnitAdCode

-- | Gets the AdSense code for a given ad unit.
--
-- /See:/ 'accountsAdClientsAdUnitsGetAdcode' smart constructor.
data AccountsAdClientsAdUnitsGetAdcode =
  AccountsAdClientsAdUnitsGetAdcode'
    { _aacaugaXgafv :: !(Maybe Xgafv)
    , _aacaugaUploadProtocol :: !(Maybe Text)
    , _aacaugaAccessToken :: !(Maybe Text)
    , _aacaugaUploadType :: !(Maybe Text)
    , _aacaugaName :: !Text
    , _aacaugaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsAdUnitsGetAdcode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacaugaXgafv'
--
-- * 'aacaugaUploadProtocol'
--
-- * 'aacaugaAccessToken'
--
-- * 'aacaugaUploadType'
--
-- * 'aacaugaName'
--
-- * 'aacaugaCallback'
accountsAdClientsAdUnitsGetAdcode
    :: Text -- ^ 'aacaugaName'
    -> AccountsAdClientsAdUnitsGetAdcode
accountsAdClientsAdUnitsGetAdcode pAacaugaName_ =
  AccountsAdClientsAdUnitsGetAdcode'
    { _aacaugaXgafv = Nothing
    , _aacaugaUploadProtocol = Nothing
    , _aacaugaAccessToken = Nothing
    , _aacaugaUploadType = Nothing
    , _aacaugaName = pAacaugaName_
    , _aacaugaCallback = Nothing
    }


-- | V1 error format.
aacaugaXgafv :: Lens' AccountsAdClientsAdUnitsGetAdcode (Maybe Xgafv)
aacaugaXgafv
  = lens _aacaugaXgafv (\ s a -> s{_aacaugaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacaugaUploadProtocol :: Lens' AccountsAdClientsAdUnitsGetAdcode (Maybe Text)
aacaugaUploadProtocol
  = lens _aacaugaUploadProtocol
      (\ s a -> s{_aacaugaUploadProtocol = a})

-- | OAuth access token.
aacaugaAccessToken :: Lens' AccountsAdClientsAdUnitsGetAdcode (Maybe Text)
aacaugaAccessToken
  = lens _aacaugaAccessToken
      (\ s a -> s{_aacaugaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacaugaUploadType :: Lens' AccountsAdClientsAdUnitsGetAdcode (Maybe Text)
aacaugaUploadType
  = lens _aacaugaUploadType
      (\ s a -> s{_aacaugaUploadType = a})

-- | Required. Name of the adunit for which to get the adcode. Format:
-- accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit}
aacaugaName :: Lens' AccountsAdClientsAdUnitsGetAdcode Text
aacaugaName
  = lens _aacaugaName (\ s a -> s{_aacaugaName = a})

-- | JSONP
aacaugaCallback :: Lens' AccountsAdClientsAdUnitsGetAdcode (Maybe Text)
aacaugaCallback
  = lens _aacaugaCallback
      (\ s a -> s{_aacaugaCallback = a})

instance GoogleRequest
           AccountsAdClientsAdUnitsGetAdcode
         where
        type Rs AccountsAdClientsAdUnitsGetAdcode =
             AdUnitAdCode
        type Scopes AccountsAdClientsAdUnitsGetAdcode =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdClientsAdUnitsGetAdcode'{..}
          = go _aacaugaName _aacaugaXgafv
              _aacaugaUploadProtocol
              _aacaugaAccessToken
              _aacaugaUploadType
              _aacaugaCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsAdClientsAdUnitsGetAdcodeResource)
                      mempty

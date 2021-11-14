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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an ad unit from a specified account and ad client.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.adunits.get@.
module Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.Get
    (
    -- * REST Resource
      AccountsAdClientsAdUnitsGetResource

    -- * Creating a Request
    , accountsAdClientsAdUnitsGet
    , AccountsAdClientsAdUnitsGet

    -- * Request Lenses
    , aacaugXgafv
    , aacaugUploadProtocol
    , aacaugAccessToken
    , aacaugUploadType
    , aacaugName
    , aacaugCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.adunits.get@ method which the
-- 'AccountsAdClientsAdUnitsGet' request conforms to.
type AccountsAdClientsAdUnitsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] AdUnit

-- | Gets an ad unit from a specified account and ad client.
--
-- /See:/ 'accountsAdClientsAdUnitsGet' smart constructor.
data AccountsAdClientsAdUnitsGet =
  AccountsAdClientsAdUnitsGet'
    { _aacaugXgafv :: !(Maybe Xgafv)
    , _aacaugUploadProtocol :: !(Maybe Text)
    , _aacaugAccessToken :: !(Maybe Text)
    , _aacaugUploadType :: !(Maybe Text)
    , _aacaugName :: !Text
    , _aacaugCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsAdUnitsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacaugXgafv'
--
-- * 'aacaugUploadProtocol'
--
-- * 'aacaugAccessToken'
--
-- * 'aacaugUploadType'
--
-- * 'aacaugName'
--
-- * 'aacaugCallback'
accountsAdClientsAdUnitsGet
    :: Text -- ^ 'aacaugName'
    -> AccountsAdClientsAdUnitsGet
accountsAdClientsAdUnitsGet pAacaugName_ =
  AccountsAdClientsAdUnitsGet'
    { _aacaugXgafv = Nothing
    , _aacaugUploadProtocol = Nothing
    , _aacaugAccessToken = Nothing
    , _aacaugUploadType = Nothing
    , _aacaugName = pAacaugName_
    , _aacaugCallback = Nothing
    }


-- | V1 error format.
aacaugXgafv :: Lens' AccountsAdClientsAdUnitsGet (Maybe Xgafv)
aacaugXgafv
  = lens _aacaugXgafv (\ s a -> s{_aacaugXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacaugUploadProtocol :: Lens' AccountsAdClientsAdUnitsGet (Maybe Text)
aacaugUploadProtocol
  = lens _aacaugUploadProtocol
      (\ s a -> s{_aacaugUploadProtocol = a})

-- | OAuth access token.
aacaugAccessToken :: Lens' AccountsAdClientsAdUnitsGet (Maybe Text)
aacaugAccessToken
  = lens _aacaugAccessToken
      (\ s a -> s{_aacaugAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacaugUploadType :: Lens' AccountsAdClientsAdUnitsGet (Maybe Text)
aacaugUploadType
  = lens _aacaugUploadType
      (\ s a -> s{_aacaugUploadType = a})

-- | Required. AdUnit to get information about. Format:
-- accounts\/{account_id}\/adclient\/{adclient_id}\/adunit\/{adunit_id}
aacaugName :: Lens' AccountsAdClientsAdUnitsGet Text
aacaugName
  = lens _aacaugName (\ s a -> s{_aacaugName = a})

-- | JSONP
aacaugCallback :: Lens' AccountsAdClientsAdUnitsGet (Maybe Text)
aacaugCallback
  = lens _aacaugCallback
      (\ s a -> s{_aacaugCallback = a})

instance GoogleRequest AccountsAdClientsAdUnitsGet
         where
        type Rs AccountsAdClientsAdUnitsGet = AdUnit
        type Scopes AccountsAdClientsAdUnitsGet =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdClientsAdUnitsGet'{..}
          = go _aacaugName _aacaugXgafv _aacaugUploadProtocol
              _aacaugAccessToken
              _aacaugUploadType
              _aacaugCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdClientsAdUnitsGetResource)
                      mempty

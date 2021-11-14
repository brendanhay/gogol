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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.AddHeldAccounts
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds accounts to a hold. Returns a list of accounts that have been
-- successfully added. Accounts can be added only to an existing
-- account-based hold.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.addHeldAccounts@.
module Network.Google.Resource.Vault.Matters.Holds.AddHeldAccounts
    (
    -- * REST Resource
      MattersHoldsAddHeldAccountsResource

    -- * Creating a Request
    , mattersHoldsAddHeldAccounts
    , MattersHoldsAddHeldAccounts

    -- * Request Lenses
    , mhahaXgafv
    , mhahaUploadProtocol
    , mhahaHoldId
    , mhahaAccessToken
    , mhahaUploadType
    , mhahaPayload
    , mhahaMatterId
    , mhahaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.addHeldAccounts@ method which the
-- 'MattersHoldsAddHeldAccounts' request conforms to.
type MattersHoldsAddHeldAccountsResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "holds" :>
             CaptureMode "holdId" "addHeldAccounts" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AddHeldAccountsRequest :>
                             Post '[JSON] AddHeldAccountsResponse

-- | Adds accounts to a hold. Returns a list of accounts that have been
-- successfully added. Accounts can be added only to an existing
-- account-based hold.
--
-- /See:/ 'mattersHoldsAddHeldAccounts' smart constructor.
data MattersHoldsAddHeldAccounts =
  MattersHoldsAddHeldAccounts'
    { _mhahaXgafv :: !(Maybe Xgafv)
    , _mhahaUploadProtocol :: !(Maybe Text)
    , _mhahaHoldId :: !Text
    , _mhahaAccessToken :: !(Maybe Text)
    , _mhahaUploadType :: !(Maybe Text)
    , _mhahaPayload :: !AddHeldAccountsRequest
    , _mhahaMatterId :: !Text
    , _mhahaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersHoldsAddHeldAccounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhahaXgafv'
--
-- * 'mhahaUploadProtocol'
--
-- * 'mhahaHoldId'
--
-- * 'mhahaAccessToken'
--
-- * 'mhahaUploadType'
--
-- * 'mhahaPayload'
--
-- * 'mhahaMatterId'
--
-- * 'mhahaCallback'
mattersHoldsAddHeldAccounts
    :: Text -- ^ 'mhahaHoldId'
    -> AddHeldAccountsRequest -- ^ 'mhahaPayload'
    -> Text -- ^ 'mhahaMatterId'
    -> MattersHoldsAddHeldAccounts
mattersHoldsAddHeldAccounts pMhahaHoldId_ pMhahaPayload_ pMhahaMatterId_ =
  MattersHoldsAddHeldAccounts'
    { _mhahaXgafv = Nothing
    , _mhahaUploadProtocol = Nothing
    , _mhahaHoldId = pMhahaHoldId_
    , _mhahaAccessToken = Nothing
    , _mhahaUploadType = Nothing
    , _mhahaPayload = pMhahaPayload_
    , _mhahaMatterId = pMhahaMatterId_
    , _mhahaCallback = Nothing
    }


-- | V1 error format.
mhahaXgafv :: Lens' MattersHoldsAddHeldAccounts (Maybe Xgafv)
mhahaXgafv
  = lens _mhahaXgafv (\ s a -> s{_mhahaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhahaUploadProtocol :: Lens' MattersHoldsAddHeldAccounts (Maybe Text)
mhahaUploadProtocol
  = lens _mhahaUploadProtocol
      (\ s a -> s{_mhahaUploadProtocol = a})

-- | The hold ID.
mhahaHoldId :: Lens' MattersHoldsAddHeldAccounts Text
mhahaHoldId
  = lens _mhahaHoldId (\ s a -> s{_mhahaHoldId = a})

-- | OAuth access token.
mhahaAccessToken :: Lens' MattersHoldsAddHeldAccounts (Maybe Text)
mhahaAccessToken
  = lens _mhahaAccessToken
      (\ s a -> s{_mhahaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhahaUploadType :: Lens' MattersHoldsAddHeldAccounts (Maybe Text)
mhahaUploadType
  = lens _mhahaUploadType
      (\ s a -> s{_mhahaUploadType = a})

-- | Multipart request metadata.
mhahaPayload :: Lens' MattersHoldsAddHeldAccounts AddHeldAccountsRequest
mhahaPayload
  = lens _mhahaPayload (\ s a -> s{_mhahaPayload = a})

-- | The matter ID.
mhahaMatterId :: Lens' MattersHoldsAddHeldAccounts Text
mhahaMatterId
  = lens _mhahaMatterId
      (\ s a -> s{_mhahaMatterId = a})

-- | JSONP
mhahaCallback :: Lens' MattersHoldsAddHeldAccounts (Maybe Text)
mhahaCallback
  = lens _mhahaCallback
      (\ s a -> s{_mhahaCallback = a})

instance GoogleRequest MattersHoldsAddHeldAccounts
         where
        type Rs MattersHoldsAddHeldAccounts =
             AddHeldAccountsResponse
        type Scopes MattersHoldsAddHeldAccounts =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersHoldsAddHeldAccounts'{..}
          = go _mhahaMatterId _mhahaHoldId _mhahaXgafv
              _mhahaUploadProtocol
              _mhahaAccessToken
              _mhahaUploadType
              _mhahaCallback
              (Just AltJSON)
              _mhahaPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsAddHeldAccountsResource)
                      mempty

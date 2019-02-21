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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.RemoveHeldAccounts
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes HeldAccounts from a hold. Returns a list of statuses in the same
-- order as the request. If this request leaves the hold with no held
-- accounts, the hold will not apply to any accounts.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.removeHeldAccounts@.
module Network.Google.Resource.Vault.Matters.Holds.RemoveHeldAccounts
    (
    -- * REST Resource
      MattersHoldsRemoveHeldAccountsResource

    -- * Creating a Request
    , mattersHoldsRemoveHeldAccounts
    , MattersHoldsRemoveHeldAccounts

    -- * Request Lenses
    , mhrhaXgafv
    , mhrhaUploadProtocol
    , mhrhaHoldId
    , mhrhaAccessToken
    , mhrhaUploadType
    , mhrhaPayload
    , mhrhaMatterId
    , mhrhaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.removeHeldAccounts@ method which the
-- 'MattersHoldsRemoveHeldAccounts' request conforms to.
type MattersHoldsRemoveHeldAccountsResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "holds" :>
             CaptureMode "holdId" "removeHeldAccounts" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RemoveHeldAccountsRequest :>
                             Post '[JSON] RemoveHeldAccountsResponse

-- | Removes HeldAccounts from a hold. Returns a list of statuses in the same
-- order as the request. If this request leaves the hold with no held
-- accounts, the hold will not apply to any accounts.
--
-- /See:/ 'mattersHoldsRemoveHeldAccounts' smart constructor.
data MattersHoldsRemoveHeldAccounts =
  MattersHoldsRemoveHeldAccounts'
    { _mhrhaXgafv          :: !(Maybe Xgafv)
    , _mhrhaUploadProtocol :: !(Maybe Text)
    , _mhrhaHoldId         :: !Text
    , _mhrhaAccessToken    :: !(Maybe Text)
    , _mhrhaUploadType     :: !(Maybe Text)
    , _mhrhaPayload        :: !RemoveHeldAccountsRequest
    , _mhrhaMatterId       :: !Text
    , _mhrhaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersHoldsRemoveHeldAccounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhrhaXgafv'
--
-- * 'mhrhaUploadProtocol'
--
-- * 'mhrhaHoldId'
--
-- * 'mhrhaAccessToken'
--
-- * 'mhrhaUploadType'
--
-- * 'mhrhaPayload'
--
-- * 'mhrhaMatterId'
--
-- * 'mhrhaCallback'
mattersHoldsRemoveHeldAccounts
    :: Text -- ^ 'mhrhaHoldId'
    -> RemoveHeldAccountsRequest -- ^ 'mhrhaPayload'
    -> Text -- ^ 'mhrhaMatterId'
    -> MattersHoldsRemoveHeldAccounts
mattersHoldsRemoveHeldAccounts pMhrhaHoldId_ pMhrhaPayload_ pMhrhaMatterId_ =
  MattersHoldsRemoveHeldAccounts'
    { _mhrhaXgafv = Nothing
    , _mhrhaUploadProtocol = Nothing
    , _mhrhaHoldId = pMhrhaHoldId_
    , _mhrhaAccessToken = Nothing
    , _mhrhaUploadType = Nothing
    , _mhrhaPayload = pMhrhaPayload_
    , _mhrhaMatterId = pMhrhaMatterId_
    , _mhrhaCallback = Nothing
    }


-- | V1 error format.
mhrhaXgafv :: Lens' MattersHoldsRemoveHeldAccounts (Maybe Xgafv)
mhrhaXgafv
  = lens _mhrhaXgafv (\ s a -> s{_mhrhaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhrhaUploadProtocol :: Lens' MattersHoldsRemoveHeldAccounts (Maybe Text)
mhrhaUploadProtocol
  = lens _mhrhaUploadProtocol
      (\ s a -> s{_mhrhaUploadProtocol = a})

-- | The hold ID.
mhrhaHoldId :: Lens' MattersHoldsRemoveHeldAccounts Text
mhrhaHoldId
  = lens _mhrhaHoldId (\ s a -> s{_mhrhaHoldId = a})

-- | OAuth access token.
mhrhaAccessToken :: Lens' MattersHoldsRemoveHeldAccounts (Maybe Text)
mhrhaAccessToken
  = lens _mhrhaAccessToken
      (\ s a -> s{_mhrhaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhrhaUploadType :: Lens' MattersHoldsRemoveHeldAccounts (Maybe Text)
mhrhaUploadType
  = lens _mhrhaUploadType
      (\ s a -> s{_mhrhaUploadType = a})

-- | Multipart request metadata.
mhrhaPayload :: Lens' MattersHoldsRemoveHeldAccounts RemoveHeldAccountsRequest
mhrhaPayload
  = lens _mhrhaPayload (\ s a -> s{_mhrhaPayload = a})

-- | The matter ID.
mhrhaMatterId :: Lens' MattersHoldsRemoveHeldAccounts Text
mhrhaMatterId
  = lens _mhrhaMatterId
      (\ s a -> s{_mhrhaMatterId = a})

-- | JSONP
mhrhaCallback :: Lens' MattersHoldsRemoveHeldAccounts (Maybe Text)
mhrhaCallback
  = lens _mhrhaCallback
      (\ s a -> s{_mhrhaCallback = a})

instance GoogleRequest MattersHoldsRemoveHeldAccounts
         where
        type Rs MattersHoldsRemoveHeldAccounts =
             RemoveHeldAccountsResponse
        type Scopes MattersHoldsRemoveHeldAccounts =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersHoldsRemoveHeldAccounts'{..}
          = go _mhrhaMatterId _mhrhaHoldId _mhrhaXgafv
              _mhrhaUploadProtocol
              _mhrhaAccessToken
              _mhrhaUploadType
              _mhrhaCallback
              (Just AltJSON)
              _mhrhaPayload
              vaultService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MattersHoldsRemoveHeldAccountsResource)
                      mempty

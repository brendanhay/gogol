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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.Accounts.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a HeldAccount from a hold. If this request leaves the hold with
-- no held accounts, the hold will not apply to any accounts.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.accounts.delete@.
module Network.Google.Resource.Vault.Matters.Holds.Accounts.Delete
    (
    -- * REST Resource
      MattersHoldsAccountsDeleteResource

    -- * Creating a Request
    , mattersHoldsAccountsDelete
    , MattersHoldsAccountsDelete

    -- * Request Lenses
    , mhadXgafv
    , mhadUploadProtocol
    , mhadHoldId
    , mhadAccessToken
    , mhadUploadType
    , mhadMatterId
    , mhadAccountId
    , mhadCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.accounts.delete@ method which the
-- 'MattersHoldsAccountsDelete' request conforms to.
type MattersHoldsAccountsDeleteResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "holds" :>
             Capture "holdId" Text :>
               "accounts" :>
                 Capture "accountId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Removes a HeldAccount from a hold. If this request leaves the hold with
-- no held accounts, the hold will not apply to any accounts.
--
-- /See:/ 'mattersHoldsAccountsDelete' smart constructor.
data MattersHoldsAccountsDelete =
  MattersHoldsAccountsDelete'
    { _mhadXgafv          :: !(Maybe Xgafv)
    , _mhadUploadProtocol :: !(Maybe Text)
    , _mhadHoldId         :: !Text
    , _mhadAccessToken    :: !(Maybe Text)
    , _mhadUploadType     :: !(Maybe Text)
    , _mhadMatterId       :: !Text
    , _mhadAccountId      :: !Text
    , _mhadCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersHoldsAccountsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhadXgafv'
--
-- * 'mhadUploadProtocol'
--
-- * 'mhadHoldId'
--
-- * 'mhadAccessToken'
--
-- * 'mhadUploadType'
--
-- * 'mhadMatterId'
--
-- * 'mhadAccountId'
--
-- * 'mhadCallback'
mattersHoldsAccountsDelete
    :: Text -- ^ 'mhadHoldId'
    -> Text -- ^ 'mhadMatterId'
    -> Text -- ^ 'mhadAccountId'
    -> MattersHoldsAccountsDelete
mattersHoldsAccountsDelete pMhadHoldId_ pMhadMatterId_ pMhadAccountId_ =
  MattersHoldsAccountsDelete'
    { _mhadXgafv = Nothing
    , _mhadUploadProtocol = Nothing
    , _mhadHoldId = pMhadHoldId_
    , _mhadAccessToken = Nothing
    , _mhadUploadType = Nothing
    , _mhadMatterId = pMhadMatterId_
    , _mhadAccountId = pMhadAccountId_
    , _mhadCallback = Nothing
    }


-- | V1 error format.
mhadXgafv :: Lens' MattersHoldsAccountsDelete (Maybe Xgafv)
mhadXgafv
  = lens _mhadXgafv (\ s a -> s{_mhadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhadUploadProtocol :: Lens' MattersHoldsAccountsDelete (Maybe Text)
mhadUploadProtocol
  = lens _mhadUploadProtocol
      (\ s a -> s{_mhadUploadProtocol = a})

-- | The hold ID.
mhadHoldId :: Lens' MattersHoldsAccountsDelete Text
mhadHoldId
  = lens _mhadHoldId (\ s a -> s{_mhadHoldId = a})

-- | OAuth access token.
mhadAccessToken :: Lens' MattersHoldsAccountsDelete (Maybe Text)
mhadAccessToken
  = lens _mhadAccessToken
      (\ s a -> s{_mhadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhadUploadType :: Lens' MattersHoldsAccountsDelete (Maybe Text)
mhadUploadType
  = lens _mhadUploadType
      (\ s a -> s{_mhadUploadType = a})

-- | The matter ID.
mhadMatterId :: Lens' MattersHoldsAccountsDelete Text
mhadMatterId
  = lens _mhadMatterId (\ s a -> s{_mhadMatterId = a})

-- | The ID of the account to remove from the hold.
mhadAccountId :: Lens' MattersHoldsAccountsDelete Text
mhadAccountId
  = lens _mhadAccountId
      (\ s a -> s{_mhadAccountId = a})

-- | JSONP
mhadCallback :: Lens' MattersHoldsAccountsDelete (Maybe Text)
mhadCallback
  = lens _mhadCallback (\ s a -> s{_mhadCallback = a})

instance GoogleRequest MattersHoldsAccountsDelete
         where
        type Rs MattersHoldsAccountsDelete = Empty
        type Scopes MattersHoldsAccountsDelete =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersHoldsAccountsDelete'{..}
          = go _mhadMatterId _mhadHoldId _mhadAccountId
              _mhadXgafv
              _mhadUploadProtocol
              _mhadAccessToken
              _mhadUploadType
              _mhadCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsAccountsDeleteResource)
                      mempty

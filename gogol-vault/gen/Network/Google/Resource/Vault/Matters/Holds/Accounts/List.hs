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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.Accounts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists HeldAccounts for a hold. This will only list individually
-- specified held accounts. If the hold is on an OU, then use
-- <https://developers.google.com/admin-sdk/ Admin SDK> to enumerate its
-- members.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.accounts.list@.
module Network.Google.Resource.Vault.Matters.Holds.Accounts.List
    (
    -- * REST Resource
      MattersHoldsAccountsListResource

    -- * Creating a Request
    , mattersHoldsAccountsList
    , MattersHoldsAccountsList

    -- * Request Lenses
    , mhalXgafv
    , mhalUploadProtocol
    , mhalHoldId
    , mhalAccessToken
    , mhalUploadType
    , mhalMatterId
    , mhalCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.accounts.list@ method which the
-- 'MattersHoldsAccountsList' request conforms to.
type MattersHoldsAccountsListResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "holds" :>
             Capture "holdId" Text :>
               "accounts" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListHeldAccountsResponse

-- | Lists HeldAccounts for a hold. This will only list individually
-- specified held accounts. If the hold is on an OU, then use
-- <https://developers.google.com/admin-sdk/ Admin SDK> to enumerate its
-- members.
--
-- /See:/ 'mattersHoldsAccountsList' smart constructor.
data MattersHoldsAccountsList =
  MattersHoldsAccountsList'
    { _mhalXgafv          :: !(Maybe Xgafv)
    , _mhalUploadProtocol :: !(Maybe Text)
    , _mhalHoldId         :: !Text
    , _mhalAccessToken    :: !(Maybe Text)
    , _mhalUploadType     :: !(Maybe Text)
    , _mhalMatterId       :: !Text
    , _mhalCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MattersHoldsAccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhalXgafv'
--
-- * 'mhalUploadProtocol'
--
-- * 'mhalHoldId'
--
-- * 'mhalAccessToken'
--
-- * 'mhalUploadType'
--
-- * 'mhalMatterId'
--
-- * 'mhalCallback'
mattersHoldsAccountsList
    :: Text -- ^ 'mhalHoldId'
    -> Text -- ^ 'mhalMatterId'
    -> MattersHoldsAccountsList
mattersHoldsAccountsList pMhalHoldId_ pMhalMatterId_ =
  MattersHoldsAccountsList'
    { _mhalXgafv = Nothing
    , _mhalUploadProtocol = Nothing
    , _mhalHoldId = pMhalHoldId_
    , _mhalAccessToken = Nothing
    , _mhalUploadType = Nothing
    , _mhalMatterId = pMhalMatterId_
    , _mhalCallback = Nothing
    }

-- | V1 error format.
mhalXgafv :: Lens' MattersHoldsAccountsList (Maybe Xgafv)
mhalXgafv
  = lens _mhalXgafv (\ s a -> s{_mhalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhalUploadProtocol :: Lens' MattersHoldsAccountsList (Maybe Text)
mhalUploadProtocol
  = lens _mhalUploadProtocol
      (\ s a -> s{_mhalUploadProtocol = a})

-- | The hold ID.
mhalHoldId :: Lens' MattersHoldsAccountsList Text
mhalHoldId
  = lens _mhalHoldId (\ s a -> s{_mhalHoldId = a})

-- | OAuth access token.
mhalAccessToken :: Lens' MattersHoldsAccountsList (Maybe Text)
mhalAccessToken
  = lens _mhalAccessToken
      (\ s a -> s{_mhalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhalUploadType :: Lens' MattersHoldsAccountsList (Maybe Text)
mhalUploadType
  = lens _mhalUploadType
      (\ s a -> s{_mhalUploadType = a})

-- | The matter ID.
mhalMatterId :: Lens' MattersHoldsAccountsList Text
mhalMatterId
  = lens _mhalMatterId (\ s a -> s{_mhalMatterId = a})

-- | JSONP
mhalCallback :: Lens' MattersHoldsAccountsList (Maybe Text)
mhalCallback
  = lens _mhalCallback (\ s a -> s{_mhalCallback = a})

instance GoogleRequest MattersHoldsAccountsList where
        type Rs MattersHoldsAccountsList =
             ListHeldAccountsResponse
        type Scopes MattersHoldsAccountsList =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersHoldsAccountsList'{..}
          = go _mhalMatterId _mhalHoldId _mhalXgafv
              _mhalUploadProtocol
              _mhalAccessToken
              _mhalUploadType
              _mhalCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsAccountsListResource)
                      mempty

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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.Accounts.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an account to a hold. Accounts can be added only to a hold that
-- does not have an organizational unit set. If you try to add an account
-- to an organizational unit-based hold, an error is returned.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.accounts.create@.
module Network.Google.Resource.Vault.Matters.Holds.Accounts.Create
    (
    -- * REST Resource
      MattersHoldsAccountsCreateResource

    -- * Creating a Request
    , mattersHoldsAccountsCreate
    , MattersHoldsAccountsCreate

    -- * Request Lenses
    , mhacXgafv
    , mhacUploadProtocol
    , mhacHoldId
    , mhacAccessToken
    , mhacUploadType
    , mhacPayload
    , mhacMatterId
    , mhacCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.accounts.create@ method which the
-- 'MattersHoldsAccountsCreate' request conforms to.
type MattersHoldsAccountsCreateResource =
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
                             ReqBody '[JSON] HeldAccount :>
                               Post '[JSON] HeldAccount

-- | Adds an account to a hold. Accounts can be added only to a hold that
-- does not have an organizational unit set. If you try to add an account
-- to an organizational unit-based hold, an error is returned.
--
-- /See:/ 'mattersHoldsAccountsCreate' smart constructor.
data MattersHoldsAccountsCreate =
  MattersHoldsAccountsCreate'
    { _mhacXgafv :: !(Maybe Xgafv)
    , _mhacUploadProtocol :: !(Maybe Text)
    , _mhacHoldId :: !Text
    , _mhacAccessToken :: !(Maybe Text)
    , _mhacUploadType :: !(Maybe Text)
    , _mhacPayload :: !HeldAccount
    , _mhacMatterId :: !Text
    , _mhacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersHoldsAccountsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhacXgafv'
--
-- * 'mhacUploadProtocol'
--
-- * 'mhacHoldId'
--
-- * 'mhacAccessToken'
--
-- * 'mhacUploadType'
--
-- * 'mhacPayload'
--
-- * 'mhacMatterId'
--
-- * 'mhacCallback'
mattersHoldsAccountsCreate
    :: Text -- ^ 'mhacHoldId'
    -> HeldAccount -- ^ 'mhacPayload'
    -> Text -- ^ 'mhacMatterId'
    -> MattersHoldsAccountsCreate
mattersHoldsAccountsCreate pMhacHoldId_ pMhacPayload_ pMhacMatterId_ =
  MattersHoldsAccountsCreate'
    { _mhacXgafv = Nothing
    , _mhacUploadProtocol = Nothing
    , _mhacHoldId = pMhacHoldId_
    , _mhacAccessToken = Nothing
    , _mhacUploadType = Nothing
    , _mhacPayload = pMhacPayload_
    , _mhacMatterId = pMhacMatterId_
    , _mhacCallback = Nothing
    }


-- | V1 error format.
mhacXgafv :: Lens' MattersHoldsAccountsCreate (Maybe Xgafv)
mhacXgafv
  = lens _mhacXgafv (\ s a -> s{_mhacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhacUploadProtocol :: Lens' MattersHoldsAccountsCreate (Maybe Text)
mhacUploadProtocol
  = lens _mhacUploadProtocol
      (\ s a -> s{_mhacUploadProtocol = a})

-- | The hold ID.
mhacHoldId :: Lens' MattersHoldsAccountsCreate Text
mhacHoldId
  = lens _mhacHoldId (\ s a -> s{_mhacHoldId = a})

-- | OAuth access token.
mhacAccessToken :: Lens' MattersHoldsAccountsCreate (Maybe Text)
mhacAccessToken
  = lens _mhacAccessToken
      (\ s a -> s{_mhacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhacUploadType :: Lens' MattersHoldsAccountsCreate (Maybe Text)
mhacUploadType
  = lens _mhacUploadType
      (\ s a -> s{_mhacUploadType = a})

-- | Multipart request metadata.
mhacPayload :: Lens' MattersHoldsAccountsCreate HeldAccount
mhacPayload
  = lens _mhacPayload (\ s a -> s{_mhacPayload = a})

-- | The matter ID.
mhacMatterId :: Lens' MattersHoldsAccountsCreate Text
mhacMatterId
  = lens _mhacMatterId (\ s a -> s{_mhacMatterId = a})

-- | JSONP
mhacCallback :: Lens' MattersHoldsAccountsCreate (Maybe Text)
mhacCallback
  = lens _mhacCallback (\ s a -> s{_mhacCallback = a})

instance GoogleRequest MattersHoldsAccountsCreate
         where
        type Rs MattersHoldsAccountsCreate = HeldAccount
        type Scopes MattersHoldsAccountsCreate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersHoldsAccountsCreate'{..}
          = go _mhacMatterId _mhacHoldId _mhacXgafv
              _mhacUploadProtocol
              _mhacAccessToken
              _mhacUploadType
              _mhacCallback
              (Just AltJSON)
              _mhacPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsAccountsCreateResource)
                      mempty

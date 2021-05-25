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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified hold and releases the accounts or organizational
-- unit covered by the hold. If the data is not preserved by another hold
-- or retention rule, it might be purged.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.delete@.
module Network.Google.Resource.Vault.Matters.Holds.Delete
    (
    -- * REST Resource
      MattersHoldsDeleteResource

    -- * Creating a Request
    , mattersHoldsDelete
    , MattersHoldsDelete

    -- * Request Lenses
    , mhdXgafv
    , mhdUploadProtocol
    , mhdHoldId
    , mhdAccessToken
    , mhdUploadType
    , mhdMatterId
    , mhdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.delete@ method which the
-- 'MattersHoldsDelete' request conforms to.
type MattersHoldsDeleteResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "holds" :>
             Capture "holdId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Removes the specified hold and releases the accounts or organizational
-- unit covered by the hold. If the data is not preserved by another hold
-- or retention rule, it might be purged.
--
-- /See:/ 'mattersHoldsDelete' smart constructor.
data MattersHoldsDelete =
  MattersHoldsDelete'
    { _mhdXgafv :: !(Maybe Xgafv)
    , _mhdUploadProtocol :: !(Maybe Text)
    , _mhdHoldId :: !Text
    , _mhdAccessToken :: !(Maybe Text)
    , _mhdUploadType :: !(Maybe Text)
    , _mhdMatterId :: !Text
    , _mhdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersHoldsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhdXgafv'
--
-- * 'mhdUploadProtocol'
--
-- * 'mhdHoldId'
--
-- * 'mhdAccessToken'
--
-- * 'mhdUploadType'
--
-- * 'mhdMatterId'
--
-- * 'mhdCallback'
mattersHoldsDelete
    :: Text -- ^ 'mhdHoldId'
    -> Text -- ^ 'mhdMatterId'
    -> MattersHoldsDelete
mattersHoldsDelete pMhdHoldId_ pMhdMatterId_ =
  MattersHoldsDelete'
    { _mhdXgafv = Nothing
    , _mhdUploadProtocol = Nothing
    , _mhdHoldId = pMhdHoldId_
    , _mhdAccessToken = Nothing
    , _mhdUploadType = Nothing
    , _mhdMatterId = pMhdMatterId_
    , _mhdCallback = Nothing
    }


-- | V1 error format.
mhdXgafv :: Lens' MattersHoldsDelete (Maybe Xgafv)
mhdXgafv = lens _mhdXgafv (\ s a -> s{_mhdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhdUploadProtocol :: Lens' MattersHoldsDelete (Maybe Text)
mhdUploadProtocol
  = lens _mhdUploadProtocol
      (\ s a -> s{_mhdUploadProtocol = a})

-- | The hold ID.
mhdHoldId :: Lens' MattersHoldsDelete Text
mhdHoldId
  = lens _mhdHoldId (\ s a -> s{_mhdHoldId = a})

-- | OAuth access token.
mhdAccessToken :: Lens' MattersHoldsDelete (Maybe Text)
mhdAccessToken
  = lens _mhdAccessToken
      (\ s a -> s{_mhdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhdUploadType :: Lens' MattersHoldsDelete (Maybe Text)
mhdUploadType
  = lens _mhdUploadType
      (\ s a -> s{_mhdUploadType = a})

-- | The matter ID.
mhdMatterId :: Lens' MattersHoldsDelete Text
mhdMatterId
  = lens _mhdMatterId (\ s a -> s{_mhdMatterId = a})

-- | JSONP
mhdCallback :: Lens' MattersHoldsDelete (Maybe Text)
mhdCallback
  = lens _mhdCallback (\ s a -> s{_mhdCallback = a})

instance GoogleRequest MattersHoldsDelete where
        type Rs MattersHoldsDelete = Empty
        type Scopes MattersHoldsDelete =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersHoldsDelete'{..}
          = go _mhdMatterId _mhdHoldId _mhdXgafv
              _mhdUploadProtocol
              _mhdAccessToken
              _mhdUploadType
              _mhdCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsDeleteResource)
                      mempty

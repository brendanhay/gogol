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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the OU and\/or query parameters of a hold. You cannot add
-- accounts to a hold that covers an OU, nor can you add OUs to a hold that
-- covers individual accounts. Accounts listed in the hold will be ignored.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.update@.
module Network.Google.Resource.Vault.Matters.Holds.Update
    (
    -- * REST Resource
      MattersHoldsUpdateResource

    -- * Creating a Request
    , mattersHoldsUpdate
    , MattersHoldsUpdate

    -- * Request Lenses
    , mhuXgafv
    , mhuUploadProtocol
    , mhuHoldId
    , mhuAccessToken
    , mhuUploadType
    , mhuPayload
    , mhuMatterId
    , mhuCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.update@ method which the
-- 'MattersHoldsUpdate' request conforms to.
type MattersHoldsUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Hold :> Put '[JSON] Hold

-- | Updates the OU and\/or query parameters of a hold. You cannot add
-- accounts to a hold that covers an OU, nor can you add OUs to a hold that
-- covers individual accounts. Accounts listed in the hold will be ignored.
--
-- /See:/ 'mattersHoldsUpdate' smart constructor.
data MattersHoldsUpdate = MattersHoldsUpdate'
    { _mhuXgafv          :: !(Maybe Xgafv)
    , _mhuUploadProtocol :: !(Maybe Text)
    , _mhuHoldId         :: !Text
    , _mhuAccessToken    :: !(Maybe Text)
    , _mhuUploadType     :: !(Maybe Text)
    , _mhuPayload        :: !Hold
    , _mhuMatterId       :: !Text
    , _mhuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MattersHoldsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhuXgafv'
--
-- * 'mhuUploadProtocol'
--
-- * 'mhuHoldId'
--
-- * 'mhuAccessToken'
--
-- * 'mhuUploadType'
--
-- * 'mhuPayload'
--
-- * 'mhuMatterId'
--
-- * 'mhuCallback'
mattersHoldsUpdate
    :: Text -- ^ 'mhuHoldId'
    -> Hold -- ^ 'mhuPayload'
    -> Text -- ^ 'mhuMatterId'
    -> MattersHoldsUpdate
mattersHoldsUpdate pMhuHoldId_ pMhuPayload_ pMhuMatterId_ =
    MattersHoldsUpdate'
    { _mhuXgafv = Nothing
    , _mhuUploadProtocol = Nothing
    , _mhuHoldId = pMhuHoldId_
    , _mhuAccessToken = Nothing
    , _mhuUploadType = Nothing
    , _mhuPayload = pMhuPayload_
    , _mhuMatterId = pMhuMatterId_
    , _mhuCallback = Nothing
    }

-- | V1 error format.
mhuXgafv :: Lens' MattersHoldsUpdate (Maybe Xgafv)
mhuXgafv = lens _mhuXgafv (\ s a -> s{_mhuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhuUploadProtocol :: Lens' MattersHoldsUpdate (Maybe Text)
mhuUploadProtocol
  = lens _mhuUploadProtocol
      (\ s a -> s{_mhuUploadProtocol = a})

-- | The ID of the hold.
mhuHoldId :: Lens' MattersHoldsUpdate Text
mhuHoldId
  = lens _mhuHoldId (\ s a -> s{_mhuHoldId = a})

-- | OAuth access token.
mhuAccessToken :: Lens' MattersHoldsUpdate (Maybe Text)
mhuAccessToken
  = lens _mhuAccessToken
      (\ s a -> s{_mhuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhuUploadType :: Lens' MattersHoldsUpdate (Maybe Text)
mhuUploadType
  = lens _mhuUploadType
      (\ s a -> s{_mhuUploadType = a})

-- | Multipart request metadata.
mhuPayload :: Lens' MattersHoldsUpdate Hold
mhuPayload
  = lens _mhuPayload (\ s a -> s{_mhuPayload = a})

-- | The matter ID.
mhuMatterId :: Lens' MattersHoldsUpdate Text
mhuMatterId
  = lens _mhuMatterId (\ s a -> s{_mhuMatterId = a})

-- | JSONP
mhuCallback :: Lens' MattersHoldsUpdate (Maybe Text)
mhuCallback
  = lens _mhuCallback (\ s a -> s{_mhuCallback = a})

instance GoogleRequest MattersHoldsUpdate where
        type Rs MattersHoldsUpdate = Hold
        type Scopes MattersHoldsUpdate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersHoldsUpdate'{..}
          = go _mhuMatterId _mhuHoldId _mhuXgafv
              _mhuUploadProtocol
              _mhuAccessToken
              _mhuUploadType
              _mhuCallback
              (Just AltJSON)
              _mhuPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsUpdateResource)
                      mempty

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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a proposal given its ID. The proposal is returned at its head
-- revision.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.get@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Get
    (
    -- * REST Resource
      AccountsProposalsGetResource

    -- * Creating a Request
    , accountsProposalsGet
    , AccountsProposalsGet

    -- * Request Lenses
    , aXgafv
    , aUploadProtocol
    , aAccessToken
    , aUploadType
    , aProposalId
    , aAccountId
    , aCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.get@ method which the
-- 'AccountsProposalsGet' request conforms to.
type AccountsProposalsGetResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             Capture "proposalId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Proposal

-- | Gets a proposal given its ID. The proposal is returned at its head
-- revision.
--
-- /See:/ 'accountsProposalsGet' smart constructor.
data AccountsProposalsGet =
  AccountsProposalsGet'
    { _aXgafv          :: !(Maybe Xgafv)
    , _aUploadProtocol :: !(Maybe Text)
    , _aAccessToken    :: !(Maybe Text)
    , _aUploadType     :: !(Maybe Text)
    , _aProposalId     :: !Text
    , _aAccountId      :: !Text
    , _aCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsProposalsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aXgafv'
--
-- * 'aUploadProtocol'
--
-- * 'aAccessToken'
--
-- * 'aUploadType'
--
-- * 'aProposalId'
--
-- * 'aAccountId'
--
-- * 'aCallback'
accountsProposalsGet
    :: Text -- ^ 'aProposalId'
    -> Text -- ^ 'aAccountId'
    -> AccountsProposalsGet
accountsProposalsGet pAProposalId_ pAAccountId_ =
  AccountsProposalsGet'
    { _aXgafv = Nothing
    , _aUploadProtocol = Nothing
    , _aAccessToken = Nothing
    , _aUploadType = Nothing
    , _aProposalId = pAProposalId_
    , _aAccountId = pAAccountId_
    , _aCallback = Nothing
    }

-- | V1 error format.
aXgafv :: Lens' AccountsProposalsGet (Maybe Xgafv)
aXgafv = lens _aXgafv (\ s a -> s{_aXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aUploadProtocol :: Lens' AccountsProposalsGet (Maybe Text)
aUploadProtocol
  = lens _aUploadProtocol
      (\ s a -> s{_aUploadProtocol = a})

-- | OAuth access token.
aAccessToken :: Lens' AccountsProposalsGet (Maybe Text)
aAccessToken
  = lens _aAccessToken (\ s a -> s{_aAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aUploadType :: Lens' AccountsProposalsGet (Maybe Text)
aUploadType
  = lens _aUploadType (\ s a -> s{_aUploadType = a})

-- | The unique ID of the proposal
aProposalId :: Lens' AccountsProposalsGet Text
aProposalId
  = lens _aProposalId (\ s a -> s{_aProposalId = a})

-- | Account ID of the buyer.
aAccountId :: Lens' AccountsProposalsGet Text
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | JSONP
aCallback :: Lens' AccountsProposalsGet (Maybe Text)
aCallback
  = lens _aCallback (\ s a -> s{_aCallback = a})

instance GoogleRequest AccountsProposalsGet where
        type Rs AccountsProposalsGet = Proposal
        type Scopes AccountsProposalsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsGet'{..}
          = go _aAccountId _aProposalId _aXgafv
              _aUploadProtocol
              _aAccessToken
              _aUploadType
              _aCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProposalsGetResource)
                      mempty

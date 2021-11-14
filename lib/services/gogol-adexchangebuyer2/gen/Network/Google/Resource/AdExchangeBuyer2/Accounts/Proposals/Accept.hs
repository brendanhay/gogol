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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Accept
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Mark the proposal as accepted at the given revision number. If the
-- number does not match the server\'s revision number an \`ABORTED\` error
-- message will be returned. This call updates the proposal_state from
-- \`PROPOSED\` to \`BUYER_ACCEPTED\`, or from \`SELLER_ACCEPTED\` to
-- \`FINALIZED\`. Upon calling this endpoint, the buyer implicitly agrees
-- to the terms and conditions optionally set within the proposal by the
-- publisher.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.accept@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Accept
    (
    -- * REST Resource
      AccountsProposalsAcceptResource

    -- * Creating a Request
    , accountsProposalsAccept
    , AccountsProposalsAccept

    -- * Request Lenses
    , apaXgafv
    , apaUploadProtocol
    , apaAccessToken
    , apaUploadType
    , apaPayload
    , apaProposalId
    , apaAccountId
    , apaCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.accept@ method which the
-- 'AccountsProposalsAccept' request conforms to.
type AccountsProposalsAcceptResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             CaptureMode "proposalId" "accept" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AcceptProposalRequest :>
                             Post '[JSON] Proposal

-- | Mark the proposal as accepted at the given revision number. If the
-- number does not match the server\'s revision number an \`ABORTED\` error
-- message will be returned. This call updates the proposal_state from
-- \`PROPOSED\` to \`BUYER_ACCEPTED\`, or from \`SELLER_ACCEPTED\` to
-- \`FINALIZED\`. Upon calling this endpoint, the buyer implicitly agrees
-- to the terms and conditions optionally set within the proposal by the
-- publisher.
--
-- /See:/ 'accountsProposalsAccept' smart constructor.
data AccountsProposalsAccept =
  AccountsProposalsAccept'
    { _apaXgafv :: !(Maybe Xgafv)
    , _apaUploadProtocol :: !(Maybe Text)
    , _apaAccessToken :: !(Maybe Text)
    , _apaUploadType :: !(Maybe Text)
    , _apaPayload :: !AcceptProposalRequest
    , _apaProposalId :: !Text
    , _apaAccountId :: !Text
    , _apaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProposalsAccept' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apaXgafv'
--
-- * 'apaUploadProtocol'
--
-- * 'apaAccessToken'
--
-- * 'apaUploadType'
--
-- * 'apaPayload'
--
-- * 'apaProposalId'
--
-- * 'apaAccountId'
--
-- * 'apaCallback'
accountsProposalsAccept
    :: AcceptProposalRequest -- ^ 'apaPayload'
    -> Text -- ^ 'apaProposalId'
    -> Text -- ^ 'apaAccountId'
    -> AccountsProposalsAccept
accountsProposalsAccept pApaPayload_ pApaProposalId_ pApaAccountId_ =
  AccountsProposalsAccept'
    { _apaXgafv = Nothing
    , _apaUploadProtocol = Nothing
    , _apaAccessToken = Nothing
    , _apaUploadType = Nothing
    , _apaPayload = pApaPayload_
    , _apaProposalId = pApaProposalId_
    , _apaAccountId = pApaAccountId_
    , _apaCallback = Nothing
    }


-- | V1 error format.
apaXgafv :: Lens' AccountsProposalsAccept (Maybe Xgafv)
apaXgafv = lens _apaXgafv (\ s a -> s{_apaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apaUploadProtocol :: Lens' AccountsProposalsAccept (Maybe Text)
apaUploadProtocol
  = lens _apaUploadProtocol
      (\ s a -> s{_apaUploadProtocol = a})

-- | OAuth access token.
apaAccessToken :: Lens' AccountsProposalsAccept (Maybe Text)
apaAccessToken
  = lens _apaAccessToken
      (\ s a -> s{_apaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apaUploadType :: Lens' AccountsProposalsAccept (Maybe Text)
apaUploadType
  = lens _apaUploadType
      (\ s a -> s{_apaUploadType = a})

-- | Multipart request metadata.
apaPayload :: Lens' AccountsProposalsAccept AcceptProposalRequest
apaPayload
  = lens _apaPayload (\ s a -> s{_apaPayload = a})

-- | The ID of the proposal to accept.
apaProposalId :: Lens' AccountsProposalsAccept Text
apaProposalId
  = lens _apaProposalId
      (\ s a -> s{_apaProposalId = a})

-- | Account ID of the buyer.
apaAccountId :: Lens' AccountsProposalsAccept Text
apaAccountId
  = lens _apaAccountId (\ s a -> s{_apaAccountId = a})

-- | JSONP
apaCallback :: Lens' AccountsProposalsAccept (Maybe Text)
apaCallback
  = lens _apaCallback (\ s a -> s{_apaCallback = a})

instance GoogleRequest AccountsProposalsAccept where
        type Rs AccountsProposalsAccept = Proposal
        type Scopes AccountsProposalsAccept =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsAccept'{..}
          = go _apaAccountId _apaProposalId _apaXgafv
              _apaUploadProtocol
              _apaAccessToken
              _apaUploadType
              _apaCallback
              (Just AltJSON)
              _apaPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProposalsAcceptResource)
                      mempty

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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.CancelNegotiation
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancel an ongoing negotiation on a proposal. This does not cancel or end
-- serving for the deals if the proposal has been finalized, but only
-- cancels a negotiation unilaterally.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.cancelNegotiation@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.CancelNegotiation
    (
    -- * REST Resource
      AccountsProposalsCancelNegotiationResource

    -- * Creating a Request
    , accountsProposalsCancelNegotiation
    , AccountsProposalsCancelNegotiation

    -- * Request Lenses
    , apcnXgafv
    , apcnUploadProtocol
    , apcnAccessToken
    , apcnUploadType
    , apcnPayload
    , apcnProposalId
    , apcnAccountId
    , apcnCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.cancelNegotiation@ method which the
-- 'AccountsProposalsCancelNegotiation' request conforms to.
type AccountsProposalsCancelNegotiationResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             CaptureMode "proposalId" "cancelNegotiation" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CancelNegotiationRequest :>
                             Post '[JSON] Proposal

-- | Cancel an ongoing negotiation on a proposal. This does not cancel or end
-- serving for the deals if the proposal has been finalized, but only
-- cancels a negotiation unilaterally.
--
-- /See:/ 'accountsProposalsCancelNegotiation' smart constructor.
data AccountsProposalsCancelNegotiation =
  AccountsProposalsCancelNegotiation'
    { _apcnXgafv :: !(Maybe Xgafv)
    , _apcnUploadProtocol :: !(Maybe Text)
    , _apcnAccessToken :: !(Maybe Text)
    , _apcnUploadType :: !(Maybe Text)
    , _apcnPayload :: !CancelNegotiationRequest
    , _apcnProposalId :: !Text
    , _apcnAccountId :: !Text
    , _apcnCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProposalsCancelNegotiation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcnXgafv'
--
-- * 'apcnUploadProtocol'
--
-- * 'apcnAccessToken'
--
-- * 'apcnUploadType'
--
-- * 'apcnPayload'
--
-- * 'apcnProposalId'
--
-- * 'apcnAccountId'
--
-- * 'apcnCallback'
accountsProposalsCancelNegotiation
    :: CancelNegotiationRequest -- ^ 'apcnPayload'
    -> Text -- ^ 'apcnProposalId'
    -> Text -- ^ 'apcnAccountId'
    -> AccountsProposalsCancelNegotiation
accountsProposalsCancelNegotiation pApcnPayload_ pApcnProposalId_ pApcnAccountId_ =
  AccountsProposalsCancelNegotiation'
    { _apcnXgafv = Nothing
    , _apcnUploadProtocol = Nothing
    , _apcnAccessToken = Nothing
    , _apcnUploadType = Nothing
    , _apcnPayload = pApcnPayload_
    , _apcnProposalId = pApcnProposalId_
    , _apcnAccountId = pApcnAccountId_
    , _apcnCallback = Nothing
    }


-- | V1 error format.
apcnXgafv :: Lens' AccountsProposalsCancelNegotiation (Maybe Xgafv)
apcnXgafv
  = lens _apcnXgafv (\ s a -> s{_apcnXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apcnUploadProtocol :: Lens' AccountsProposalsCancelNegotiation (Maybe Text)
apcnUploadProtocol
  = lens _apcnUploadProtocol
      (\ s a -> s{_apcnUploadProtocol = a})

-- | OAuth access token.
apcnAccessToken :: Lens' AccountsProposalsCancelNegotiation (Maybe Text)
apcnAccessToken
  = lens _apcnAccessToken
      (\ s a -> s{_apcnAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apcnUploadType :: Lens' AccountsProposalsCancelNegotiation (Maybe Text)
apcnUploadType
  = lens _apcnUploadType
      (\ s a -> s{_apcnUploadType = a})

-- | Multipart request metadata.
apcnPayload :: Lens' AccountsProposalsCancelNegotiation CancelNegotiationRequest
apcnPayload
  = lens _apcnPayload (\ s a -> s{_apcnPayload = a})

-- | The ID of the proposal to cancel negotiation for.
apcnProposalId :: Lens' AccountsProposalsCancelNegotiation Text
apcnProposalId
  = lens _apcnProposalId
      (\ s a -> s{_apcnProposalId = a})

-- | Account ID of the buyer.
apcnAccountId :: Lens' AccountsProposalsCancelNegotiation Text
apcnAccountId
  = lens _apcnAccountId
      (\ s a -> s{_apcnAccountId = a})

-- | JSONP
apcnCallback :: Lens' AccountsProposalsCancelNegotiation (Maybe Text)
apcnCallback
  = lens _apcnCallback (\ s a -> s{_apcnCallback = a})

instance GoogleRequest
           AccountsProposalsCancelNegotiation
         where
        type Rs AccountsProposalsCancelNegotiation = Proposal
        type Scopes AccountsProposalsCancelNegotiation =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsCancelNegotiation'{..}
          = go _apcnAccountId _apcnProposalId _apcnXgafv
              _apcnUploadProtocol
              _apcnAccessToken
              _apcnUploadType
              _apcnCallback
              (Just AltJSON)
              _apcnPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsProposalsCancelNegotiationResource)
                      mempty

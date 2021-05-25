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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.Pause
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update given deals to pause serving. This method will set the
-- \`DealServingMetadata.DealPauseStatus.has_buyer_paused\` bit to true for
-- all listed deals in the request. Currently, this method only applies to
-- PG and PD deals. For PA deals, please call accounts.proposals.pause
-- endpoint. It is a no-op to pause already-paused deals. It is an error to
-- call PauseProposalDeals for deals which are not part of the proposal of
-- proposal_id or which are not finalized or renegotiating.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.finalizedProposals.pause@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.Pause
    (
    -- * REST Resource
      AccountsFinalizedProposalsPauseResource

    -- * Creating a Request
    , accountsFinalizedProposalsPause
    , AccountsFinalizedProposalsPause

    -- * Request Lenses
    , afppXgafv
    , afppUploadProtocol
    , afppAccessToken
    , afppUploadType
    , afppPayload
    , afppProposalId
    , afppAccountId
    , afppCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.finalizedProposals.pause@ method which the
-- 'AccountsFinalizedProposalsPause' request conforms to.
type AccountsFinalizedProposalsPauseResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "finalizedProposals" :>
             CaptureMode "proposalId" "pause" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PauseProposalDealsRequest :>
                             Post '[JSON] Proposal

-- | Update given deals to pause serving. This method will set the
-- \`DealServingMetadata.DealPauseStatus.has_buyer_paused\` bit to true for
-- all listed deals in the request. Currently, this method only applies to
-- PG and PD deals. For PA deals, please call accounts.proposals.pause
-- endpoint. It is a no-op to pause already-paused deals. It is an error to
-- call PauseProposalDeals for deals which are not part of the proposal of
-- proposal_id or which are not finalized or renegotiating.
--
-- /See:/ 'accountsFinalizedProposalsPause' smart constructor.
data AccountsFinalizedProposalsPause =
  AccountsFinalizedProposalsPause'
    { _afppXgafv :: !(Maybe Xgafv)
    , _afppUploadProtocol :: !(Maybe Text)
    , _afppAccessToken :: !(Maybe Text)
    , _afppUploadType :: !(Maybe Text)
    , _afppPayload :: !PauseProposalDealsRequest
    , _afppProposalId :: !Text
    , _afppAccountId :: !Text
    , _afppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsFinalizedProposalsPause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afppXgafv'
--
-- * 'afppUploadProtocol'
--
-- * 'afppAccessToken'
--
-- * 'afppUploadType'
--
-- * 'afppPayload'
--
-- * 'afppProposalId'
--
-- * 'afppAccountId'
--
-- * 'afppCallback'
accountsFinalizedProposalsPause
    :: PauseProposalDealsRequest -- ^ 'afppPayload'
    -> Text -- ^ 'afppProposalId'
    -> Text -- ^ 'afppAccountId'
    -> AccountsFinalizedProposalsPause
accountsFinalizedProposalsPause pAfppPayload_ pAfppProposalId_ pAfppAccountId_ =
  AccountsFinalizedProposalsPause'
    { _afppXgafv = Nothing
    , _afppUploadProtocol = Nothing
    , _afppAccessToken = Nothing
    , _afppUploadType = Nothing
    , _afppPayload = pAfppPayload_
    , _afppProposalId = pAfppProposalId_
    , _afppAccountId = pAfppAccountId_
    , _afppCallback = Nothing
    }


-- | V1 error format.
afppXgafv :: Lens' AccountsFinalizedProposalsPause (Maybe Xgafv)
afppXgafv
  = lens _afppXgafv (\ s a -> s{_afppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
afppUploadProtocol :: Lens' AccountsFinalizedProposalsPause (Maybe Text)
afppUploadProtocol
  = lens _afppUploadProtocol
      (\ s a -> s{_afppUploadProtocol = a})

-- | OAuth access token.
afppAccessToken :: Lens' AccountsFinalizedProposalsPause (Maybe Text)
afppAccessToken
  = lens _afppAccessToken
      (\ s a -> s{_afppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
afppUploadType :: Lens' AccountsFinalizedProposalsPause (Maybe Text)
afppUploadType
  = lens _afppUploadType
      (\ s a -> s{_afppUploadType = a})

-- | Multipart request metadata.
afppPayload :: Lens' AccountsFinalizedProposalsPause PauseProposalDealsRequest
afppPayload
  = lens _afppPayload (\ s a -> s{_afppPayload = a})

-- | The proposal_id of the proposal containing the deals.
afppProposalId :: Lens' AccountsFinalizedProposalsPause Text
afppProposalId
  = lens _afppProposalId
      (\ s a -> s{_afppProposalId = a})

-- | Account ID of the buyer.
afppAccountId :: Lens' AccountsFinalizedProposalsPause Text
afppAccountId
  = lens _afppAccountId
      (\ s a -> s{_afppAccountId = a})

-- | JSONP
afppCallback :: Lens' AccountsFinalizedProposalsPause (Maybe Text)
afppCallback
  = lens _afppCallback (\ s a -> s{_afppCallback = a})

instance GoogleRequest
           AccountsFinalizedProposalsPause
         where
        type Rs AccountsFinalizedProposalsPause = Proposal
        type Scopes AccountsFinalizedProposalsPause =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsFinalizedProposalsPause'{..}
          = go _afppAccountId _afppProposalId _afppXgafv
              _afppUploadProtocol
              _afppAccessToken
              _afppUploadType
              _afppCallback
              (Just AltJSON)
              _afppPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsFinalizedProposalsPauseResource)
                      mempty

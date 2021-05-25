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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.Resume
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update given deals to resume serving. This method will set the
-- \`DealServingMetadata.DealPauseStatus.has_buyer_paused\` bit to false
-- for all listed deals in the request. Currently, this method only applies
-- to PG and PD deals. For PA deals, please call accounts.proposals.resume
-- endpoint. It is a no-op to resume running deals or deals paused by the
-- other party. It is an error to call ResumeProposalDeals for deals which
-- are not part of the proposal of proposal_id or which are not finalized
-- or renegotiating.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.finalizedProposals.resume@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.Resume
    (
    -- * REST Resource
      AccountsFinalizedProposalsResumeResource

    -- * Creating a Request
    , accountsFinalizedProposalsResume
    , AccountsFinalizedProposalsResume

    -- * Request Lenses
    , afprXgafv
    , afprUploadProtocol
    , afprAccessToken
    , afprUploadType
    , afprPayload
    , afprProposalId
    , afprAccountId
    , afprCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.finalizedProposals.resume@ method which the
-- 'AccountsFinalizedProposalsResume' request conforms to.
type AccountsFinalizedProposalsResumeResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "finalizedProposals" :>
             CaptureMode "proposalId" "resume" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ResumeProposalDealsRequest :>
                             Post '[JSON] Proposal

-- | Update given deals to resume serving. This method will set the
-- \`DealServingMetadata.DealPauseStatus.has_buyer_paused\` bit to false
-- for all listed deals in the request. Currently, this method only applies
-- to PG and PD deals. For PA deals, please call accounts.proposals.resume
-- endpoint. It is a no-op to resume running deals or deals paused by the
-- other party. It is an error to call ResumeProposalDeals for deals which
-- are not part of the proposal of proposal_id or which are not finalized
-- or renegotiating.
--
-- /See:/ 'accountsFinalizedProposalsResume' smart constructor.
data AccountsFinalizedProposalsResume =
  AccountsFinalizedProposalsResume'
    { _afprXgafv :: !(Maybe Xgafv)
    , _afprUploadProtocol :: !(Maybe Text)
    , _afprAccessToken :: !(Maybe Text)
    , _afprUploadType :: !(Maybe Text)
    , _afprPayload :: !ResumeProposalDealsRequest
    , _afprProposalId :: !Text
    , _afprAccountId :: !Text
    , _afprCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsFinalizedProposalsResume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afprXgafv'
--
-- * 'afprUploadProtocol'
--
-- * 'afprAccessToken'
--
-- * 'afprUploadType'
--
-- * 'afprPayload'
--
-- * 'afprProposalId'
--
-- * 'afprAccountId'
--
-- * 'afprCallback'
accountsFinalizedProposalsResume
    :: ResumeProposalDealsRequest -- ^ 'afprPayload'
    -> Text -- ^ 'afprProposalId'
    -> Text -- ^ 'afprAccountId'
    -> AccountsFinalizedProposalsResume
accountsFinalizedProposalsResume pAfprPayload_ pAfprProposalId_ pAfprAccountId_ =
  AccountsFinalizedProposalsResume'
    { _afprXgafv = Nothing
    , _afprUploadProtocol = Nothing
    , _afprAccessToken = Nothing
    , _afprUploadType = Nothing
    , _afprPayload = pAfprPayload_
    , _afprProposalId = pAfprProposalId_
    , _afprAccountId = pAfprAccountId_
    , _afprCallback = Nothing
    }


-- | V1 error format.
afprXgafv :: Lens' AccountsFinalizedProposalsResume (Maybe Xgafv)
afprXgafv
  = lens _afprXgafv (\ s a -> s{_afprXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
afprUploadProtocol :: Lens' AccountsFinalizedProposalsResume (Maybe Text)
afprUploadProtocol
  = lens _afprUploadProtocol
      (\ s a -> s{_afprUploadProtocol = a})

-- | OAuth access token.
afprAccessToken :: Lens' AccountsFinalizedProposalsResume (Maybe Text)
afprAccessToken
  = lens _afprAccessToken
      (\ s a -> s{_afprAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
afprUploadType :: Lens' AccountsFinalizedProposalsResume (Maybe Text)
afprUploadType
  = lens _afprUploadType
      (\ s a -> s{_afprUploadType = a})

-- | Multipart request metadata.
afprPayload :: Lens' AccountsFinalizedProposalsResume ResumeProposalDealsRequest
afprPayload
  = lens _afprPayload (\ s a -> s{_afprPayload = a})

-- | The proposal_id of the proposal containing the deals.
afprProposalId :: Lens' AccountsFinalizedProposalsResume Text
afprProposalId
  = lens _afprProposalId
      (\ s a -> s{_afprProposalId = a})

-- | Account ID of the buyer.
afprAccountId :: Lens' AccountsFinalizedProposalsResume Text
afprAccountId
  = lens _afprAccountId
      (\ s a -> s{_afprAccountId = a})

-- | JSONP
afprCallback :: Lens' AccountsFinalizedProposalsResume (Maybe Text)
afprCallback
  = lens _afprCallback (\ s a -> s{_afprCallback = a})

instance GoogleRequest
           AccountsFinalizedProposalsResume
         where
        type Rs AccountsFinalizedProposalsResume = Proposal
        type Scopes AccountsFinalizedProposalsResume =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsFinalizedProposalsResume'{..}
          = go _afprAccountId _afprProposalId _afprXgafv
              _afprUploadProtocol
              _afprAccessToken
              _afprUploadType
              _afprCallback
              (Just AltJSON)
              _afprPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsFinalizedProposalsResumeResource)
                      mempty

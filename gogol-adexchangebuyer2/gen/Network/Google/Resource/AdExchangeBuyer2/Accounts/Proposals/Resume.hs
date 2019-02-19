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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Resume
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal to resume serving. This method will set the
-- \`DealServingMetadata.DealPauseStatus.has_buyer_paused\` bit to false
-- for all deals in the proposal. Note that if the \`has_seller_paused\`
-- bit is also set, serving will not resume until the seller also resumes.
-- It is a no-op to resume an already-running proposal. It is an error to
-- call ResumeProposal for a proposal that is not finalized or
-- renegotiating.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.resume@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Resume
    (
    -- * REST Resource
      AccountsProposalsResumeResource

    -- * Creating a Request
    , accountsProposalsResume
    , AccountsProposalsResume

    -- * Request Lenses
    , aprXgafv
    , aprUploadProtocol
    , aprAccessToken
    , aprUploadType
    , aprPayload
    , aprProposalId
    , aprAccountId
    , aprCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.resume@ method which the
-- 'AccountsProposalsResume' request conforms to.
type AccountsProposalsResumeResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             CaptureMode "proposalId" "resume" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ResumeProposalRequest :>
                             Post '[JSON] Proposal

-- | Update the given proposal to resume serving. This method will set the
-- \`DealServingMetadata.DealPauseStatus.has_buyer_paused\` bit to false
-- for all deals in the proposal. Note that if the \`has_seller_paused\`
-- bit is also set, serving will not resume until the seller also resumes.
-- It is a no-op to resume an already-running proposal. It is an error to
-- call ResumeProposal for a proposal that is not finalized or
-- renegotiating.
--
-- /See:/ 'accountsProposalsResume' smart constructor.
data AccountsProposalsResume =
  AccountsProposalsResume'
    { _aprXgafv          :: !(Maybe Xgafv)
    , _aprUploadProtocol :: !(Maybe Text)
    , _aprAccessToken    :: !(Maybe Text)
    , _aprUploadType     :: !(Maybe Text)
    , _aprPayload        :: !ResumeProposalRequest
    , _aprProposalId     :: !Text
    , _aprAccountId      :: !Text
    , _aprCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsProposalsResume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aprXgafv'
--
-- * 'aprUploadProtocol'
--
-- * 'aprAccessToken'
--
-- * 'aprUploadType'
--
-- * 'aprPayload'
--
-- * 'aprProposalId'
--
-- * 'aprAccountId'
--
-- * 'aprCallback'
accountsProposalsResume
    :: ResumeProposalRequest -- ^ 'aprPayload'
    -> Text -- ^ 'aprProposalId'
    -> Text -- ^ 'aprAccountId'
    -> AccountsProposalsResume
accountsProposalsResume pAprPayload_ pAprProposalId_ pAprAccountId_ =
  AccountsProposalsResume'
    { _aprXgafv = Nothing
    , _aprUploadProtocol = Nothing
    , _aprAccessToken = Nothing
    , _aprUploadType = Nothing
    , _aprPayload = pAprPayload_
    , _aprProposalId = pAprProposalId_
    , _aprAccountId = pAprAccountId_
    , _aprCallback = Nothing
    }

-- | V1 error format.
aprXgafv :: Lens' AccountsProposalsResume (Maybe Xgafv)
aprXgafv = lens _aprXgafv (\ s a -> s{_aprXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aprUploadProtocol :: Lens' AccountsProposalsResume (Maybe Text)
aprUploadProtocol
  = lens _aprUploadProtocol
      (\ s a -> s{_aprUploadProtocol = a})

-- | OAuth access token.
aprAccessToken :: Lens' AccountsProposalsResume (Maybe Text)
aprAccessToken
  = lens _aprAccessToken
      (\ s a -> s{_aprAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aprUploadType :: Lens' AccountsProposalsResume (Maybe Text)
aprUploadType
  = lens _aprUploadType
      (\ s a -> s{_aprUploadType = a})

-- | Multipart request metadata.
aprPayload :: Lens' AccountsProposalsResume ResumeProposalRequest
aprPayload
  = lens _aprPayload (\ s a -> s{_aprPayload = a})

-- | The ID of the proposal to resume.
aprProposalId :: Lens' AccountsProposalsResume Text
aprProposalId
  = lens _aprProposalId
      (\ s a -> s{_aprProposalId = a})

-- | Account ID of the buyer.
aprAccountId :: Lens' AccountsProposalsResume Text
aprAccountId
  = lens _aprAccountId (\ s a -> s{_aprAccountId = a})

-- | JSONP
aprCallback :: Lens' AccountsProposalsResume (Maybe Text)
aprCallback
  = lens _aprCallback (\ s a -> s{_aprCallback = a})

instance GoogleRequest AccountsProposalsResume where
        type Rs AccountsProposalsResume = Proposal
        type Scopes AccountsProposalsResume =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsResume'{..}
          = go _aprAccountId _aprProposalId _aprXgafv
              _aprUploadProtocol
              _aprAccessToken
              _aprUploadType
              _aprCallback
              (Just AltJSON)
              _aprPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProposalsResumeResource)
                      mempty

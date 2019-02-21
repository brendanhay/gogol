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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal at the client known revision number. If the
-- server revision has advanced since the passed-in
-- \`proposal.proposal_revision\`, an \`ABORTED\` error message will be
-- returned. Only the buyer-modifiable fields of the proposal will be
-- updated. Note that the deals in the proposal will be updated to match
-- the passed-in copy. If a passed-in deal does not have a \`deal_id\`, the
-- server will assign a new unique ID and create the deal. If passed-in
-- deal has a \`deal_id\`, it will be updated to match the passed-in copy.
-- Any existing deals not present in the passed-in proposal will be
-- deleted. It is an error to pass in a deal with a \`deal_id\` not present
-- at head.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.update@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Update
    (
    -- * REST Resource
      AccountsProposalsUpdateResource

    -- * Creating a Request
    , accountsProposalsUpdate
    , AccountsProposalsUpdate

    -- * Request Lenses
    , apuXgafv
    , apuUploadProtocol
    , apuAccessToken
    , apuUploadType
    , apuPayload
    , apuProposalId
    , apuAccountId
    , apuCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.update@ method which the
-- 'AccountsProposalsUpdate' request conforms to.
type AccountsProposalsUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Proposal :> Put '[JSON] Proposal

-- | Update the given proposal at the client known revision number. If the
-- server revision has advanced since the passed-in
-- \`proposal.proposal_revision\`, an \`ABORTED\` error message will be
-- returned. Only the buyer-modifiable fields of the proposal will be
-- updated. Note that the deals in the proposal will be updated to match
-- the passed-in copy. If a passed-in deal does not have a \`deal_id\`, the
-- server will assign a new unique ID and create the deal. If passed-in
-- deal has a \`deal_id\`, it will be updated to match the passed-in copy.
-- Any existing deals not present in the passed-in proposal will be
-- deleted. It is an error to pass in a deal with a \`deal_id\` not present
-- at head.
--
-- /See:/ 'accountsProposalsUpdate' smart constructor.
data AccountsProposalsUpdate =
  AccountsProposalsUpdate'
    { _apuXgafv          :: !(Maybe Xgafv)
    , _apuUploadProtocol :: !(Maybe Text)
    , _apuAccessToken    :: !(Maybe Text)
    , _apuUploadType     :: !(Maybe Text)
    , _apuPayload        :: !Proposal
    , _apuProposalId     :: !Text
    , _apuAccountId      :: !Text
    , _apuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProposalsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apuXgafv'
--
-- * 'apuUploadProtocol'
--
-- * 'apuAccessToken'
--
-- * 'apuUploadType'
--
-- * 'apuPayload'
--
-- * 'apuProposalId'
--
-- * 'apuAccountId'
--
-- * 'apuCallback'
accountsProposalsUpdate
    :: Proposal -- ^ 'apuPayload'
    -> Text -- ^ 'apuProposalId'
    -> Text -- ^ 'apuAccountId'
    -> AccountsProposalsUpdate
accountsProposalsUpdate pApuPayload_ pApuProposalId_ pApuAccountId_ =
  AccountsProposalsUpdate'
    { _apuXgafv = Nothing
    , _apuUploadProtocol = Nothing
    , _apuAccessToken = Nothing
    , _apuUploadType = Nothing
    , _apuPayload = pApuPayload_
    , _apuProposalId = pApuProposalId_
    , _apuAccountId = pApuAccountId_
    , _apuCallback = Nothing
    }


-- | V1 error format.
apuXgafv :: Lens' AccountsProposalsUpdate (Maybe Xgafv)
apuXgafv = lens _apuXgafv (\ s a -> s{_apuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apuUploadProtocol :: Lens' AccountsProposalsUpdate (Maybe Text)
apuUploadProtocol
  = lens _apuUploadProtocol
      (\ s a -> s{_apuUploadProtocol = a})

-- | OAuth access token.
apuAccessToken :: Lens' AccountsProposalsUpdate (Maybe Text)
apuAccessToken
  = lens _apuAccessToken
      (\ s a -> s{_apuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apuUploadType :: Lens' AccountsProposalsUpdate (Maybe Text)
apuUploadType
  = lens _apuUploadType
      (\ s a -> s{_apuUploadType = a})

-- | Multipart request metadata.
apuPayload :: Lens' AccountsProposalsUpdate Proposal
apuPayload
  = lens _apuPayload (\ s a -> s{_apuPayload = a})

-- | The unique ID of the proposal.
apuProposalId :: Lens' AccountsProposalsUpdate Text
apuProposalId
  = lens _apuProposalId
      (\ s a -> s{_apuProposalId = a})

-- | Account ID of the buyer.
apuAccountId :: Lens' AccountsProposalsUpdate Text
apuAccountId
  = lens _apuAccountId (\ s a -> s{_apuAccountId = a})

-- | JSONP
apuCallback :: Lens' AccountsProposalsUpdate (Maybe Text)
apuCallback
  = lens _apuCallback (\ s a -> s{_apuCallback = a})

instance GoogleRequest AccountsProposalsUpdate where
        type Rs AccountsProposalsUpdate = Proposal
        type Scopes AccountsProposalsUpdate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsUpdate'{..}
          = go _apuAccountId _apuProposalId _apuXgafv
              _apuUploadProtocol
              _apuAccessToken
              _apuUploadType
              _apuCallback
              (Just AltJSON)
              _apuPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProposalsUpdateResource)
                      mempty

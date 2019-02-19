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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.CompleteSetup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal to indicate that setup has been completed.
-- This method is called by the buyer when the line items have been created
-- on their end for a finalized proposal and all the required creatives
-- have been uploaded using the creatives API. This call updates the
-- \`is_setup_completed\` bit on the proposal and also notifies the seller.
-- The server will advance the revision number of the most recent proposal.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.completeSetup@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.CompleteSetup
    (
    -- * REST Resource
      AccountsProposalsCompleteSetupResource

    -- * Creating a Request
    , accountsProposalsCompleteSetup
    , AccountsProposalsCompleteSetup

    -- * Request Lenses
    , apcsXgafv
    , apcsUploadProtocol
    , apcsAccessToken
    , apcsUploadType
    , apcsPayload
    , apcsProposalId
    , apcsAccountId
    , apcsCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.completeSetup@ method which the
-- 'AccountsProposalsCompleteSetup' request conforms to.
type AccountsProposalsCompleteSetupResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             CaptureMode "proposalId" "completeSetup" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CompleteSetupRequest :>
                             Post '[JSON] Proposal

-- | Update the given proposal to indicate that setup has been completed.
-- This method is called by the buyer when the line items have been created
-- on their end for a finalized proposal and all the required creatives
-- have been uploaded using the creatives API. This call updates the
-- \`is_setup_completed\` bit on the proposal and also notifies the seller.
-- The server will advance the revision number of the most recent proposal.
--
-- /See:/ 'accountsProposalsCompleteSetup' smart constructor.
data AccountsProposalsCompleteSetup =
  AccountsProposalsCompleteSetup'
    { _apcsXgafv          :: !(Maybe Xgafv)
    , _apcsUploadProtocol :: !(Maybe Text)
    , _apcsAccessToken    :: !(Maybe Text)
    , _apcsUploadType     :: !(Maybe Text)
    , _apcsPayload        :: !CompleteSetupRequest
    , _apcsProposalId     :: !Text
    , _apcsAccountId      :: !Text
    , _apcsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsProposalsCompleteSetup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcsXgafv'
--
-- * 'apcsUploadProtocol'
--
-- * 'apcsAccessToken'
--
-- * 'apcsUploadType'
--
-- * 'apcsPayload'
--
-- * 'apcsProposalId'
--
-- * 'apcsAccountId'
--
-- * 'apcsCallback'
accountsProposalsCompleteSetup
    :: CompleteSetupRequest -- ^ 'apcsPayload'
    -> Text -- ^ 'apcsProposalId'
    -> Text -- ^ 'apcsAccountId'
    -> AccountsProposalsCompleteSetup
accountsProposalsCompleteSetup pApcsPayload_ pApcsProposalId_ pApcsAccountId_ =
  AccountsProposalsCompleteSetup'
    { _apcsXgafv = Nothing
    , _apcsUploadProtocol = Nothing
    , _apcsAccessToken = Nothing
    , _apcsUploadType = Nothing
    , _apcsPayload = pApcsPayload_
    , _apcsProposalId = pApcsProposalId_
    , _apcsAccountId = pApcsAccountId_
    , _apcsCallback = Nothing
    }

-- | V1 error format.
apcsXgafv :: Lens' AccountsProposalsCompleteSetup (Maybe Xgafv)
apcsXgafv
  = lens _apcsXgafv (\ s a -> s{_apcsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apcsUploadProtocol :: Lens' AccountsProposalsCompleteSetup (Maybe Text)
apcsUploadProtocol
  = lens _apcsUploadProtocol
      (\ s a -> s{_apcsUploadProtocol = a})

-- | OAuth access token.
apcsAccessToken :: Lens' AccountsProposalsCompleteSetup (Maybe Text)
apcsAccessToken
  = lens _apcsAccessToken
      (\ s a -> s{_apcsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apcsUploadType :: Lens' AccountsProposalsCompleteSetup (Maybe Text)
apcsUploadType
  = lens _apcsUploadType
      (\ s a -> s{_apcsUploadType = a})

-- | Multipart request metadata.
apcsPayload :: Lens' AccountsProposalsCompleteSetup CompleteSetupRequest
apcsPayload
  = lens _apcsPayload (\ s a -> s{_apcsPayload = a})

-- | The ID of the proposal to mark as setup completed.
apcsProposalId :: Lens' AccountsProposalsCompleteSetup Text
apcsProposalId
  = lens _apcsProposalId
      (\ s a -> s{_apcsProposalId = a})

-- | Account ID of the buyer.
apcsAccountId :: Lens' AccountsProposalsCompleteSetup Text
apcsAccountId
  = lens _apcsAccountId
      (\ s a -> s{_apcsAccountId = a})

-- | JSONP
apcsCallback :: Lens' AccountsProposalsCompleteSetup (Maybe Text)
apcsCallback
  = lens _apcsCallback (\ s a -> s{_apcsCallback = a})

instance GoogleRequest AccountsProposalsCompleteSetup
         where
        type Rs AccountsProposalsCompleteSetup = Proposal
        type Scopes AccountsProposalsCompleteSetup =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsCompleteSetup'{..}
          = go _apcsAccountId _apcsProposalId _apcsXgafv
              _apcsUploadProtocol
              _apcsAccessToken
              _apcsUploadType
              _apcsCallback
              (Just AltJSON)
              _apcsPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsProposalsCompleteSetupResource)
                      mempty

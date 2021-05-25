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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Pause
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal to pause serving. This method will set the
-- \`DealServingMetadata.DealPauseStatus.has_buyer_paused\` bit to true for
-- all deals in the proposal. It is a no-op to pause an already-paused
-- proposal. It is an error to call PauseProposal for a proposal that is
-- not finalized or renegotiating.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.pause@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Pause
    (
    -- * REST Resource
      AccountsProposalsPauseResource

    -- * Creating a Request
    , accountsProposalsPause
    , AccountsProposalsPause

    -- * Request Lenses
    , appXgafv
    , appUploadProtocol
    , appAccessToken
    , appUploadType
    , appPayload
    , appProposalId
    , appAccountId
    , appCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.pause@ method which the
-- 'AccountsProposalsPause' request conforms to.
type AccountsProposalsPauseResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             CaptureMode "proposalId" "pause" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PauseProposalRequest :>
                             Post '[JSON] Proposal

-- | Update the given proposal to pause serving. This method will set the
-- \`DealServingMetadata.DealPauseStatus.has_buyer_paused\` bit to true for
-- all deals in the proposal. It is a no-op to pause an already-paused
-- proposal. It is an error to call PauseProposal for a proposal that is
-- not finalized or renegotiating.
--
-- /See:/ 'accountsProposalsPause' smart constructor.
data AccountsProposalsPause =
  AccountsProposalsPause'
    { _appXgafv :: !(Maybe Xgafv)
    , _appUploadProtocol :: !(Maybe Text)
    , _appAccessToken :: !(Maybe Text)
    , _appUploadType :: !(Maybe Text)
    , _appPayload :: !PauseProposalRequest
    , _appProposalId :: !Text
    , _appAccountId :: !Text
    , _appCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProposalsPause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appXgafv'
--
-- * 'appUploadProtocol'
--
-- * 'appAccessToken'
--
-- * 'appUploadType'
--
-- * 'appPayload'
--
-- * 'appProposalId'
--
-- * 'appAccountId'
--
-- * 'appCallback'
accountsProposalsPause
    :: PauseProposalRequest -- ^ 'appPayload'
    -> Text -- ^ 'appProposalId'
    -> Text -- ^ 'appAccountId'
    -> AccountsProposalsPause
accountsProposalsPause pAppPayload_ pAppProposalId_ pAppAccountId_ =
  AccountsProposalsPause'
    { _appXgafv = Nothing
    , _appUploadProtocol = Nothing
    , _appAccessToken = Nothing
    , _appUploadType = Nothing
    , _appPayload = pAppPayload_
    , _appProposalId = pAppProposalId_
    , _appAccountId = pAppAccountId_
    , _appCallback = Nothing
    }


-- | V1 error format.
appXgafv :: Lens' AccountsProposalsPause (Maybe Xgafv)
appXgafv = lens _appXgafv (\ s a -> s{_appXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
appUploadProtocol :: Lens' AccountsProposalsPause (Maybe Text)
appUploadProtocol
  = lens _appUploadProtocol
      (\ s a -> s{_appUploadProtocol = a})

-- | OAuth access token.
appAccessToken :: Lens' AccountsProposalsPause (Maybe Text)
appAccessToken
  = lens _appAccessToken
      (\ s a -> s{_appAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
appUploadType :: Lens' AccountsProposalsPause (Maybe Text)
appUploadType
  = lens _appUploadType
      (\ s a -> s{_appUploadType = a})

-- | Multipart request metadata.
appPayload :: Lens' AccountsProposalsPause PauseProposalRequest
appPayload
  = lens _appPayload (\ s a -> s{_appPayload = a})

-- | The ID of the proposal to pause.
appProposalId :: Lens' AccountsProposalsPause Text
appProposalId
  = lens _appProposalId
      (\ s a -> s{_appProposalId = a})

-- | Account ID of the buyer.
appAccountId :: Lens' AccountsProposalsPause Text
appAccountId
  = lens _appAccountId (\ s a -> s{_appAccountId = a})

-- | JSONP
appCallback :: Lens' AccountsProposalsPause (Maybe Text)
appCallback
  = lens _appCallback (\ s a -> s{_appCallback = a})

instance GoogleRequest AccountsProposalsPause where
        type Rs AccountsProposalsPause = Proposal
        type Scopes AccountsProposalsPause =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsPause'{..}
          = go _appAccountId _appProposalId _appXgafv
              _appUploadProtocol
              _appAccessToken
              _appUploadType
              _appCallback
              (Just AltJSON)
              _appPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProposalsPauseResource)
                      mempty

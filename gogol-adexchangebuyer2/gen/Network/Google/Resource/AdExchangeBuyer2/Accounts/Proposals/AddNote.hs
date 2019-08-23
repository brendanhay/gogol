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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.AddNote
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new note and attach it to the proposal. The note is assigned a
-- unique ID by the server. The proposal revision number will not increase
-- when associated with a new note.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.addNote@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.AddNote
    (
    -- * REST Resource
      AccountsProposalsAddNoteResource

    -- * Creating a Request
    , accountsProposalsAddNote
    , AccountsProposalsAddNote

    -- * Request Lenses
    , apanXgafv
    , apanUploadProtocol
    , apanAccessToken
    , apanUploadType
    , apanPayload
    , apanProposalId
    , apanAccountId
    , apanCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.addNote@ method which the
-- 'AccountsProposalsAddNote' request conforms to.
type AccountsProposalsAddNoteResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             CaptureMode "proposalId" "addNote" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AddNoteRequest :> Post '[JSON] Note

-- | Create a new note and attach it to the proposal. The note is assigned a
-- unique ID by the server. The proposal revision number will not increase
-- when associated with a new note.
--
-- /See:/ 'accountsProposalsAddNote' smart constructor.
data AccountsProposalsAddNote =
  AccountsProposalsAddNote'
    { _apanXgafv          :: !(Maybe Xgafv)
    , _apanUploadProtocol :: !(Maybe Text)
    , _apanAccessToken    :: !(Maybe Text)
    , _apanUploadType     :: !(Maybe Text)
    , _apanPayload        :: !AddNoteRequest
    , _apanProposalId     :: !Text
    , _apanAccountId      :: !Text
    , _apanCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProposalsAddNote' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apanXgafv'
--
-- * 'apanUploadProtocol'
--
-- * 'apanAccessToken'
--
-- * 'apanUploadType'
--
-- * 'apanPayload'
--
-- * 'apanProposalId'
--
-- * 'apanAccountId'
--
-- * 'apanCallback'
accountsProposalsAddNote
    :: AddNoteRequest -- ^ 'apanPayload'
    -> Text -- ^ 'apanProposalId'
    -> Text -- ^ 'apanAccountId'
    -> AccountsProposalsAddNote
accountsProposalsAddNote pApanPayload_ pApanProposalId_ pApanAccountId_ =
  AccountsProposalsAddNote'
    { _apanXgafv = Nothing
    , _apanUploadProtocol = Nothing
    , _apanAccessToken = Nothing
    , _apanUploadType = Nothing
    , _apanPayload = pApanPayload_
    , _apanProposalId = pApanProposalId_
    , _apanAccountId = pApanAccountId_
    , _apanCallback = Nothing
    }


-- | V1 error format.
apanXgafv :: Lens' AccountsProposalsAddNote (Maybe Xgafv)
apanXgafv
  = lens _apanXgafv (\ s a -> s{_apanXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apanUploadProtocol :: Lens' AccountsProposalsAddNote (Maybe Text)
apanUploadProtocol
  = lens _apanUploadProtocol
      (\ s a -> s{_apanUploadProtocol = a})

-- | OAuth access token.
apanAccessToken :: Lens' AccountsProposalsAddNote (Maybe Text)
apanAccessToken
  = lens _apanAccessToken
      (\ s a -> s{_apanAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apanUploadType :: Lens' AccountsProposalsAddNote (Maybe Text)
apanUploadType
  = lens _apanUploadType
      (\ s a -> s{_apanUploadType = a})

-- | Multipart request metadata.
apanPayload :: Lens' AccountsProposalsAddNote AddNoteRequest
apanPayload
  = lens _apanPayload (\ s a -> s{_apanPayload = a})

-- | The ID of the proposal to attach the note to.
apanProposalId :: Lens' AccountsProposalsAddNote Text
apanProposalId
  = lens _apanProposalId
      (\ s a -> s{_apanProposalId = a})

-- | Account ID of the buyer.
apanAccountId :: Lens' AccountsProposalsAddNote Text
apanAccountId
  = lens _apanAccountId
      (\ s a -> s{_apanAccountId = a})

-- | JSONP
apanCallback :: Lens' AccountsProposalsAddNote (Maybe Text)
apanCallback
  = lens _apanCallback (\ s a -> s{_apanCallback = a})

instance GoogleRequest AccountsProposalsAddNote where
        type Rs AccountsProposalsAddNote = Note
        type Scopes AccountsProposalsAddNote =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsAddNote'{..}
          = go _apanAccountId _apanProposalId _apanXgafv
              _apanUploadProtocol
              _apanAccessToken
              _apanUploadType
              _apanCallback
              (Just AltJSON)
              _apanPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProposalsAddNoteResource)
                      mempty

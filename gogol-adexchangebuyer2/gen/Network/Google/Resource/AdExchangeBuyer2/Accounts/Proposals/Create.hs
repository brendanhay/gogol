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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create the given proposal. Each created proposal and any deals it
-- contains are assigned a unique ID by the server.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.create@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.Create
    (
    -- * REST Resource
      AccountsProposalsCreateResource

    -- * Creating a Request
    , accountsProposalsCreate
    , AccountsProposalsCreate

    -- * Request Lenses
    , apcXgafv
    , apcUploadProtocol
    , apcAccessToken
    , apcUploadType
    , apcPayload
    , apcAccountId
    , apcCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.create@ method which the
-- 'AccountsProposalsCreate' request conforms to.
type AccountsProposalsCreateResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Proposal :> Post '[JSON] Proposal

-- | Create the given proposal. Each created proposal and any deals it
-- contains are assigned a unique ID by the server.
--
-- /See:/ 'accountsProposalsCreate' smart constructor.
data AccountsProposalsCreate =
  AccountsProposalsCreate'
    { _apcXgafv :: !(Maybe Xgafv)
    , _apcUploadProtocol :: !(Maybe Text)
    , _apcAccessToken :: !(Maybe Text)
    , _apcUploadType :: !(Maybe Text)
    , _apcPayload :: !Proposal
    , _apcAccountId :: !Text
    , _apcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProposalsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcXgafv'
--
-- * 'apcUploadProtocol'
--
-- * 'apcAccessToken'
--
-- * 'apcUploadType'
--
-- * 'apcPayload'
--
-- * 'apcAccountId'
--
-- * 'apcCallback'
accountsProposalsCreate
    :: Proposal -- ^ 'apcPayload'
    -> Text -- ^ 'apcAccountId'
    -> AccountsProposalsCreate
accountsProposalsCreate pApcPayload_ pApcAccountId_ =
  AccountsProposalsCreate'
    { _apcXgafv = Nothing
    , _apcUploadProtocol = Nothing
    , _apcAccessToken = Nothing
    , _apcUploadType = Nothing
    , _apcPayload = pApcPayload_
    , _apcAccountId = pApcAccountId_
    , _apcCallback = Nothing
    }


-- | V1 error format.
apcXgafv :: Lens' AccountsProposalsCreate (Maybe Xgafv)
apcXgafv = lens _apcXgafv (\ s a -> s{_apcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apcUploadProtocol :: Lens' AccountsProposalsCreate (Maybe Text)
apcUploadProtocol
  = lens _apcUploadProtocol
      (\ s a -> s{_apcUploadProtocol = a})

-- | OAuth access token.
apcAccessToken :: Lens' AccountsProposalsCreate (Maybe Text)
apcAccessToken
  = lens _apcAccessToken
      (\ s a -> s{_apcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apcUploadType :: Lens' AccountsProposalsCreate (Maybe Text)
apcUploadType
  = lens _apcUploadType
      (\ s a -> s{_apcUploadType = a})

-- | Multipart request metadata.
apcPayload :: Lens' AccountsProposalsCreate Proposal
apcPayload
  = lens _apcPayload (\ s a -> s{_apcPayload = a})

-- | Account ID of the buyer.
apcAccountId :: Lens' AccountsProposalsCreate Text
apcAccountId
  = lens _apcAccountId (\ s a -> s{_apcAccountId = a})

-- | JSONP
apcCallback :: Lens' AccountsProposalsCreate (Maybe Text)
apcCallback
  = lens _apcCallback (\ s a -> s{_apcCallback = a})

instance GoogleRequest AccountsProposalsCreate where
        type Rs AccountsProposalsCreate = Proposal
        type Scopes AccountsProposalsCreate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsCreate'{..}
          = go _apcAccountId _apcXgafv _apcUploadProtocol
              _apcAccessToken
              _apcUploadType
              _apcCallback
              (Just AltJSON)
              _apcPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProposalsCreateResource)
                      mempty

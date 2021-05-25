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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List proposals. A filter expression (PQL query) may be specified to
-- filter the results. To retrieve all finalized proposals, regardless if a
-- proposal is being renegotiated, see the FinalizedProposals resource.
-- Note that Bidder\/ChildSeat relationships differ from the usual
-- behavior. A Bidder account can only see its child seats\' proposals by
-- specifying the ChildSeat\'s accountId in the request path.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Proposals.List
    (
    -- * REST Resource
      AccountsProposalsListResource

    -- * Creating a Request
    , accountsProposalsList
    , AccountsProposalsList

    -- * Request Lenses
    , aplXgafv
    , aplUploadProtocol
    , aplAccessToken
    , aplUploadType
    , aplFilterSyntax
    , aplAccountId
    , aplFilter
    , aplPageToken
    , aplPageSize
    , aplCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.proposals.list@ method which the
-- 'AccountsProposalsList' request conforms to.
type AccountsProposalsListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "proposals" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filterSyntax"
                       AccountsProposalsListFilterSyntax
                       :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListProposalsResponse

-- | List proposals. A filter expression (PQL query) may be specified to
-- filter the results. To retrieve all finalized proposals, regardless if a
-- proposal is being renegotiated, see the FinalizedProposals resource.
-- Note that Bidder\/ChildSeat relationships differ from the usual
-- behavior. A Bidder account can only see its child seats\' proposals by
-- specifying the ChildSeat\'s accountId in the request path.
--
-- /See:/ 'accountsProposalsList' smart constructor.
data AccountsProposalsList =
  AccountsProposalsList'
    { _aplXgafv :: !(Maybe Xgafv)
    , _aplUploadProtocol :: !(Maybe Text)
    , _aplAccessToken :: !(Maybe Text)
    , _aplUploadType :: !(Maybe Text)
    , _aplFilterSyntax :: !(Maybe AccountsProposalsListFilterSyntax)
    , _aplAccountId :: !Text
    , _aplFilter :: !(Maybe Text)
    , _aplPageToken :: !(Maybe Text)
    , _aplPageSize :: !(Maybe (Textual Int32))
    , _aplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProposalsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplXgafv'
--
-- * 'aplUploadProtocol'
--
-- * 'aplAccessToken'
--
-- * 'aplUploadType'
--
-- * 'aplFilterSyntax'
--
-- * 'aplAccountId'
--
-- * 'aplFilter'
--
-- * 'aplPageToken'
--
-- * 'aplPageSize'
--
-- * 'aplCallback'
accountsProposalsList
    :: Text -- ^ 'aplAccountId'
    -> AccountsProposalsList
accountsProposalsList pAplAccountId_ =
  AccountsProposalsList'
    { _aplXgafv = Nothing
    , _aplUploadProtocol = Nothing
    , _aplAccessToken = Nothing
    , _aplUploadType = Nothing
    , _aplFilterSyntax = Nothing
    , _aplAccountId = pAplAccountId_
    , _aplFilter = Nothing
    , _aplPageToken = Nothing
    , _aplPageSize = Nothing
    , _aplCallback = Nothing
    }


-- | V1 error format.
aplXgafv :: Lens' AccountsProposalsList (Maybe Xgafv)
aplXgafv = lens _aplXgafv (\ s a -> s{_aplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aplUploadProtocol :: Lens' AccountsProposalsList (Maybe Text)
aplUploadProtocol
  = lens _aplUploadProtocol
      (\ s a -> s{_aplUploadProtocol = a})

-- | OAuth access token.
aplAccessToken :: Lens' AccountsProposalsList (Maybe Text)
aplAccessToken
  = lens _aplAccessToken
      (\ s a -> s{_aplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aplUploadType :: Lens' AccountsProposalsList (Maybe Text)
aplUploadType
  = lens _aplUploadType
      (\ s a -> s{_aplUploadType = a})

-- | Syntax the filter is written in. Current implementation defaults to PQL
-- but in the future it will be LIST_FILTER.
aplFilterSyntax :: Lens' AccountsProposalsList (Maybe AccountsProposalsListFilterSyntax)
aplFilterSyntax
  = lens _aplFilterSyntax
      (\ s a -> s{_aplFilterSyntax = a})

-- | Account ID of the buyer.
aplAccountId :: Lens' AccountsProposalsList Text
aplAccountId
  = lens _aplAccountId (\ s a -> s{_aplAccountId = a})

-- | An optional PQL filter query used to query for proposals. Nested
-- repeated fields, such as proposal.deals.targetingCriterion, cannot be
-- filtered.
aplFilter :: Lens' AccountsProposalsList (Maybe Text)
aplFilter
  = lens _aplFilter (\ s a -> s{_aplFilter = a})

-- | The page token as returned from ListProposalsResponse.
aplPageToken :: Lens' AccountsProposalsList (Maybe Text)
aplPageToken
  = lens _aplPageToken (\ s a -> s{_aplPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
aplPageSize :: Lens' AccountsProposalsList (Maybe Int32)
aplPageSize
  = lens _aplPageSize (\ s a -> s{_aplPageSize = a}) .
      mapping _Coerce

-- | JSONP
aplCallback :: Lens' AccountsProposalsList (Maybe Text)
aplCallback
  = lens _aplCallback (\ s a -> s{_aplCallback = a})

instance GoogleRequest AccountsProposalsList where
        type Rs AccountsProposalsList = ListProposalsResponse
        type Scopes AccountsProposalsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProposalsList'{..}
          = go _aplAccountId _aplXgafv _aplUploadProtocol
              _aplAccessToken
              _aplUploadType
              _aplFilterSyntax
              _aplFilter
              _aplPageToken
              _aplPageSize
              _aplCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProposalsListResource)
                      mempty

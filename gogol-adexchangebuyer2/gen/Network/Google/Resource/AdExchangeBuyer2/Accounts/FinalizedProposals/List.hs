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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List finalized proposals, regardless if a proposal is being
-- renegotiated. A filter expression (PQL query) may be specified to filter
-- the results. The notes will not be returned.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.finalizedProposals.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.FinalizedProposals.List
    (
    -- * REST Resource
      AccountsFinalizedProposalsListResource

    -- * Creating a Request
    , accountsFinalizedProposalsList
    , AccountsFinalizedProposalsList

    -- * Request Lenses
    , afplXgafv
    , afplUploadProtocol
    , afplAccessToken
    , afplUploadType
    , afplFilterSyntax
    , afplAccountId
    , afplFilter
    , afplPageToken
    , afplPageSize
    , afplCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.finalizedProposals.list@ method which the
-- 'AccountsFinalizedProposalsList' request conforms to.
type AccountsFinalizedProposalsListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "finalizedProposals" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filterSyntax" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListProposalsResponse

-- | List finalized proposals, regardless if a proposal is being
-- renegotiated. A filter expression (PQL query) may be specified to filter
-- the results. The notes will not be returned.
--
-- /See:/ 'accountsFinalizedProposalsList' smart constructor.
data AccountsFinalizedProposalsList =
  AccountsFinalizedProposalsList'
    { _afplXgafv          :: !(Maybe Xgafv)
    , _afplUploadProtocol :: !(Maybe Text)
    , _afplAccessToken    :: !(Maybe Text)
    , _afplUploadType     :: !(Maybe Text)
    , _afplFilterSyntax   :: !(Maybe Text)
    , _afplAccountId      :: !Text
    , _afplFilter         :: !(Maybe Text)
    , _afplPageToken      :: !(Maybe Text)
    , _afplPageSize       :: !(Maybe (Textual Int32))
    , _afplCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsFinalizedProposalsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afplXgafv'
--
-- * 'afplUploadProtocol'
--
-- * 'afplAccessToken'
--
-- * 'afplUploadType'
--
-- * 'afplFilterSyntax'
--
-- * 'afplAccountId'
--
-- * 'afplFilter'
--
-- * 'afplPageToken'
--
-- * 'afplPageSize'
--
-- * 'afplCallback'
accountsFinalizedProposalsList
    :: Text -- ^ 'afplAccountId'
    -> AccountsFinalizedProposalsList
accountsFinalizedProposalsList pAfplAccountId_ =
  AccountsFinalizedProposalsList'
    { _afplXgafv = Nothing
    , _afplUploadProtocol = Nothing
    , _afplAccessToken = Nothing
    , _afplUploadType = Nothing
    , _afplFilterSyntax = Nothing
    , _afplAccountId = pAfplAccountId_
    , _afplFilter = Nothing
    , _afplPageToken = Nothing
    , _afplPageSize = Nothing
    , _afplCallback = Nothing
    }


-- | V1 error format.
afplXgafv :: Lens' AccountsFinalizedProposalsList (Maybe Xgafv)
afplXgafv
  = lens _afplXgafv (\ s a -> s{_afplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
afplUploadProtocol :: Lens' AccountsFinalizedProposalsList (Maybe Text)
afplUploadProtocol
  = lens _afplUploadProtocol
      (\ s a -> s{_afplUploadProtocol = a})

-- | OAuth access token.
afplAccessToken :: Lens' AccountsFinalizedProposalsList (Maybe Text)
afplAccessToken
  = lens _afplAccessToken
      (\ s a -> s{_afplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
afplUploadType :: Lens' AccountsFinalizedProposalsList (Maybe Text)
afplUploadType
  = lens _afplUploadType
      (\ s a -> s{_afplUploadType = a})

-- | Syntax the filter is written in. Current implementation defaults to PQL
-- but in the future it will be LIST_FILTER.
afplFilterSyntax :: Lens' AccountsFinalizedProposalsList (Maybe Text)
afplFilterSyntax
  = lens _afplFilterSyntax
      (\ s a -> s{_afplFilterSyntax = a})

-- | Account ID of the buyer.
afplAccountId :: Lens' AccountsFinalizedProposalsList Text
afplAccountId
  = lens _afplAccountId
      (\ s a -> s{_afplAccountId = a})

-- | An optional PQL filter query used to query for proposals. Nested
-- repeated fields, such as proposal.deals.targetingCriterion, cannot be
-- filtered.
afplFilter :: Lens' AccountsFinalizedProposalsList (Maybe Text)
afplFilter
  = lens _afplFilter (\ s a -> s{_afplFilter = a})

-- | The page token as returned from ListProposalsResponse.
afplPageToken :: Lens' AccountsFinalizedProposalsList (Maybe Text)
afplPageToken
  = lens _afplPageToken
      (\ s a -> s{_afplPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
afplPageSize :: Lens' AccountsFinalizedProposalsList (Maybe Int32)
afplPageSize
  = lens _afplPageSize (\ s a -> s{_afplPageSize = a})
      . mapping _Coerce

-- | JSONP
afplCallback :: Lens' AccountsFinalizedProposalsList (Maybe Text)
afplCallback
  = lens _afplCallback (\ s a -> s{_afplCallback = a})

instance GoogleRequest AccountsFinalizedProposalsList
         where
        type Rs AccountsFinalizedProposalsList =
             ListProposalsResponse
        type Scopes AccountsFinalizedProposalsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsFinalizedProposalsList'{..}
          = go _afplAccountId _afplXgafv _afplUploadProtocol
              _afplAccessToken
              _afplUploadType
              _afplFilterSyntax
              _afplFilter
              _afplPageToken
              _afplPageSize
              _afplCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsFinalizedProposalsListResource)
                      mempty

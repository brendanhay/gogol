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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all creative-deal associations.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.dealAssociations.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.List
    (
    -- * REST Resource
      AccountsCreativesDealAssociationsListResource

    -- * Creating a Request
    , accountsCreativesDealAssociationsList
    , AccountsCreativesDealAssociationsList

    -- * Request Lenses
    , acdalXgafv
    , acdalUploadProtocol
    , acdalAccessToken
    , acdalUploadType
    , acdalCreativeId
    , acdalAccountId
    , acdalQuery
    , acdalPageToken
    , acdalPageSize
    , acdalCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.dealAssociations.list@ method which the
-- 'AccountsCreativesDealAssociationsList' request conforms to.
type AccountsCreativesDealAssociationsListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "creatives" :>
             Capture "creativeId" Text :>
               "dealAssociations" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "query" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListDealAssociationsResponse

-- | List all creative-deal associations.
--
-- /See:/ 'accountsCreativesDealAssociationsList' smart constructor.
data AccountsCreativesDealAssociationsList = AccountsCreativesDealAssociationsList'
    { _acdalXgafv          :: !(Maybe Xgafv)
    , _acdalUploadProtocol :: !(Maybe Text)
    , _acdalAccessToken    :: !(Maybe Text)
    , _acdalUploadType     :: !(Maybe Text)
    , _acdalCreativeId     :: !Text
    , _acdalAccountId      :: !Text
    , _acdalQuery          :: !(Maybe Text)
    , _acdalPageToken      :: !(Maybe Text)
    , _acdalPageSize       :: !(Maybe (Textual Int32))
    , _acdalCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCreativesDealAssociationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdalXgafv'
--
-- * 'acdalUploadProtocol'
--
-- * 'acdalAccessToken'
--
-- * 'acdalUploadType'
--
-- * 'acdalCreativeId'
--
-- * 'acdalAccountId'
--
-- * 'acdalQuery'
--
-- * 'acdalPageToken'
--
-- * 'acdalPageSize'
--
-- * 'acdalCallback'
accountsCreativesDealAssociationsList
    :: Text -- ^ 'acdalCreativeId'
    -> Text -- ^ 'acdalAccountId'
    -> AccountsCreativesDealAssociationsList
accountsCreativesDealAssociationsList pAcdalCreativeId_ pAcdalAccountId_ =
    AccountsCreativesDealAssociationsList'
    { _acdalXgafv = Nothing
    , _acdalUploadProtocol = Nothing
    , _acdalAccessToken = Nothing
    , _acdalUploadType = Nothing
    , _acdalCreativeId = pAcdalCreativeId_
    , _acdalAccountId = pAcdalAccountId_
    , _acdalQuery = Nothing
    , _acdalPageToken = Nothing
    , _acdalPageSize = Nothing
    , _acdalCallback = Nothing
    }

-- | V1 error format.
acdalXgafv :: Lens' AccountsCreativesDealAssociationsList (Maybe Xgafv)
acdalXgafv
  = lens _acdalXgafv (\ s a -> s{_acdalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acdalUploadProtocol :: Lens' AccountsCreativesDealAssociationsList (Maybe Text)
acdalUploadProtocol
  = lens _acdalUploadProtocol
      (\ s a -> s{_acdalUploadProtocol = a})

-- | OAuth access token.
acdalAccessToken :: Lens' AccountsCreativesDealAssociationsList (Maybe Text)
acdalAccessToken
  = lens _acdalAccessToken
      (\ s a -> s{_acdalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acdalUploadType :: Lens' AccountsCreativesDealAssociationsList (Maybe Text)
acdalUploadType
  = lens _acdalUploadType
      (\ s a -> s{_acdalUploadType = a})

-- | The creative ID to list the associations from. Specify \"-\" to list all
-- creatives under the above account.
acdalCreativeId :: Lens' AccountsCreativesDealAssociationsList Text
acdalCreativeId
  = lens _acdalCreativeId
      (\ s a -> s{_acdalCreativeId = a})

-- | The account to list the associations from. Specify \"-\" to list all
-- creatives the current user has access to.
acdalAccountId :: Lens' AccountsCreativesDealAssociationsList Text
acdalAccountId
  = lens _acdalAccountId
      (\ s a -> s{_acdalAccountId = a})

-- | An optional query string to filter deal associations. If no filter is
-- specified, all associations will be returned. Supported queries are:
--
-- -   accountId=/account_id_string/
-- -   creativeId=/creative_id_string/
-- -   dealsId=/deals_id_string/
-- -   dealsStatus:{approved, conditionally_approved, disapproved,
--     not_checked}
-- -   openAuctionStatus:{approved, conditionally_approved, disapproved,
--     not_checked}
--
-- Example: \'dealsId=12345 AND dealsStatus:disapproved\'
acdalQuery :: Lens' AccountsCreativesDealAssociationsList (Maybe Text)
acdalQuery
  = lens _acdalQuery (\ s a -> s{_acdalQuery = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListDealAssociationsResponse.next_page_token returned from the previous
-- call to \'ListDealAssociations\' method.
acdalPageToken :: Lens' AccountsCreativesDealAssociationsList (Maybe Text)
acdalPageToken
  = lens _acdalPageToken
      (\ s a -> s{_acdalPageToken = a})

-- | Requested page size. Server may return fewer associations than
-- requested. If unspecified, server will pick an appropriate default.
acdalPageSize :: Lens' AccountsCreativesDealAssociationsList (Maybe Int32)
acdalPageSize
  = lens _acdalPageSize
      (\ s a -> s{_acdalPageSize = a})
      . mapping _Coerce

-- | JSONP
acdalCallback :: Lens' AccountsCreativesDealAssociationsList (Maybe Text)
acdalCallback
  = lens _acdalCallback
      (\ s a -> s{_acdalCallback = a})

instance GoogleRequest
         AccountsCreativesDealAssociationsList where
        type Rs AccountsCreativesDealAssociationsList =
             ListDealAssociationsResponse
        type Scopes AccountsCreativesDealAssociationsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AccountsCreativesDealAssociationsList'{..}
          = go _acdalAccountId _acdalCreativeId _acdalXgafv
              _acdalUploadProtocol
              _acdalAccessToken
              _acdalUploadType
              _acdalQuery
              _acdalPageToken
              _acdalPageSize
              _acdalCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsCreativesDealAssociationsListResource)
                      mempty

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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists creatives.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.List
    (
    -- * REST Resource
      AccountsCreativesListResource

    -- * Creating a Request
    , accountsCreativesList
    , AccountsCreativesList

    -- * Request Lenses
    , aclXgafv
    , aclUploadProtocol
    , aclAccessToken
    , aclUploadType
    , aclAccountId
    , aclQuery
    , aclPageToken
    , aclPageSize
    , aclCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.list@ method which the
-- 'AccountsCreativesList' request conforms to.
type AccountsCreativesListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "creatives" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "query" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListCreativesResponse

-- | Lists creatives.
--
-- /See:/ 'accountsCreativesList' smart constructor.
data AccountsCreativesList =
  AccountsCreativesList'
    { _aclXgafv :: !(Maybe Xgafv)
    , _aclUploadProtocol :: !(Maybe Text)
    , _aclAccessToken :: !(Maybe Text)
    , _aclUploadType :: !(Maybe Text)
    , _aclAccountId :: !Text
    , _aclQuery :: !(Maybe Text)
    , _aclPageToken :: !(Maybe Text)
    , _aclPageSize :: !(Maybe (Textual Int32))
    , _aclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCreativesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclXgafv'
--
-- * 'aclUploadProtocol'
--
-- * 'aclAccessToken'
--
-- * 'aclUploadType'
--
-- * 'aclAccountId'
--
-- * 'aclQuery'
--
-- * 'aclPageToken'
--
-- * 'aclPageSize'
--
-- * 'aclCallback'
accountsCreativesList
    :: Text -- ^ 'aclAccountId'
    -> AccountsCreativesList
accountsCreativesList pAclAccountId_ =
  AccountsCreativesList'
    { _aclXgafv = Nothing
    , _aclUploadProtocol = Nothing
    , _aclAccessToken = Nothing
    , _aclUploadType = Nothing
    , _aclAccountId = pAclAccountId_
    , _aclQuery = Nothing
    , _aclPageToken = Nothing
    , _aclPageSize = Nothing
    , _aclCallback = Nothing
    }


-- | V1 error format.
aclXgafv :: Lens' AccountsCreativesList (Maybe Xgafv)
aclXgafv = lens _aclXgafv (\ s a -> s{_aclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aclUploadProtocol :: Lens' AccountsCreativesList (Maybe Text)
aclUploadProtocol
  = lens _aclUploadProtocol
      (\ s a -> s{_aclUploadProtocol = a})

-- | OAuth access token.
aclAccessToken :: Lens' AccountsCreativesList (Maybe Text)
aclAccessToken
  = lens _aclAccessToken
      (\ s a -> s{_aclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aclUploadType :: Lens' AccountsCreativesList (Maybe Text)
aclUploadType
  = lens _aclUploadType
      (\ s a -> s{_aclUploadType = a})

-- | The account to list the creatives from. Specify \"-\" to list all
-- creatives the current user has access to.
aclAccountId :: Lens' AccountsCreativesList Text
aclAccountId
  = lens _aclAccountId (\ s a -> s{_aclAccountId = a})

-- | An optional query string to filter creatives. If no filter is specified,
-- all active creatives will be returned. Supported queries are: -
-- accountId=*account_id_string* - creativeId=*creative_id_string* -
-- dealsStatus: {approved, conditionally_approved, disapproved,
-- not_checked} - openAuctionStatus: {approved, conditionally_approved,
-- disapproved, not_checked} - attribute: {a numeric attribute from the
-- list of attributes} - disapprovalReason: {a reason from
-- DisapprovalReason} Example: \'accountId=12345 AND
-- (dealsStatus:disapproved AND disapprovalReason:unacceptable_content) OR
-- attribute:47\'
aclQuery :: Lens' AccountsCreativesList (Maybe Text)
aclQuery = lens _aclQuery (\ s a -> s{_aclQuery = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListCreativesResponse.next_page_token
-- returned from the previous call to \'ListCreatives\' method.
aclPageToken :: Lens' AccountsCreativesList (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | Requested page size. The server may return fewer creatives than
-- requested (due to timeout constraint) even if more are available via
-- another call. If unspecified, server will pick an appropriate default.
-- Acceptable values are 1 to 1000, inclusive.
aclPageSize :: Lens' AccountsCreativesList (Maybe Int32)
aclPageSize
  = lens _aclPageSize (\ s a -> s{_aclPageSize = a}) .
      mapping _Coerce

-- | JSONP
aclCallback :: Lens' AccountsCreativesList (Maybe Text)
aclCallback
  = lens _aclCallback (\ s a -> s{_aclCallback = a})

instance GoogleRequest AccountsCreativesList where
        type Rs AccountsCreativesList = ListCreativesResponse
        type Scopes AccountsCreativesList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsCreativesList'{..}
          = go _aclAccountId _aclXgafv _aclUploadProtocol
              _aclAccessToken
              _aclUploadType
              _aclQuery
              _aclPageToken
              _aclPageSize
              _aclCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCreativesListResource)
                      mempty

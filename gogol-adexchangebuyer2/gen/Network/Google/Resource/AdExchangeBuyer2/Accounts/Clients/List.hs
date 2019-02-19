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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the clients for the current sponsor buyer.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.List
    (
    -- * REST Resource
      AccountsClientsListResource

    -- * Creating a Request
    , accountsClientsList
    , AccountsClientsList

    -- * Request Lenses
    , aclcXgafv
    , aclcUploadProtocol
    , aclcAccessToken
    , aclcUploadType
    , aclcAccountId
    , aclcPartnerClientId
    , aclcPageToken
    , aclcPageSize
    , aclcCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.list@ method which the
-- 'AccountsClientsList' request conforms to.
type AccountsClientsListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "partnerClientId" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListClientsResponse

-- | Lists all the clients for the current sponsor buyer.
--
-- /See:/ 'accountsClientsList' smart constructor.
data AccountsClientsList =
  AccountsClientsList'
    { _aclcXgafv           :: !(Maybe Xgafv)
    , _aclcUploadProtocol  :: !(Maybe Text)
    , _aclcAccessToken     :: !(Maybe Text)
    , _aclcUploadType      :: !(Maybe Text)
    , _aclcAccountId       :: !(Textual Int64)
    , _aclcPartnerClientId :: !(Maybe Text)
    , _aclcPageToken       :: !(Maybe Text)
    , _aclcPageSize        :: !(Maybe (Textual Int32))
    , _aclcCallback        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClientsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclcXgafv'
--
-- * 'aclcUploadProtocol'
--
-- * 'aclcAccessToken'
--
-- * 'aclcUploadType'
--
-- * 'aclcAccountId'
--
-- * 'aclcPartnerClientId'
--
-- * 'aclcPageToken'
--
-- * 'aclcPageSize'
--
-- * 'aclcCallback'
accountsClientsList
    :: Int64 -- ^ 'aclcAccountId'
    -> AccountsClientsList
accountsClientsList pAclcAccountId_ =
  AccountsClientsList'
    { _aclcXgafv = Nothing
    , _aclcUploadProtocol = Nothing
    , _aclcAccessToken = Nothing
    , _aclcUploadType = Nothing
    , _aclcAccountId = _Coerce # pAclcAccountId_
    , _aclcPartnerClientId = Nothing
    , _aclcPageToken = Nothing
    , _aclcPageSize = Nothing
    , _aclcCallback = Nothing
    }


-- | V1 error format.
aclcXgafv :: Lens' AccountsClientsList (Maybe Xgafv)
aclcXgafv
  = lens _aclcXgafv (\ s a -> s{_aclcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aclcUploadProtocol :: Lens' AccountsClientsList (Maybe Text)
aclcUploadProtocol
  = lens _aclcUploadProtocol
      (\ s a -> s{_aclcUploadProtocol = a})

-- | OAuth access token.
aclcAccessToken :: Lens' AccountsClientsList (Maybe Text)
aclcAccessToken
  = lens _aclcAccessToken
      (\ s a -> s{_aclcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aclcUploadType :: Lens' AccountsClientsList (Maybe Text)
aclcUploadType
  = lens _aclcUploadType
      (\ s a -> s{_aclcUploadType = a})

-- | Unique numerical account ID of the sponsor buyer to list the clients
-- for.
aclcAccountId :: Lens' AccountsClientsList Int64
aclcAccountId
  = lens _aclcAccountId
      (\ s a -> s{_aclcAccountId = a})
      . _Coerce

-- | Optional unique identifier (from the standpoint of an Ad Exchange
-- sponsor buyer partner) of the client to return. If specified, at most
-- one client will be returned in the response.
aclcPartnerClientId :: Lens' AccountsClientsList (Maybe Text)
aclcPartnerClientId
  = lens _aclcPartnerClientId
      (\ s a -> s{_aclcPartnerClientId = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListClientsResponse.nextPageToken
-- returned from the previous call to the accounts.clients.list method.
aclcPageToken :: Lens' AccountsClientsList (Maybe Text)
aclcPageToken
  = lens _aclcPageToken
      (\ s a -> s{_aclcPageToken = a})

-- | Requested page size. The server may return fewer clients than requested.
-- If unspecified, the server will pick an appropriate default.
aclcPageSize :: Lens' AccountsClientsList (Maybe Int32)
aclcPageSize
  = lens _aclcPageSize (\ s a -> s{_aclcPageSize = a})
      . mapping _Coerce

-- | JSONP
aclcCallback :: Lens' AccountsClientsList (Maybe Text)
aclcCallback
  = lens _aclcCallback (\ s a -> s{_aclcCallback = a})

instance GoogleRequest AccountsClientsList where
        type Rs AccountsClientsList = ListClientsResponse
        type Scopes AccountsClientsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsList'{..}
          = go _aclcAccountId _aclcXgafv _aclcUploadProtocol
              _aclcAccessToken
              _aclcUploadType
              _aclcPartnerClientId
              _aclcPageToken
              _aclcPageSize
              _aclcCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClientsListResource)
                      mempty

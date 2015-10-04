{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DataTransfer.Transfers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the transfers for a customer by source user, destination user, or
-- status.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @DataTransferTransfersList@.
module Network.Google.Resource.DataTransfer.Transfers.List
    (
    -- * REST Resource
      TransfersListResource

    -- * Creating a Request
    , transfersList'
    , TransfersList'

    -- * Request Lenses
    , tlStatus
    , tlQuotaUser
    , tlPrettyPrint
    , tlOldOwnerUserId
    , tlUserIP
    , tlNewOwnerUserId
    , tlCustomerId
    , tlKey
    , tlPageToken
    , tlOAuthToken
    , tlMaxResults
    , tlFields
    ) where

import           Network.Google.AdminDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @DataTransferTransfersList@ which the
-- 'TransfersList'' request conforms to.
type TransfersListResource =
     "transfers" :>
       QueryParam "status" Text :>
         QueryParam "oldOwnerUserId" Text :>
           QueryParam "newOwnerUserId" Text :>
             QueryParam "customerId" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] DataTransfersListResponse

-- | Lists the transfers for a customer by source user, destination user, or
-- status.
--
-- /See:/ 'transfersList'' smart constructor.
data TransfersList' = TransfersList'
    { _tlStatus         :: !(Maybe Text)
    , _tlQuotaUser      :: !(Maybe Text)
    , _tlPrettyPrint    :: !Bool
    , _tlOldOwnerUserId :: !(Maybe Text)
    , _tlUserIP         :: !(Maybe Text)
    , _tlNewOwnerUserId :: !(Maybe Text)
    , _tlCustomerId     :: !(Maybe Text)
    , _tlKey            :: !(Maybe Key)
    , _tlPageToken      :: !(Maybe Text)
    , _tlOAuthToken     :: !(Maybe OAuthToken)
    , _tlMaxResults     :: !(Maybe Int32)
    , _tlFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransfersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlStatus'
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlOldOwnerUserId'
--
-- * 'tlUserIP'
--
-- * 'tlNewOwnerUserId'
--
-- * 'tlCustomerId'
--
-- * 'tlKey'
--
-- * 'tlPageToken'
--
-- * 'tlOAuthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
transfersList'
    :: TransfersList'
transfersList' =
    TransfersList'
    { _tlStatus = Nothing
    , _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlOldOwnerUserId = Nothing
    , _tlUserIP = Nothing
    , _tlNewOwnerUserId = Nothing
    , _tlCustomerId = Nothing
    , _tlKey = Nothing
    , _tlPageToken = Nothing
    , _tlOAuthToken = Nothing
    , _tlMaxResults = Nothing
    , _tlFields = Nothing
    }

-- | Status of the transfer.
tlStatus :: Lens' TransfersList' (Maybe Text)
tlStatus = lens _tlStatus (\ s a -> s{_tlStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TransfersList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TransfersList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | Source user\'s profile ID.
tlOldOwnerUserId :: Lens' TransfersList' (Maybe Text)
tlOldOwnerUserId
  = lens _tlOldOwnerUserId
      (\ s a -> s{_tlOldOwnerUserId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIP :: Lens' TransfersList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | Destination user\'s profile ID.
tlNewOwnerUserId :: Lens' TransfersList' (Maybe Text)
tlNewOwnerUserId
  = lens _tlNewOwnerUserId
      (\ s a -> s{_tlNewOwnerUserId = a})

-- | Immutable ID of the Google Apps account.
tlCustomerId :: Lens' TransfersList' (Maybe Text)
tlCustomerId
  = lens _tlCustomerId (\ s a -> s{_tlCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TransfersList' (Maybe Key)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Token to specify the next page in the list.
tlPageToken :: Lens' TransfersList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TransfersList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | Maximum number of results to return. Default is 100.
tlMaxResults :: Lens' TransfersList' (Maybe Int32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TransfersList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TransfersList' where
        authKey = tlKey . _Just
        authToken = tlOAuthToken . _Just

instance GoogleRequest TransfersList' where
        type Rs TransfersList' = DataTransfersListResponse
        request
          = requestWithRoute defReq adminDataTransferURL
        requestWithRoute r u TransfersList'{..}
          = go _tlStatus _tlOldOwnerUserId _tlNewOwnerUserId
              _tlCustomerId
              _tlPageToken
              _tlMaxResults
              _tlQuotaUser
              (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransfersListResource)
                      r
                      u

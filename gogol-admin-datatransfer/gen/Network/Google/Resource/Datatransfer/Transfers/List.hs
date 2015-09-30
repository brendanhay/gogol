{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Datatransfer.Transfers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the transfers for a customer by source user, destination user, or
-- status.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @DatatransferTransfersList@.
module Network.Google.Resource.Datatransfer.Transfers.List
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
    , tlUserIp
    , tlNewOwnerUserId
    , tlCustomerId
    , tlKey
    , tlPageToken
    , tlOauthToken
    , tlMaxResults
    , tlFields
    , tlAlt
    ) where

import           Network.Google.AdminDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @DatatransferTransfersList@ which the
-- 'TransfersList'' request conforms to.
type TransfersListResource =
     "transfers" :>
       QueryParam "status" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "oldOwnerUserId" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "newOwnerUserId" Text :>
                   QueryParam "customerId" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
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
    , _tlUserIp         :: !(Maybe Text)
    , _tlNewOwnerUserId :: !(Maybe Text)
    , _tlCustomerId     :: !(Maybe Text)
    , _tlKey            :: !(Maybe Text)
    , _tlPageToken      :: !(Maybe Text)
    , _tlOauthToken     :: !(Maybe Text)
    , _tlMaxResults     :: !(Maybe Int32)
    , _tlFields         :: !(Maybe Text)
    , _tlAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'tlUserIp'
--
-- * 'tlNewOwnerUserId'
--
-- * 'tlCustomerId'
--
-- * 'tlKey'
--
-- * 'tlPageToken'
--
-- * 'tlOauthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
--
-- * 'tlAlt'
transfersList'
    :: TransfersList'
transfersList' =
    TransfersList'
    { _tlStatus = Nothing
    , _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlOldOwnerUserId = Nothing
    , _tlUserIp = Nothing
    , _tlNewOwnerUserId = Nothing
    , _tlCustomerId = Nothing
    , _tlKey = Nothing
    , _tlPageToken = Nothing
    , _tlOauthToken = Nothing
    , _tlMaxResults = Nothing
    , _tlFields = Nothing
    , _tlAlt = JSON
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
tlUserIp :: Lens' TransfersList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

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
tlKey :: Lens' TransfersList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Token to specify the next page in the list.
tlPageToken :: Lens' TransfersList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TransfersList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | Maximum number of results to return. Default is 100.
tlMaxResults :: Lens' TransfersList' (Maybe Int32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TransfersList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TransfersList' Alt
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TransfersList' where
        type Rs TransfersList' = DataTransfersListResponse
        request
          = requestWithRoute defReq adminDataTransferURL
        requestWithRoute r u TransfersList'{..}
          = go _tlStatus _tlQuotaUser (Just _tlPrettyPrint)
              _tlOldOwnerUserId
              _tlUserIp
              _tlNewOwnerUserId
              _tlCustomerId
              _tlKey
              _tlPageToken
              _tlOauthToken
              _tlMaxResults
              _tlFields
              (Just _tlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransfersListResource)
                      r
                      u

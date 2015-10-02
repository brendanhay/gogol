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
-- Module      : Network.Google.Resource.DataTransfer.Applications.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the applications available for data transfer for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @DataTransferApplicationsList@.
module Network.Google.Resource.DataTransfer.Applications.List
    (
    -- * REST Resource
      ApplicationsListResource

    -- * Creating a Request
    , applicationsList'
    , ApplicationsList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alUserIP
    , alCustomerId
    , alKey
    , alPageToken
    , alOAuthToken
    , alMaxResults
    , alFields
    ) where

import           Network.Google.AdminDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @DataTransferApplicationsList@ which the
-- 'ApplicationsList'' request conforms to.
type ApplicationsListResource =
     "applications" :>
       QueryParam "customerId" Text :>
         QueryParam "maxResults" Word32 :>
           QueryParam "pageToken" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ApplicationsListResponse

-- | Lists the applications available for data transfer for a customer.
--
-- /See:/ 'applicationsList'' smart constructor.
data ApplicationsList' = ApplicationsList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alUserIP      :: !(Maybe Text)
    , _alCustomerId  :: !(Maybe Text)
    , _alKey         :: !(Maybe Key)
    , _alPageToken   :: !(Maybe Text)
    , _alOAuthToken  :: !(Maybe OAuthToken)
    , _alMaxResults  :: !(Maybe Word32)
    , _alFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIP'
--
-- * 'alCustomerId'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alOAuthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
applicationsList'
    :: ApplicationsList'
applicationsList' =
    ApplicationsList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIP = Nothing
    , _alCustomerId = Nothing
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alOAuthToken = Nothing
    , _alMaxResults = Nothing
    , _alFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' ApplicationsList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' ApplicationsList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIP :: Lens' ApplicationsList' (Maybe Text)
alUserIP = lens _alUserIP (\ s a -> s{_alUserIP = a})

-- | Immutable ID of the Google Apps account.
alCustomerId :: Lens' ApplicationsList' (Maybe Text)
alCustomerId
  = lens _alCustomerId (\ s a -> s{_alCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' ApplicationsList' (Maybe Key)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | Token to specify next page in the list.
alPageToken :: Lens' ApplicationsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOAuthToken :: Lens' ApplicationsList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

-- | Maximum number of results to return. Default is 100.
alMaxResults :: Lens' ApplicationsList' (Maybe Word32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' ApplicationsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth ApplicationsList' where
        authKey = alKey . _Just
        authToken = alOAuthToken . _Just

instance GoogleRequest ApplicationsList' where
        type Rs ApplicationsList' = ApplicationsListResponse
        request
          = requestWithRoute defReq adminDataTransferURL
        requestWithRoute r u ApplicationsList'{..}
          = go _alCustomerId _alMaxResults _alPageToken
              _alQuotaUser
              (Just _alPrettyPrint)
              _alUserIP
              _alFields
              _alKey
              _alOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ApplicationsListResource)
                      r
                      u

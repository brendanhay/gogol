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
-- Module      : Network.Google.Resource.Datatransfer.Applications.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the applications available for data transfer for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @DatatransferApplicationsList@.
module Network.Google.Resource.Datatransfer.Applications.List
    (
    -- * REST Resource
      ApplicationsListResource

    -- * Creating a Request
    , applicationsList'
    , ApplicationsList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alUserIp
    , alCustomerId
    , alKey
    , alPageToken
    , alOauthToken
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.AdminDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @DatatransferApplicationsList@ which the
-- 'ApplicationsList'' request conforms to.
type ApplicationsListResource =
     "applications" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "customerId" Text :>
               QueryParam "key" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] ApplicationsListResponse

-- | Lists the applications available for data transfer for a customer.
--
-- /See:/ 'applicationsList'' smart constructor.
data ApplicationsList' = ApplicationsList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alUserIp      :: !(Maybe Text)
    , _alCustomerId  :: !(Maybe Text)
    , _alKey         :: !(Maybe Text)
    , _alPageToken   :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alMaxResults  :: !(Maybe Word32)
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIp'
--
-- * 'alCustomerId'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
applicationsList'
    :: ApplicationsList'
applicationsList' =
    ApplicationsList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIp = Nothing
    , _alCustomerId = Nothing
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alMaxResults = Nothing
    , _alFields = Nothing
    , _alAlt = JSON
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
alUserIp :: Lens' ApplicationsList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | Immutable ID of the Google Apps account.
alCustomerId :: Lens' ApplicationsList' (Maybe Text)
alCustomerId
  = lens _alCustomerId (\ s a -> s{_alCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' ApplicationsList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | Token to specify next page in the list.
alPageToken :: Lens' ApplicationsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' ApplicationsList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | Maximum number of results to return. Default is 100.
alMaxResults :: Lens' ApplicationsList' (Maybe Word32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' ApplicationsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' ApplicationsList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest ApplicationsList' where
        type Rs ApplicationsList' = ApplicationsListResponse
        request
          = requestWithRoute defReq adminDataTransferURL
        requestWithRoute r u ApplicationsList'{..}
          = go _alQuotaUser (Just _alPrettyPrint) _alUserIp
              _alCustomerId
              _alKey
              _alPageToken
              _alOauthToken
              _alMaxResults
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ApplicationsListResource)
                      r
                      u

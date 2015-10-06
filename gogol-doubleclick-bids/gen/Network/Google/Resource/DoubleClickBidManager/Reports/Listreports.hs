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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Reports.Listreports
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerReportsListreports@.
module Network.Google.Resource.DoubleClickBidManager.Reports.Listreports
    (
    -- * REST Resource
      ReportsListreportsResource

    -- * Creating a Request
    , reportsListreports'
    , ReportsListreports'

    -- * Request Lenses
    , rlQuotaUser
    , rlQueryId
    , rlPrettyPrint
    , rlUserIP
    , rlKey
    , rlOAuthToken
    , rlFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerReportsListreports@ which the
-- 'ReportsListreports'' request conforms to.
type ReportsListreportsResource =
     "queries" :>
       Capture "queryId" Int64 :>
         "reports" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListReportsResponse

-- | Retrieves stored reports.
--
-- /See:/ 'reportsListreports'' smart constructor.
data ReportsListreports' = ReportsListreports'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlQueryId     :: !Int64
    , _rlPrettyPrint :: !Bool
    , _rlUserIP      :: !(Maybe Text)
    , _rlKey         :: !(Maybe AuthKey)
    , _rlOAuthToken  :: !(Maybe OAuthToken)
    , _rlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsListreports'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlQueryId'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIP'
--
-- * 'rlKey'
--
-- * 'rlOAuthToken'
--
-- * 'rlFields'
reportsListreports'
    :: Int64 -- ^ 'queryId'
    -> ReportsListreports'
reportsListreports' pRlQueryId_ =
    ReportsListreports'
    { _rlQuotaUser = Nothing
    , _rlQueryId = pRlQueryId_
    , _rlPrettyPrint = True
    , _rlUserIP = Nothing
    , _rlKey = Nothing
    , _rlOAuthToken = Nothing
    , _rlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' ReportsListreports' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Query ID with which the reports are associated.
rlQueryId :: Lens' ReportsListreports' Int64
rlQueryId
  = lens _rlQueryId (\ s a -> s{_rlQueryId = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' ReportsListreports' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIP :: Lens' ReportsListreports' (Maybe Text)
rlUserIP = lens _rlUserIP (\ s a -> s{_rlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' ReportsListreports' (Maybe AuthKey)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | OAuth 2.0 token for the current user.
rlOAuthToken :: Lens' ReportsListreports' (Maybe OAuthToken)
rlOAuthToken
  = lens _rlOAuthToken (\ s a -> s{_rlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' ReportsListreports' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

instance GoogleAuth ReportsListreports' where
        _AuthKey = rlKey . _Just
        _AuthToken = rlOAuthToken . _Just

instance GoogleRequest ReportsListreports' where
        type Rs ReportsListreports' = ListReportsResponse
        request = requestWith doubleClickBidsRequest
        requestWith rq ReportsListreports'{..}
          = go _rlQueryId _rlQuotaUser (Just _rlPrettyPrint)
              _rlUserIP
              _rlFields
              _rlKey
              _rlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ReportsListreportsResource)
                      rq

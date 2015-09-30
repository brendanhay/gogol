{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Doubleclickbidmanager.Reports.Listreports
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleclickbidmanagerReportsListreports@.
module Doubleclickbidmanager.Reports.Listreports
    (
    -- * REST Resource
      ReportsListreportsAPI

    -- * Creating a Request
    , reportsListreports
    , ReportsListreports

    -- * Request Lenses
    , rlQuotaUser
    , rlQueryId
    , rlPrettyPrint
    , rlUserIp
    , rlKey
    , rlOauthToken
    , rlFields
    , rlAlt
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclickbidmanagerReportsListreports@ which the
-- 'ReportsListreports' request conforms to.
type ReportsListreportsAPI =
     "queries" :>
       Capture "queryId" Int64 :>
         "reports" :> Get '[JSON] ListReportsResponse

-- | Retrieves stored reports.
--
-- /See:/ 'reportsListreports' smart constructor.
data ReportsListreports = ReportsListreports
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlQueryId     :: !Int64
    , _rlPrettyPrint :: !Bool
    , _rlUserIp      :: !(Maybe Text)
    , _rlKey         :: !(Maybe Text)
    , _rlOauthToken  :: !(Maybe Text)
    , _rlFields      :: !(Maybe Text)
    , _rlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'rlUserIp'
--
-- * 'rlKey'
--
-- * 'rlOauthToken'
--
-- * 'rlFields'
--
-- * 'rlAlt'
reportsListreports
    :: Int64 -- ^ 'queryId'
    -> ReportsListreports
reportsListreports pRlQueryId_ =
    ReportsListreports
    { _rlQuotaUser = Nothing
    , _rlQueryId = pRlQueryId_
    , _rlPrettyPrint = True
    , _rlUserIp = Nothing
    , _rlKey = Nothing
    , _rlOauthToken = Nothing
    , _rlFields = Nothing
    , _rlAlt = "json"
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
rlUserIp :: Lens' ReportsListreports' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' ReportsListreports' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' ReportsListreports' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' ReportsListreports' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | Data format for the response.
rlAlt :: Lens' ReportsListreports' Text
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

instance GoogleRequest ReportsListreports' where
        type Rs ReportsListreports' = ListReportsResponse
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u ReportsListreports{..}
          = go _rlQuotaUser _rlQueryId _rlPrettyPrint _rlUserIp
              _rlKey
              _rlOauthToken
              _rlFields
              _rlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsListreportsAPI)
                      r
                      u

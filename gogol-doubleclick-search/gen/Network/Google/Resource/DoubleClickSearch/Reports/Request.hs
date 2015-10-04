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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.Request
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a report request into the reporting system.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchReportsRequest@.
module Network.Google.Resource.DoubleClickSearch.Reports.Request
    (
    -- * REST Resource
      ReportsRequestResource

    -- * Creating a Request
    , reportsRequest'
    , ReportsRequest'

    -- * Request Lenses
    , rrQuotaUser
    , rrPrettyPrint
    , rrUserIP
    , rrPayload
    , rrKey
    , rrOAuthToken
    , rrFields
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchReportsRequest@ which the
-- 'ReportsRequest'' request conforms to.
type ReportsRequestResource =
     "reports" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[OctetStream] ReportRequest :>
                       Post '[JSON] Report

-- | Inserts a report request into the reporting system.
--
-- /See:/ 'reportsRequest'' smart constructor.
data ReportsRequest' = ReportsRequest'
    { _rrQuotaUser   :: !(Maybe Text)
    , _rrPrettyPrint :: !Bool
    , _rrUserIP      :: !(Maybe Text)
    , _rrPayload     :: !ReportRequest
    , _rrKey         :: !(Maybe Key)
    , _rrOAuthToken  :: !(Maybe OAuthToken)
    , _rrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsRequest'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrQuotaUser'
--
-- * 'rrPrettyPrint'
--
-- * 'rrUserIP'
--
-- * 'rrPayload'
--
-- * 'rrKey'
--
-- * 'rrOAuthToken'
--
-- * 'rrFields'
reportsRequest'
    :: ReportRequest -- ^ 'payload'
    -> ReportsRequest'
reportsRequest' pRrPayload_ =
    ReportsRequest'
    { _rrQuotaUser = Nothing
    , _rrPrettyPrint = True
    , _rrUserIP = Nothing
    , _rrPayload = pRrPayload_
    , _rrKey = Nothing
    , _rrOAuthToken = Nothing
    , _rrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrQuotaUser :: Lens' ReportsRequest' (Maybe Text)
rrQuotaUser
  = lens _rrQuotaUser (\ s a -> s{_rrQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrPrettyPrint :: Lens' ReportsRequest' Bool
rrPrettyPrint
  = lens _rrPrettyPrint
      (\ s a -> s{_rrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrUserIP :: Lens' ReportsRequest' (Maybe Text)
rrUserIP = lens _rrUserIP (\ s a -> s{_rrUserIP = a})

-- | Multipart request metadata.
rrPayload :: Lens' ReportsRequest' ReportRequest
rrPayload
  = lens _rrPayload (\ s a -> s{_rrPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrKey :: Lens' ReportsRequest' (Maybe Key)
rrKey = lens _rrKey (\ s a -> s{_rrKey = a})

-- | OAuth 2.0 token for the current user.
rrOAuthToken :: Lens' ReportsRequest' (Maybe OAuthToken)
rrOAuthToken
  = lens _rrOAuthToken (\ s a -> s{_rrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrFields :: Lens' ReportsRequest' (Maybe Text)
rrFields = lens _rrFields (\ s a -> s{_rrFields = a})

instance GoogleAuth ReportsRequest' where
        authKey = rrKey . _Just
        authToken = rrOAuthToken . _Just

instance GoogleRequest ReportsRequest' where
        type Rs ReportsRequest' = Report
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ReportsRequest'{..}
          = go _rrQuotaUser (Just _rrPrettyPrint) _rrUserIP
              _rrFields
              _rrKey
              _rrOAuthToken
              (Just AltJSON)
              _rrPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsRequestResource)
                      r
                      u

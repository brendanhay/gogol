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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates and returns a report immediately.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchReportsGenerate@.
module Network.Google.Resource.DoubleClickSearch.Reports.Generate
    (
    -- * REST Resource
      ReportsGenerateResource

    -- * Creating a Request
    , reportsGenerate'
    , ReportsGenerate'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIP
    , rPayload
    , rKey
    , rOAuthToken
    , rFields
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchReportsGenerate@ which the
-- 'ReportsGenerate'' request conforms to.
type ReportsGenerateResource =
     "reports" :>
       "generate" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] ReportRequest :>
                         Post '[JSON] Report

-- | Generates and returns a report immediately.
--
-- /See:/ 'reportsGenerate'' smart constructor.
data ReportsGenerate' = ReportsGenerate'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIP      :: !(Maybe Text)
    , _rPayload     :: !ReportRequest
    , _rKey         :: !(Maybe Key)
    , _rOAuthToken  :: !(Maybe OAuthToken)
    , _rFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIP'
--
-- * 'rPayload'
--
-- * 'rKey'
--
-- * 'rOAuthToken'
--
-- * 'rFields'
reportsGenerate'
    :: ReportRequest -- ^ 'payload'
    -> ReportsGenerate'
reportsGenerate' pRPayload_ =
    ReportsGenerate'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIP = Nothing
    , _rPayload = pRPayload_
    , _rKey = Nothing
    , _rOAuthToken = Nothing
    , _rFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' ReportsGenerate' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' ReportsGenerate' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIP :: Lens' ReportsGenerate' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | Multipart request metadata.
rPayload :: Lens' ReportsGenerate' ReportRequest
rPayload = lens _rPayload (\ s a -> s{_rPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' ReportsGenerate' (Maybe Key)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' ReportsGenerate' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' ReportsGenerate' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth ReportsGenerate' where
        authKey = rKey . _Just
        authToken = rOAuthToken . _Just

instance GoogleRequest ReportsGenerate' where
        type Rs ReportsGenerate' = Report
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ReportsGenerate'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
              _rPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsGenerateResource)
                      r
                      u

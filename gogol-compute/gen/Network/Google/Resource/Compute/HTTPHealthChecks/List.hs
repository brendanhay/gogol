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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of HttpHealthCheck resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeHTTPHealthChecksList@.
module Network.Google.Resource.Compute.HTTPHealthChecks.List
    (
    -- * REST Resource
      HTTPHealthChecksListResource

    -- * Creating a Request
    , hTTPHealthChecksList'
    , HTTPHealthChecksList'

    -- * Request Lenses
    , httphclQuotaUser
    , httphclPrettyPrint
    , httphclProject
    , httphclUserIP
    , httphclKey
    , httphclFilter
    , httphclPageToken
    , httphclOAuthToken
    , httphclMaxResults
    , httphclFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeHTTPHealthChecksList@ which the
-- 'HTTPHealthChecksList'' request conforms to.
type HTTPHealthChecksListResource =
     Capture "project" Text :>
       "global" :>
         "httpHealthChecks" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] HTTPHealthCheckList

-- | Retrieves the list of HttpHealthCheck resources available to the
-- specified project.
--
-- /See:/ 'hTTPHealthChecksList'' smart constructor.
data HTTPHealthChecksList' = HTTPHealthChecksList'
    { _httphclQuotaUser   :: !(Maybe Text)
    , _httphclPrettyPrint :: !Bool
    , _httphclProject     :: !Text
    , _httphclUserIP      :: !(Maybe Text)
    , _httphclKey         :: !(Maybe AuthKey)
    , _httphclFilter      :: !(Maybe Text)
    , _httphclPageToken   :: !(Maybe Text)
    , _httphclOAuthToken  :: !(Maybe OAuthToken)
    , _httphclMaxResults  :: !Word32
    , _httphclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthChecksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphclQuotaUser'
--
-- * 'httphclPrettyPrint'
--
-- * 'httphclProject'
--
-- * 'httphclUserIP'
--
-- * 'httphclKey'
--
-- * 'httphclFilter'
--
-- * 'httphclPageToken'
--
-- * 'httphclOAuthToken'
--
-- * 'httphclMaxResults'
--
-- * 'httphclFields'
hTTPHealthChecksList'
    :: Text -- ^ 'project'
    -> HTTPHealthChecksList'
hTTPHealthChecksList' pHttphclProject_ =
    HTTPHealthChecksList'
    { _httphclQuotaUser = Nothing
    , _httphclPrettyPrint = True
    , _httphclProject = pHttphclProject_
    , _httphclUserIP = Nothing
    , _httphclKey = Nothing
    , _httphclFilter = Nothing
    , _httphclPageToken = Nothing
    , _httphclOAuthToken = Nothing
    , _httphclMaxResults = 500
    , _httphclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
httphclQuotaUser :: Lens' HTTPHealthChecksList' (Maybe Text)
httphclQuotaUser
  = lens _httphclQuotaUser
      (\ s a -> s{_httphclQuotaUser = a})

-- | Returns response with indentations and line breaks.
httphclPrettyPrint :: Lens' HTTPHealthChecksList' Bool
httphclPrettyPrint
  = lens _httphclPrettyPrint
      (\ s a -> s{_httphclPrettyPrint = a})

-- | Name of the project scoping this request.
httphclProject :: Lens' HTTPHealthChecksList' Text
httphclProject
  = lens _httphclProject
      (\ s a -> s{_httphclProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
httphclUserIP :: Lens' HTTPHealthChecksList' (Maybe Text)
httphclUserIP
  = lens _httphclUserIP
      (\ s a -> s{_httphclUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
httphclKey :: Lens' HTTPHealthChecksList' (Maybe AuthKey)
httphclKey
  = lens _httphclKey (\ s a -> s{_httphclKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
httphclFilter :: Lens' HTTPHealthChecksList' (Maybe Text)
httphclFilter
  = lens _httphclFilter
      (\ s a -> s{_httphclFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
httphclPageToken :: Lens' HTTPHealthChecksList' (Maybe Text)
httphclPageToken
  = lens _httphclPageToken
      (\ s a -> s{_httphclPageToken = a})

-- | OAuth 2.0 token for the current user.
httphclOAuthToken :: Lens' HTTPHealthChecksList' (Maybe OAuthToken)
httphclOAuthToken
  = lens _httphclOAuthToken
      (\ s a -> s{_httphclOAuthToken = a})

-- | Maximum count of results to be returned.
httphclMaxResults :: Lens' HTTPHealthChecksList' Word32
httphclMaxResults
  = lens _httphclMaxResults
      (\ s a -> s{_httphclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
httphclFields :: Lens' HTTPHealthChecksList' (Maybe Text)
httphclFields
  = lens _httphclFields
      (\ s a -> s{_httphclFields = a})

instance GoogleAuth HTTPHealthChecksList' where
        authKey = httphclKey . _Just
        authToken = httphclOAuthToken . _Just

instance GoogleRequest HTTPHealthChecksList' where
        type Rs HTTPHealthChecksList' = HTTPHealthCheckList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u HTTPHealthChecksList'{..}
          = go _httphclProject _httphclFilter _httphclPageToken
              (Just _httphclMaxResults)
              _httphclQuotaUser
              (Just _httphclPrettyPrint)
              _httphclUserIP
              _httphclFields
              _httphclKey
              _httphclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy HTTPHealthChecksListResource)
                      r
                      u

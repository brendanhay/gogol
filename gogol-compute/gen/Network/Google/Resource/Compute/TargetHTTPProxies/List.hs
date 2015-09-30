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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of TargetHttpProxy resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesList@.
module Network.Google.Resource.Compute.TargetHTTPProxies.List
    (
    -- * REST Resource
      TargetHTTPProxiesListResource

    -- * Creating a Request
    , targetHTTPProxiesList'
    , TargetHTTPProxiesList'

    -- * Request Lenses
    , thttpplQuotaUser
    , thttpplPrettyPrint
    , thttpplProject
    , thttpplUserIp
    , thttpplKey
    , thttpplFilter
    , thttpplPageToken
    , thttpplOauthToken
    , thttpplMaxResults
    , thttpplFields
    , thttpplAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesList@ which the
-- 'TargetHTTPProxiesList'' request conforms to.
type TargetHTTPProxiesListResource =
     Capture "project" Text :>
       "global" :>
         "targetHttpProxies" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] TargetHTTPProxyList

-- | Retrieves the list of TargetHttpProxy resources available to the
-- specified project.
--
-- /See:/ 'targetHTTPProxiesList'' smart constructor.
data TargetHTTPProxiesList' = TargetHTTPProxiesList'
    { _thttpplQuotaUser   :: !(Maybe Text)
    , _thttpplPrettyPrint :: !Bool
    , _thttpplProject     :: !Text
    , _thttpplUserIp      :: !(Maybe Text)
    , _thttpplKey         :: !(Maybe Text)
    , _thttpplFilter      :: !(Maybe Text)
    , _thttpplPageToken   :: !(Maybe Text)
    , _thttpplOauthToken  :: !(Maybe Text)
    , _thttpplMaxResults  :: !Word32
    , _thttpplFields      :: !(Maybe Text)
    , _thttpplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttpplQuotaUser'
--
-- * 'thttpplPrettyPrint'
--
-- * 'thttpplProject'
--
-- * 'thttpplUserIp'
--
-- * 'thttpplKey'
--
-- * 'thttpplFilter'
--
-- * 'thttpplPageToken'
--
-- * 'thttpplOauthToken'
--
-- * 'thttpplMaxResults'
--
-- * 'thttpplFields'
--
-- * 'thttpplAlt'
targetHTTPProxiesList'
    :: Text -- ^ 'project'
    -> TargetHTTPProxiesList'
targetHTTPProxiesList' pThttpplProject_ =
    TargetHTTPProxiesList'
    { _thttpplQuotaUser = Nothing
    , _thttpplPrettyPrint = True
    , _thttpplProject = pThttpplProject_
    , _thttpplUserIp = Nothing
    , _thttpplKey = Nothing
    , _thttpplFilter = Nothing
    , _thttpplPageToken = Nothing
    , _thttpplOauthToken = Nothing
    , _thttpplMaxResults = 500
    , _thttpplFields = Nothing
    , _thttpplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
thttpplQuotaUser :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplQuotaUser
  = lens _thttpplQuotaUser
      (\ s a -> s{_thttpplQuotaUser = a})

-- | Returns response with indentations and line breaks.
thttpplPrettyPrint :: Lens' TargetHTTPProxiesList' Bool
thttpplPrettyPrint
  = lens _thttpplPrettyPrint
      (\ s a -> s{_thttpplPrettyPrint = a})

-- | Name of the project scoping this request.
thttpplProject :: Lens' TargetHTTPProxiesList' Text
thttpplProject
  = lens _thttpplProject
      (\ s a -> s{_thttpplProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
thttpplUserIp :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplUserIp
  = lens _thttpplUserIp
      (\ s a -> s{_thttpplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
thttpplKey :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplKey
  = lens _thttpplKey (\ s a -> s{_thttpplKey = a})

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
thttpplFilter :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplFilter
  = lens _thttpplFilter
      (\ s a -> s{_thttpplFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
thttpplPageToken :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplPageToken
  = lens _thttpplPageToken
      (\ s a -> s{_thttpplPageToken = a})

-- | OAuth 2.0 token for the current user.
thttpplOauthToken :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplOauthToken
  = lens _thttpplOauthToken
      (\ s a -> s{_thttpplOauthToken = a})

-- | Maximum count of results to be returned.
thttpplMaxResults :: Lens' TargetHTTPProxiesList' Word32
thttpplMaxResults
  = lens _thttpplMaxResults
      (\ s a -> s{_thttpplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
thttpplFields :: Lens' TargetHTTPProxiesList' (Maybe Text)
thttpplFields
  = lens _thttpplFields
      (\ s a -> s{_thttpplFields = a})

-- | Data format for the response.
thttpplAlt :: Lens' TargetHTTPProxiesList' Alt
thttpplAlt
  = lens _thttpplAlt (\ s a -> s{_thttpplAlt = a})

instance GoogleRequest TargetHTTPProxiesList' where
        type Rs TargetHTTPProxiesList' = TargetHTTPProxyList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetHTTPProxiesList'{..}
          = go _thttpplQuotaUser (Just _thttpplPrettyPrint)
              _thttpplProject
              _thttpplUserIp
              _thttpplKey
              _thttpplFilter
              _thttpplPageToken
              _thttpplOauthToken
              (Just _thttpplMaxResults)
              _thttpplFields
              (Just _thttpplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetHTTPProxiesListResource)
                      r
                      u

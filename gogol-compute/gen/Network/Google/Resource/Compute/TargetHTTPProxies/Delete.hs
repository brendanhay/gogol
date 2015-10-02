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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified TargetHttpProxy resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesDelete@.
module Network.Google.Resource.Compute.TargetHTTPProxies.Delete
    (
    -- * REST Resource
      TargetHTTPProxiesDeleteResource

    -- * Creating a Request
    , targetHTTPProxiesDelete'
    , TargetHTTPProxiesDelete'

    -- * Request Lenses
    , thttppdQuotaUser
    , thttppdPrettyPrint
    , thttppdProject
    , thttppdUserIP
    , thttppdKey
    , thttppdTargetHTTPProxy
    , thttppdOAuthToken
    , thttppdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesDelete@ which the
-- 'TargetHTTPProxiesDelete'' request conforms to.
type TargetHTTPProxiesDeleteResource =
     Capture "project" Text :>
       "global" :>
         "targetHttpProxies" :>
           Capture "targetHttpProxy" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetHttpProxy resource.
--
-- /See:/ 'targetHTTPProxiesDelete'' smart constructor.
data TargetHTTPProxiesDelete' = TargetHTTPProxiesDelete'
    { _thttppdQuotaUser       :: !(Maybe Text)
    , _thttppdPrettyPrint     :: !Bool
    , _thttppdProject         :: !Text
    , _thttppdUserIP          :: !(Maybe Text)
    , _thttppdKey             :: !(Maybe Key)
    , _thttppdTargetHTTPProxy :: !Text
    , _thttppdOAuthToken      :: !(Maybe OAuthToken)
    , _thttppdFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppdQuotaUser'
--
-- * 'thttppdPrettyPrint'
--
-- * 'thttppdProject'
--
-- * 'thttppdUserIP'
--
-- * 'thttppdKey'
--
-- * 'thttppdTargetHTTPProxy'
--
-- * 'thttppdOAuthToken'
--
-- * 'thttppdFields'
targetHTTPProxiesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetHttpProxy'
    -> TargetHTTPProxiesDelete'
targetHTTPProxiesDelete' pThttppdProject_ pThttppdTargetHTTPProxy_ =
    TargetHTTPProxiesDelete'
    { _thttppdQuotaUser = Nothing
    , _thttppdPrettyPrint = True
    , _thttppdProject = pThttppdProject_
    , _thttppdUserIP = Nothing
    , _thttppdKey = Nothing
    , _thttppdTargetHTTPProxy = pThttppdTargetHTTPProxy_
    , _thttppdOAuthToken = Nothing
    , _thttppdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
thttppdQuotaUser :: Lens' TargetHTTPProxiesDelete' (Maybe Text)
thttppdQuotaUser
  = lens _thttppdQuotaUser
      (\ s a -> s{_thttppdQuotaUser = a})

-- | Returns response with indentations and line breaks.
thttppdPrettyPrint :: Lens' TargetHTTPProxiesDelete' Bool
thttppdPrettyPrint
  = lens _thttppdPrettyPrint
      (\ s a -> s{_thttppdPrettyPrint = a})

-- | Name of the project scoping this request.
thttppdProject :: Lens' TargetHTTPProxiesDelete' Text
thttppdProject
  = lens _thttppdProject
      (\ s a -> s{_thttppdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
thttppdUserIP :: Lens' TargetHTTPProxiesDelete' (Maybe Text)
thttppdUserIP
  = lens _thttppdUserIP
      (\ s a -> s{_thttppdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
thttppdKey :: Lens' TargetHTTPProxiesDelete' (Maybe Key)
thttppdKey
  = lens _thttppdKey (\ s a -> s{_thttppdKey = a})

-- | Name of the TargetHttpProxy resource to delete.
thttppdTargetHTTPProxy :: Lens' TargetHTTPProxiesDelete' Text
thttppdTargetHTTPProxy
  = lens _thttppdTargetHTTPProxy
      (\ s a -> s{_thttppdTargetHTTPProxy = a})

-- | OAuth 2.0 token for the current user.
thttppdOAuthToken :: Lens' TargetHTTPProxiesDelete' (Maybe OAuthToken)
thttppdOAuthToken
  = lens _thttppdOAuthToken
      (\ s a -> s{_thttppdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
thttppdFields :: Lens' TargetHTTPProxiesDelete' (Maybe Text)
thttppdFields
  = lens _thttppdFields
      (\ s a -> s{_thttppdFields = a})

instance GoogleAuth TargetHTTPProxiesDelete' where
        authKey = thttppdKey . _Just
        authToken = thttppdOAuthToken . _Just

instance GoogleRequest TargetHTTPProxiesDelete' where
        type Rs TargetHTTPProxiesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetHTTPProxiesDelete'{..}
          = go _thttppdProject _thttppdTargetHTTPProxy
              _thttppdQuotaUser
              (Just _thttppdPrettyPrint)
              _thttppdUserIP
              _thttppdFields
              _thttppdKey
              _thttppdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetHTTPProxiesDeleteResource)
                      r
                      u

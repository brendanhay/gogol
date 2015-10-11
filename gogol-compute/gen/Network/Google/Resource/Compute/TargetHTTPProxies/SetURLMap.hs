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
-- Module      : Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes the URL map for TargetHttpProxy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetHTTPProxiesSetURLMap@.
module Network.Google.Resource.Compute.TargetHTTPProxies.SetURLMap
    (
    -- * REST Resource
      TargetHTTPProxiesSetURLMapResource

    -- * Creating a Request
    , targetHTTPProxiesSetURLMap'
    , TargetHTTPProxiesSetURLMap'

    -- * Request Lenses
    , thttppsumQuotaUser
    , thttppsumPrettyPrint
    , thttppsumProject
    , thttppsumUserIP
    , thttppsumPayload
    , thttppsumKey
    , thttppsumTargetHTTPProxy
    , thttppsumOAuthToken
    , thttppsumFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetHTTPProxiesSetURLMap@ method which the
-- 'TargetHTTPProxiesSetURLMap'' request conforms to.
type TargetHTTPProxiesSetURLMapResource =
     Capture "project" Text :>
       "targetHttpProxies" :>
         Capture "targetHttpProxy" Text :>
           "setUrlMap" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] URLMapReference :>
                             Post '[JSON] Operation

-- | Changes the URL map for TargetHttpProxy.
--
-- /See:/ 'targetHTTPProxiesSetURLMap'' smart constructor.
data TargetHTTPProxiesSetURLMap' = TargetHTTPProxiesSetURLMap'
    { _thttppsumQuotaUser       :: !(Maybe Text)
    , _thttppsumPrettyPrint     :: !Bool
    , _thttppsumProject         :: !Text
    , _thttppsumUserIP          :: !(Maybe Text)
    , _thttppsumPayload         :: !URLMapReference
    , _thttppsumKey             :: !(Maybe AuthKey)
    , _thttppsumTargetHTTPProxy :: !Text
    , _thttppsumOAuthToken      :: !(Maybe OAuthToken)
    , _thttppsumFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxiesSetURLMap'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppsumQuotaUser'
--
-- * 'thttppsumPrettyPrint'
--
-- * 'thttppsumProject'
--
-- * 'thttppsumUserIP'
--
-- * 'thttppsumPayload'
--
-- * 'thttppsumKey'
--
-- * 'thttppsumTargetHTTPProxy'
--
-- * 'thttppsumOAuthToken'
--
-- * 'thttppsumFields'
targetHTTPProxiesSetURLMap'
    :: Text -- ^ 'project'
    -> URLMapReference -- ^ 'payload'
    -> Text -- ^ 'targetHttpProxy'
    -> TargetHTTPProxiesSetURLMap'
targetHTTPProxiesSetURLMap' pThttppsumProject_ pThttppsumPayload_ pThttppsumTargetHTTPProxy_ =
    TargetHTTPProxiesSetURLMap'
    { _thttppsumQuotaUser = Nothing
    , _thttppsumPrettyPrint = True
    , _thttppsumProject = pThttppsumProject_
    , _thttppsumUserIP = Nothing
    , _thttppsumPayload = pThttppsumPayload_
    , _thttppsumKey = Nothing
    , _thttppsumTargetHTTPProxy = pThttppsumTargetHTTPProxy_
    , _thttppsumOAuthToken = Nothing
    , _thttppsumFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
thttppsumQuotaUser :: Lens' TargetHTTPProxiesSetURLMap' (Maybe Text)
thttppsumQuotaUser
  = lens _thttppsumQuotaUser
      (\ s a -> s{_thttppsumQuotaUser = a})

-- | Returns response with indentations and line breaks.
thttppsumPrettyPrint :: Lens' TargetHTTPProxiesSetURLMap' Bool
thttppsumPrettyPrint
  = lens _thttppsumPrettyPrint
      (\ s a -> s{_thttppsumPrettyPrint = a})

-- | Name of the project scoping this request.
thttppsumProject :: Lens' TargetHTTPProxiesSetURLMap' Text
thttppsumProject
  = lens _thttppsumProject
      (\ s a -> s{_thttppsumProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
thttppsumUserIP :: Lens' TargetHTTPProxiesSetURLMap' (Maybe Text)
thttppsumUserIP
  = lens _thttppsumUserIP
      (\ s a -> s{_thttppsumUserIP = a})

-- | Multipart request metadata.
thttppsumPayload :: Lens' TargetHTTPProxiesSetURLMap' URLMapReference
thttppsumPayload
  = lens _thttppsumPayload
      (\ s a -> s{_thttppsumPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
thttppsumKey :: Lens' TargetHTTPProxiesSetURLMap' (Maybe AuthKey)
thttppsumKey
  = lens _thttppsumKey (\ s a -> s{_thttppsumKey = a})

-- | Name of the TargetHttpProxy resource whose URL map is to be set.
thttppsumTargetHTTPProxy :: Lens' TargetHTTPProxiesSetURLMap' Text
thttppsumTargetHTTPProxy
  = lens _thttppsumTargetHTTPProxy
      (\ s a -> s{_thttppsumTargetHTTPProxy = a})

-- | OAuth 2.0 token for the current user.
thttppsumOAuthToken :: Lens' TargetHTTPProxiesSetURLMap' (Maybe OAuthToken)
thttppsumOAuthToken
  = lens _thttppsumOAuthToken
      (\ s a -> s{_thttppsumOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
thttppsumFields :: Lens' TargetHTTPProxiesSetURLMap' (Maybe Text)
thttppsumFields
  = lens _thttppsumFields
      (\ s a -> s{_thttppsumFields = a})

instance GoogleAuth TargetHTTPProxiesSetURLMap' where
        _AuthKey = thttppsumKey . _Just
        _AuthToken = thttppsumOAuthToken . _Just

instance GoogleRequest TargetHTTPProxiesSetURLMap'
         where
        type Rs TargetHTTPProxiesSetURLMap' = Operation
        request = requestWith computeRequest
        requestWith rq TargetHTTPProxiesSetURLMap'{..}
          = go _thttppsumProject _thttppsumTargetHTTPProxy
              _thttppsumQuotaUser
              (Just _thttppsumPrettyPrint)
              _thttppsumUserIP
              _thttppsumFields
              _thttppsumKey
              _thttppsumOAuthToken
              (Just AltJSON)
              _thttppsumPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TargetHTTPProxiesSetURLMapResource)
                      rq

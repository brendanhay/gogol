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
-- Module      : Network.Google.Resource.Compute.URLMaps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsGet@.
module Network.Google.Resource.Compute.URLMaps.Get
    (
    -- * REST Resource
      UrlMapsGetResource

    -- * Creating a Request
    , uRLMapsGet'
    , URLMapsGet'

    -- * Request Lenses
    , umgQuotaUser
    , umgURLMap
    , umgPrettyPrint
    , umgProject
    , umgUserIP
    , umgKey
    , umgOAuthToken
    , umgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsGet@ which the
-- 'URLMapsGet'' request conforms to.
type UrlMapsGetResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] URLMap

-- | Returns the specified UrlMap resource.
--
-- /See:/ 'uRLMapsGet'' smart constructor.
data URLMapsGet' = URLMapsGet'
    { _umgQuotaUser   :: !(Maybe Text)
    , _umgURLMap      :: !Text
    , _umgPrettyPrint :: !Bool
    , _umgProject     :: !Text
    , _umgUserIP      :: !(Maybe Text)
    , _umgKey         :: !(Maybe Key)
    , _umgOAuthToken  :: !(Maybe OAuthToken)
    , _umgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umgQuotaUser'
--
-- * 'umgURLMap'
--
-- * 'umgPrettyPrint'
--
-- * 'umgProject'
--
-- * 'umgUserIP'
--
-- * 'umgKey'
--
-- * 'umgOAuthToken'
--
-- * 'umgFields'
uRLMapsGet'
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsGet'
uRLMapsGet' pUmgURLMap_ pUmgProject_ =
    URLMapsGet'
    { _umgQuotaUser = Nothing
    , _umgURLMap = pUmgURLMap_
    , _umgPrettyPrint = True
    , _umgProject = pUmgProject_
    , _umgUserIP = Nothing
    , _umgKey = Nothing
    , _umgOAuthToken = Nothing
    , _umgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umgQuotaUser :: Lens' URLMapsGet' (Maybe Text)
umgQuotaUser
  = lens _umgQuotaUser (\ s a -> s{_umgQuotaUser = a})

-- | Name of the UrlMap resource to return.
umgURLMap :: Lens' URLMapsGet' Text
umgURLMap
  = lens _umgURLMap (\ s a -> s{_umgURLMap = a})

-- | Returns response with indentations and line breaks.
umgPrettyPrint :: Lens' URLMapsGet' Bool
umgPrettyPrint
  = lens _umgPrettyPrint
      (\ s a -> s{_umgPrettyPrint = a})

-- | Name of the project scoping this request.
umgProject :: Lens' URLMapsGet' Text
umgProject
  = lens _umgProject (\ s a -> s{_umgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umgUserIP :: Lens' URLMapsGet' (Maybe Text)
umgUserIP
  = lens _umgUserIP (\ s a -> s{_umgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umgKey :: Lens' URLMapsGet' (Maybe Key)
umgKey = lens _umgKey (\ s a -> s{_umgKey = a})

-- | OAuth 2.0 token for the current user.
umgOAuthToken :: Lens' URLMapsGet' (Maybe OAuthToken)
umgOAuthToken
  = lens _umgOAuthToken
      (\ s a -> s{_umgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umgFields :: Lens' URLMapsGet' (Maybe Text)
umgFields
  = lens _umgFields (\ s a -> s{_umgFields = a})

instance GoogleAuth URLMapsGet' where
        authKey = umgKey . _Just
        authToken = umgOAuthToken . _Just

instance GoogleRequest URLMapsGet' where
        type Rs URLMapsGet' = URLMap
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsGet'{..}
          = go _umgQuotaUser _umgURLMap (Just _umgPrettyPrint)
              _umgProject
              _umgUserIP
              _umgKey
              _umgOAuthToken
              _umgFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy UrlMapsGetResource)
                      r
                      u

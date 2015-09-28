{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.URLMaps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.get@.
module Network.Google.API.Compute.URLMaps.Get
    (
    -- * REST Resource
      URLMapsGetAPI

    -- * Creating a Request
    , uRLMapsGet'
    , URLMapsGet'

    -- * Request Lenses
    , umgQuotaUser
    , umgUrlMap
    , umgPrettyPrint
    , umgProject
    , umgUserIp
    , umgKey
    , umgOauthToken
    , umgFields
    , umgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.urlMaps.get which the
-- 'URLMapsGet'' request conforms to.
type URLMapsGetAPI =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] UrlMap

-- | Returns the specified UrlMap resource.
--
-- /See:/ 'uRLMapsGet'' smart constructor.
data URLMapsGet' = URLMapsGet'
    { _umgQuotaUser   :: !(Maybe Text)
    , _umgUrlMap      :: !Text
    , _umgPrettyPrint :: !Bool
    , _umgProject     :: !Text
    , _umgUserIp      :: !(Maybe Text)
    , _umgKey         :: !(Maybe Text)
    , _umgOauthToken  :: !(Maybe Text)
    , _umgFields      :: !(Maybe Text)
    , _umgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umgQuotaUser'
--
-- * 'umgUrlMap'
--
-- * 'umgPrettyPrint'
--
-- * 'umgProject'
--
-- * 'umgUserIp'
--
-- * 'umgKey'
--
-- * 'umgOauthToken'
--
-- * 'umgFields'
--
-- * 'umgAlt'
uRLMapsGet'
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsGet'
uRLMapsGet' pUmgUrlMap_ pUmgProject_ =
    URLMapsGet'
    { _umgQuotaUser = Nothing
    , _umgUrlMap = pUmgUrlMap_
    , _umgPrettyPrint = True
    , _umgProject = pUmgProject_
    , _umgUserIp = Nothing
    , _umgKey = Nothing
    , _umgOauthToken = Nothing
    , _umgFields = Nothing
    , _umgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umgQuotaUser :: Lens' URLMapsGet' (Maybe Text)
umgQuotaUser
  = lens _umgQuotaUser (\ s a -> s{_umgQuotaUser = a})

-- | Name of the UrlMap resource to return.
umgUrlMap :: Lens' URLMapsGet' Text
umgUrlMap
  = lens _umgUrlMap (\ s a -> s{_umgUrlMap = a})

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
umgUserIp :: Lens' URLMapsGet' (Maybe Text)
umgUserIp
  = lens _umgUserIp (\ s a -> s{_umgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umgKey :: Lens' URLMapsGet' (Maybe Text)
umgKey = lens _umgKey (\ s a -> s{_umgKey = a})

-- | OAuth 2.0 token for the current user.
umgOauthToken :: Lens' URLMapsGet' (Maybe Text)
umgOauthToken
  = lens _umgOauthToken
      (\ s a -> s{_umgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
umgFields :: Lens' URLMapsGet' (Maybe Text)
umgFields
  = lens _umgFields (\ s a -> s{_umgFields = a})

-- | Data format for the response.
umgAlt :: Lens' URLMapsGet' Alt
umgAlt = lens _umgAlt (\ s a -> s{_umgAlt = a})

instance GoogleRequest URLMapsGet' where
        type Rs URLMapsGet' = UrlMap
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsGet'{..}
          = go _umgQuotaUser _umgUrlMap (Just _umgPrettyPrint)
              _umgProject
              _umgUserIp
              _umgKey
              _umgOauthToken
              _umgFields
              (Just _umgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy URLMapsGetAPI) r u

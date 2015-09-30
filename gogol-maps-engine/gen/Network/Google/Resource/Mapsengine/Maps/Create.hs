{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Maps.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsCreate@.
module Mapsengine.Maps.Create
    (
    -- * REST Resource
      MapsCreateAPI

    -- * Creating a Request
    , mapsCreate
    , MapsCreate

    -- * Request Lenses
    , mcQuotaUser
    , mcPrettyPrint
    , mcUserIp
    , mcKey
    , mcOauthToken
    , mcFields
    , mcAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsCreate@ which the
-- 'MapsCreate' request conforms to.
type MapsCreateAPI = "maps" :> Post '[JSON] Map

-- | Create a map asset.
--
-- /See:/ 'mapsCreate' smart constructor.
data MapsCreate = MapsCreate
    { _mcQuotaUser   :: !(Maybe Text)
    , _mcPrettyPrint :: !Bool
    , _mcUserIp      :: !(Maybe Text)
    , _mcKey         :: !(Maybe Text)
    , _mcOauthToken  :: !(Maybe Text)
    , _mcFields      :: !(Maybe Text)
    , _mcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcQuotaUser'
--
-- * 'mcPrettyPrint'
--
-- * 'mcUserIp'
--
-- * 'mcKey'
--
-- * 'mcOauthToken'
--
-- * 'mcFields'
--
-- * 'mcAlt'
mapsCreate
    :: MapsCreate
mapsCreate =
    MapsCreate
    { _mcQuotaUser = Nothing
    , _mcPrettyPrint = True
    , _mcUserIp = Nothing
    , _mcKey = Nothing
    , _mcOauthToken = Nothing
    , _mcFields = Nothing
    , _mcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcQuotaUser :: Lens' MapsCreate' (Maybe Text)
mcQuotaUser
  = lens _mcQuotaUser (\ s a -> s{_mcQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcPrettyPrint :: Lens' MapsCreate' Bool
mcPrettyPrint
  = lens _mcPrettyPrint
      (\ s a -> s{_mcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcUserIp :: Lens' MapsCreate' (Maybe Text)
mcUserIp = lens _mcUserIp (\ s a -> s{_mcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcKey :: Lens' MapsCreate' (Maybe Text)
mcKey = lens _mcKey (\ s a -> s{_mcKey = a})

-- | OAuth 2.0 token for the current user.
mcOauthToken :: Lens' MapsCreate' (Maybe Text)
mcOauthToken
  = lens _mcOauthToken (\ s a -> s{_mcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcFields :: Lens' MapsCreate' (Maybe Text)
mcFields = lens _mcFields (\ s a -> s{_mcFields = a})

-- | Data format for the response.
mcAlt :: Lens' MapsCreate' Text
mcAlt = lens _mcAlt (\ s a -> s{_mcAlt = a})

instance GoogleRequest MapsCreate' where
        type Rs MapsCreate' = Map
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsCreate{..}
          = go _mcQuotaUser _mcPrettyPrint _mcUserIp _mcKey
              _mcOauthToken
              _mcFields
              _mcAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MapsCreateAPI) r u

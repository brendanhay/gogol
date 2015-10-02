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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsCreate@.
module Network.Google.Resource.MapsEngine.Maps.Create
    (
    -- * REST Resource
      MapsCreateResource

    -- * Creating a Request
    , mapsCreate'
    , MapsCreate'

    -- * Request Lenses
    , mcQuotaUser
    , mcPrettyPrint
    , mcUserIP
    , mcMap
    , mcKey
    , mcOAuthToken
    , mcFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsCreate@ which the
-- 'MapsCreate'' request conforms to.
type MapsCreateResource =
     "maps" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Map :> Post '[JSON] Map

-- | Create a map asset.
--
-- /See:/ 'mapsCreate'' smart constructor.
data MapsCreate' = MapsCreate'
    { _mcQuotaUser   :: !(Maybe Text)
    , _mcPrettyPrint :: !Bool
    , _mcUserIP      :: !(Maybe Text)
    , _mcMap         :: !Map
    , _mcKey         :: !(Maybe Key)
    , _mcOAuthToken  :: !(Maybe OAuthToken)
    , _mcFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcQuotaUser'
--
-- * 'mcPrettyPrint'
--
-- * 'mcUserIP'
--
-- * 'mcMap'
--
-- * 'mcKey'
--
-- * 'mcOAuthToken'
--
-- * 'mcFields'
mapsCreate'
    :: Map -- ^ 'Map'
    -> MapsCreate'
mapsCreate' pMcMap_ =
    MapsCreate'
    { _mcQuotaUser = Nothing
    , _mcPrettyPrint = True
    , _mcUserIP = Nothing
    , _mcMap = pMcMap_
    , _mcKey = Nothing
    , _mcOAuthToken = Nothing
    , _mcFields = Nothing
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
mcUserIP :: Lens' MapsCreate' (Maybe Text)
mcUserIP = lens _mcUserIP (\ s a -> s{_mcUserIP = a})

-- | Multipart request metadata.
mcMap :: Lens' MapsCreate' Map
mcMap = lens _mcMap (\ s a -> s{_mcMap = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcKey :: Lens' MapsCreate' (Maybe Key)
mcKey = lens _mcKey (\ s a -> s{_mcKey = a})

-- | OAuth 2.0 token for the current user.
mcOAuthToken :: Lens' MapsCreate' (Maybe OAuthToken)
mcOAuthToken
  = lens _mcOAuthToken (\ s a -> s{_mcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcFields :: Lens' MapsCreate' (Maybe Text)
mcFields = lens _mcFields (\ s a -> s{_mcFields = a})

instance GoogleAuth MapsCreate' where
        authKey = mcKey . _Just
        authToken = mcOAuthToken . _Just

instance GoogleRequest MapsCreate' where
        type Rs MapsCreate' = Map
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u MapsCreate'{..}
          = go _mcQuotaUser (Just _mcPrettyPrint) _mcUserIP
              _mcKey
              _mcOAuthToken
              _mcFields
              (Just AltJSON)
              _mcMap
          where go
                  = clientWithRoute (Proxy :: Proxy MapsCreateResource)
                      r
                      u

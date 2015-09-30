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
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Process a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersProcess@.
module Network.Google.Resource.Mapsengine.Rasters.Process
    (
    -- * REST Resource
      RastersProcessResource

    -- * Creating a Request
    , rastersProcess'
    , RastersProcess'

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpUserIp
    , rpKey
    , rpId
    , rpOauthToken
    , rpFields
    , rpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersProcess@ which the
-- 'RastersProcess'' request conforms to.
type RastersProcessResource =
     "rasters" :>
       Capture "id" Text :>
         "process" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ProcessResponse

-- | Process a raster asset.
--
-- /See:/ 'rastersProcess'' smart constructor.
data RastersProcess' = RastersProcess'
    { _rpQuotaUser   :: !(Maybe Text)
    , _rpPrettyPrint :: !Bool
    , _rpUserIp      :: !(Maybe Text)
    , _rpKey         :: !(Maybe Text)
    , _rpId          :: !Text
    , _rpOauthToken  :: !(Maybe Text)
    , _rpFields      :: !(Maybe Text)
    , _rpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpUserIp'
--
-- * 'rpKey'
--
-- * 'rpId'
--
-- * 'rpOauthToken'
--
-- * 'rpFields'
--
-- * 'rpAlt'
rastersProcess'
    :: Text -- ^ 'id'
    -> RastersProcess'
rastersProcess' pRpId_ =
    RastersProcess'
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpUserIp = Nothing
    , _rpKey = Nothing
    , _rpId = pRpId_
    , _rpOauthToken = Nothing
    , _rpFields = Nothing
    , _rpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpQuotaUser :: Lens' RastersProcess' (Maybe Text)
rpQuotaUser
  = lens _rpQuotaUser (\ s a -> s{_rpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpPrettyPrint :: Lens' RastersProcess' Bool
rpPrettyPrint
  = lens _rpPrettyPrint
      (\ s a -> s{_rpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpUserIp :: Lens' RastersProcess' (Maybe Text)
rpUserIp = lens _rpUserIp (\ s a -> s{_rpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' RastersProcess' (Maybe Text)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | The ID of the raster.
rpId :: Lens' RastersProcess' Text
rpId = lens _rpId (\ s a -> s{_rpId = a})

-- | OAuth 2.0 token for the current user.
rpOauthToken :: Lens' RastersProcess' (Maybe Text)
rpOauthToken
  = lens _rpOauthToken (\ s a -> s{_rpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' RastersProcess' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

-- | Data format for the response.
rpAlt :: Lens' RastersProcess' Alt
rpAlt = lens _rpAlt (\ s a -> s{_rpAlt = a})

instance GoogleRequest RastersProcess' where
        type Rs RastersProcess' = ProcessResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersProcess'{..}
          = go _rpQuotaUser (Just _rpPrettyPrint) _rpUserIp
              _rpKey
              _rpId
              _rpOauthToken
              _rpFields
              (Just _rpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersProcessResource)
                      r
                      u

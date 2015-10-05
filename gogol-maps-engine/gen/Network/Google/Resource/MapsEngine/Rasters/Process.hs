{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Process a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersProcess@.
module Network.Google.Resource.MapsEngine.Rasters.Process
    (
    -- * REST Resource
      RastersProcessResource

    -- * Creating a Request
    , rastersProcess'
    , RastersProcess'

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpUserIP
    , rpKey
    , rpId
    , rpOAuthToken
    , rpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersProcess@ which the
-- 'RastersProcess'' request conforms to.
type RastersProcessResource =
     "rasters" :>
       Capture "id" Text :>
         "process" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] ProcessResponse

-- | Process a raster asset.
--
-- /See:/ 'rastersProcess'' smart constructor.
data RastersProcess' = RastersProcess'
    { _rpQuotaUser   :: !(Maybe Text)
    , _rpPrettyPrint :: !Bool
    , _rpUserIP      :: !(Maybe Text)
    , _rpKey         :: !(Maybe Key)
    , _rpId          :: !Text
    , _rpOAuthToken  :: !(Maybe OAuthToken)
    , _rpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpUserIP'
--
-- * 'rpKey'
--
-- * 'rpId'
--
-- * 'rpOAuthToken'
--
-- * 'rpFields'
rastersProcess'
    :: Text -- ^ 'id'
    -> RastersProcess'
rastersProcess' pRpId_ =
    RastersProcess'
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpUserIP = Nothing
    , _rpKey = Nothing
    , _rpId = pRpId_
    , _rpOAuthToken = Nothing
    , _rpFields = Nothing
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
rpUserIP :: Lens' RastersProcess' (Maybe Text)
rpUserIP = lens _rpUserIP (\ s a -> s{_rpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' RastersProcess' (Maybe Key)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | The ID of the raster.
rpId :: Lens' RastersProcess' Text
rpId = lens _rpId (\ s a -> s{_rpId = a})

-- | OAuth 2.0 token for the current user.
rpOAuthToken :: Lens' RastersProcess' (Maybe OAuthToken)
rpOAuthToken
  = lens _rpOAuthToken (\ s a -> s{_rpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' RastersProcess' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

instance GoogleAuth RastersProcess' where
        authKey = rpKey . _Just
        authToken = rpOAuthToken . _Just

instance GoogleRequest RastersProcess' where
        type Rs RastersProcess' = ProcessResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RastersProcess'{..}
          = go _rpId _rpQuotaUser (Just _rpPrettyPrint)
              _rpUserIP
              _rpFields
              _rpKey
              _rpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersProcessResource)
                      r
                      u

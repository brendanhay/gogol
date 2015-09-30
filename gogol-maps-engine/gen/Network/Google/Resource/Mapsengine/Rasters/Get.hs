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
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a single raster.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersGet@.
module Network.Google.Resource.Mapsengine.Rasters.Get
    (
    -- * REST Resource
      RastersGetResource

    -- * Creating a Request
    , rastersGet'
    , RastersGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIp
    , rgKey
    , rgId
    , rgOauthToken
    , rgFields
    , rgAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersGet@ which the
-- 'RastersGet'' request conforms to.
type RastersGetResource =
     "rasters" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Raster

-- | Return metadata for a single raster.
--
-- /See:/ 'rastersGet'' smart constructor.
data RastersGet' = RastersGet'
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgUserIp      :: !(Maybe Text)
    , _rgKey         :: !(Maybe Text)
    , _rgId          :: !Text
    , _rgOauthToken  :: !(Maybe Text)
    , _rgFields      :: !(Maybe Text)
    , _rgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIp'
--
-- * 'rgKey'
--
-- * 'rgId'
--
-- * 'rgOauthToken'
--
-- * 'rgFields'
--
-- * 'rgAlt'
rastersGet'
    :: Text -- ^ 'id'
    -> RastersGet'
rastersGet' pRgId_ =
    RastersGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIp = Nothing
    , _rgKey = Nothing
    , _rgId = pRgId_
    , _rgOauthToken = Nothing
    , _rgFields = Nothing
    , _rgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' RastersGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' RastersGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIp :: Lens' RastersGet' (Maybe Text)
rgUserIp = lens _rgUserIp (\ s a -> s{_rgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' RastersGet' (Maybe Text)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | The ID of the raster.
rgId :: Lens' RastersGet' Text
rgId = lens _rgId (\ s a -> s{_rgId = a})

-- | OAuth 2.0 token for the current user.
rgOauthToken :: Lens' RastersGet' (Maybe Text)
rgOauthToken
  = lens _rgOauthToken (\ s a -> s{_rgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' RastersGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | Data format for the response.
rgAlt :: Lens' RastersGet' Alt
rgAlt = lens _rgAlt (\ s a -> s{_rgAlt = a})

instance GoogleRequest RastersGet' where
        type Rs RastersGet' = Raster
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersGet'{..}
          = go _rgQuotaUser (Just _rgPrettyPrint) _rgUserIp
              _rgKey
              _rgId
              _rgOauthToken
              _rgFields
              (Just _rgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RastersGetResource)
                      r
                      u

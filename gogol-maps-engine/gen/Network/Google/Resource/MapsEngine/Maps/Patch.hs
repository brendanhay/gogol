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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsPatch@.
module Network.Google.Resource.MapsEngine.Maps.Patch
    (
    -- * REST Resource
      MapsPatchResource

    -- * Creating a Request
    , mapsPatch'
    , MapsPatch'

    -- * Request Lenses
    , mpQuotaUser
    , mpPrettyPrint
    , mpUserIP
    , mpPayload
    , mpKey
    , mpId
    , mpOAuthToken
    , mpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsPatch@ which the
-- 'MapsPatch'' request conforms to.
type MapsPatchResource =
     "maps" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Map :> Patch '[JSON] ()

-- | Mutate a map asset.
--
-- /See:/ 'mapsPatch'' smart constructor.
data MapsPatch' = MapsPatch'
    { _mpQuotaUser   :: !(Maybe Text)
    , _mpPrettyPrint :: !Bool
    , _mpUserIP      :: !(Maybe Text)
    , _mpPayload     :: !Map
    , _mpKey         :: !(Maybe AuthKey)
    , _mpId          :: !Text
    , _mpOAuthToken  :: !(Maybe OAuthToken)
    , _mpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpQuotaUser'
--
-- * 'mpPrettyPrint'
--
-- * 'mpUserIP'
--
-- * 'mpPayload'
--
-- * 'mpKey'
--
-- * 'mpId'
--
-- * 'mpOAuthToken'
--
-- * 'mpFields'
mapsPatch'
    :: Map -- ^ 'payload'
    -> Text -- ^ 'id'
    -> MapsPatch'
mapsPatch' pMpPayload_ pMpId_ =
    MapsPatch'
    { _mpQuotaUser = Nothing
    , _mpPrettyPrint = True
    , _mpUserIP = Nothing
    , _mpPayload = pMpPayload_
    , _mpKey = Nothing
    , _mpId = pMpId_
    , _mpOAuthToken = Nothing
    , _mpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpQuotaUser :: Lens' MapsPatch' (Maybe Text)
mpQuotaUser
  = lens _mpQuotaUser (\ s a -> s{_mpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpPrettyPrint :: Lens' MapsPatch' Bool
mpPrettyPrint
  = lens _mpPrettyPrint
      (\ s a -> s{_mpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpUserIP :: Lens' MapsPatch' (Maybe Text)
mpUserIP = lens _mpUserIP (\ s a -> s{_mpUserIP = a})

-- | Multipart request metadata.
mpPayload :: Lens' MapsPatch' Map
mpPayload
  = lens _mpPayload (\ s a -> s{_mpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpKey :: Lens' MapsPatch' (Maybe AuthKey)
mpKey = lens _mpKey (\ s a -> s{_mpKey = a})

-- | The ID of the map.
mpId :: Lens' MapsPatch' Text
mpId = lens _mpId (\ s a -> s{_mpId = a})

-- | OAuth 2.0 token for the current user.
mpOAuthToken :: Lens' MapsPatch' (Maybe OAuthToken)
mpOAuthToken
  = lens _mpOAuthToken (\ s a -> s{_mpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpFields :: Lens' MapsPatch' (Maybe Text)
mpFields = lens _mpFields (\ s a -> s{_mpFields = a})

instance GoogleAuth MapsPatch' where
        authKey = mpKey . _Just
        authToken = mpOAuthToken . _Just

instance GoogleRequest MapsPatch' where
        type Rs MapsPatch' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u MapsPatch'{..}
          = go _mpId _mpQuotaUser (Just _mpPrettyPrint)
              _mpUserIP
              _mpFields
              _mpKey
              _mpOAuthToken
              (Just AltJSON)
              _mpPayload
          where go
                  = clientWithRoute (Proxy :: Proxy MapsPatchResource)
                      r
                      u

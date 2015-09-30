{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Maps.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsPatch@.
module Mapsengine.Maps.Patch
    (
    -- * REST Resource
      MapsPatchAPI

    -- * Creating a Request
    , mapsPatch
    , MapsPatch

    -- * Request Lenses
    , mpQuotaUser
    , mpPrettyPrint
    , mpUserIp
    , mpKey
    , mpId
    , mpOauthToken
    , mpFields
    , mpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsPatch@ which the
-- 'MapsPatch' request conforms to.
type MapsPatchAPI =
     "maps" :> Capture "id" Text :> Patch '[JSON] ()

-- | Mutate a map asset.
--
-- /See:/ 'mapsPatch' smart constructor.
data MapsPatch = MapsPatch
    { _mpQuotaUser   :: !(Maybe Text)
    , _mpPrettyPrint :: !Bool
    , _mpUserIp      :: !(Maybe Text)
    , _mpKey         :: !(Maybe Text)
    , _mpId          :: !Text
    , _mpOauthToken  :: !(Maybe Text)
    , _mpFields      :: !(Maybe Text)
    , _mpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpQuotaUser'
--
-- * 'mpPrettyPrint'
--
-- * 'mpUserIp'
--
-- * 'mpKey'
--
-- * 'mpId'
--
-- * 'mpOauthToken'
--
-- * 'mpFields'
--
-- * 'mpAlt'
mapsPatch
    :: Text -- ^ 'id'
    -> MapsPatch
mapsPatch pMpId_ =
    MapsPatch
    { _mpQuotaUser = Nothing
    , _mpPrettyPrint = True
    , _mpUserIp = Nothing
    , _mpKey = Nothing
    , _mpId = pMpId_
    , _mpOauthToken = Nothing
    , _mpFields = Nothing
    , _mpAlt = "json"
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
mpUserIp :: Lens' MapsPatch' (Maybe Text)
mpUserIp = lens _mpUserIp (\ s a -> s{_mpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpKey :: Lens' MapsPatch' (Maybe Text)
mpKey = lens _mpKey (\ s a -> s{_mpKey = a})

-- | The ID of the map.
mpId :: Lens' MapsPatch' Text
mpId = lens _mpId (\ s a -> s{_mpId = a})

-- | OAuth 2.0 token for the current user.
mpOauthToken :: Lens' MapsPatch' (Maybe Text)
mpOauthToken
  = lens _mpOauthToken (\ s a -> s{_mpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpFields :: Lens' MapsPatch' (Maybe Text)
mpFields = lens _mpFields (\ s a -> s{_mpFields = a})

-- | Data format for the response.
mpAlt :: Lens' MapsPatch' Text
mpAlt = lens _mpAlt (\ s a -> s{_mpAlt = a})

instance GoogleRequest MapsPatch' where
        type Rs MapsPatch' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsPatch{..}
          = go _mpQuotaUser _mpPrettyPrint _mpUserIp _mpKey
              _mpId
              _mpOauthToken
              _mpFields
              _mpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MapsPatchAPI) r u

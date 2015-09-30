{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a raster.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersDelete@.
module Mapsengine.Rasters.Delete
    (
    -- * REST Resource
      RastersDeleteAPI

    -- * Creating a Request
    , rastersDelete
    , RastersDelete

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdUserIp
    , rdKey
    , rdId
    , rdOauthToken
    , rdFields
    , rdAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersDelete@ which the
-- 'RastersDelete' request conforms to.
type RastersDeleteAPI =
     "rasters" :> Capture "id" Text :> Delete '[JSON] ()

-- | Delete a raster.
--
-- /See:/ 'rastersDelete' smart constructor.
data RastersDelete = RastersDelete
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdUserIp      :: !(Maybe Text)
    , _rdKey         :: !(Maybe Text)
    , _rdId          :: !Text
    , _rdOauthToken  :: !(Maybe Text)
    , _rdFields      :: !(Maybe Text)
    , _rdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdUserIp'
--
-- * 'rdKey'
--
-- * 'rdId'
--
-- * 'rdOauthToken'
--
-- * 'rdFields'
--
-- * 'rdAlt'
rastersDelete
    :: Text -- ^ 'id'
    -> RastersDelete
rastersDelete pRdId_ =
    RastersDelete
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdUserIp = Nothing
    , _rdKey = Nothing
    , _rdId = pRdId_
    , _rdOauthToken = Nothing
    , _rdFields = Nothing
    , _rdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdQuotaUser :: Lens' RastersDelete' (Maybe Text)
rdQuotaUser
  = lens _rdQuotaUser (\ s a -> s{_rdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdPrettyPrint :: Lens' RastersDelete' Bool
rdPrettyPrint
  = lens _rdPrettyPrint
      (\ s a -> s{_rdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdUserIp :: Lens' RastersDelete' (Maybe Text)
rdUserIp = lens _rdUserIp (\ s a -> s{_rdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' RastersDelete' (Maybe Text)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | The ID of the raster. Only the raster creator or project owner are
-- permitted to delete. If the raster is included in a layer or mosaic, the
-- request will fail. Remove it from all parents prior to deleting.
rdId :: Lens' RastersDelete' Text
rdId = lens _rdId (\ s a -> s{_rdId = a})

-- | OAuth 2.0 token for the current user.
rdOauthToken :: Lens' RastersDelete' (Maybe Text)
rdOauthToken
  = lens _rdOauthToken (\ s a -> s{_rdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' RastersDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

-- | Data format for the response.
rdAlt :: Lens' RastersDelete' Text
rdAlt = lens _rdAlt (\ s a -> s{_rdAlt = a})

instance GoogleRequest RastersDelete' where
        type Rs RastersDelete' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersDelete{..}
          = go _rdQuotaUser _rdPrettyPrint _rdUserIp _rdKey
              _rdId
              _rdOauthToken
              _rdFields
              _rdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RastersDeleteAPI) r
                      u

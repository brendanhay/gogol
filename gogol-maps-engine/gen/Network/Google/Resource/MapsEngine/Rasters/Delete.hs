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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a raster.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersDelete@.
module Network.Google.Resource.MapsEngine.Rasters.Delete
    (
    -- * REST Resource
      RastersDeleteResource

    -- * Creating a Request
    , rastersDelete'
    , RastersDelete'

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdUserIP
    , rdKey
    , rdId
    , rdOAuthToken
    , rdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersDelete@ which the
-- 'RastersDelete'' request conforms to.
type RastersDeleteResource =
     "rasters" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a raster.
--
-- /See:/ 'rastersDelete'' smart constructor.
data RastersDelete' = RastersDelete'
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdUserIP      :: !(Maybe Text)
    , _rdKey         :: !(Maybe Key)
    , _rdId          :: !Text
    , _rdOAuthToken  :: !(Maybe OAuthToken)
    , _rdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdUserIP'
--
-- * 'rdKey'
--
-- * 'rdId'
--
-- * 'rdOAuthToken'
--
-- * 'rdFields'
rastersDelete'
    :: Text -- ^ 'id'
    -> RastersDelete'
rastersDelete' pRdId_ =
    RastersDelete'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdUserIP = Nothing
    , _rdKey = Nothing
    , _rdId = pRdId_
    , _rdOAuthToken = Nothing
    , _rdFields = Nothing
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
rdUserIP :: Lens' RastersDelete' (Maybe Text)
rdUserIP = lens _rdUserIP (\ s a -> s{_rdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' RastersDelete' (Maybe Key)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | The ID of the raster. Only the raster creator or project owner are
-- permitted to delete. If the raster is included in a layer or mosaic, the
-- request will fail. Remove it from all parents prior to deleting.
rdId :: Lens' RastersDelete' Text
rdId = lens _rdId (\ s a -> s{_rdId = a})

-- | OAuth 2.0 token for the current user.
rdOAuthToken :: Lens' RastersDelete' (Maybe OAuthToken)
rdOAuthToken
  = lens _rdOAuthToken (\ s a -> s{_rdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' RastersDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

instance GoogleAuth RastersDelete' where
        authKey = rdKey . _Just
        authToken = rdOAuthToken . _Just

instance GoogleRequest RastersDelete' where
        type Rs RastersDelete' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RastersDelete'{..}
          = go _rdQuotaUser (Just _rdPrettyPrint) _rdUserIP
              _rdKey
              _rdId
              _rdOAuthToken
              _rdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersDeleteResource)
                      r
                      u

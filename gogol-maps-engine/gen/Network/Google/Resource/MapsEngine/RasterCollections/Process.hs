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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Process a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsProcess@.
module Network.Google.Resource.MapsEngine.RasterCollections.Process
    (
    -- * REST Resource
      RasterCollectionsProcessResource

    -- * Creating a Request
    , rasterCollectionsProcess'
    , RasterCollectionsProcess'

    -- * Request Lenses
    , rcpcQuotaUser
    , rcpcPrettyPrint
    , rcpcUserIP
    , rcpcKey
    , rcpcId
    , rcpcOAuthToken
    , rcpcFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsProcess@ which the
-- 'RasterCollectionsProcess'' request conforms to.
type RasterCollectionsProcessResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "process" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] ProcessResponse

-- | Process a raster collection asset.
--
-- /See:/ 'rasterCollectionsProcess'' smart constructor.
data RasterCollectionsProcess' = RasterCollectionsProcess'
    { _rcpcQuotaUser   :: !(Maybe Text)
    , _rcpcPrettyPrint :: !Bool
    , _rcpcUserIP      :: !(Maybe Text)
    , _rcpcKey         :: !(Maybe Key)
    , _rcpcId          :: !Text
    , _rcpcOAuthToken  :: !(Maybe OAuthToken)
    , _rcpcFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpcQuotaUser'
--
-- * 'rcpcPrettyPrint'
--
-- * 'rcpcUserIP'
--
-- * 'rcpcKey'
--
-- * 'rcpcId'
--
-- * 'rcpcOAuthToken'
--
-- * 'rcpcFields'
rasterCollectionsProcess'
    :: Text -- ^ 'id'
    -> RasterCollectionsProcess'
rasterCollectionsProcess' pRcpcId_ =
    RasterCollectionsProcess'
    { _rcpcQuotaUser = Nothing
    , _rcpcPrettyPrint = True
    , _rcpcUserIP = Nothing
    , _rcpcKey = Nothing
    , _rcpcId = pRcpcId_
    , _rcpcOAuthToken = Nothing
    , _rcpcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcpcQuotaUser :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpcQuotaUser
  = lens _rcpcQuotaUser
      (\ s a -> s{_rcpcQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcpcPrettyPrint :: Lens' RasterCollectionsProcess' Bool
rcpcPrettyPrint
  = lens _rcpcPrettyPrint
      (\ s a -> s{_rcpcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcpcUserIP :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpcUserIP
  = lens _rcpcUserIP (\ s a -> s{_rcpcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpcKey :: Lens' RasterCollectionsProcess' (Maybe Key)
rcpcKey = lens _rcpcKey (\ s a -> s{_rcpcKey = a})

-- | The ID of the raster collection.
rcpcId :: Lens' RasterCollectionsProcess' Text
rcpcId = lens _rcpcId (\ s a -> s{_rcpcId = a})

-- | OAuth 2.0 token for the current user.
rcpcOAuthToken :: Lens' RasterCollectionsProcess' (Maybe OAuthToken)
rcpcOAuthToken
  = lens _rcpcOAuthToken
      (\ s a -> s{_rcpcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpcFields :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpcFields
  = lens _rcpcFields (\ s a -> s{_rcpcFields = a})

instance GoogleAuth RasterCollectionsProcess' where
        authKey = rcpcKey . _Just
        authToken = rcpcOAuthToken . _Just

instance GoogleRequest RasterCollectionsProcess'
         where
        type Rs RasterCollectionsProcess' = ProcessResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RasterCollectionsProcess'{..}
          = go _rcpcQuotaUser (Just _rcpcPrettyPrint)
              _rcpcUserIP
              _rcpcKey
              _rcpcId
              _rcpcOAuthToken
              _rcpcFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsProcessResource)
                      r
                      u

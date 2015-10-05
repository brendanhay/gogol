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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsDelete@.
module Network.Google.Resource.MapsEngine.RasterCollections.Delete
    (
    -- * REST Resource
      RasterCollectionsDeleteResource

    -- * Creating a Request
    , rasterCollectionsDelete'
    , RasterCollectionsDelete'

    -- * Request Lenses
    , rcdQuotaUser
    , rcdPrettyPrint
    , rcdUserIP
    , rcdKey
    , rcdId
    , rcdOAuthToken
    , rcdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsDelete@ which the
-- 'RasterCollectionsDelete'' request conforms to.
type RasterCollectionsDeleteResource =
     "rasterCollections" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a raster collection.
--
-- /See:/ 'rasterCollectionsDelete'' smart constructor.
data RasterCollectionsDelete' = RasterCollectionsDelete'
    { _rcdQuotaUser   :: !(Maybe Text)
    , _rcdPrettyPrint :: !Bool
    , _rcdUserIP      :: !(Maybe Text)
    , _rcdKey         :: !(Maybe AuthKey)
    , _rcdId          :: !Text
    , _rcdOAuthToken  :: !(Maybe OAuthToken)
    , _rcdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcdQuotaUser'
--
-- * 'rcdPrettyPrint'
--
-- * 'rcdUserIP'
--
-- * 'rcdKey'
--
-- * 'rcdId'
--
-- * 'rcdOAuthToken'
--
-- * 'rcdFields'
rasterCollectionsDelete'
    :: Text -- ^ 'id'
    -> RasterCollectionsDelete'
rasterCollectionsDelete' pRcdId_ =
    RasterCollectionsDelete'
    { _rcdQuotaUser = Nothing
    , _rcdPrettyPrint = True
    , _rcdUserIP = Nothing
    , _rcdKey = Nothing
    , _rcdId = pRcdId_
    , _rcdOAuthToken = Nothing
    , _rcdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcdQuotaUser :: Lens' RasterCollectionsDelete' (Maybe Text)
rcdQuotaUser
  = lens _rcdQuotaUser (\ s a -> s{_rcdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcdPrettyPrint :: Lens' RasterCollectionsDelete' Bool
rcdPrettyPrint
  = lens _rcdPrettyPrint
      (\ s a -> s{_rcdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcdUserIP :: Lens' RasterCollectionsDelete' (Maybe Text)
rcdUserIP
  = lens _rcdUserIP (\ s a -> s{_rcdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcdKey :: Lens' RasterCollectionsDelete' (Maybe AuthKey)
rcdKey = lens _rcdKey (\ s a -> s{_rcdKey = a})

-- | The ID of the raster collection. Only the raster collection creator or
-- project owner are permitted to delete. If the rastor collection is
-- included in a layer, the request will fail. Remove the raster collection
-- from all layers prior to deleting.
rcdId :: Lens' RasterCollectionsDelete' Text
rcdId = lens _rcdId (\ s a -> s{_rcdId = a})

-- | OAuth 2.0 token for the current user.
rcdOAuthToken :: Lens' RasterCollectionsDelete' (Maybe OAuthToken)
rcdOAuthToken
  = lens _rcdOAuthToken
      (\ s a -> s{_rcdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcdFields :: Lens' RasterCollectionsDelete' (Maybe Text)
rcdFields
  = lens _rcdFields (\ s a -> s{_rcdFields = a})

instance GoogleAuth RasterCollectionsDelete' where
        authKey = rcdKey . _Just
        authToken = rcdOAuthToken . _Just

instance GoogleRequest RasterCollectionsDelete' where
        type Rs RasterCollectionsDelete' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RasterCollectionsDelete'{..}
          = go _rcdId _rcdQuotaUser (Just _rcdPrettyPrint)
              _rcdUserIP
              _rcdFields
              _rcdKey
              _rcdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsDeleteResource)
                      r
                      u

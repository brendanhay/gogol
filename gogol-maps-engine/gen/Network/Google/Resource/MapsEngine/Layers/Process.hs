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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Process a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersProcess@.
module Network.Google.Resource.MapsEngine.Layers.Process
    (
    -- * REST Resource
      LayersProcessResource

    -- * Creating a Request
    , layersProcess'
    , LayersProcess'

    -- * Request Lenses
    , lpQuotaUser
    , lpPrettyPrint
    , lpUserIP
    , lpKey
    , lpId
    , lpOAuthToken
    , lpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersProcess@ which the
-- 'LayersProcess'' request conforms to.
type LayersProcessResource =
     "layers" :>
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

-- | Process a layer asset.
--
-- /See:/ 'layersProcess'' smart constructor.
data LayersProcess' = LayersProcess'
    { _lpQuotaUser   :: !(Maybe Text)
    , _lpPrettyPrint :: !Bool
    , _lpUserIP      :: !(Maybe Text)
    , _lpKey         :: !(Maybe Key)
    , _lpId          :: !Text
    , _lpOAuthToken  :: !(Maybe OAuthToken)
    , _lpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpQuotaUser'
--
-- * 'lpPrettyPrint'
--
-- * 'lpUserIP'
--
-- * 'lpKey'
--
-- * 'lpId'
--
-- * 'lpOAuthToken'
--
-- * 'lpFields'
layersProcess'
    :: Text -- ^ 'id'
    -> LayersProcess'
layersProcess' pLpId_ =
    LayersProcess'
    { _lpQuotaUser = Nothing
    , _lpPrettyPrint = True
    , _lpUserIP = Nothing
    , _lpKey = Nothing
    , _lpId = pLpId_
    , _lpOAuthToken = Nothing
    , _lpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpQuotaUser :: Lens' LayersProcess' (Maybe Text)
lpQuotaUser
  = lens _lpQuotaUser (\ s a -> s{_lpQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpPrettyPrint :: Lens' LayersProcess' Bool
lpPrettyPrint
  = lens _lpPrettyPrint
      (\ s a -> s{_lpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpUserIP :: Lens' LayersProcess' (Maybe Text)
lpUserIP = lens _lpUserIP (\ s a -> s{_lpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpKey :: Lens' LayersProcess' (Maybe Key)
lpKey = lens _lpKey (\ s a -> s{_lpKey = a})

-- | The ID of the layer.
lpId :: Lens' LayersProcess' Text
lpId = lens _lpId (\ s a -> s{_lpId = a})

-- | OAuth 2.0 token for the current user.
lpOAuthToken :: Lens' LayersProcess' (Maybe OAuthToken)
lpOAuthToken
  = lens _lpOAuthToken (\ s a -> s{_lpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpFields :: Lens' LayersProcess' (Maybe Text)
lpFields = lens _lpFields (\ s a -> s{_lpFields = a})

instance GoogleAuth LayersProcess' where
        authKey = lpKey . _Just
        authToken = lpOAuthToken . _Just

instance GoogleRequest LayersProcess' where
        type Rs LayersProcess' = ProcessResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u LayersProcess'{..}
          = go _lpId _lpQuotaUser (Just _lpPrettyPrint)
              _lpUserIP
              _lpFields
              _lpKey
              _lpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersProcessResource)
                      r
                      u

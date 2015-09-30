{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Process a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersProcess@.
module Mapsengine.Layers.Process
    (
    -- * REST Resource
      LayersProcessAPI

    -- * Creating a Request
    , layersProcess
    , LayersProcess

    -- * Request Lenses
    , lpQuotaUser
    , lpPrettyPrint
    , lpUserIp
    , lpKey
    , lpId
    , lpOauthToken
    , lpFields
    , lpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersProcess@ which the
-- 'LayersProcess' request conforms to.
type LayersProcessAPI =
     "layers" :>
       Capture "id" Text :>
         "process" :> Post '[JSON] ProcessResponse

-- | Process a layer asset.
--
-- /See:/ 'layersProcess' smart constructor.
data LayersProcess = LayersProcess
    { _lpQuotaUser   :: !(Maybe Text)
    , _lpPrettyPrint :: !Bool
    , _lpUserIp      :: !(Maybe Text)
    , _lpKey         :: !(Maybe Text)
    , _lpId          :: !Text
    , _lpOauthToken  :: !(Maybe Text)
    , _lpFields      :: !(Maybe Text)
    , _lpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpQuotaUser'
--
-- * 'lpPrettyPrint'
--
-- * 'lpUserIp'
--
-- * 'lpKey'
--
-- * 'lpId'
--
-- * 'lpOauthToken'
--
-- * 'lpFields'
--
-- * 'lpAlt'
layersProcess
    :: Text -- ^ 'id'
    -> LayersProcess
layersProcess pLpId_ =
    LayersProcess
    { _lpQuotaUser = Nothing
    , _lpPrettyPrint = True
    , _lpUserIp = Nothing
    , _lpKey = Nothing
    , _lpId = pLpId_
    , _lpOauthToken = Nothing
    , _lpFields = Nothing
    , _lpAlt = "json"
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
lpUserIp :: Lens' LayersProcess' (Maybe Text)
lpUserIp = lens _lpUserIp (\ s a -> s{_lpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpKey :: Lens' LayersProcess' (Maybe Text)
lpKey = lens _lpKey (\ s a -> s{_lpKey = a})

-- | The ID of the layer.
lpId :: Lens' LayersProcess' Text
lpId = lens _lpId (\ s a -> s{_lpId = a})

-- | OAuth 2.0 token for the current user.
lpOauthToken :: Lens' LayersProcess' (Maybe Text)
lpOauthToken
  = lens _lpOauthToken (\ s a -> s{_lpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpFields :: Lens' LayersProcess' (Maybe Text)
lpFields = lens _lpFields (\ s a -> s{_lpFields = a})

-- | Data format for the response.
lpAlt :: Lens' LayersProcess' Text
lpAlt = lens _lpAlt (\ s a -> s{_lpAlt = a})

instance GoogleRequest LayersProcess' where
        type Rs LayersProcess' = ProcessResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersProcess{..}
          = go _lpQuotaUser _lpPrettyPrint _lpUserIp _lpKey
              _lpId
              _lpOauthToken
              _lpFields
              _lpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LayersProcessAPI) r
                      u

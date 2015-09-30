{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Maps.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publish a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsPublish@.
module Mapsengine.Maps.Publish
    (
    -- * REST Resource
      MapsPublishAPI

    -- * Creating a Request
    , mapsPublish
    , MapsPublish

    -- * Request Lenses
    , mppQuotaUser
    , mppPrettyPrint
    , mppForce
    , mppUserIp
    , mppKey
    , mppId
    , mppOauthToken
    , mppFields
    , mppAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsPublish@ which the
-- 'MapsPublish' request conforms to.
type MapsPublishAPI =
     "maps" :>
       Capture "id" Text :>
         "publish" :>
           QueryParam "force" Bool :>
             Post '[JSON] PublishResponse

-- | Publish a map asset.
--
-- /See:/ 'mapsPublish' smart constructor.
data MapsPublish = MapsPublish
    { _mppQuotaUser   :: !(Maybe Text)
    , _mppPrettyPrint :: !Bool
    , _mppForce       :: !(Maybe Bool)
    , _mppUserIp      :: !(Maybe Text)
    , _mppKey         :: !(Maybe Text)
    , _mppId          :: !Text
    , _mppOauthToken  :: !(Maybe Text)
    , _mppFields      :: !(Maybe Text)
    , _mppAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mppQuotaUser'
--
-- * 'mppPrettyPrint'
--
-- * 'mppForce'
--
-- * 'mppUserIp'
--
-- * 'mppKey'
--
-- * 'mppId'
--
-- * 'mppOauthToken'
--
-- * 'mppFields'
--
-- * 'mppAlt'
mapsPublish
    :: Text -- ^ 'id'
    -> MapsPublish
mapsPublish pMppId_ =
    MapsPublish
    { _mppQuotaUser = Nothing
    , _mppPrettyPrint = True
    , _mppForce = Nothing
    , _mppUserIp = Nothing
    , _mppKey = Nothing
    , _mppId = pMppId_
    , _mppOauthToken = Nothing
    , _mppFields = Nothing
    , _mppAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mppQuotaUser :: Lens' MapsPublish' (Maybe Text)
mppQuotaUser
  = lens _mppQuotaUser (\ s a -> s{_mppQuotaUser = a})

-- | Returns response with indentations and line breaks.
mppPrettyPrint :: Lens' MapsPublish' Bool
mppPrettyPrint
  = lens _mppPrettyPrint
      (\ s a -> s{_mppPrettyPrint = a})

-- | If set to true, the API will allow publication of the map even if it\'s
-- out of date. If false, the map must have a processingStatus of complete
-- before publishing.
mppForce :: Lens' MapsPublish' (Maybe Bool)
mppForce = lens _mppForce (\ s a -> s{_mppForce = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mppUserIp :: Lens' MapsPublish' (Maybe Text)
mppUserIp
  = lens _mppUserIp (\ s a -> s{_mppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mppKey :: Lens' MapsPublish' (Maybe Text)
mppKey = lens _mppKey (\ s a -> s{_mppKey = a})

-- | The ID of the map.
mppId :: Lens' MapsPublish' Text
mppId = lens _mppId (\ s a -> s{_mppId = a})

-- | OAuth 2.0 token for the current user.
mppOauthToken :: Lens' MapsPublish' (Maybe Text)
mppOauthToken
  = lens _mppOauthToken
      (\ s a -> s{_mppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mppFields :: Lens' MapsPublish' (Maybe Text)
mppFields
  = lens _mppFields (\ s a -> s{_mppFields = a})

-- | Data format for the response.
mppAlt :: Lens' MapsPublish' Text
mppAlt = lens _mppAlt (\ s a -> s{_mppAlt = a})

instance GoogleRequest MapsPublish' where
        type Rs MapsPublish' = PublishResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsPublish{..}
          = go _mppQuotaUser _mppPrettyPrint _mppForce
              _mppUserIp
              _mppKey
              _mppId
              _mppOauthToken
              _mppFields
              _mppAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MapsPublishAPI) r u

{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Assets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineAssetsGet@.
module Mapsengine.Assets.Get
    (
    -- * REST Resource
      AssetsGetAPI

    -- * Creating a Request
    , assetsGet
    , AssetsGet

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIp
    , agKey
    , agId
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineAssetsGet@ which the
-- 'AssetsGet' request conforms to.
type AssetsGetAPI =
     "assets" :> Capture "id" Text :> Get '[JSON] Asset

-- | Return metadata for a particular asset.
--
-- /See:/ 'assetsGet' smart constructor.
data AssetsGet = AssetsGet
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agUserIp      :: !(Maybe Text)
    , _agKey         :: !(Maybe Text)
    , _agId          :: !Text
    , _agOauthToken  :: !(Maybe Text)
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIp'
--
-- * 'agKey'
--
-- * 'agId'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
assetsGet
    :: Text -- ^ 'id'
    -> AssetsGet
assetsGet pAgId_ =
    AssetsGet
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agKey = Nothing
    , _agId = pAgId_
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AssetsGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AssetsGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIp :: Lens' AssetsGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AssetsGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | The ID of the asset.
agId :: Lens' AssetsGet' Text
agId = lens _agId (\ s a -> s{_agId = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AssetsGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AssetsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AssetsGet' Text
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AssetsGet' where
        type Rs AssetsGet' = Asset
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u AssetsGet{..}
          = go _agQuotaUser _agPrettyPrint _agUserIp _agKey
              _agId
              _agOauthToken
              _agFields
              _agAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AssetsGetAPI) r u

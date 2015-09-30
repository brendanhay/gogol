{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Maps.Unpublish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unpublish a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsUnpublish@.
module Mapsengine.Maps.Unpublish
    (
    -- * REST Resource
      MapsUnpublishAPI

    -- * Creating a Request
    , mapsUnpublish
    , MapsUnpublish

    -- * Request Lenses
    , muQuotaUser
    , muPrettyPrint
    , muUserIp
    , muKey
    , muId
    , muOauthToken
    , muFields
    , muAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsUnpublish@ which the
-- 'MapsUnpublish' request conforms to.
type MapsUnpublishAPI =
     "maps" :>
       Capture "id" Text :>
         "unpublish" :> Post '[JSON] PublishResponse

-- | Unpublish a map asset.
--
-- /See:/ 'mapsUnpublish' smart constructor.
data MapsUnpublish = MapsUnpublish
    { _muQuotaUser   :: !(Maybe Text)
    , _muPrettyPrint :: !Bool
    , _muUserIp      :: !(Maybe Text)
    , _muKey         :: !(Maybe Text)
    , _muId          :: !Text
    , _muOauthToken  :: !(Maybe Text)
    , _muFields      :: !(Maybe Text)
    , _muAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsUnpublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muQuotaUser'
--
-- * 'muPrettyPrint'
--
-- * 'muUserIp'
--
-- * 'muKey'
--
-- * 'muId'
--
-- * 'muOauthToken'
--
-- * 'muFields'
--
-- * 'muAlt'
mapsUnpublish
    :: Text -- ^ 'id'
    -> MapsUnpublish
mapsUnpublish pMuId_ =
    MapsUnpublish
    { _muQuotaUser = Nothing
    , _muPrettyPrint = True
    , _muUserIp = Nothing
    , _muKey = Nothing
    , _muId = pMuId_
    , _muOauthToken = Nothing
    , _muFields = Nothing
    , _muAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muQuotaUser :: Lens' MapsUnpublish' (Maybe Text)
muQuotaUser
  = lens _muQuotaUser (\ s a -> s{_muQuotaUser = a})

-- | Returns response with indentations and line breaks.
muPrettyPrint :: Lens' MapsUnpublish' Bool
muPrettyPrint
  = lens _muPrettyPrint
      (\ s a -> s{_muPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muUserIp :: Lens' MapsUnpublish' (Maybe Text)
muUserIp = lens _muUserIp (\ s a -> s{_muUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muKey :: Lens' MapsUnpublish' (Maybe Text)
muKey = lens _muKey (\ s a -> s{_muKey = a})

-- | The ID of the map.
muId :: Lens' MapsUnpublish' Text
muId = lens _muId (\ s a -> s{_muId = a})

-- | OAuth 2.0 token for the current user.
muOauthToken :: Lens' MapsUnpublish' (Maybe Text)
muOauthToken
  = lens _muOauthToken (\ s a -> s{_muOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
muFields :: Lens' MapsUnpublish' (Maybe Text)
muFields = lens _muFields (\ s a -> s{_muFields = a})

-- | Data format for the response.
muAlt :: Lens' MapsUnpublish' Text
muAlt = lens _muAlt (\ s a -> s{_muAlt = a})

instance GoogleRequest MapsUnpublish' where
        type Rs MapsUnpublish' = PublishResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsUnpublish{..}
          = go _muQuotaUser _muPrettyPrint _muUserIp _muKey
              _muId
              _muOauthToken
              _muFields
              _muAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MapsUnpublishAPI) r
                      u

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
module Network.Google.Resource.Mapsengine.Maps.Publish
    (
    -- * REST Resource
      MapsPublishResource

    -- * Creating a Request
    , mapsPublish'
    , MapsPublish'

    -- * Request Lenses
    , mQuotaUser
    , mPrettyPrint
    , mForce
    , mUserIp
    , mKey
    , mId
    , mOauthToken
    , mFields
    , mAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsPublish@ which the
-- 'MapsPublish'' request conforms to.
type MapsPublishResource =
     "maps" :>
       Capture "id" Text :>
         "publish" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "force" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] PublishResponse

-- | Publish a map asset.
--
-- /See:/ 'mapsPublish'' smart constructor.
data MapsPublish' = MapsPublish'
    { _mQuotaUser   :: !(Maybe Text)
    , _mPrettyPrint :: !Bool
    , _mForce       :: !(Maybe Bool)
    , _mUserIp      :: !(Maybe Text)
    , _mKey         :: !(Maybe Text)
    , _mId          :: !Text
    , _mOauthToken  :: !(Maybe Text)
    , _mFields      :: !(Maybe Text)
    , _mAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mQuotaUser'
--
-- * 'mPrettyPrint'
--
-- * 'mForce'
--
-- * 'mUserIp'
--
-- * 'mKey'
--
-- * 'mId'
--
-- * 'mOauthToken'
--
-- * 'mFields'
--
-- * 'mAlt'
mapsPublish'
    :: Text -- ^ 'id'
    -> MapsPublish'
mapsPublish' pMId_ =
    MapsPublish'
    { _mQuotaUser = Nothing
    , _mPrettyPrint = True
    , _mForce = Nothing
    , _mUserIp = Nothing
    , _mKey = Nothing
    , _mId = pMId_
    , _mOauthToken = Nothing
    , _mFields = Nothing
    , _mAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mQuotaUser :: Lens' MapsPublish' (Maybe Text)
mQuotaUser
  = lens _mQuotaUser (\ s a -> s{_mQuotaUser = a})

-- | Returns response with indentations and line breaks.
mPrettyPrint :: Lens' MapsPublish' Bool
mPrettyPrint
  = lens _mPrettyPrint (\ s a -> s{_mPrettyPrint = a})

-- | If set to true, the API will allow publication of the map even if it\'s
-- out of date. If false, the map must have a processingStatus of complete
-- before publishing.
mForce :: Lens' MapsPublish' (Maybe Bool)
mForce = lens _mForce (\ s a -> s{_mForce = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mUserIp :: Lens' MapsPublish' (Maybe Text)
mUserIp = lens _mUserIp (\ s a -> s{_mUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mKey :: Lens' MapsPublish' (Maybe Text)
mKey = lens _mKey (\ s a -> s{_mKey = a})

-- | The ID of the map.
mId :: Lens' MapsPublish' Text
mId = lens _mId (\ s a -> s{_mId = a})

-- | OAuth 2.0 token for the current user.
mOauthToken :: Lens' MapsPublish' (Maybe Text)
mOauthToken
  = lens _mOauthToken (\ s a -> s{_mOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mFields :: Lens' MapsPublish' (Maybe Text)
mFields = lens _mFields (\ s a -> s{_mFields = a})

-- | Data format for the response.
mAlt :: Lens' MapsPublish' Alt
mAlt = lens _mAlt (\ s a -> s{_mAlt = a})

instance GoogleRequest MapsPublish' where
        type Rs MapsPublish' = PublishResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsPublish'{..}
          = go _mQuotaUser (Just _mPrettyPrint) _mForce
              _mUserIp
              _mKey
              _mId
              _mOauthToken
              _mFields
              (Just _mAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsPublishResource)
                      r
                      u

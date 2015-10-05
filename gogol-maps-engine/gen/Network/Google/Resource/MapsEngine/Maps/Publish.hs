{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Maps.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publish a map asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsPublish@.
module Network.Google.Resource.MapsEngine.Maps.Publish
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
    , mUserIP
    , mKey
    , mId
    , mOAuthToken
    , mFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsPublish@ which the
-- 'MapsPublish'' request conforms to.
type MapsPublishResource =
     "maps" :>
       Capture "id" Text :>
         "publish" :>
           QueryParam "force" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] PublishResponse

-- | Publish a map asset.
--
-- /See:/ 'mapsPublish'' smart constructor.
data MapsPublish' = MapsPublish'
    { _mQuotaUser   :: !(Maybe Text)
    , _mPrettyPrint :: !Bool
    , _mForce       :: !(Maybe Bool)
    , _mUserIP      :: !(Maybe Text)
    , _mKey         :: !(Maybe Key)
    , _mId          :: !Text
    , _mOAuthToken  :: !(Maybe OAuthToken)
    , _mFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mUserIP'
--
-- * 'mKey'
--
-- * 'mId'
--
-- * 'mOAuthToken'
--
-- * 'mFields'
mapsPublish'
    :: Text -- ^ 'id'
    -> MapsPublish'
mapsPublish' pMId_ =
    MapsPublish'
    { _mQuotaUser = Nothing
    , _mPrettyPrint = True
    , _mForce = Nothing
    , _mUserIP = Nothing
    , _mKey = Nothing
    , _mId = pMId_
    , _mOAuthToken = Nothing
    , _mFields = Nothing
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
mUserIP :: Lens' MapsPublish' (Maybe Text)
mUserIP = lens _mUserIP (\ s a -> s{_mUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mKey :: Lens' MapsPublish' (Maybe Key)
mKey = lens _mKey (\ s a -> s{_mKey = a})

-- | The ID of the map.
mId :: Lens' MapsPublish' Text
mId = lens _mId (\ s a -> s{_mId = a})

-- | OAuth 2.0 token for the current user.
mOAuthToken :: Lens' MapsPublish' (Maybe OAuthToken)
mOAuthToken
  = lens _mOAuthToken (\ s a -> s{_mOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mFields :: Lens' MapsPublish' (Maybe Text)
mFields = lens _mFields (\ s a -> s{_mFields = a})

instance GoogleAuth MapsPublish' where
        authKey = mKey . _Just
        authToken = mOAuthToken . _Just

instance GoogleRequest MapsPublish' where
        type Rs MapsPublish' = PublishResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u MapsPublish'{..}
          = go _mId _mForce _mQuotaUser (Just _mPrettyPrint)
              _mUserIP
              _mFields
              _mKey
              _mOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsPublishResource)
                      r
                      u

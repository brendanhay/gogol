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
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a skeleton raster asset for upload.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersUpload@.
module Network.Google.Resource.Mapsengine.Rasters.Upload
    (
    -- * REST Resource
      RastersUploadResource

    -- * Creating a Request
    , rastersUpload'
    , RastersUpload'

    -- * Request Lenses
    , ruQuotaUser
    , ruPrettyPrint
    , ruUserIp
    , ruKey
    , ruOauthToken
    , ruFields
    , ruAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersUpload@ which the
-- 'RastersUpload'' request conforms to.
type RastersUploadResource =
     "rasters" :>
       "upload" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Raster

-- | Create a skeleton raster asset for upload.
--
-- /See:/ 'rastersUpload'' smart constructor.
data RastersUpload' = RastersUpload'
    { _ruQuotaUser   :: !(Maybe Text)
    , _ruPrettyPrint :: !Bool
    , _ruUserIp      :: !(Maybe Text)
    , _ruKey         :: !(Maybe Text)
    , _ruOauthToken  :: !(Maybe Text)
    , _ruFields      :: !(Maybe Text)
    , _ruAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruQuotaUser'
--
-- * 'ruPrettyPrint'
--
-- * 'ruUserIp'
--
-- * 'ruKey'
--
-- * 'ruOauthToken'
--
-- * 'ruFields'
--
-- * 'ruAlt'
rastersUpload'
    :: RastersUpload'
rastersUpload' =
    RastersUpload'
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruUserIp = Nothing
    , _ruKey = Nothing
    , _ruOauthToken = Nothing
    , _ruFields = Nothing
    , _ruAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruQuotaUser :: Lens' RastersUpload' (Maybe Text)
ruQuotaUser
  = lens _ruQuotaUser (\ s a -> s{_ruQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruPrettyPrint :: Lens' RastersUpload' Bool
ruPrettyPrint
  = lens _ruPrettyPrint
      (\ s a -> s{_ruPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruUserIp :: Lens' RastersUpload' (Maybe Text)
ruUserIp = lens _ruUserIp (\ s a -> s{_ruUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' RastersUpload' (Maybe Text)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | OAuth 2.0 token for the current user.
ruOauthToken :: Lens' RastersUpload' (Maybe Text)
ruOauthToken
  = lens _ruOauthToken (\ s a -> s{_ruOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' RastersUpload' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

-- | Data format for the response.
ruAlt :: Lens' RastersUpload' Alt
ruAlt = lens _ruAlt (\ s a -> s{_ruAlt = a})

instance GoogleRequest RastersUpload' where
        type Rs RastersUpload' = Raster
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersUpload'{..}
          = go _ruQuotaUser (Just _ruPrettyPrint) _ruUserIp
              _ruKey
              _ruOauthToken
              _ruFields
              (Just _ruAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersUploadResource)
                      r
                      u

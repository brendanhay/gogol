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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a skeleton raster asset for upload.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersUpload@.
module Network.Google.Resource.MapsEngine.Rasters.Upload
    (
    -- * REST Resource
      RastersUploadResource

    -- * Creating a Request
    , rastersUpload'
    , RastersUpload'

    -- * Request Lenses
    , ruQuotaUser
    , ruPrettyPrint
    , ruUserIP
    , ruPayload
    , ruKey
    , ruOAuthToken
    , ruFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersUpload@ which the
-- 'RastersUpload'' request conforms to.
type RastersUploadResource =
     "rasters" :>
       "upload" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Raster :> Post '[JSON] Raster

-- | Create a skeleton raster asset for upload.
--
-- /See:/ 'rastersUpload'' smart constructor.
data RastersUpload' = RastersUpload'
    { _ruQuotaUser   :: !(Maybe Text)
    , _ruPrettyPrint :: !Bool
    , _ruUserIP      :: !(Maybe Text)
    , _ruPayload     :: !Raster
    , _ruKey         :: !(Maybe AuthKey)
    , _ruOAuthToken  :: !(Maybe OAuthToken)
    , _ruFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruQuotaUser'
--
-- * 'ruPrettyPrint'
--
-- * 'ruUserIP'
--
-- * 'ruPayload'
--
-- * 'ruKey'
--
-- * 'ruOAuthToken'
--
-- * 'ruFields'
rastersUpload'
    :: Raster -- ^ 'payload'
    -> RastersUpload'
rastersUpload' pRuPayload_ =
    RastersUpload'
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruUserIP = Nothing
    , _ruPayload = pRuPayload_
    , _ruKey = Nothing
    , _ruOAuthToken = Nothing
    , _ruFields = Nothing
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
ruUserIP :: Lens' RastersUpload' (Maybe Text)
ruUserIP = lens _ruUserIP (\ s a -> s{_ruUserIP = a})

-- | Multipart request metadata.
ruPayload :: Lens' RastersUpload' Raster
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' RastersUpload' (Maybe AuthKey)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | OAuth 2.0 token for the current user.
ruOAuthToken :: Lens' RastersUpload' (Maybe OAuthToken)
ruOAuthToken
  = lens _ruOAuthToken (\ s a -> s{_ruOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' RastersUpload' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

instance GoogleAuth RastersUpload' where
        authKey = ruKey . _Just
        authToken = ruOAuthToken . _Just

instance GoogleRequest RastersUpload' where
        type Rs RastersUpload' = Raster
        request = requestWith mapsEngineRequest
        requestWith rq RastersUpload'{..}
          = go _ruQuotaUser (Just _ruPrettyPrint) _ruUserIP
              _ruFields
              _ruKey
              _ruOAuthToken
              (Just AltJSON)
              _ruPayload
          where go
                  = clientBuild (Proxy :: Proxy RastersUploadResource)
                      rq

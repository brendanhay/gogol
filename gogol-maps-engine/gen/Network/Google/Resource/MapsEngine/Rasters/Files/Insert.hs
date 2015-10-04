{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Files.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Upload a file to a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersFilesInsert@.
module Network.Google.Resource.MapsEngine.Rasters.Files.Insert
    (
    -- * REST Resource
      RastersFilesInsertResource

    -- * Creating a Request
    , rastersFilesInsert'
    , RastersFilesInsert'

    -- * Request Lenses
    , rfiQuotaUser
    , rfiPrettyPrint
    , rfiUserIP
    , rfiMedia
    , rfiKey
    , rfiId
    , rfiOAuthToken
    , rfiFilename
    , rfiFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersFilesInsert@ which the
-- 'RastersFilesInsert'' request conforms to.
type RastersFilesInsertResource =
     "rasters" :>
       Capture "id" Text :>
         "files" :>
           QueryParam "filename" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] Body :> Post '[JSON] ()

-- | Upload a file to a raster asset.
--
-- /See:/ 'rastersFilesInsert'' smart constructor.
data RastersFilesInsert' = RastersFilesInsert'
    { _rfiQuotaUser   :: !(Maybe Text)
    , _rfiPrettyPrint :: !Bool
    , _rfiUserIP      :: !(Maybe Text)
    , _rfiMedia       :: !Body
    , _rfiKey         :: !(Maybe Key)
    , _rfiId          :: !Text
    , _rfiOAuthToken  :: !(Maybe OAuthToken)
    , _rfiFilename    :: !Text
    , _rfiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersFilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfiQuotaUser'
--
-- * 'rfiPrettyPrint'
--
-- * 'rfiUserIP'
--
-- * 'rfiMedia'
--
-- * 'rfiKey'
--
-- * 'rfiId'
--
-- * 'rfiOAuthToken'
--
-- * 'rfiFilename'
--
-- * 'rfiFields'
rastersFilesInsert'
    :: Body -- ^ 'media'
    -> Text -- ^ 'id'
    -> Text -- ^ 'filename'
    -> RastersFilesInsert'
rastersFilesInsert' pRfiMedia_ pRfiId_ pRfiFilename_ =
    RastersFilesInsert'
    { _rfiQuotaUser = Nothing
    , _rfiPrettyPrint = True
    , _rfiUserIP = Nothing
    , _rfiMedia = pRfiMedia_
    , _rfiKey = Nothing
    , _rfiId = pRfiId_
    , _rfiOAuthToken = Nothing
    , _rfiFilename = pRfiFilename_
    , _rfiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rfiQuotaUser :: Lens' RastersFilesInsert' (Maybe Text)
rfiQuotaUser
  = lens _rfiQuotaUser (\ s a -> s{_rfiQuotaUser = a})

-- | Returns response with indentations and line breaks.
rfiPrettyPrint :: Lens' RastersFilesInsert' Bool
rfiPrettyPrint
  = lens _rfiPrettyPrint
      (\ s a -> s{_rfiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rfiUserIP :: Lens' RastersFilesInsert' (Maybe Text)
rfiUserIP
  = lens _rfiUserIP (\ s a -> s{_rfiUserIP = a})

rfiMedia :: Lens' RastersFilesInsert' Body
rfiMedia = lens _rfiMedia (\ s a -> s{_rfiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rfiKey :: Lens' RastersFilesInsert' (Maybe Key)
rfiKey = lens _rfiKey (\ s a -> s{_rfiKey = a})

-- | The ID of the raster asset.
rfiId :: Lens' RastersFilesInsert' Text
rfiId = lens _rfiId (\ s a -> s{_rfiId = a})

-- | OAuth 2.0 token for the current user.
rfiOAuthToken :: Lens' RastersFilesInsert' (Maybe OAuthToken)
rfiOAuthToken
  = lens _rfiOAuthToken
      (\ s a -> s{_rfiOAuthToken = a})

-- | The file name of this uploaded file.
rfiFilename :: Lens' RastersFilesInsert' Text
rfiFilename
  = lens _rfiFilename (\ s a -> s{_rfiFilename = a})

-- | Selector specifying which fields to include in a partial response.
rfiFields :: Lens' RastersFilesInsert' (Maybe Text)
rfiFields
  = lens _rfiFields (\ s a -> s{_rfiFields = a})

instance GoogleAuth RastersFilesInsert' where
        authKey = rfiKey . _Just
        authToken = rfiOAuthToken . _Just

instance GoogleRequest RastersFilesInsert' where
        type Rs RastersFilesInsert' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RastersFilesInsert'{..}
          = go _rfiId (Just _rfiFilename) _rfiQuotaUser
              (Just _rfiPrettyPrint)
              _rfiUserIP
              _rfiFields
              _rfiKey
              _rfiOAuthToken
              (Just AltJSON)
              _rfiMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersFilesInsertResource)
                      r
                      u

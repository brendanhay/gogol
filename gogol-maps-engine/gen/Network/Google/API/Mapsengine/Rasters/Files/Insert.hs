{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Rasters.Files.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Upload a file to a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.files.insert@.
module Network.Google.API.Mapsengine.Rasters.Files.Insert
    (
    -- * REST Resource
      RastersFilesInsertAPI

    -- * Creating a Request
    , rastersFilesInsert'
    , RastersFilesInsert'

    -- * Request Lenses
    , rfiQuotaUser
    , rfiPrettyPrint
    , rfiUserIp
    , rfiKey
    , rfiId
    , rfiOauthToken
    , rfiFilename
    , rfiFields
    , rfiAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.rasters.files.insert which the
-- 'RastersFilesInsert'' request conforms to.
type RastersFilesInsertAPI =
     "rasters" :>
       Capture "id" Text :>
         "files" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "filename" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] ()

-- | Upload a file to a raster asset.
--
-- /See:/ 'rastersFilesInsert'' smart constructor.
data RastersFilesInsert' = RastersFilesInsert'
    { _rfiQuotaUser   :: !(Maybe Text)
    , _rfiPrettyPrint :: !Bool
    , _rfiUserIp      :: !(Maybe Text)
    , _rfiKey         :: !(Maybe Text)
    , _rfiId          :: !Text
    , _rfiOauthToken  :: !(Maybe Text)
    , _rfiFilename    :: !Text
    , _rfiFields      :: !(Maybe Text)
    , _rfiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersFilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfiQuotaUser'
--
-- * 'rfiPrettyPrint'
--
-- * 'rfiUserIp'
--
-- * 'rfiKey'
--
-- * 'rfiId'
--
-- * 'rfiOauthToken'
--
-- * 'rfiFilename'
--
-- * 'rfiFields'
--
-- * 'rfiAlt'
rastersFilesInsert'
    :: Text -- ^ 'id'
    -> Text -- ^ 'filename'
    -> RastersFilesInsert'
rastersFilesInsert' pRfiId_ pRfiFilename_ =
    RastersFilesInsert'
    { _rfiQuotaUser = Nothing
    , _rfiPrettyPrint = True
    , _rfiUserIp = Nothing
    , _rfiKey = Nothing
    , _rfiId = pRfiId_
    , _rfiOauthToken = Nothing
    , _rfiFilename = pRfiFilename_
    , _rfiFields = Nothing
    , _rfiAlt = JSON
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
rfiUserIp :: Lens' RastersFilesInsert' (Maybe Text)
rfiUserIp
  = lens _rfiUserIp (\ s a -> s{_rfiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rfiKey :: Lens' RastersFilesInsert' (Maybe Text)
rfiKey = lens _rfiKey (\ s a -> s{_rfiKey = a})

-- | The ID of the raster asset.
rfiId :: Lens' RastersFilesInsert' Text
rfiId = lens _rfiId (\ s a -> s{_rfiId = a})

-- | OAuth 2.0 token for the current user.
rfiOauthToken :: Lens' RastersFilesInsert' (Maybe Text)
rfiOauthToken
  = lens _rfiOauthToken
      (\ s a -> s{_rfiOauthToken = a})

-- | The file name of this uploaded file.
rfiFilename :: Lens' RastersFilesInsert' Text
rfiFilename
  = lens _rfiFilename (\ s a -> s{_rfiFilename = a})

-- | Selector specifying which fields to include in a partial response.
rfiFields :: Lens' RastersFilesInsert' (Maybe Text)
rfiFields
  = lens _rfiFields (\ s a -> s{_rfiFields = a})

-- | Data format for the response.
rfiAlt :: Lens' RastersFilesInsert' Alt
rfiAlt = lens _rfiAlt (\ s a -> s{_rfiAlt = a})

instance GoogleRequest RastersFilesInsert' where
        type Rs RastersFilesInsert' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersFilesInsert'{..}
          = go _rfiQuotaUser (Just _rfiPrettyPrint) _rfiUserIp
              _rfiKey
              _rfiId
              _rfiOauthToken
              (Just _rfiFilename)
              _rfiFields
              (Just _rfiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersFilesInsertAPI)
                      r
                      u

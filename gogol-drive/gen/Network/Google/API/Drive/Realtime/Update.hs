{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Realtime.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.realtime.update@.
module Network.Google.API.Drive.Realtime.Update
    (
    -- * REST Resource
      RealtimeUpdateAPI

    -- * Creating a Request
    , realtimeUpdate'
    , RealtimeUpdate'

    -- * Request Lenses
    , ruuQuotaUser
    , ruuPrettyPrint
    , ruuUserIp
    , ruuBaseRevision
    , ruuKey
    , ruuFileId
    , ruuOauthToken
    , ruuFields
    , ruuAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.realtime.update which the
-- 'RealtimeUpdate'' request conforms to.
type RealtimeUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         "realtime" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "baseRevision" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] ()

-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ 'realtimeUpdate'' smart constructor.
data RealtimeUpdate' = RealtimeUpdate'
    { _ruuQuotaUser    :: !(Maybe Text)
    , _ruuPrettyPrint  :: !Bool
    , _ruuUserIp       :: !(Maybe Text)
    , _ruuBaseRevision :: !(Maybe Text)
    , _ruuKey          :: !(Maybe Text)
    , _ruuFileId       :: !Text
    , _ruuOauthToken   :: !(Maybe Text)
    , _ruuFields       :: !(Maybe Text)
    , _ruuAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruuQuotaUser'
--
-- * 'ruuPrettyPrint'
--
-- * 'ruuUserIp'
--
-- * 'ruuBaseRevision'
--
-- * 'ruuKey'
--
-- * 'ruuFileId'
--
-- * 'ruuOauthToken'
--
-- * 'ruuFields'
--
-- * 'ruuAlt'
realtimeUpdate'
    :: Text -- ^ 'fileId'
    -> RealtimeUpdate'
realtimeUpdate' pRuuFileId_ =
    RealtimeUpdate'
    { _ruuQuotaUser = Nothing
    , _ruuPrettyPrint = True
    , _ruuUserIp = Nothing
    , _ruuBaseRevision = Nothing
    , _ruuKey = Nothing
    , _ruuFileId = pRuuFileId_
    , _ruuOauthToken = Nothing
    , _ruuFields = Nothing
    , _ruuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruuQuotaUser :: Lens' RealtimeUpdate' (Maybe Text)
ruuQuotaUser
  = lens _ruuQuotaUser (\ s a -> s{_ruuQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruuPrettyPrint :: Lens' RealtimeUpdate' Bool
ruuPrettyPrint
  = lens _ruuPrettyPrint
      (\ s a -> s{_ruuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruuUserIp :: Lens' RealtimeUpdate' (Maybe Text)
ruuUserIp
  = lens _ruuUserIp (\ s a -> s{_ruuUserIp = a})

-- | The revision of the model to diff the uploaded model against. If set,
-- the uploaded model is diffed against the provided revision and those
-- differences are merged with any changes made to the model after the
-- provided revision. If not set, the uploaded model replaces the current
-- model on the server.
ruuBaseRevision :: Lens' RealtimeUpdate' (Maybe Text)
ruuBaseRevision
  = lens _ruuBaseRevision
      (\ s a -> s{_ruuBaseRevision = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruuKey :: Lens' RealtimeUpdate' (Maybe Text)
ruuKey = lens _ruuKey (\ s a -> s{_ruuKey = a})

-- | The ID of the file that the Realtime API data model is associated with.
ruuFileId :: Lens' RealtimeUpdate' Text
ruuFileId
  = lens _ruuFileId (\ s a -> s{_ruuFileId = a})

-- | OAuth 2.0 token for the current user.
ruuOauthToken :: Lens' RealtimeUpdate' (Maybe Text)
ruuOauthToken
  = lens _ruuOauthToken
      (\ s a -> s{_ruuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruuFields :: Lens' RealtimeUpdate' (Maybe Text)
ruuFields
  = lens _ruuFields (\ s a -> s{_ruuFields = a})

-- | Data format for the response.
ruuAlt :: Lens' RealtimeUpdate' Alt
ruuAlt = lens _ruuAlt (\ s a -> s{_ruuAlt = a})

instance GoogleRequest RealtimeUpdate' where
        type Rs RealtimeUpdate' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RealtimeUpdate'{..}
          = go _ruuQuotaUser (Just _ruuPrettyPrint) _ruuUserIp
              _ruuBaseRevision
              _ruuKey
              _ruuFileId
              _ruuOauthToken
              _ruuFields
              (Just _ruuAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RealtimeUpdateAPI)
                      r
                      u

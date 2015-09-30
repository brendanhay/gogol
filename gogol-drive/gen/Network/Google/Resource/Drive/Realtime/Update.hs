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
-- Module      : Network.Google.Resource.Drive.Realtime.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRealtimeUpdate@.
module Network.Google.Resource.Drive.Realtime.Update
    (
    -- * REST Resource
      RealtimeUpdateResource

    -- * Creating a Request
    , realtimeUpdate'
    , RealtimeUpdate'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIp
    , rBaseRevision
    , rKey
    , rFileId
    , rOauthToken
    , rFields
    , rAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRealtimeUpdate@ which the
-- 'RealtimeUpdate'' request conforms to.
type RealtimeUpdateResource =
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
    { _rQuotaUser    :: !(Maybe Text)
    , _rPrettyPrint  :: !Bool
    , _rUserIp       :: !(Maybe Text)
    , _rBaseRevision :: !(Maybe Text)
    , _rKey          :: !(Maybe Text)
    , _rFileId       :: !Text
    , _rOauthToken   :: !(Maybe Text)
    , _rFields       :: !(Maybe Text)
    , _rAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIp'
--
-- * 'rBaseRevision'
--
-- * 'rKey'
--
-- * 'rFileId'
--
-- * 'rOauthToken'
--
-- * 'rFields'
--
-- * 'rAlt'
realtimeUpdate'
    :: Text -- ^ 'fileId'
    -> RealtimeUpdate'
realtimeUpdate' pRFileId_ =
    RealtimeUpdate'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIp = Nothing
    , _rBaseRevision = Nothing
    , _rKey = Nothing
    , _rFileId = pRFileId_
    , _rOauthToken = Nothing
    , _rFields = Nothing
    , _rAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RealtimeUpdate' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RealtimeUpdate' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RealtimeUpdate' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | The revision of the model to diff the uploaded model against. If set,
-- the uploaded model is diffed against the provided revision and those
-- differences are merged with any changes made to the model after the
-- provided revision. If not set, the uploaded model replaces the current
-- model on the server.
rBaseRevision :: Lens' RealtimeUpdate' (Maybe Text)
rBaseRevision
  = lens _rBaseRevision
      (\ s a -> s{_rBaseRevision = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RealtimeUpdate' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The ID of the file that the Realtime API data model is associated with.
rFileId :: Lens' RealtimeUpdate' Text
rFileId = lens _rFileId (\ s a -> s{_rFileId = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RealtimeUpdate' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RealtimeUpdate' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RealtimeUpdate' Alt
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RealtimeUpdate' where
        type Rs RealtimeUpdate' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RealtimeUpdate'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rUserIp
              _rBaseRevision
              _rKey
              _rFileId
              _rOauthToken
              _rFields
              (Just _rAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RealtimeUpdateResource)
                      r
                      u

{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Drive.Realtime.Update
    (
    -- * REST Resource
      RealtimeUpdateAPI

    -- * Creating a Request
    , realtimeUpdate
    , RealtimeUpdate

    -- * Request Lenses
    , reaQuotaUser
    , reaPrettyPrint
    , reaUserIp
    , reaBaseRevision
    , reaKey
    , reaFileId
    , reaOauthToken
    , reaFields
    , reaAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRealtimeUpdate@ which the
-- 'RealtimeUpdate' request conforms to.
type RealtimeUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         "realtime" :>
           QueryParam "baseRevision" Text :> Put '[JSON] ()

-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ 'realtimeUpdate' smart constructor.
data RealtimeUpdate = RealtimeUpdate
    { _reaQuotaUser    :: !(Maybe Text)
    , _reaPrettyPrint  :: !Bool
    , _reaUserIp       :: !(Maybe Text)
    , _reaBaseRevision :: !(Maybe Text)
    , _reaKey          :: !(Maybe Text)
    , _reaFileId       :: !Text
    , _reaOauthToken   :: !(Maybe Text)
    , _reaFields       :: !(Maybe Text)
    , _reaAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaQuotaUser'
--
-- * 'reaPrettyPrint'
--
-- * 'reaUserIp'
--
-- * 'reaBaseRevision'
--
-- * 'reaKey'
--
-- * 'reaFileId'
--
-- * 'reaOauthToken'
--
-- * 'reaFields'
--
-- * 'reaAlt'
realtimeUpdate
    :: Text -- ^ 'fileId'
    -> RealtimeUpdate
realtimeUpdate pReaFileId_ =
    RealtimeUpdate
    { _reaQuotaUser = Nothing
    , _reaPrettyPrint = True
    , _reaUserIp = Nothing
    , _reaBaseRevision = Nothing
    , _reaKey = Nothing
    , _reaFileId = pReaFileId_
    , _reaOauthToken = Nothing
    , _reaFields = Nothing
    , _reaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
reaQuotaUser :: Lens' RealtimeUpdate' (Maybe Text)
reaQuotaUser
  = lens _reaQuotaUser (\ s a -> s{_reaQuotaUser = a})

-- | Returns response with indentations and line breaks.
reaPrettyPrint :: Lens' RealtimeUpdate' Bool
reaPrettyPrint
  = lens _reaPrettyPrint
      (\ s a -> s{_reaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
reaUserIp :: Lens' RealtimeUpdate' (Maybe Text)
reaUserIp
  = lens _reaUserIp (\ s a -> s{_reaUserIp = a})

-- | The revision of the model to diff the uploaded model against. If set,
-- the uploaded model is diffed against the provided revision and those
-- differences are merged with any changes made to the model after the
-- provided revision. If not set, the uploaded model replaces the current
-- model on the server.
reaBaseRevision :: Lens' RealtimeUpdate' (Maybe Text)
reaBaseRevision
  = lens _reaBaseRevision
      (\ s a -> s{_reaBaseRevision = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reaKey :: Lens' RealtimeUpdate' (Maybe Text)
reaKey = lens _reaKey (\ s a -> s{_reaKey = a})

-- | The ID of the file that the Realtime API data model is associated with.
reaFileId :: Lens' RealtimeUpdate' Text
reaFileId
  = lens _reaFileId (\ s a -> s{_reaFileId = a})

-- | OAuth 2.0 token for the current user.
reaOauthToken :: Lens' RealtimeUpdate' (Maybe Text)
reaOauthToken
  = lens _reaOauthToken
      (\ s a -> s{_reaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
reaFields :: Lens' RealtimeUpdate' (Maybe Text)
reaFields
  = lens _reaFields (\ s a -> s{_reaFields = a})

-- | Data format for the response.
reaAlt :: Lens' RealtimeUpdate' Text
reaAlt = lens _reaAlt (\ s a -> s{_reaAlt = a})

instance GoogleRequest RealtimeUpdate' where
        type Rs RealtimeUpdate' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RealtimeUpdate{..}
          = go _reaQuotaUser _reaPrettyPrint _reaUserIp
              _reaBaseRevision
              _reaKey
              _reaFileId
              _reaOauthToken
              _reaFields
              _reaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RealtimeUpdateAPI)
                      r
                      u

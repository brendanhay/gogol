{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Realtime.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports the contents of the Realtime API data model associated with this
-- file as JSON.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRealtimeGet@.
module Drive.Realtime.Get
    (
    -- * REST Resource
      RealtimeGetAPI

    -- * Creating a Request
    , realtimeGet
    , RealtimeGet

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIp
    , rKey
    , rFileId
    , rOauthToken
    , rRevision
    , rFields
    , rAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRealtimeGet@ which the
-- 'RealtimeGet' request conforms to.
type RealtimeGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "realtime" :>
           QueryParam "revision" Int32 :> Get '[JSON] ()

-- | Exports the contents of the Realtime API data model associated with this
-- file as JSON.
--
-- /See:/ 'realtimeGet' smart constructor.
data RealtimeGet = RealtimeGet
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIp      :: !(Maybe Text)
    , _rKey         :: !(Maybe Text)
    , _rFileId      :: !Text
    , _rOauthToken  :: !(Maybe Text)
    , _rRevision    :: !(Maybe Int32)
    , _rFields      :: !(Maybe Text)
    , _rAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIp'
--
-- * 'rKey'
--
-- * 'rFileId'
--
-- * 'rOauthToken'
--
-- * 'rRevision'
--
-- * 'rFields'
--
-- * 'rAlt'
realtimeGet
    :: Text -- ^ 'fileId'
    -> RealtimeGet
realtimeGet pRFileId_ =
    RealtimeGet
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rFileId = pRFileId_
    , _rOauthToken = Nothing
    , _rRevision = Nothing
    , _rFields = Nothing
    , _rAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RealtimeGet' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RealtimeGet' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RealtimeGet' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RealtimeGet' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The ID of the file that the Realtime API data model is associated with.
rFileId :: Lens' RealtimeGet' Text
rFileId = lens _rFileId (\ s a -> s{_rFileId = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RealtimeGet' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | The revision of the Realtime API data model to export. Revisions start
-- at 1 (the initial empty data model) and are incremented with each
-- change. If this parameter is excluded, the most recent data model will
-- be returned.
rRevision :: Lens' RealtimeGet' (Maybe Int32)
rRevision
  = lens _rRevision (\ s a -> s{_rRevision = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RealtimeGet' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RealtimeGet' Text
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RealtimeGet' where
        type Rs RealtimeGet' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RealtimeGet{..}
          = go _rQuotaUser _rPrettyPrint _rUserIp _rKey
              _rFileId
              _rOauthToken
              _rRevision
              _rFields
              _rAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RealtimeGetAPI) r u

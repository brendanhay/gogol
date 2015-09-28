{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Realtime.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports the contents of the Realtime API data model associated with this
-- file as JSON.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.realtime.get@.
module Network.Google.API.Drive.Realtime.Get
    (
    -- * REST Resource
      RealtimeGetAPI

    -- * Creating a Request
    , realtimeGet'
    , RealtimeGet'

    -- * Request Lenses
    , reaQuotaUser
    , reaPrettyPrint
    , reaUserIp
    , reaKey
    , reaFileId
    , reaOauthToken
    , reaRevision
    , reaFields
    , reaAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.realtime.get which the
-- 'RealtimeGet'' request conforms to.
type RealtimeGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "realtime" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "revision" Nat :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ()

-- | Exports the contents of the Realtime API data model associated with this
-- file as JSON.
--
-- /See:/ 'realtimeGet'' smart constructor.
data RealtimeGet' = RealtimeGet'
    { _reaQuotaUser   :: !(Maybe Text)
    , _reaPrettyPrint :: !Bool
    , _reaUserIp      :: !(Maybe Text)
    , _reaKey         :: !(Maybe Text)
    , _reaFileId      :: !Text
    , _reaOauthToken  :: !(Maybe Text)
    , _reaRevision    :: !(Maybe Nat)
    , _reaFields      :: !(Maybe Text)
    , _reaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaQuotaUser'
--
-- * 'reaPrettyPrint'
--
-- * 'reaUserIp'
--
-- * 'reaKey'
--
-- * 'reaFileId'
--
-- * 'reaOauthToken'
--
-- * 'reaRevision'
--
-- * 'reaFields'
--
-- * 'reaAlt'
realtimeGet'
    :: Text -- ^ 'fileId'
    -> RealtimeGet'
realtimeGet' pReaFileId_ =
    RealtimeGet'
    { _reaQuotaUser = Nothing
    , _reaPrettyPrint = True
    , _reaUserIp = Nothing
    , _reaKey = Nothing
    , _reaFileId = pReaFileId_
    , _reaOauthToken = Nothing
    , _reaRevision = Nothing
    , _reaFields = Nothing
    , _reaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
reaQuotaUser :: Lens' RealtimeGet' (Maybe Text)
reaQuotaUser
  = lens _reaQuotaUser (\ s a -> s{_reaQuotaUser = a})

-- | Returns response with indentations and line breaks.
reaPrettyPrint :: Lens' RealtimeGet' Bool
reaPrettyPrint
  = lens _reaPrettyPrint
      (\ s a -> s{_reaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
reaUserIp :: Lens' RealtimeGet' (Maybe Text)
reaUserIp
  = lens _reaUserIp (\ s a -> s{_reaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reaKey :: Lens' RealtimeGet' (Maybe Text)
reaKey = lens _reaKey (\ s a -> s{_reaKey = a})

-- | The ID of the file that the Realtime API data model is associated with.
reaFileId :: Lens' RealtimeGet' Text
reaFileId
  = lens _reaFileId (\ s a -> s{_reaFileId = a})

-- | OAuth 2.0 token for the current user.
reaOauthToken :: Lens' RealtimeGet' (Maybe Text)
reaOauthToken
  = lens _reaOauthToken
      (\ s a -> s{_reaOauthToken = a})

-- | The revision of the Realtime API data model to export. Revisions start
-- at 1 (the initial empty data model) and are incremented with each
-- change. If this parameter is excluded, the most recent data model will
-- be returned.
reaRevision :: Lens' RealtimeGet' (Maybe Natural)
reaRevision
  = lens _reaRevision (\ s a -> s{_reaRevision = a}) .
      mapping _Nat

-- | Selector specifying which fields to include in a partial response.
reaFields :: Lens' RealtimeGet' (Maybe Text)
reaFields
  = lens _reaFields (\ s a -> s{_reaFields = a})

-- | Data format for the response.
reaAlt :: Lens' RealtimeGet' Alt
reaAlt = lens _reaAlt (\ s a -> s{_reaAlt = a})

instance GoogleRequest RealtimeGet' where
        type Rs RealtimeGet' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RealtimeGet'{..}
          = go _reaQuotaUser (Just _reaPrettyPrint) _reaUserIp
              _reaKey
              _reaFileId
              _reaOauthToken
              _reaRevision
              _reaFields
              (Just _reaAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RealtimeGetAPI) r u

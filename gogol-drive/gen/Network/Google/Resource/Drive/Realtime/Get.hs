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
module Network.Google.Resource.Drive.Realtime.Get
    (
    -- * REST Resource
      RealtimeGetResource

    -- * Creating a Request
    , realtimeGet'
    , RealtimeGet'

    -- * Request Lenses
    , reaQuotaUser
    , reaPrettyPrint
    , reaUserIP
    , reaKey
    , reaFileId
    , reaOAuthToken
    , reaRevision
    , reaFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRealtimeGet@ which the
-- 'RealtimeGet'' request conforms to.
type RealtimeGetResource =
     "files" :>
       Capture "fileId" Text :>
         "realtime" :>
           QueryParam "revision" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "files" :>
         Capture "fileId" Text :>
           "realtime" :>
             QueryParam "revision" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" Media :> Get '[OctetStream] Stream

-- | Exports the contents of the Realtime API data model associated with this
-- file as JSON.
--
-- /See:/ 'realtimeGet'' smart constructor.
data RealtimeGet' = RealtimeGet'
    { _reaQuotaUser   :: !(Maybe Text)
    , _reaPrettyPrint :: !Bool
    , _reaUserIP      :: !(Maybe Text)
    , _reaKey         :: !(Maybe Key)
    , _reaFileId      :: !Text
    , _reaOAuthToken  :: !(Maybe OAuthToken)
    , _reaRevision    :: !(Maybe Int32)
    , _reaFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaQuotaUser'
--
-- * 'reaPrettyPrint'
--
-- * 'reaUserIP'
--
-- * 'reaKey'
--
-- * 'reaFileId'
--
-- * 'reaOAuthToken'
--
-- * 'reaRevision'
--
-- * 'reaFields'
realtimeGet'
    :: Text -- ^ 'fileId'
    -> RealtimeGet'
realtimeGet' pReaFileId_ =
    RealtimeGet'
    { _reaQuotaUser = Nothing
    , _reaPrettyPrint = True
    , _reaUserIP = Nothing
    , _reaKey = Nothing
    , _reaFileId = pReaFileId_
    , _reaOAuthToken = Nothing
    , _reaRevision = Nothing
    , _reaFields = Nothing
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
reaUserIP :: Lens' RealtimeGet' (Maybe Text)
reaUserIP
  = lens _reaUserIP (\ s a -> s{_reaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
reaKey :: Lens' RealtimeGet' (Maybe Key)
reaKey = lens _reaKey (\ s a -> s{_reaKey = a})

-- | The ID of the file that the Realtime API data model is associated with.
reaFileId :: Lens' RealtimeGet' Text
reaFileId
  = lens _reaFileId (\ s a -> s{_reaFileId = a})

-- | OAuth 2.0 token for the current user.
reaOAuthToken :: Lens' RealtimeGet' (Maybe OAuthToken)
reaOAuthToken
  = lens _reaOAuthToken
      (\ s a -> s{_reaOAuthToken = a})

-- | The revision of the Realtime API data model to export. Revisions start
-- at 1 (the initial empty data model) and are incremented with each
-- change. If this parameter is excluded, the most recent data model will
-- be returned.
reaRevision :: Lens' RealtimeGet' (Maybe Int32)
reaRevision
  = lens _reaRevision (\ s a -> s{_reaRevision = a})

-- | Selector specifying which fields to include in a partial response.
reaFields :: Lens' RealtimeGet' (Maybe Text)
reaFields
  = lens _reaFields (\ s a -> s{_reaFields = a})

instance GoogleAuth RealtimeGet' where
        authKey = reaKey . _Just
        authToken = reaOAuthToken . _Just

instance GoogleRequest RealtimeGet' where
        type Rs RealtimeGet' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RealtimeGet'{..}
          = go _reaRevision _reaFileId _reaQuotaUser
              (Just _reaPrettyPrint)
              _reaUserIP
              _reaFields
              _reaKey
              _reaOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy RealtimeGetResource)
                      r
                      u

instance GoogleRequest RealtimeGet' where
        type Rs (Download RealtimeGet') = Stream
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RealtimeGet'{..}
          = go _reaRevision _reaFileId _reaQuotaUser
              (Just _reaPrettyPrint)
              _reaUserIP
              _reaFields
              _reaKey
              _reaOAuthToken
              (Just Media)
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy RealtimeGetResource)
                      r
                      u

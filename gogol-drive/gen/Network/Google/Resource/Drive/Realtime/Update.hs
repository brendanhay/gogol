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
    , rUserIP
    , rBaseRevision
    , rMedia
    , rKey
    , rFileId
    , rOAuthToken
    , rFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRealtimeUpdate@ which the
-- 'RealtimeUpdate'' request conforms to.
type RealtimeUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "realtime" :>
           QueryParam "baseRevision" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] Body :> Put '[JSON] ()

-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ 'realtimeUpdate'' smart constructor.
data RealtimeUpdate' = RealtimeUpdate'
    { _rQuotaUser    :: !(Maybe Text)
    , _rPrettyPrint  :: !Bool
    , _rUserIP       :: !(Maybe Text)
    , _rBaseRevision :: !(Maybe Text)
    , _rMedia        :: !Body
    , _rKey          :: !(Maybe AuthKey)
    , _rFileId       :: !Text
    , _rOAuthToken   :: !(Maybe OAuthToken)
    , _rFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIP'
--
-- * 'rBaseRevision'
--
-- * 'rMedia'
--
-- * 'rKey'
--
-- * 'rFileId'
--
-- * 'rOAuthToken'
--
-- * 'rFields'
realtimeUpdate'
    :: Body -- ^ 'media'
    -> Text -- ^ 'fileId'
    -> RealtimeUpdate'
realtimeUpdate' pRMedia_ pRFileId_ =
    RealtimeUpdate'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIP = Nothing
    , _rBaseRevision = Nothing
    , _rMedia = pRMedia_
    , _rKey = Nothing
    , _rFileId = pRFileId_
    , _rOAuthToken = Nothing
    , _rFields = Nothing
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
rUserIP :: Lens' RealtimeUpdate' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | The revision of the model to diff the uploaded model against. If set,
-- the uploaded model is diffed against the provided revision and those
-- differences are merged with any changes made to the model after the
-- provided revision. If not set, the uploaded model replaces the current
-- model on the server.
rBaseRevision :: Lens' RealtimeUpdate' (Maybe Text)
rBaseRevision
  = lens _rBaseRevision
      (\ s a -> s{_rBaseRevision = a})

rMedia :: Lens' RealtimeUpdate' Body
rMedia = lens _rMedia (\ s a -> s{_rMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RealtimeUpdate' (Maybe AuthKey)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The ID of the file that the Realtime API data model is associated with.
rFileId :: Lens' RealtimeUpdate' Text
rFileId = lens _rFileId (\ s a -> s{_rFileId = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' RealtimeUpdate' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RealtimeUpdate' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth RealtimeUpdate' where
        authKey = rKey . _Just
        authToken = rOAuthToken . _Just

instance GoogleRequest RealtimeUpdate' where
        type Rs RealtimeUpdate' = ()
        request = requestWith driveRequest
        requestWith rq RealtimeUpdate'{..}
          = go _rFileId _rBaseRevision _rQuotaUser
              (Just _rPrettyPrint)
              _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
              _rMedia
          where go
                  = clientBuild (Proxy :: Proxy RealtimeUpdateResource)
                      rq

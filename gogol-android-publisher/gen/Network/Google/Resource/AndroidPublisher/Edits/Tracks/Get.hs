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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTracksGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get
    (
    -- * REST Resource
      EditsTracksGetResource

    -- * Creating a Request
    , editsTracksGet'
    , EditsTracksGet'

    -- * Request Lenses
    , etgQuotaUser
    , etgTrack
    , etgPrettyPrint
    , etgPackageName
    , etgUserIP
    , etgKey
    , etgOAuthToken
    , etgEditId
    , etgFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTracksGet@ which the
-- 'EditsTracksGet'' request conforms to.
type EditsTracksGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track" EditsTracksGetTrack :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Track

-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ 'editsTracksGet'' smart constructor.
data EditsTracksGet' = EditsTracksGet'
    { _etgQuotaUser   :: !(Maybe Text)
    , _etgTrack       :: !EditsTracksGetTrack
    , _etgPrettyPrint :: !Bool
    , _etgPackageName :: !Text
    , _etgUserIP      :: !(Maybe Text)
    , _etgKey         :: !(Maybe Key)
    , _etgOAuthToken  :: !(Maybe OAuthToken)
    , _etgEditId      :: !Text
    , _etgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgQuotaUser'
--
-- * 'etgTrack'
--
-- * 'etgPrettyPrint'
--
-- * 'etgPackageName'
--
-- * 'etgUserIP'
--
-- * 'etgKey'
--
-- * 'etgOAuthToken'
--
-- * 'etgEditId'
--
-- * 'etgFields'
editsTracksGet'
    :: EditsTracksGetTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksGet'
editsTracksGet' pEtgTrack_ pEtgPackageName_ pEtgEditId_ =
    EditsTracksGet'
    { _etgQuotaUser = Nothing
    , _etgTrack = pEtgTrack_
    , _etgPrettyPrint = True
    , _etgPackageName = pEtgPackageName_
    , _etgUserIP = Nothing
    , _etgKey = Nothing
    , _etgOAuthToken = Nothing
    , _etgEditId = pEtgEditId_
    , _etgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etgQuotaUser :: Lens' EditsTracksGet' (Maybe Text)
etgQuotaUser
  = lens _etgQuotaUser (\ s a -> s{_etgQuotaUser = a})

-- | The track type to read or modify.
etgTrack :: Lens' EditsTracksGet' EditsTracksGetTrack
etgTrack = lens _etgTrack (\ s a -> s{_etgTrack = a})

-- | Returns response with indentations and line breaks.
etgPrettyPrint :: Lens' EditsTracksGet' Bool
etgPrettyPrint
  = lens _etgPrettyPrint
      (\ s a -> s{_etgPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etgPackageName :: Lens' EditsTracksGet' Text
etgPackageName
  = lens _etgPackageName
      (\ s a -> s{_etgPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etgUserIP :: Lens' EditsTracksGet' (Maybe Text)
etgUserIP
  = lens _etgUserIP (\ s a -> s{_etgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etgKey :: Lens' EditsTracksGet' (Maybe Key)
etgKey = lens _etgKey (\ s a -> s{_etgKey = a})

-- | OAuth 2.0 token for the current user.
etgOAuthToken :: Lens' EditsTracksGet' (Maybe OAuthToken)
etgOAuthToken
  = lens _etgOAuthToken
      (\ s a -> s{_etgOAuthToken = a})

-- | Unique identifier for this edit.
etgEditId :: Lens' EditsTracksGet' Text
etgEditId
  = lens _etgEditId (\ s a -> s{_etgEditId = a})

-- | Selector specifying which fields to include in a partial response.
etgFields :: Lens' EditsTracksGet' (Maybe Text)
etgFields
  = lens _etgFields (\ s a -> s{_etgFields = a})

instance GoogleAuth EditsTracksGet' where
        authKey = etgKey . _Just
        authToken = etgOAuthToken . _Just

instance GoogleRequest EditsTracksGet' where
        type Rs EditsTracksGet' = Track
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsTracksGet'{..}
          = go _etgPackageName _etgEditId _etgTrack
              _etgQuotaUser
              (Just _etgPrettyPrint)
              _etgUserIP
              _etgFields
              _etgKey
              _etgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksGetResource)
                      r
                      u

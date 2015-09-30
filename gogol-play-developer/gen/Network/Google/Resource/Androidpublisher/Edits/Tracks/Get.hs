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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Tracks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsTracksGet@.
module Network.Google.Resource.Androidpublisher.Edits.Tracks.Get
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
    , etgUserIp
    , etgKey
    , etgOauthToken
    , etgEditId
    , etgFields
    , etgAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsTracksGet@ which the
-- 'EditsTracksGet'' request conforms to.
type EditsTracksGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track" AndroidpublisherEditsTracksGetTrack
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Track

-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ 'editsTracksGet'' smart constructor.
data EditsTracksGet' = EditsTracksGet'
    { _etgQuotaUser   :: !(Maybe Text)
    , _etgTrack       :: !AndroidpublisherEditsTracksGetTrack
    , _etgPrettyPrint :: !Bool
    , _etgPackageName :: !Text
    , _etgUserIp      :: !(Maybe Text)
    , _etgKey         :: !(Maybe Text)
    , _etgOauthToken  :: !(Maybe Text)
    , _etgEditId      :: !Text
    , _etgFields      :: !(Maybe Text)
    , _etgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'etgUserIp'
--
-- * 'etgKey'
--
-- * 'etgOauthToken'
--
-- * 'etgEditId'
--
-- * 'etgFields'
--
-- * 'etgAlt'
editsTracksGet'
    :: AndroidpublisherEditsTracksGetTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksGet'
editsTracksGet' pEtgTrack_ pEtgPackageName_ pEtgEditId_ =
    EditsTracksGet'
    { _etgQuotaUser = Nothing
    , _etgTrack = pEtgTrack_
    , _etgPrettyPrint = True
    , _etgPackageName = pEtgPackageName_
    , _etgUserIp = Nothing
    , _etgKey = Nothing
    , _etgOauthToken = Nothing
    , _etgEditId = pEtgEditId_
    , _etgFields = Nothing
    , _etgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etgQuotaUser :: Lens' EditsTracksGet' (Maybe Text)
etgQuotaUser
  = lens _etgQuotaUser (\ s a -> s{_etgQuotaUser = a})

-- | The track type to read or modify.
etgTrack :: Lens' EditsTracksGet' AndroidpublisherEditsTracksGetTrack
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
etgUserIp :: Lens' EditsTracksGet' (Maybe Text)
etgUserIp
  = lens _etgUserIp (\ s a -> s{_etgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etgKey :: Lens' EditsTracksGet' (Maybe Text)
etgKey = lens _etgKey (\ s a -> s{_etgKey = a})

-- | OAuth 2.0 token for the current user.
etgOauthToken :: Lens' EditsTracksGet' (Maybe Text)
etgOauthToken
  = lens _etgOauthToken
      (\ s a -> s{_etgOauthToken = a})

-- | Unique identifier for this edit.
etgEditId :: Lens' EditsTracksGet' Text
etgEditId
  = lens _etgEditId (\ s a -> s{_etgEditId = a})

-- | Selector specifying which fields to include in a partial response.
etgFields :: Lens' EditsTracksGet' (Maybe Text)
etgFields
  = lens _etgFields (\ s a -> s{_etgFields = a})

-- | Data format for the response.
etgAlt :: Lens' EditsTracksGet' Alt
etgAlt = lens _etgAlt (\ s a -> s{_etgAlt = a})

instance GoogleRequest EditsTracksGet' where
        type Rs EditsTracksGet' = Track
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTracksGet'{..}
          = go _etgQuotaUser _etgTrack (Just _etgPrettyPrint)
              _etgPackageName
              _etgUserIp
              _etgKey
              _etgOauthToken
              _etgEditId
              _etgFields
              (Just _etgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksGetResource)
                      r
                      u

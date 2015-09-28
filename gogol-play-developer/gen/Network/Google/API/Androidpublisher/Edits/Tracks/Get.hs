{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Tracks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.tracks.get@.
module Network.Google.API.Androidpublisher.Edits.Tracks.Get
    (
    -- * REST Resource
      EditsTracksGetAPI

    -- * Creating a Request
    , editsTracksGet'
    , EditsTracksGet'

    -- * Request Lenses
    , eQuotaUser
    , eTrack
    , ePrettyPrint
    , ePackageName
    , eUserIp
    , eKey
    , eOauthToken
    , eEditId
    , eFields
    , eAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.tracks.get which the
-- 'EditsTracksGet'' request conforms to.
type EditsTracksGetAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track" EditsTracksGet'Track :>
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
    { _eQuotaUser   :: !(Maybe Text)
    , _eTrack       :: !EditsTracksGet'Track
    , _ePrettyPrint :: !Bool
    , _ePackageName :: !Text
    , _eUserIp      :: !(Maybe Text)
    , _eKey         :: !(Maybe Text)
    , _eOauthToken  :: !(Maybe Text)
    , _eEditId      :: !Text
    , _eFields      :: !(Maybe Text)
    , _eAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eQuotaUser'
--
-- * 'eTrack'
--
-- * 'ePrettyPrint'
--
-- * 'ePackageName'
--
-- * 'eUserIp'
--
-- * 'eKey'
--
-- * 'eOauthToken'
--
-- * 'eEditId'
--
-- * 'eFields'
--
-- * 'eAlt'
editsTracksGet'
    :: EditsTracksGet'Track -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksGet'
editsTracksGet' pETrack_ pEPackageName_ pEEditId_ =
    EditsTracksGet'
    { _eQuotaUser = Nothing
    , _eTrack = pETrack_
    , _ePrettyPrint = True
    , _ePackageName = pEPackageName_
    , _eUserIp = Nothing
    , _eKey = Nothing
    , _eOauthToken = Nothing
    , _eEditId = pEEditId_
    , _eFields = Nothing
    , _eAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eQuotaUser :: Lens' EditsTracksGet' (Maybe Text)
eQuotaUser
  = lens _eQuotaUser (\ s a -> s{_eQuotaUser = a})

-- | The track type to read or modify.
eTrack :: Lens' EditsTracksGet' EditsTracksGet'Track
eTrack = lens _eTrack (\ s a -> s{_eTrack = a})

-- | Returns response with indentations and line breaks.
ePrettyPrint :: Lens' EditsTracksGet' Bool
ePrettyPrint
  = lens _ePrettyPrint (\ s a -> s{_ePrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ePackageName :: Lens' EditsTracksGet' Text
ePackageName
  = lens _ePackageName (\ s a -> s{_ePackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eUserIp :: Lens' EditsTracksGet' (Maybe Text)
eUserIp = lens _eUserIp (\ s a -> s{_eUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eKey :: Lens' EditsTracksGet' (Maybe Text)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | OAuth 2.0 token for the current user.
eOauthToken :: Lens' EditsTracksGet' (Maybe Text)
eOauthToken
  = lens _eOauthToken (\ s a -> s{_eOauthToken = a})

-- | Unique identifier for this edit.
eEditId :: Lens' EditsTracksGet' Text
eEditId = lens _eEditId (\ s a -> s{_eEditId = a})

-- | Selector specifying which fields to include in a partial response.
eFields :: Lens' EditsTracksGet' (Maybe Text)
eFields = lens _eFields (\ s a -> s{_eFields = a})

-- | Data format for the response.
eAlt :: Lens' EditsTracksGet' Alt
eAlt = lens _eAlt (\ s a -> s{_eAlt = a})

instance GoogleRequest EditsTracksGet' where
        type Rs EditsTracksGet' = Track
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTracksGet'{..}
          = go _eQuotaUser _eTrack (Just _ePrettyPrint)
              _ePackageName
              _eUserIp
              _eKey
              _eOauthToken
              _eEditId
              _eFields
              (Just _eAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EditsTracksGetAPI)
                      r
                      u

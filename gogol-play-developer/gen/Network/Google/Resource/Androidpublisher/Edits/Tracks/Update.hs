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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Tracks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsTracksUpdate@.
module Network.Google.Resource.Androidpublisher.Edits.Tracks.Update
    (
    -- * REST Resource
      EditsTracksUpdateResource

    -- * Creating a Request
    , editsTracksUpdate'
    , EditsTracksUpdate'

    -- * Request Lenses
    , etuQuotaUser
    , etuTrack
    , etuPrettyPrint
    , etuPackageName
    , etuUserIp
    , etuKey
    , etuOauthToken
    , etuEditId
    , etuFields
    , etuAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsTracksUpdate@ which the
-- 'EditsTracksUpdate'' request conforms to.
type EditsTracksUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track"
               AndroidpublisherEditsTracksUpdateTrack
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] Track

-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume.
--
-- /See:/ 'editsTracksUpdate'' smart constructor.
data EditsTracksUpdate' = EditsTracksUpdate'
    { _etuQuotaUser   :: !(Maybe Text)
    , _etuTrack       :: !AndroidpublisherEditsTracksUpdateTrack
    , _etuPrettyPrint :: !Bool
    , _etuPackageName :: !Text
    , _etuUserIp      :: !(Maybe Text)
    , _etuKey         :: !(Maybe Text)
    , _etuOauthToken  :: !(Maybe Text)
    , _etuEditId      :: !Text
    , _etuFields      :: !(Maybe Text)
    , _etuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuQuotaUser'
--
-- * 'etuTrack'
--
-- * 'etuPrettyPrint'
--
-- * 'etuPackageName'
--
-- * 'etuUserIp'
--
-- * 'etuKey'
--
-- * 'etuOauthToken'
--
-- * 'etuEditId'
--
-- * 'etuFields'
--
-- * 'etuAlt'
editsTracksUpdate'
    :: AndroidpublisherEditsTracksUpdateTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksUpdate'
editsTracksUpdate' pEtuTrack_ pEtuPackageName_ pEtuEditId_ =
    EditsTracksUpdate'
    { _etuQuotaUser = Nothing
    , _etuTrack = pEtuTrack_
    , _etuPrettyPrint = True
    , _etuPackageName = pEtuPackageName_
    , _etuUserIp = Nothing
    , _etuKey = Nothing
    , _etuOauthToken = Nothing
    , _etuEditId = pEtuEditId_
    , _etuFields = Nothing
    , _etuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etuQuotaUser :: Lens' EditsTracksUpdate' (Maybe Text)
etuQuotaUser
  = lens _etuQuotaUser (\ s a -> s{_etuQuotaUser = a})

-- | The track type to read or modify.
etuTrack :: Lens' EditsTracksUpdate' AndroidpublisherEditsTracksUpdateTrack
etuTrack = lens _etuTrack (\ s a -> s{_etuTrack = a})

-- | Returns response with indentations and line breaks.
etuPrettyPrint :: Lens' EditsTracksUpdate' Bool
etuPrettyPrint
  = lens _etuPrettyPrint
      (\ s a -> s{_etuPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etuPackageName :: Lens' EditsTracksUpdate' Text
etuPackageName
  = lens _etuPackageName
      (\ s a -> s{_etuPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etuUserIp :: Lens' EditsTracksUpdate' (Maybe Text)
etuUserIp
  = lens _etuUserIp (\ s a -> s{_etuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etuKey :: Lens' EditsTracksUpdate' (Maybe Text)
etuKey = lens _etuKey (\ s a -> s{_etuKey = a})

-- | OAuth 2.0 token for the current user.
etuOauthToken :: Lens' EditsTracksUpdate' (Maybe Text)
etuOauthToken
  = lens _etuOauthToken
      (\ s a -> s{_etuOauthToken = a})

-- | Unique identifier for this edit.
etuEditId :: Lens' EditsTracksUpdate' Text
etuEditId
  = lens _etuEditId (\ s a -> s{_etuEditId = a})

-- | Selector specifying which fields to include in a partial response.
etuFields :: Lens' EditsTracksUpdate' (Maybe Text)
etuFields
  = lens _etuFields (\ s a -> s{_etuFields = a})

-- | Data format for the response.
etuAlt :: Lens' EditsTracksUpdate' Alt
etuAlt = lens _etuAlt (\ s a -> s{_etuAlt = a})

instance GoogleRequest EditsTracksUpdate' where
        type Rs EditsTracksUpdate' = Track
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTracksUpdate'{..}
          = go _etuQuotaUser _etuTrack (Just _etuPrettyPrint)
              _etuPackageName
              _etuUserIp
              _etuKey
              _etuOauthToken
              _etuEditId
              _etuFields
              (Just _etuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksUpdateResource)
                      r
                      u

{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Tracks.Update
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.tracks.update@.
module Network.Google.API.Androidpublisher.Edits.Tracks.Update
    (
    -- * REST Resource
      EditsTracksUpdateAPI

    -- * Creating a Request
    , editsTracksUpdate'
    , EditsTracksUpdate'

    -- * Request Lenses
    , etutQuotaUser
    , etutTrack
    , etutPrettyPrint
    , etutPackageName
    , etutUserIp
    , etutKey
    , etutOauthToken
    , etutEditId
    , etutFields
    , etutAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.tracks.update which the
-- 'EditsTracksUpdate'' request conforms to.
type EditsTracksUpdateAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track" EditsTracksUpdate'Track :>
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
    { _etutQuotaUser   :: !(Maybe Text)
    , _etutTrack       :: !EditsTracksUpdate'Track
    , _etutPrettyPrint :: !Bool
    , _etutPackageName :: !Text
    , _etutUserIp      :: !(Maybe Text)
    , _etutKey         :: !(Maybe Text)
    , _etutOauthToken  :: !(Maybe Text)
    , _etutEditId      :: !Text
    , _etutFields      :: !(Maybe Text)
    , _etutAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etutQuotaUser'
--
-- * 'etutTrack'
--
-- * 'etutPrettyPrint'
--
-- * 'etutPackageName'
--
-- * 'etutUserIp'
--
-- * 'etutKey'
--
-- * 'etutOauthToken'
--
-- * 'etutEditId'
--
-- * 'etutFields'
--
-- * 'etutAlt'
editsTracksUpdate'
    :: EditsTracksUpdate'Track -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksUpdate'
editsTracksUpdate' pEtutTrack_ pEtutPackageName_ pEtutEditId_ =
    EditsTracksUpdate'
    { _etutQuotaUser = Nothing
    , _etutTrack = pEtutTrack_
    , _etutPrettyPrint = True
    , _etutPackageName = pEtutPackageName_
    , _etutUserIp = Nothing
    , _etutKey = Nothing
    , _etutOauthToken = Nothing
    , _etutEditId = pEtutEditId_
    , _etutFields = Nothing
    , _etutAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etutQuotaUser :: Lens' EditsTracksUpdate' (Maybe Text)
etutQuotaUser
  = lens _etutQuotaUser
      (\ s a -> s{_etutQuotaUser = a})

-- | The track type to read or modify.
etutTrack :: Lens' EditsTracksUpdate' EditsTracksUpdate'Track
etutTrack
  = lens _etutTrack (\ s a -> s{_etutTrack = a})

-- | Returns response with indentations and line breaks.
etutPrettyPrint :: Lens' EditsTracksUpdate' Bool
etutPrettyPrint
  = lens _etutPrettyPrint
      (\ s a -> s{_etutPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etutPackageName :: Lens' EditsTracksUpdate' Text
etutPackageName
  = lens _etutPackageName
      (\ s a -> s{_etutPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etutUserIp :: Lens' EditsTracksUpdate' (Maybe Text)
etutUserIp
  = lens _etutUserIp (\ s a -> s{_etutUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etutKey :: Lens' EditsTracksUpdate' (Maybe Text)
etutKey = lens _etutKey (\ s a -> s{_etutKey = a})

-- | OAuth 2.0 token for the current user.
etutOauthToken :: Lens' EditsTracksUpdate' (Maybe Text)
etutOauthToken
  = lens _etutOauthToken
      (\ s a -> s{_etutOauthToken = a})

-- | Unique identifier for this edit.
etutEditId :: Lens' EditsTracksUpdate' Text
etutEditId
  = lens _etutEditId (\ s a -> s{_etutEditId = a})

-- | Selector specifying which fields to include in a partial response.
etutFields :: Lens' EditsTracksUpdate' (Maybe Text)
etutFields
  = lens _etutFields (\ s a -> s{_etutFields = a})

-- | Data format for the response.
etutAlt :: Lens' EditsTracksUpdate' Alt
etutAlt = lens _etutAlt (\ s a -> s{_etutAlt = a})

instance GoogleRequest EditsTracksUpdate' where
        type Rs EditsTracksUpdate' = Track
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTracksUpdate'{..}
          = go _etutQuotaUser _etutTrack
              (Just _etutPrettyPrint)
              _etutPackageName
              _etutUserIp
              _etutKey
              _etutOauthToken
              _etutEditId
              _etutFields
              (Just _etutAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksUpdateAPI)
                      r
                      u

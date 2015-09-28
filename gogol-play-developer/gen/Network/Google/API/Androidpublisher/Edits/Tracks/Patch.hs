{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Tracks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.tracks.patch@.
module Network.Google.API.Androidpublisher.Edits.Tracks.Patch
    (
    -- * REST Resource
      EditsTracksPatchAPI

    -- * Creating a Request
    , editsTracksPatch'
    , EditsTracksPatch'

    -- * Request Lenses
    , ediQuotaUser
    , ediTrack
    , ediPrettyPrint
    , ediPackageName
    , ediUserIp
    , ediKey
    , ediOauthToken
    , ediEditId
    , ediFields
    , ediAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.tracks.patch which the
-- 'EditsTracksPatch'' request conforms to.
type EditsTracksPatchAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track" EditsTracksPatch'Track :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Patch '[JSON] Track

-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume. This method supports patch
-- semantics.
--
-- /See:/ 'editsTracksPatch'' smart constructor.
data EditsTracksPatch' = EditsTracksPatch'
    { _ediQuotaUser   :: !(Maybe Text)
    , _ediTrack       :: !EditsTracksPatch'Track
    , _ediPrettyPrint :: !Bool
    , _ediPackageName :: !Text
    , _ediUserIp      :: !(Maybe Text)
    , _ediKey         :: !(Maybe Text)
    , _ediOauthToken  :: !(Maybe Text)
    , _ediEditId      :: !Text
    , _ediFields      :: !(Maybe Text)
    , _ediAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ediQuotaUser'
--
-- * 'ediTrack'
--
-- * 'ediPrettyPrint'
--
-- * 'ediPackageName'
--
-- * 'ediUserIp'
--
-- * 'ediKey'
--
-- * 'ediOauthToken'
--
-- * 'ediEditId'
--
-- * 'ediFields'
--
-- * 'ediAlt'
editsTracksPatch'
    :: EditsTracksPatch'Track -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksPatch'
editsTracksPatch' pEdiTrack_ pEdiPackageName_ pEdiEditId_ =
    EditsTracksPatch'
    { _ediQuotaUser = Nothing
    , _ediTrack = pEdiTrack_
    , _ediPrettyPrint = True
    , _ediPackageName = pEdiPackageName_
    , _ediUserIp = Nothing
    , _ediKey = Nothing
    , _ediOauthToken = Nothing
    , _ediEditId = pEdiEditId_
    , _ediFields = Nothing
    , _ediAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ediQuotaUser :: Lens' EditsTracksPatch' (Maybe Text)
ediQuotaUser
  = lens _ediQuotaUser (\ s a -> s{_ediQuotaUser = a})

-- | The track type to read or modify.
ediTrack :: Lens' EditsTracksPatch' EditsTracksPatch'Track
ediTrack = lens _ediTrack (\ s a -> s{_ediTrack = a})

-- | Returns response with indentations and line breaks.
ediPrettyPrint :: Lens' EditsTracksPatch' Bool
ediPrettyPrint
  = lens _ediPrettyPrint
      (\ s a -> s{_ediPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ediPackageName :: Lens' EditsTracksPatch' Text
ediPackageName
  = lens _ediPackageName
      (\ s a -> s{_ediPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ediUserIp :: Lens' EditsTracksPatch' (Maybe Text)
ediUserIp
  = lens _ediUserIp (\ s a -> s{_ediUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ediKey :: Lens' EditsTracksPatch' (Maybe Text)
ediKey = lens _ediKey (\ s a -> s{_ediKey = a})

-- | OAuth 2.0 token for the current user.
ediOauthToken :: Lens' EditsTracksPatch' (Maybe Text)
ediOauthToken
  = lens _ediOauthToken
      (\ s a -> s{_ediOauthToken = a})

-- | Unique identifier for this edit.
ediEditId :: Lens' EditsTracksPatch' Text
ediEditId
  = lens _ediEditId (\ s a -> s{_ediEditId = a})

-- | Selector specifying which fields to include in a partial response.
ediFields :: Lens' EditsTracksPatch' (Maybe Text)
ediFields
  = lens _ediFields (\ s a -> s{_ediFields = a})

-- | Data format for the response.
ediAlt :: Lens' EditsTracksPatch' Alt
ediAlt = lens _ediAlt (\ s a -> s{_ediAlt = a})

instance GoogleRequest EditsTracksPatch' where
        type Rs EditsTracksPatch' = Track
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTracksPatch'{..}
          = go _ediQuotaUser _ediTrack (Just _ediPrettyPrint)
              _ediPackageName
              _ediUserIp
              _ediKey
              _ediOauthToken
              _ediEditId
              _ediFields
              (Just _ediAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksPatchAPI)
                      r
                      u

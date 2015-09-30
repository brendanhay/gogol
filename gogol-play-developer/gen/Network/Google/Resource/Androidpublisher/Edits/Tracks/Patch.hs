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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Tracks.Patch
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsTracksPatch@.
module Network.Google.Resource.Androidpublisher.Edits.Tracks.Patch
    (
    -- * REST Resource
      EditsTracksPatchResource

    -- * Creating a Request
    , editsTracksPatch'
    , EditsTracksPatch'

    -- * Request Lenses
    , etpQuotaUser
    , etpTrack
    , etpPrettyPrint
    , etpPackageName
    , etpUserIp
    , etpKey
    , etpOauthToken
    , etpEditId
    , etpFields
    , etpAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsTracksPatch@ which the
-- 'EditsTracksPatch'' request conforms to.
type EditsTracksPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track" AndroidpublisherEditsTracksPatchTrack
               :>
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
    { _etpQuotaUser   :: !(Maybe Text)
    , _etpTrack       :: !AndroidpublisherEditsTracksPatchTrack
    , _etpPrettyPrint :: !Bool
    , _etpPackageName :: !Text
    , _etpUserIp      :: !(Maybe Text)
    , _etpKey         :: !(Maybe Text)
    , _etpOauthToken  :: !(Maybe Text)
    , _etpEditId      :: !Text
    , _etpFields      :: !(Maybe Text)
    , _etpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etpQuotaUser'
--
-- * 'etpTrack'
--
-- * 'etpPrettyPrint'
--
-- * 'etpPackageName'
--
-- * 'etpUserIp'
--
-- * 'etpKey'
--
-- * 'etpOauthToken'
--
-- * 'etpEditId'
--
-- * 'etpFields'
--
-- * 'etpAlt'
editsTracksPatch'
    :: AndroidpublisherEditsTracksPatchTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksPatch'
editsTracksPatch' pEtpTrack_ pEtpPackageName_ pEtpEditId_ =
    EditsTracksPatch'
    { _etpQuotaUser = Nothing
    , _etpTrack = pEtpTrack_
    , _etpPrettyPrint = True
    , _etpPackageName = pEtpPackageName_
    , _etpUserIp = Nothing
    , _etpKey = Nothing
    , _etpOauthToken = Nothing
    , _etpEditId = pEtpEditId_
    , _etpFields = Nothing
    , _etpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etpQuotaUser :: Lens' EditsTracksPatch' (Maybe Text)
etpQuotaUser
  = lens _etpQuotaUser (\ s a -> s{_etpQuotaUser = a})

-- | The track type to read or modify.
etpTrack :: Lens' EditsTracksPatch' AndroidpublisherEditsTracksPatchTrack
etpTrack = lens _etpTrack (\ s a -> s{_etpTrack = a})

-- | Returns response with indentations and line breaks.
etpPrettyPrint :: Lens' EditsTracksPatch' Bool
etpPrettyPrint
  = lens _etpPrettyPrint
      (\ s a -> s{_etpPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etpPackageName :: Lens' EditsTracksPatch' Text
etpPackageName
  = lens _etpPackageName
      (\ s a -> s{_etpPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etpUserIp :: Lens' EditsTracksPatch' (Maybe Text)
etpUserIp
  = lens _etpUserIp (\ s a -> s{_etpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etpKey :: Lens' EditsTracksPatch' (Maybe Text)
etpKey = lens _etpKey (\ s a -> s{_etpKey = a})

-- | OAuth 2.0 token for the current user.
etpOauthToken :: Lens' EditsTracksPatch' (Maybe Text)
etpOauthToken
  = lens _etpOauthToken
      (\ s a -> s{_etpOauthToken = a})

-- | Unique identifier for this edit.
etpEditId :: Lens' EditsTracksPatch' Text
etpEditId
  = lens _etpEditId (\ s a -> s{_etpEditId = a})

-- | Selector specifying which fields to include in a partial response.
etpFields :: Lens' EditsTracksPatch' (Maybe Text)
etpFields
  = lens _etpFields (\ s a -> s{_etpFields = a})

-- | Data format for the response.
etpAlt :: Lens' EditsTracksPatch' Alt
etpAlt = lens _etpAlt (\ s a -> s{_etpAlt = a})

instance GoogleRequest EditsTracksPatch' where
        type Rs EditsTracksPatch' = Track
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTracksPatch'{..}
          = go _etpQuotaUser _etpTrack (Just _etpPrettyPrint)
              _etpPackageName
              _etpUserIp
              _etpKey
              _etpOauthToken
              _etpEditId
              _etpFields
              (Just _etpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksPatchResource)
                      r
                      u

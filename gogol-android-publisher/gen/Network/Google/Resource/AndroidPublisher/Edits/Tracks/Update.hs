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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Tracks.Update
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTracksUpdate@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Update
    (
    -- * REST Resource
      EditsTracksUpdateResource

    -- * Creating a Request
    , editsTracksUpdate'
    , EditsTracksUpdate'

    -- * Request Lenses
    , etuQuotaUser
    , etuTrack
    , etuTrack
    , etuPrettyPrint
    , etuPackageName
    , etuUserIP
    , etuKey
    , etuOAuthToken
    , etuEditId
    , etuFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTracksUpdate@ which the
-- 'EditsTracksUpdate'' request conforms to.
type EditsTracksUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track"
               AndroidPublisherEditsTracksUpdateTrack
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Track :> Put '[JSON] Track

-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume.
--
-- /See:/ 'editsTracksUpdate'' smart constructor.
data EditsTracksUpdate' = EditsTracksUpdate'
    { _etuQuotaUser   :: !(Maybe Text)
    , _etuTrack       :: !AndroidPublisherEditsTracksUpdateTrack
    , _etuTrack       :: !Track
    , _etuPrettyPrint :: !Bool
    , _etuPackageName :: !Text
    , _etuUserIP      :: !(Maybe Text)
    , _etuKey         :: !(Maybe Key)
    , _etuOAuthToken  :: !(Maybe OAuthToken)
    , _etuEditId      :: !Text
    , _etuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuQuotaUser'
--
-- * 'etuTrack'
--
-- * 'etuTrack'
--
-- * 'etuPrettyPrint'
--
-- * 'etuPackageName'
--
-- * 'etuUserIP'
--
-- * 'etuKey'
--
-- * 'etuOAuthToken'
--
-- * 'etuEditId'
--
-- * 'etuFields'
editsTracksUpdate'
    :: AndroidPublisherEditsTracksUpdateTrack -- ^ 'track'
    -> Track -- ^ 'Track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksUpdate'
editsTracksUpdate' pEtuTrack_ pEtuTrack_ pEtuPackageName_ pEtuEditId_ =
    EditsTracksUpdate'
    { _etuQuotaUser = Nothing
    , _etuTrack = pEtuTrack_
    , _etuTrack = pEtuTrack_
    , _etuPrettyPrint = True
    , _etuPackageName = pEtuPackageName_
    , _etuUserIP = Nothing
    , _etuKey = Nothing
    , _etuOAuthToken = Nothing
    , _etuEditId = pEtuEditId_
    , _etuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etuQuotaUser :: Lens' EditsTracksUpdate' (Maybe Text)
etuQuotaUser
  = lens _etuQuotaUser (\ s a -> s{_etuQuotaUser = a})

-- | The track type to read or modify.
etuTrack :: Lens' EditsTracksUpdate' AndroidPublisherEditsTracksUpdateTrack
etuTrack = lens _etuTrack (\ s a -> s{_etuTrack = a})

-- | Multipart request metadata.
etuTrack :: Lens' EditsTracksUpdate' Track
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
etuUserIP :: Lens' EditsTracksUpdate' (Maybe Text)
etuUserIP
  = lens _etuUserIP (\ s a -> s{_etuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etuKey :: Lens' EditsTracksUpdate' (Maybe Key)
etuKey = lens _etuKey (\ s a -> s{_etuKey = a})

-- | OAuth 2.0 token for the current user.
etuOAuthToken :: Lens' EditsTracksUpdate' (Maybe OAuthToken)
etuOAuthToken
  = lens _etuOAuthToken
      (\ s a -> s{_etuOAuthToken = a})

-- | Unique identifier for this edit.
etuEditId :: Lens' EditsTracksUpdate' Text
etuEditId
  = lens _etuEditId (\ s a -> s{_etuEditId = a})

-- | Selector specifying which fields to include in a partial response.
etuFields :: Lens' EditsTracksUpdate' (Maybe Text)
etuFields
  = lens _etuFields (\ s a -> s{_etuFields = a})

instance GoogleAuth EditsTracksUpdate' where
        authKey = etuKey . _Just
        authToken = etuOAuthToken . _Just

instance GoogleRequest EditsTracksUpdate' where
        type Rs EditsTracksUpdate' = Track
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsTracksUpdate'{..}
          = go _etuQuotaUser _etuTrack (Just _etuPrettyPrint)
              _etuPackageName
              _etuUserIP
              _etuKey
              _etuOAuthToken
              _etuEditId
              _etuFields
              (Just AltJSON)
              _etuTrack
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksUpdateResource)
                      r
                      u

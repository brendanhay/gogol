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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTracksPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch
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
    , etpUserIP
    , etpPayload
    , etpKey
    , etpOAuthToken
    , etpEditId
    , etpFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTracksPatch@ which the
-- 'EditsTracksPatch'' request conforms to.
type EditsTracksPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track" EditsTracksPatchTrack :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Track :> Patch '[JSON] Track

-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume. This method supports patch
-- semantics.
--
-- /See:/ 'editsTracksPatch'' smart constructor.
data EditsTracksPatch' = EditsTracksPatch'
    { _etpQuotaUser   :: !(Maybe Text)
    , _etpTrack       :: !EditsTracksPatchTrack
    , _etpPrettyPrint :: !Bool
    , _etpPackageName :: !Text
    , _etpUserIP      :: !(Maybe Text)
    , _etpPayload     :: !Track
    , _etpKey         :: !(Maybe Key)
    , _etpOAuthToken  :: !(Maybe OAuthToken)
    , _etpEditId      :: !Text
    , _etpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'etpUserIP'
--
-- * 'etpPayload'
--
-- * 'etpKey'
--
-- * 'etpOAuthToken'
--
-- * 'etpEditId'
--
-- * 'etpFields'
editsTracksPatch'
    :: EditsTracksPatchTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Track -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsTracksPatch'
editsTracksPatch' pEtpTrack_ pEtpPackageName_ pEtpPayload_ pEtpEditId_ =
    EditsTracksPatch'
    { _etpQuotaUser = Nothing
    , _etpTrack = pEtpTrack_
    , _etpPrettyPrint = True
    , _etpPackageName = pEtpPackageName_
    , _etpUserIP = Nothing
    , _etpPayload = pEtpPayload_
    , _etpKey = Nothing
    , _etpOAuthToken = Nothing
    , _etpEditId = pEtpEditId_
    , _etpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etpQuotaUser :: Lens' EditsTracksPatch' (Maybe Text)
etpQuotaUser
  = lens _etpQuotaUser (\ s a -> s{_etpQuotaUser = a})

-- | The track type to read or modify.
etpTrack :: Lens' EditsTracksPatch' EditsTracksPatchTrack
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
etpUserIP :: Lens' EditsTracksPatch' (Maybe Text)
etpUserIP
  = lens _etpUserIP (\ s a -> s{_etpUserIP = a})

-- | Multipart request metadata.
etpPayload :: Lens' EditsTracksPatch' Track
etpPayload
  = lens _etpPayload (\ s a -> s{_etpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etpKey :: Lens' EditsTracksPatch' (Maybe Key)
etpKey = lens _etpKey (\ s a -> s{_etpKey = a})

-- | OAuth 2.0 token for the current user.
etpOAuthToken :: Lens' EditsTracksPatch' (Maybe OAuthToken)
etpOAuthToken
  = lens _etpOAuthToken
      (\ s a -> s{_etpOAuthToken = a})

-- | Unique identifier for this edit.
etpEditId :: Lens' EditsTracksPatch' Text
etpEditId
  = lens _etpEditId (\ s a -> s{_etpEditId = a})

-- | Selector specifying which fields to include in a partial response.
etpFields :: Lens' EditsTracksPatch' (Maybe Text)
etpFields
  = lens _etpFields (\ s a -> s{_etpFields = a})

instance GoogleAuth EditsTracksPatch' where
        authKey = etpKey . _Just
        authToken = etpOAuthToken . _Just

instance GoogleRequest EditsTracksPatch' where
        type Rs EditsTracksPatch' = Track
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsTracksPatch'{..}
          = go _etpPackageName _etpEditId _etpTrack
              _etpQuotaUser
              (Just _etpPrettyPrint)
              _etpUserIP
              _etpFields
              _etpKey
              _etpOAuthToken
              (Just AltJSON)
              _etpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksPatchResource)
                      r
                      u

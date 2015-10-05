{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKListingsPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Patch
    (
    -- * REST Resource
      EditsAPKListingsPatchResource

    -- * Creating a Request
    , editsAPKListingsPatch'
    , EditsAPKListingsPatch'

    -- * Request Lenses
    , eapklpQuotaUser
    , eapklpPrettyPrint
    , eapklpPackageName
    , eapklpAPKVersionCode
    , eapklpUserIP
    , eapklpPayload
    , eapklpKey
    , eapklpLanguage
    , eapklpOAuthToken
    , eapklpEditId
    , eapklpFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKListingsPatch@ which the
-- 'EditsAPKListingsPatch'' request conforms to.
type EditsAPKListingsPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 Capture "language" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] APKListing :>
                                   Patch '[JSON] APKListing

-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code. This method supports patch semantics.
--
-- /See:/ 'editsAPKListingsPatch'' smart constructor.
data EditsAPKListingsPatch' = EditsAPKListingsPatch'
    { _eapklpQuotaUser      :: !(Maybe Text)
    , _eapklpPrettyPrint    :: !Bool
    , _eapklpPackageName    :: !Text
    , _eapklpAPKVersionCode :: !Int32
    , _eapklpUserIP         :: !(Maybe Text)
    , _eapklpPayload        :: !APKListing
    , _eapklpKey            :: !(Maybe Key)
    , _eapklpLanguage       :: !Text
    , _eapklpOAuthToken     :: !(Maybe OAuthToken)
    , _eapklpEditId         :: !Text
    , _eapklpFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapklpQuotaUser'
--
-- * 'eapklpPrettyPrint'
--
-- * 'eapklpPackageName'
--
-- * 'eapklpAPKVersionCode'
--
-- * 'eapklpUserIP'
--
-- * 'eapklpPayload'
--
-- * 'eapklpKey'
--
-- * 'eapklpLanguage'
--
-- * 'eapklpOAuthToken'
--
-- * 'eapklpEditId'
--
-- * 'eapklpFields'
editsAPKListingsPatch'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> APKListing -- ^ 'payload'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsAPKListingsPatch'
editsAPKListingsPatch' pEapklpPackageName_ pEapklpAPKVersionCode_ pEapklpPayload_ pEapklpLanguage_ pEapklpEditId_ =
    EditsAPKListingsPatch'
    { _eapklpQuotaUser = Nothing
    , _eapklpPrettyPrint = True
    , _eapklpPackageName = pEapklpPackageName_
    , _eapklpAPKVersionCode = pEapklpAPKVersionCode_
    , _eapklpUserIP = Nothing
    , _eapklpPayload = pEapklpPayload_
    , _eapklpKey = Nothing
    , _eapklpLanguage = pEapklpLanguage_
    , _eapklpOAuthToken = Nothing
    , _eapklpEditId = pEapklpEditId_
    , _eapklpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapklpQuotaUser :: Lens' EditsAPKListingsPatch' (Maybe Text)
eapklpQuotaUser
  = lens _eapklpQuotaUser
      (\ s a -> s{_eapklpQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapklpPrettyPrint :: Lens' EditsAPKListingsPatch' Bool
eapklpPrettyPrint
  = lens _eapklpPrettyPrint
      (\ s a -> s{_eapklpPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapklpPackageName :: Lens' EditsAPKListingsPatch' Text
eapklpPackageName
  = lens _eapklpPackageName
      (\ s a -> s{_eapklpPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapklpAPKVersionCode :: Lens' EditsAPKListingsPatch' Int32
eapklpAPKVersionCode
  = lens _eapklpAPKVersionCode
      (\ s a -> s{_eapklpAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapklpUserIP :: Lens' EditsAPKListingsPatch' (Maybe Text)
eapklpUserIP
  = lens _eapklpUserIP (\ s a -> s{_eapklpUserIP = a})

-- | Multipart request metadata.
eapklpPayload :: Lens' EditsAPKListingsPatch' APKListing
eapklpPayload
  = lens _eapklpPayload
      (\ s a -> s{_eapklpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapklpKey :: Lens' EditsAPKListingsPatch' (Maybe Key)
eapklpKey
  = lens _eapklpKey (\ s a -> s{_eapklpKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eapklpLanguage :: Lens' EditsAPKListingsPatch' Text
eapklpLanguage
  = lens _eapklpLanguage
      (\ s a -> s{_eapklpLanguage = a})

-- | OAuth 2.0 token for the current user.
eapklpOAuthToken :: Lens' EditsAPKListingsPatch' (Maybe OAuthToken)
eapklpOAuthToken
  = lens _eapklpOAuthToken
      (\ s a -> s{_eapklpOAuthToken = a})

-- | Unique identifier for this edit.
eapklpEditId :: Lens' EditsAPKListingsPatch' Text
eapklpEditId
  = lens _eapklpEditId (\ s a -> s{_eapklpEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapklpFields :: Lens' EditsAPKListingsPatch' (Maybe Text)
eapklpFields
  = lens _eapklpFields (\ s a -> s{_eapklpFields = a})

instance GoogleAuth EditsAPKListingsPatch' where
        authKey = eapklpKey . _Just
        authToken = eapklpOAuthToken . _Just

instance GoogleRequest EditsAPKListingsPatch' where
        type Rs EditsAPKListingsPatch' = APKListing
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsAPKListingsPatch'{..}
          = go _eapklpPackageName _eapklpEditId
              _eapklpAPKVersionCode
              _eapklpLanguage
              _eapklpQuotaUser
              (Just _eapklpPrettyPrint)
              _eapklpUserIP
              _eapklpFields
              _eapklpKey
              _eapklpOAuthToken
              (Just AltJSON)
              _eapklpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsAPKListingsPatchResource)
                      r
                      u

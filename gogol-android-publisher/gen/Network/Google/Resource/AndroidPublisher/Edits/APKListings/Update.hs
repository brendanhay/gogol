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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKListingsUpdate@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Update
    (
    -- * REST Resource
      EditsAPKListingsUpdateResource

    -- * Creating a Request
    , editsAPKListingsUpdate'
    , EditsAPKListingsUpdate'

    -- * Request Lenses
    , eapkluQuotaUser
    , eapkluPrettyPrint
    , eapkluPackageName
    , eapkluAPKVersionCode
    , eapkluUserIP
    , eapkluPayload
    , eapkluKey
    , eapkluLanguage
    , eapkluOAuthToken
    , eapkluEditId
    , eapkluFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKListingsUpdate@ which the
-- 'EditsAPKListingsUpdate'' request conforms to.
type EditsAPKListingsUpdateResource =
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
                                   Put '[JSON] APKListing

-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code.
--
-- /See:/ 'editsAPKListingsUpdate'' smart constructor.
data EditsAPKListingsUpdate' = EditsAPKListingsUpdate'
    { _eapkluQuotaUser      :: !(Maybe Text)
    , _eapkluPrettyPrint    :: !Bool
    , _eapkluPackageName    :: !Text
    , _eapkluAPKVersionCode :: !Int32
    , _eapkluUserIP         :: !(Maybe Text)
    , _eapkluPayload        :: !APKListing
    , _eapkluKey            :: !(Maybe Key)
    , _eapkluLanguage       :: !Text
    , _eapkluOAuthToken     :: !(Maybe OAuthToken)
    , _eapkluEditId         :: !Text
    , _eapkluFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkluQuotaUser'
--
-- * 'eapkluPrettyPrint'
--
-- * 'eapkluPackageName'
--
-- * 'eapkluAPKVersionCode'
--
-- * 'eapkluUserIP'
--
-- * 'eapkluPayload'
--
-- * 'eapkluKey'
--
-- * 'eapkluLanguage'
--
-- * 'eapkluOAuthToken'
--
-- * 'eapkluEditId'
--
-- * 'eapkluFields'
editsAPKListingsUpdate'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> APKListing -- ^ 'payload'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsAPKListingsUpdate'
editsAPKListingsUpdate' pEapkluPackageName_ pEapkluAPKVersionCode_ pEapkluPayload_ pEapkluLanguage_ pEapkluEditId_ =
    EditsAPKListingsUpdate'
    { _eapkluQuotaUser = Nothing
    , _eapkluPrettyPrint = True
    , _eapkluPackageName = pEapkluPackageName_
    , _eapkluAPKVersionCode = pEapkluAPKVersionCode_
    , _eapkluUserIP = Nothing
    , _eapkluPayload = pEapkluPayload_
    , _eapkluKey = Nothing
    , _eapkluLanguage = pEapkluLanguage_
    , _eapkluOAuthToken = Nothing
    , _eapkluEditId = pEapkluEditId_
    , _eapkluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapkluQuotaUser :: Lens' EditsAPKListingsUpdate' (Maybe Text)
eapkluQuotaUser
  = lens _eapkluQuotaUser
      (\ s a -> s{_eapkluQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapkluPrettyPrint :: Lens' EditsAPKListingsUpdate' Bool
eapkluPrettyPrint
  = lens _eapkluPrettyPrint
      (\ s a -> s{_eapkluPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkluPackageName :: Lens' EditsAPKListingsUpdate' Text
eapkluPackageName
  = lens _eapkluPackageName
      (\ s a -> s{_eapkluPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapkluAPKVersionCode :: Lens' EditsAPKListingsUpdate' Int32
eapkluAPKVersionCode
  = lens _eapkluAPKVersionCode
      (\ s a -> s{_eapkluAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapkluUserIP :: Lens' EditsAPKListingsUpdate' (Maybe Text)
eapkluUserIP
  = lens _eapkluUserIP (\ s a -> s{_eapkluUserIP = a})

-- | Multipart request metadata.
eapkluPayload :: Lens' EditsAPKListingsUpdate' APKListing
eapkluPayload
  = lens _eapkluPayload
      (\ s a -> s{_eapkluPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapkluKey :: Lens' EditsAPKListingsUpdate' (Maybe Key)
eapkluKey
  = lens _eapkluKey (\ s a -> s{_eapkluKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eapkluLanguage :: Lens' EditsAPKListingsUpdate' Text
eapkluLanguage
  = lens _eapkluLanguage
      (\ s a -> s{_eapkluLanguage = a})

-- | OAuth 2.0 token for the current user.
eapkluOAuthToken :: Lens' EditsAPKListingsUpdate' (Maybe OAuthToken)
eapkluOAuthToken
  = lens _eapkluOAuthToken
      (\ s a -> s{_eapkluOAuthToken = a})

-- | Unique identifier for this edit.
eapkluEditId :: Lens' EditsAPKListingsUpdate' Text
eapkluEditId
  = lens _eapkluEditId (\ s a -> s{_eapkluEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapkluFields :: Lens' EditsAPKListingsUpdate' (Maybe Text)
eapkluFields
  = lens _eapkluFields (\ s a -> s{_eapkluFields = a})

instance GoogleAuth EditsAPKListingsUpdate' where
        authKey = eapkluKey . _Just
        authToken = eapkluOAuthToken . _Just

instance GoogleRequest EditsAPKListingsUpdate' where
        type Rs EditsAPKListingsUpdate' = APKListing
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsAPKListingsUpdate'{..}
          = go _eapkluPackageName _eapkluEditId
              _eapkluAPKVersionCode
              _eapkluLanguage
              _eapkluQuotaUser
              (Just _eapkluPrettyPrint)
              _eapkluUserIP
              _eapkluFields
              _eapkluKey
              _eapkluOAuthToken
              (Just AltJSON)
              _eapkluPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsAPKListingsUpdateResource)
                      r
                      u

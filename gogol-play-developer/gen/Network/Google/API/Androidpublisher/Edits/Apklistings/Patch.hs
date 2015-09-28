{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Apklistings.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apklistings.patch@.
module Network.Google.API.Androidpublisher.Edits.Apklistings.Patch
    (
    -- * REST Resource
      EditsApklistingsPatchAPI

    -- * Creating a Request
    , editsApklistingsPatch'
    , EditsApklistingsPatch'

    -- * Request Lenses
    , eapQuotaUser
    , eapPrettyPrint
    , eapPackageName
    , eapApkVersionCode
    , eapUserIp
    , eapKey
    , eapLanguage
    , eapOauthToken
    , eapEditId
    , eapFields
    , eapAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.apklistings.patch which the
-- 'EditsApklistingsPatch'' request conforms to.
type EditsApklistingsPatchAPI =
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
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Patch '[JSON] ApkListing

-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code. This method supports patch semantics.
--
-- /See:/ 'editsApklistingsPatch'' smart constructor.
data EditsApklistingsPatch' = EditsApklistingsPatch'
    { _eapQuotaUser      :: !(Maybe Text)
    , _eapPrettyPrint    :: !Bool
    , _eapPackageName    :: !Text
    , _eapApkVersionCode :: !Int32
    , _eapUserIp         :: !(Maybe Text)
    , _eapKey            :: !(Maybe Text)
    , _eapLanguage       :: !Text
    , _eapOauthToken     :: !(Maybe Text)
    , _eapEditId         :: !Text
    , _eapFields         :: !(Maybe Text)
    , _eapAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapQuotaUser'
--
-- * 'eapPrettyPrint'
--
-- * 'eapPackageName'
--
-- * 'eapApkVersionCode'
--
-- * 'eapUserIp'
--
-- * 'eapKey'
--
-- * 'eapLanguage'
--
-- * 'eapOauthToken'
--
-- * 'eapEditId'
--
-- * 'eapFields'
--
-- * 'eapAlt'
editsApklistingsPatch'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsApklistingsPatch'
editsApklistingsPatch' pEapPackageName_ pEapApkVersionCode_ pEapLanguage_ pEapEditId_ =
    EditsApklistingsPatch'
    { _eapQuotaUser = Nothing
    , _eapPrettyPrint = True
    , _eapPackageName = pEapPackageName_
    , _eapApkVersionCode = pEapApkVersionCode_
    , _eapUserIp = Nothing
    , _eapKey = Nothing
    , _eapLanguage = pEapLanguage_
    , _eapOauthToken = Nothing
    , _eapEditId = pEapEditId_
    , _eapFields = Nothing
    , _eapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eapQuotaUser :: Lens' EditsApklistingsPatch' (Maybe Text)
eapQuotaUser
  = lens _eapQuotaUser (\ s a -> s{_eapQuotaUser = a})

-- | Returns response with indentations and line breaks.
eapPrettyPrint :: Lens' EditsApklistingsPatch' Bool
eapPrettyPrint
  = lens _eapPrettyPrint
      (\ s a -> s{_eapPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapPackageName :: Lens' EditsApklistingsPatch' Text
eapPackageName
  = lens _eapPackageName
      (\ s a -> s{_eapPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapApkVersionCode :: Lens' EditsApklistingsPatch' Int32
eapApkVersionCode
  = lens _eapApkVersionCode
      (\ s a -> s{_eapApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eapUserIp :: Lens' EditsApklistingsPatch' (Maybe Text)
eapUserIp
  = lens _eapUserIp (\ s a -> s{_eapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eapKey :: Lens' EditsApklistingsPatch' (Maybe Text)
eapKey = lens _eapKey (\ s a -> s{_eapKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eapLanguage :: Lens' EditsApklistingsPatch' Text
eapLanguage
  = lens _eapLanguage (\ s a -> s{_eapLanguage = a})

-- | OAuth 2.0 token for the current user.
eapOauthToken :: Lens' EditsApklistingsPatch' (Maybe Text)
eapOauthToken
  = lens _eapOauthToken
      (\ s a -> s{_eapOauthToken = a})

-- | Unique identifier for this edit.
eapEditId :: Lens' EditsApklistingsPatch' Text
eapEditId
  = lens _eapEditId (\ s a -> s{_eapEditId = a})

-- | Selector specifying which fields to include in a partial response.
eapFields :: Lens' EditsApklistingsPatch' (Maybe Text)
eapFields
  = lens _eapFields (\ s a -> s{_eapFields = a})

-- | Data format for the response.
eapAlt :: Lens' EditsApklistingsPatch' Alt
eapAlt = lens _eapAlt (\ s a -> s{_eapAlt = a})

instance GoogleRequest EditsApklistingsPatch' where
        type Rs EditsApklistingsPatch' = ApkListing
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsPatch'{..}
          = go _eapQuotaUser (Just _eapPrettyPrint)
              _eapPackageName
              _eapApkVersionCode
              _eapUserIp
              _eapKey
              _eapLanguage
              _eapOauthToken
              _eapEditId
              _eapFields
              (Just _eapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsPatchAPI)
                      r
                      u

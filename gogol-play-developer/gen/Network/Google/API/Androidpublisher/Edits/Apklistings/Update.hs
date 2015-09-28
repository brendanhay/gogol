{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Apklistings.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apklistings.update@.
module Network.Google.API.Androidpublisher.Edits.Apklistings.Update
    (
    -- * REST Resource
      EditsApklistingsUpdateAPI

    -- * Creating a Request
    , editsApklistingsUpdate'
    , EditsApklistingsUpdate'

    -- * Request Lenses
    , eauaQuotaUser
    , eauaPrettyPrint
    , eauaPackageName
    , eauaApkVersionCode
    , eauaUserIp
    , eauaKey
    , eauaLanguage
    , eauaOauthToken
    , eauaEditId
    , eauaFields
    , eauaAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.apklistings.update which the
-- 'EditsApklistingsUpdate'' request conforms to.
type EditsApklistingsUpdateAPI =
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
                               QueryParam "alt" Alt :> Put '[JSON] ApkListing

-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code.
--
-- /See:/ 'editsApklistingsUpdate'' smart constructor.
data EditsApklistingsUpdate' = EditsApklistingsUpdate'
    { _eauaQuotaUser      :: !(Maybe Text)
    , _eauaPrettyPrint    :: !Bool
    , _eauaPackageName    :: !Text
    , _eauaApkVersionCode :: !Int32
    , _eauaUserIp         :: !(Maybe Text)
    , _eauaKey            :: !(Maybe Text)
    , _eauaLanguage       :: !Text
    , _eauaOauthToken     :: !(Maybe Text)
    , _eauaEditId         :: !Text
    , _eauaFields         :: !(Maybe Text)
    , _eauaAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eauaQuotaUser'
--
-- * 'eauaPrettyPrint'
--
-- * 'eauaPackageName'
--
-- * 'eauaApkVersionCode'
--
-- * 'eauaUserIp'
--
-- * 'eauaKey'
--
-- * 'eauaLanguage'
--
-- * 'eauaOauthToken'
--
-- * 'eauaEditId'
--
-- * 'eauaFields'
--
-- * 'eauaAlt'
editsApklistingsUpdate'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsApklistingsUpdate'
editsApklistingsUpdate' pEauaPackageName_ pEauaApkVersionCode_ pEauaLanguage_ pEauaEditId_ =
    EditsApklistingsUpdate'
    { _eauaQuotaUser = Nothing
    , _eauaPrettyPrint = True
    , _eauaPackageName = pEauaPackageName_
    , _eauaApkVersionCode = pEauaApkVersionCode_
    , _eauaUserIp = Nothing
    , _eauaKey = Nothing
    , _eauaLanguage = pEauaLanguage_
    , _eauaOauthToken = Nothing
    , _eauaEditId = pEauaEditId_
    , _eauaFields = Nothing
    , _eauaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eauaQuotaUser :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauaQuotaUser
  = lens _eauaQuotaUser
      (\ s a -> s{_eauaQuotaUser = a})

-- | Returns response with indentations and line breaks.
eauaPrettyPrint :: Lens' EditsApklistingsUpdate' Bool
eauaPrettyPrint
  = lens _eauaPrettyPrint
      (\ s a -> s{_eauaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eauaPackageName :: Lens' EditsApklistingsUpdate' Text
eauaPackageName
  = lens _eauaPackageName
      (\ s a -> s{_eauaPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eauaApkVersionCode :: Lens' EditsApklistingsUpdate' Int32
eauaApkVersionCode
  = lens _eauaApkVersionCode
      (\ s a -> s{_eauaApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eauaUserIp :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauaUserIp
  = lens _eauaUserIp (\ s a -> s{_eauaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eauaKey :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauaKey = lens _eauaKey (\ s a -> s{_eauaKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eauaLanguage :: Lens' EditsApklistingsUpdate' Text
eauaLanguage
  = lens _eauaLanguage (\ s a -> s{_eauaLanguage = a})

-- | OAuth 2.0 token for the current user.
eauaOauthToken :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauaOauthToken
  = lens _eauaOauthToken
      (\ s a -> s{_eauaOauthToken = a})

-- | Unique identifier for this edit.
eauaEditId :: Lens' EditsApklistingsUpdate' Text
eauaEditId
  = lens _eauaEditId (\ s a -> s{_eauaEditId = a})

-- | Selector specifying which fields to include in a partial response.
eauaFields :: Lens' EditsApklistingsUpdate' (Maybe Text)
eauaFields
  = lens _eauaFields (\ s a -> s{_eauaFields = a})

-- | Data format for the response.
eauaAlt :: Lens' EditsApklistingsUpdate' Alt
eauaAlt = lens _eauaAlt (\ s a -> s{_eauaAlt = a})

instance GoogleRequest EditsApklistingsUpdate' where
        type Rs EditsApklistingsUpdate' = ApkListing
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsUpdate'{..}
          = go _eauaQuotaUser (Just _eauaPrettyPrint)
              _eauaPackageName
              _eauaApkVersionCode
              _eauaUserIp
              _eauaKey
              _eauaLanguage
              _eauaOauthToken
              _eauaEditId
              _eauaFields
              (Just _eauaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsUpdateAPI)
                      r
                      u

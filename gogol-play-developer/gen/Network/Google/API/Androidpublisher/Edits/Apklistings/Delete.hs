{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Apklistings.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apklistings.delete@.
module Network.Google.API.Androidpublisher.Edits.Apklistings.Delete
    (
    -- * REST Resource
      EditsApklistingsDeleteAPI

    -- * Creating a Request
    , editsApklistingsDelete'
    , EditsApklistingsDelete'

    -- * Request Lenses
    , eadaQuotaUser
    , eadaPrettyPrint
    , eadaPackageName
    , eadaApkVersionCode
    , eadaUserIp
    , eadaKey
    , eadaLanguage
    , eadaOauthToken
    , eadaEditId
    , eadaFields
    , eadaAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.apklistings.delete which the
-- 'EditsApklistingsDelete'' request conforms to.
type EditsApklistingsDeleteAPI =
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
                               QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ 'editsApklistingsDelete'' smart constructor.
data EditsApklistingsDelete' = EditsApklistingsDelete'
    { _eadaQuotaUser      :: !(Maybe Text)
    , _eadaPrettyPrint    :: !Bool
    , _eadaPackageName    :: !Text
    , _eadaApkVersionCode :: !Int32
    , _eadaUserIp         :: !(Maybe Text)
    , _eadaKey            :: !(Maybe Text)
    , _eadaLanguage       :: !Text
    , _eadaOauthToken     :: !(Maybe Text)
    , _eadaEditId         :: !Text
    , _eadaFields         :: !(Maybe Text)
    , _eadaAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eadaQuotaUser'
--
-- * 'eadaPrettyPrint'
--
-- * 'eadaPackageName'
--
-- * 'eadaApkVersionCode'
--
-- * 'eadaUserIp'
--
-- * 'eadaKey'
--
-- * 'eadaLanguage'
--
-- * 'eadaOauthToken'
--
-- * 'eadaEditId'
--
-- * 'eadaFields'
--
-- * 'eadaAlt'
editsApklistingsDelete'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsApklistingsDelete'
editsApklistingsDelete' pEadaPackageName_ pEadaApkVersionCode_ pEadaLanguage_ pEadaEditId_ =
    EditsApklistingsDelete'
    { _eadaQuotaUser = Nothing
    , _eadaPrettyPrint = True
    , _eadaPackageName = pEadaPackageName_
    , _eadaApkVersionCode = pEadaApkVersionCode_
    , _eadaUserIp = Nothing
    , _eadaKey = Nothing
    , _eadaLanguage = pEadaLanguage_
    , _eadaOauthToken = Nothing
    , _eadaEditId = pEadaEditId_
    , _eadaFields = Nothing
    , _eadaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eadaQuotaUser :: Lens' EditsApklistingsDelete' (Maybe Text)
eadaQuotaUser
  = lens _eadaQuotaUser
      (\ s a -> s{_eadaQuotaUser = a})

-- | Returns response with indentations and line breaks.
eadaPrettyPrint :: Lens' EditsApklistingsDelete' Bool
eadaPrettyPrint
  = lens _eadaPrettyPrint
      (\ s a -> s{_eadaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eadaPackageName :: Lens' EditsApklistingsDelete' Text
eadaPackageName
  = lens _eadaPackageName
      (\ s a -> s{_eadaPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eadaApkVersionCode :: Lens' EditsApklistingsDelete' Int32
eadaApkVersionCode
  = lens _eadaApkVersionCode
      (\ s a -> s{_eadaApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eadaUserIp :: Lens' EditsApklistingsDelete' (Maybe Text)
eadaUserIp
  = lens _eadaUserIp (\ s a -> s{_eadaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eadaKey :: Lens' EditsApklistingsDelete' (Maybe Text)
eadaKey = lens _eadaKey (\ s a -> s{_eadaKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eadaLanguage :: Lens' EditsApklistingsDelete' Text
eadaLanguage
  = lens _eadaLanguage (\ s a -> s{_eadaLanguage = a})

-- | OAuth 2.0 token for the current user.
eadaOauthToken :: Lens' EditsApklistingsDelete' (Maybe Text)
eadaOauthToken
  = lens _eadaOauthToken
      (\ s a -> s{_eadaOauthToken = a})

-- | Unique identifier for this edit.
eadaEditId :: Lens' EditsApklistingsDelete' Text
eadaEditId
  = lens _eadaEditId (\ s a -> s{_eadaEditId = a})

-- | Selector specifying which fields to include in a partial response.
eadaFields :: Lens' EditsApklistingsDelete' (Maybe Text)
eadaFields
  = lens _eadaFields (\ s a -> s{_eadaFields = a})

-- | Data format for the response.
eadaAlt :: Lens' EditsApklistingsDelete' Alt
eadaAlt = lens _eadaAlt (\ s a -> s{_eadaAlt = a})

instance GoogleRequest EditsApklistingsDelete' where
        type Rs EditsApklistingsDelete' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsDelete'{..}
          = go _eadaQuotaUser (Just _eadaPrettyPrint)
              _eadaPackageName
              _eadaApkVersionCode
              _eadaUserIp
              _eadaKey
              _eadaLanguage
              _eadaOauthToken
              _eadaEditId
              _eadaFields
              (Just _eadaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsDeleteAPI)
                      r
                      u

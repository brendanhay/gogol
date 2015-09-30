{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apklistings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApklistingsGet@.
module Androidpublisher.Edits.Apklistings.Get
    (
    -- * REST Resource
      EditsApklistingsGetAPI

    -- * Creating a Request
    , editsApklistingsGet
    , EditsApklistingsGet

    -- * Request Lenses
    , eagQuotaUser
    , eagPrettyPrint
    , eagPackageName
    , eagApkVersionCode
    , eagUserIp
    , eagKey
    , eagLanguage
    , eagOauthToken
    , eagEditId
    , eagFields
    , eagAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApklistingsGet@ which the
-- 'EditsApklistingsGet' request conforms to.
type EditsApklistingsGetAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 Capture "language" Text :> Get '[JSON] ApkListing

-- | Fetches the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ 'editsApklistingsGet' smart constructor.
data EditsApklistingsGet = EditsApklistingsGet
    { _eagQuotaUser      :: !(Maybe Text)
    , _eagPrettyPrint    :: !Bool
    , _eagPackageName    :: !Text
    , _eagApkVersionCode :: !Int32
    , _eagUserIp         :: !(Maybe Text)
    , _eagKey            :: !(Maybe Text)
    , _eagLanguage       :: !Text
    , _eagOauthToken     :: !(Maybe Text)
    , _eagEditId         :: !Text
    , _eagFields         :: !(Maybe Text)
    , _eagAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eagQuotaUser'
--
-- * 'eagPrettyPrint'
--
-- * 'eagPackageName'
--
-- * 'eagApkVersionCode'
--
-- * 'eagUserIp'
--
-- * 'eagKey'
--
-- * 'eagLanguage'
--
-- * 'eagOauthToken'
--
-- * 'eagEditId'
--
-- * 'eagFields'
--
-- * 'eagAlt'
editsApklistingsGet
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsApklistingsGet
editsApklistingsGet pEagPackageName_ pEagApkVersionCode_ pEagLanguage_ pEagEditId_ =
    EditsApklistingsGet
    { _eagQuotaUser = Nothing
    , _eagPrettyPrint = True
    , _eagPackageName = pEagPackageName_
    , _eagApkVersionCode = pEagApkVersionCode_
    , _eagUserIp = Nothing
    , _eagKey = Nothing
    , _eagLanguage = pEagLanguage_
    , _eagOauthToken = Nothing
    , _eagEditId = pEagEditId_
    , _eagFields = Nothing
    , _eagAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eagQuotaUser :: Lens' EditsApklistingsGet' (Maybe Text)
eagQuotaUser
  = lens _eagQuotaUser (\ s a -> s{_eagQuotaUser = a})

-- | Returns response with indentations and line breaks.
eagPrettyPrint :: Lens' EditsApklistingsGet' Bool
eagPrettyPrint
  = lens _eagPrettyPrint
      (\ s a -> s{_eagPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eagPackageName :: Lens' EditsApklistingsGet' Text
eagPackageName
  = lens _eagPackageName
      (\ s a -> s{_eagPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eagApkVersionCode :: Lens' EditsApklistingsGet' Int32
eagApkVersionCode
  = lens _eagApkVersionCode
      (\ s a -> s{_eagApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eagUserIp :: Lens' EditsApklistingsGet' (Maybe Text)
eagUserIp
  = lens _eagUserIp (\ s a -> s{_eagUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eagKey :: Lens' EditsApklistingsGet' (Maybe Text)
eagKey = lens _eagKey (\ s a -> s{_eagKey = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eagLanguage :: Lens' EditsApklistingsGet' Text
eagLanguage
  = lens _eagLanguage (\ s a -> s{_eagLanguage = a})

-- | OAuth 2.0 token for the current user.
eagOauthToken :: Lens' EditsApklistingsGet' (Maybe Text)
eagOauthToken
  = lens _eagOauthToken
      (\ s a -> s{_eagOauthToken = a})

-- | Unique identifier for this edit.
eagEditId :: Lens' EditsApklistingsGet' Text
eagEditId
  = lens _eagEditId (\ s a -> s{_eagEditId = a})

-- | Selector specifying which fields to include in a partial response.
eagFields :: Lens' EditsApklistingsGet' (Maybe Text)
eagFields
  = lens _eagFields (\ s a -> s{_eagFields = a})

-- | Data format for the response.
eagAlt :: Lens' EditsApklistingsGet' Text
eagAlt = lens _eagAlt (\ s a -> s{_eagAlt = a})

instance GoogleRequest EditsApklistingsGet' where
        type Rs EditsApklistingsGet' = ApkListing
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsGet{..}
          = go _eagQuotaUser _eagPrettyPrint _eagPackageName
              _eagApkVersionCode
              _eagUserIp
              _eagKey
              _eagLanguage
              _eagOauthToken
              _eagEditId
              _eagFields
              _eagAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsGetAPI)
                      r
                      u

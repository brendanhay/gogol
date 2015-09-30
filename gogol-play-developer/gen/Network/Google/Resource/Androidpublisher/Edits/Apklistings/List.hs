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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apklistings.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the APK-specific localized listings for a specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApklistingsList@.
module Network.Google.Resource.Androidpublisher.Edits.Apklistings.List
    (
    -- * REST Resource
      EditsApklistingsListResource

    -- * Creating a Request
    , editsApklistingsList'
    , EditsApklistingsList'

    -- * Request Lenses
    , ealaQuotaUser
    , ealaPrettyPrint
    , ealaPackageName
    , ealaApkVersionCode
    , ealaUserIp
    , ealaKey
    , ealaOauthToken
    , ealaEditId
    , ealaFields
    , ealaAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApklistingsList@ which the
-- 'EditsApklistingsList'' request conforms to.
type EditsApklistingsListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] ApkListingsListResponse

-- | Lists all the APK-specific localized listings for a specified APK.
--
-- /See:/ 'editsApklistingsList'' smart constructor.
data EditsApklistingsList' = EditsApklistingsList'
    { _ealaQuotaUser      :: !(Maybe Text)
    , _ealaPrettyPrint    :: !Bool
    , _ealaPackageName    :: !Text
    , _ealaApkVersionCode :: !Int32
    , _ealaUserIp         :: !(Maybe Text)
    , _ealaKey            :: !(Maybe Text)
    , _ealaOauthToken     :: !(Maybe Text)
    , _ealaEditId         :: !Text
    , _ealaFields         :: !(Maybe Text)
    , _ealaAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ealaQuotaUser'
--
-- * 'ealaPrettyPrint'
--
-- * 'ealaPackageName'
--
-- * 'ealaApkVersionCode'
--
-- * 'ealaUserIp'
--
-- * 'ealaKey'
--
-- * 'ealaOauthToken'
--
-- * 'ealaEditId'
--
-- * 'ealaFields'
--
-- * 'ealaAlt'
editsApklistingsList'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'editId'
    -> EditsApklistingsList'
editsApklistingsList' pEalaPackageName_ pEalaApkVersionCode_ pEalaEditId_ =
    EditsApklistingsList'
    { _ealaQuotaUser = Nothing
    , _ealaPrettyPrint = True
    , _ealaPackageName = pEalaPackageName_
    , _ealaApkVersionCode = pEalaApkVersionCode_
    , _ealaUserIp = Nothing
    , _ealaKey = Nothing
    , _ealaOauthToken = Nothing
    , _ealaEditId = pEalaEditId_
    , _ealaFields = Nothing
    , _ealaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ealaQuotaUser :: Lens' EditsApklistingsList' (Maybe Text)
ealaQuotaUser
  = lens _ealaQuotaUser
      (\ s a -> s{_ealaQuotaUser = a})

-- | Returns response with indentations and line breaks.
ealaPrettyPrint :: Lens' EditsApklistingsList' Bool
ealaPrettyPrint
  = lens _ealaPrettyPrint
      (\ s a -> s{_ealaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ealaPackageName :: Lens' EditsApklistingsList' Text
ealaPackageName
  = lens _ealaPackageName
      (\ s a -> s{_ealaPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
ealaApkVersionCode :: Lens' EditsApklistingsList' Int32
ealaApkVersionCode
  = lens _ealaApkVersionCode
      (\ s a -> s{_ealaApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ealaUserIp :: Lens' EditsApklistingsList' (Maybe Text)
ealaUserIp
  = lens _ealaUserIp (\ s a -> s{_ealaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ealaKey :: Lens' EditsApklistingsList' (Maybe Text)
ealaKey = lens _ealaKey (\ s a -> s{_ealaKey = a})

-- | OAuth 2.0 token for the current user.
ealaOauthToken :: Lens' EditsApklistingsList' (Maybe Text)
ealaOauthToken
  = lens _ealaOauthToken
      (\ s a -> s{_ealaOauthToken = a})

-- | Unique identifier for this edit.
ealaEditId :: Lens' EditsApklistingsList' Text
ealaEditId
  = lens _ealaEditId (\ s a -> s{_ealaEditId = a})

-- | Selector specifying which fields to include in a partial response.
ealaFields :: Lens' EditsApklistingsList' (Maybe Text)
ealaFields
  = lens _ealaFields (\ s a -> s{_ealaFields = a})

-- | Data format for the response.
ealaAlt :: Lens' EditsApklistingsList' Alt
ealaAlt = lens _ealaAlt (\ s a -> s{_ealaAlt = a})

instance GoogleRequest EditsApklistingsList' where
        type Rs EditsApklistingsList' =
             ApkListingsListResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsList'{..}
          = go _ealaQuotaUser (Just _ealaPrettyPrint)
              _ealaPackageName
              _ealaApkVersionCode
              _ealaUserIp
              _ealaKey
              _ealaOauthToken
              _ealaEditId
              _ealaFields
              (Just _ealaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsListResource)
                      r
                      u

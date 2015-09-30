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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apklistings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all the APK-specific localized listings for a specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApklistingsDeleteall@.
module Network.Google.Resource.Androidpublisher.Edits.Apklistings.Deleteall
    (
    -- * REST Resource
      EditsApklistingsDeleteallResource

    -- * Creating a Request
    , editsApklistingsDeleteall'
    , EditsApklistingsDeleteall'

    -- * Request Lenses
    , eadaQuotaUser
    , eadaPrettyPrint
    , eadaPackageName
    , eadaApkVersionCode
    , eadaUserIp
    , eadaKey
    , eadaOauthToken
    , eadaEditId
    , eadaFields
    , eadaAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApklistingsDeleteall@ which the
-- 'EditsApklistingsDeleteall'' request conforms to.
type EditsApklistingsDeleteallResource =
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
                             QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes all the APK-specific localized listings for a specified APK.
--
-- /See:/ 'editsApklistingsDeleteall'' smart constructor.
data EditsApklistingsDeleteall' = EditsApklistingsDeleteall'
    { _eadaQuotaUser      :: !(Maybe Text)
    , _eadaPrettyPrint    :: !Bool
    , _eadaPackageName    :: !Text
    , _eadaApkVersionCode :: !Int32
    , _eadaUserIp         :: !(Maybe Text)
    , _eadaKey            :: !(Maybe Text)
    , _eadaOauthToken     :: !(Maybe Text)
    , _eadaEditId         :: !Text
    , _eadaFields         :: !(Maybe Text)
    , _eadaAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApklistingsDeleteall'' with the minimum fields required to make a request.
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
-- * 'eadaOauthToken'
--
-- * 'eadaEditId'
--
-- * 'eadaFields'
--
-- * 'eadaAlt'
editsApklistingsDeleteall'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'editId'
    -> EditsApklistingsDeleteall'
editsApklistingsDeleteall' pEadaPackageName_ pEadaApkVersionCode_ pEadaEditId_ =
    EditsApklistingsDeleteall'
    { _eadaQuotaUser = Nothing
    , _eadaPrettyPrint = True
    , _eadaPackageName = pEadaPackageName_
    , _eadaApkVersionCode = pEadaApkVersionCode_
    , _eadaUserIp = Nothing
    , _eadaKey = Nothing
    , _eadaOauthToken = Nothing
    , _eadaEditId = pEadaEditId_
    , _eadaFields = Nothing
    , _eadaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eadaQuotaUser :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadaQuotaUser
  = lens _eadaQuotaUser
      (\ s a -> s{_eadaQuotaUser = a})

-- | Returns response with indentations and line breaks.
eadaPrettyPrint :: Lens' EditsApklistingsDeleteall' Bool
eadaPrettyPrint
  = lens _eadaPrettyPrint
      (\ s a -> s{_eadaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eadaPackageName :: Lens' EditsApklistingsDeleteall' Text
eadaPackageName
  = lens _eadaPackageName
      (\ s a -> s{_eadaPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eadaApkVersionCode :: Lens' EditsApklistingsDeleteall' Int32
eadaApkVersionCode
  = lens _eadaApkVersionCode
      (\ s a -> s{_eadaApkVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eadaUserIp :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadaUserIp
  = lens _eadaUserIp (\ s a -> s{_eadaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eadaKey :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadaKey = lens _eadaKey (\ s a -> s{_eadaKey = a})

-- | OAuth 2.0 token for the current user.
eadaOauthToken :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadaOauthToken
  = lens _eadaOauthToken
      (\ s a -> s{_eadaOauthToken = a})

-- | Unique identifier for this edit.
eadaEditId :: Lens' EditsApklistingsDeleteall' Text
eadaEditId
  = lens _eadaEditId (\ s a -> s{_eadaEditId = a})

-- | Selector specifying which fields to include in a partial response.
eadaFields :: Lens' EditsApklistingsDeleteall' (Maybe Text)
eadaFields
  = lens _eadaFields (\ s a -> s{_eadaFields = a})

-- | Data format for the response.
eadaAlt :: Lens' EditsApklistingsDeleteall' Alt
eadaAlt = lens _eadaAlt (\ s a -> s{_eadaAlt = a})

instance GoogleRequest EditsApklistingsDeleteall'
         where
        type Rs EditsApklistingsDeleteall' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApklistingsDeleteall'{..}
          = go _eadaQuotaUser (Just _eadaPrettyPrint)
              _eadaPackageName
              _eadaApkVersionCode
              _eadaUserIp
              _eadaKey
              _eadaOauthToken
              _eadaEditId
              _eadaFields
              (Just _eadaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsApklistingsDeleteallResource)
                      r
                      u
